; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    call $31f3
    ld c, $50
    call $0468
    call $0fdb
    call $300b
    call $1ad2
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld c, $50
    call $0468
    call $0fdb
    call $1ad2
    call $0e51
    call $0e58
    ld a, $5b
    ld hl, $569a
    rst $08
    call $3200
    ld hl, $c543
    ld b, $02
    ld c, $0c
    ld d, h
    ld e, l
    ld a, $13
    ld hl, $535b
    rst $08
    ld hl, $c56c
    ld de, $4419
    call $1078
    call Call_00a_4eff
    call $3200
    ld hl, $cf5d
    xor a
    ld [hl+], a
    ld [hl], $50
    ld a, [$c2dc]
    cp $01
    jp nz, Jump_00a_4177

Jump_00a_405d:
    call Call_00a_4426
    call Call_00a_4499
    call Call_00a_4434
    xor a
    ld [$cf56], a
    call $087d
    ldh a, [$cb]
    cp $02
    jr nz, jr_00a_4091

    ld c, $03
    call $0468
    xor a
    ldh [$cd], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    call $045a
    xor a
    ldh [$cd], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_00a_4091:
    ld de, $0000
    call $3b97
    ld c, $03
    call $0468
    xor a
    ldh [rIF], a
    ld a, $08
    ldh [rIE], a
    ld hl, $d1f3
    ld de, $d206
    ld bc, $0011
    call $075f
    ld a, $fe
    ld [de], a
    ld hl, $c800
    ld de, $d26b
    ld bc, $01a8
    call $075f
    ld a, $fe
    ld [de], a
    ld hl, $c608
    ld de, $c6d0
    ld bc, $00c8
    call $075f
    xor a
    ldh [rIF], a
    ld a, $1d
    ldh [rIE], a
    call Call_00a_47ab
    ld hl, $d26b
    call Call_00a_47ca
    push hl
    ld bc, $000b
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jp z, Jump_00a_4b22

    cp $07
    jp nc, Jump_00a_4b22

    ld de, $c800
    ld bc, $01a2
    call Call_00a_479e
    ld de, $c6d0
    ld hl, $c813
    ld c, $02

jr_00a_40fe:
    ld a, [de]
    inc de
    and a
    jr z, jr_00a_40fe

    cp $fd
    jr z, jr_00a_40fe

    cp $fe
    jr z, jr_00a_40fe

    cp $ff
    jr z, jr_00a_411d

    push hl
    push bc
    ld b, $00
    dec a
    ld c, a
    add hl, bc
    ld a, $fe
    ld [hl], a
    pop bc
    pop hl
    jr jr_00a_40fe

jr_00a_411d:
    ld hl, $c90f
    dec c
    jr nz, jr_00a_40fe

    ld hl, $c800
    ld de, $d26b
    ld bc, $000b
    call $3026
    ld de, $d280
    ld a, [hl+]
    ld [de], a
    inc de

jr_00a_4135:
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_414e

    ld [$d265], a
    push hl
    push de
    ld hl, $7908
    ld a, $3e
    rst $08
    pop de
    pop hl
    ld a, [$d265]
    ld [de], a
    inc de
    jr jr_00a_4135

jr_00a_414e:
    ld [de], a
    ld hl, $c813
    call Call_00a_468a
    ld a, $a8
    ld [$d102], a
    ld a, $d3
    ld [$d103], a
    ld de, $0000
    call $3b97
    ldh a, [$cb]
    cp $02
    ld c, $42
    call z, $0468
    ld de, $002b
    call $3b97
    jp Jump_00a_47e3


Jump_00a_4177:
    call Call_00a_4426
    call Call_00a_4595
    call Call_00a_4434
    call Call_00a_5dba
    ld a, [$c2dd]
    and a
    jp z, Jump_00a_43b2

    ldh a, [$cb]
    cp $02
    jr nz, jr_00a_41ae

    ld c, $03
    call $0468
    xor a
    ldh [$cd], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    call $045a
    xor a
    ldh [$cd], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_00a_41ae:
    ld de, $0000
    call $3b97
    ld c, $03
    call $0468
    xor a
    ldh [rIF], a
    ld a, $08
    ldh [rIE], a
    ld hl, $d1f3
    ld de, $d206
    ld bc, $0011
    call $075f
    ld a, $fe
    ld [de], a
    ld hl, $c800
    ld de, $d26b
    ld bc, $01c2
    call $075f
    ld a, $fe
    ld [de], a
    ld hl, $c608
    ld de, $c6d0
    ld bc, $00c8
    call $075f
    ld a, [$c2dc]
    cp $02
    jr nz, jr_00a_41fd

    ld hl, $c9f4
    ld de, $cb84
    ld bc, $0186
    call Call_00a_43f2

jr_00a_41fd:
    xor a
    ldh [rIF], a
    ld a, $1d
    ldh [rIE], a
    ld de, $0000
    call $3b97
    call Call_00a_47ab
    ld hl, $d26b
    call Call_00a_47ca
    ld de, $c800
    ld bc, $01b9
    call Call_00a_479e
    ld de, $c6d0
    ld hl, $c813
    ld c, $02

jr_00a_4224:
    ld a, [de]
    inc de
    and a
    jr z, jr_00a_4224

    cp $fd
    jr z, jr_00a_4224

    cp $fe
    jr z, jr_00a_4224

    cp $ff
    jr z, jr_00a_4243

    push hl
    push bc
    ld b, $00
    dec a
    ld c, a
    add hl, bc
    ld a, $fe
    ld [hl], a
    pop bc
    pop hl
    jr jr_00a_4224

jr_00a_4243:
    ld hl, $c90f
    dec c
    jr nz, jr_00a_4224

    ld a, [$c2dc]
    cp $02
    jp nz, Jump_00a_42fe

    ld hl, $cb84

jr_00a_4254:
    ld a, [hl+]
    cp $20
    jr nz, jr_00a_4254

jr_00a_4259:
    ld a, [hl+]
    cp $fe
    jr z, jr_00a_4259

    cp $20
    jr z, jr_00a_4259

    dec hl
    ld de, $cb84
    ld bc, $0190
    call $3026
    ld hl, $cb84
    ld bc, $00c6

jr_00a_4272:
    ld a, [hl]
    cp $21
    jr nz, jr_00a_4279

    ld [hl], $fe

jr_00a_4279:
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_4272

    ld de, $cc9e

jr_00a_4282:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_00a_4294

    ld hl, $cc4a
    dec a
    ld b, $00
    ld c, a
    add hl, bc
    ld [hl], $fe
    jr jr_00a_4282

jr_00a_4294:
    ld hl, $cb84
    ld de, $c9f4
    ld b, $06

jr_00a_429c:
    push bc
    ld bc, $0021
    call $3026
    ld a, $0e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    pop bc
    dec b
    jr nz, jr_00a_429c

    ld de, $c9f4
    ld b, $06

jr_00a_42b4:
    push bc
    ld a, $21
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld bc, $000e
    call $3026
    pop bc
    dec b
    jr nz, jr_00a_42b4

    ld b, $06
    ld de, $c9f4

jr_00a_42cc:
    push bc
    push de
    ld a, $77
    ld hl, $65c8
    rst $08
    ld a, c
    or a
    jr z, jr_00a_42ee

    sub $03
    jr nc, jr_00a_42e4

    ld a, $77
    ld hl, $7203
    rst $08
    jr jr_00a_42ee

jr_00a_42e4:
    cp $02
    jr nc, jr_00a_42ee

    ld a, $77
    ld hl, $7220
    rst $08

jr_00a_42ee:
    pop de
    ld hl, $002f
    add hl, de
    ld d, h
    ld e, l
    pop bc
    dec b
    jr nz, jr_00a_42cc

    ld de, $cb0e
    xor a
    ld [de], a

Jump_00a_42fe:
    ld hl, $c800
    ld de, $d26b
    ld bc, $000b
    call $3026
    ld de, $d280
    ld bc, $0008
    call $3026
    ld de, $d276
    ld bc, $0002
    call $3026
    ld de, $d288
    ld bc, $01a4
    call $3026
    ld a, $a8
    ld [$d102], a
    ld a, $d3
    ld [$d103], a
    ld de, $0000
    call $3b97
    ldh a, [$cb]
    cp $02
    ld c, $42
    call z, $0468
    ld a, [$c2dc]
    cp $03
    jr nz, jr_00a_43a9

    ld a, $0c
    ld [$d22f], a
    call $0fdb
    ld a, $13
    ld hl, $5354
    rst $08
    ld hl, $cfcc
    ld a, [hl]
    push af
    and $20
    or $03
    ld [hl], a
    ld hl, $d26b
    ld de, $c656
    ld bc, $000b
    call $3026
    call $222a
    ld a, [$c2d7]
    push af
    ld a, $01
    ld [$c2d7], a
    ldh a, [rIE]
    push af
    ldh a, [rIF]
    push af
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    set 1, a
    ldh [rIE], a
    pop af
    ldh [rIF], a
    ld a, $16
    call $2d83
    ldh a, [rIF]
    ld h, a
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    ld a, h
    ldh [rIF], a
    pop af
    ld [$c2d7], a
    pop af
    ld [$cfcc], a
    ld a, $05
    ld hl, $500c
    rst $08
    jp Jump_00a_4b22


jr_00a_43a9:
    ld de, $002b
    call $3b97
    jp Jump_00a_47e3


Jump_00a_43b2:
    ld de, $43ed
    ld b, $0a

jr_00a_43b7:
    call $045a
    call $0908
    dec b
    jr nz, jr_00a_43b7

    xor a
    ld [hl-], a
    ld [hl], a
    ldh [$9e], a
    push de
    ld hl, $c590
    ld b, $04
    ld c, $12
    push de
    ld d, h
    ld e, l
    ld a, $13
    ld hl, $535b
    rst $08
    pop de
    pop hl
    ld bc, $c5b9
    call $13e5
    call $04b6
    call $0fdb
    ld b, $08
    call $3340
    call $3200
    ret


    ld d, $83
    ld b, c
    ld [hl], c
    ld d, b

Call_00a_43f2:
    ld a, $01
    ldh [$cc], a

jr_00a_43f6:
    ld a, [hl]
    ldh [$cd], a
    call $078a
    push bc
    ld b, a
    inc hl
    ld a, $30

jr_00a_4401:
    dec a
    jr nz, jr_00a_4401

    ldh a, [$cc]
    and a
    ld a, b
    pop bc
    jr z, jr_00a_4411

    dec hl
    xor a
    ldh [$cc], a
    jr jr_00a_43f6

jr_00a_4411:
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_43f6

    ret


    adc a
    adc e
    add h
    add b
    sub d
    add h
    ld a, a
    sub [hl]
    add b
    adc b
    sub e
    rst $20
    ld d, b

Call_00a_4426:
    ld hl, $c800
    ld bc, $0514

jr_00a_442c:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_442c

    ret


Call_00a_4434:
    ld hl, $d1f3
    ld a, $fd
    ld b, $07

jr_00a_443b:
    ld [hl+], a
    dec b
    jr nz, jr_00a_443b

    ld b, $0a

jr_00a_4441:
    call $2f8c
    cp $fd
    jr nc, jr_00a_4441

    ld [hl+], a
    dec b
    jr nz, jr_00a_4441

    ld hl, $c608
    ld a, $fd
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, $c8
    xor a

jr_00a_4457:
    ld [hl+], a
    dec b
    jr nz, jr_00a_4457

    ld hl, $c818
    ld de, $c612
    ld bc, $0000

jr_00a_4464:
    inc c
    ld a, c
    cp $fd
    jr z, jr_00a_448c

    ld a, b
    dec a
    jr nz, jr_00a_447f

    push bc
    ld a, [$c2dc]
    cp $01
    ld b, $0d
    jr z, jr_00a_447a

    ld b, $27

jr_00a_447a:
    ld a, c
    cp b
    pop bc
    jr z, jr_00a_4495

jr_00a_447f:
    inc hl
    ld a, [hl]
    cp $fe
    jr nz, jr_00a_4464

    ld a, c
    ld [de], a
    inc de
    ld [hl], $ff
    jr jr_00a_4464

jr_00a_448c:
    ld a, $ff
    ld [de], a
    inc de
    ld bc, $0100
    jr jr_00a_4464

jr_00a_4495:
    ld a, $ff
    ld [de], a
    ret


Call_00a_4499:
    ld de, $c800
    ld a, $fd
    ld b, $06

jr_00a_44a0:
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_44a0

    ld hl, $d47d
    ld bc, $000b
    call $3026
    push de
    ld hl, $dcd7
    ld a, [hl+]
    ld [de], a
    inc de

jr_00a_44b5:
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_44ce

    ld [$d265], a
    push hl
    push de
    ld hl, $78f1
    ld a, $3e
    rst $08
    pop de
    pop hl
    ld a, [$d265]
    ld [de], a
    inc de
    jr jr_00a_44b5

jr_00a_44ce:
    ld [de], a
    pop de
    ld hl, $0008
    add hl, de
    ld d, h
    ld e, l
    ld hl, $dcdf
    ld c, $06

jr_00a_44db:
    push bc
    call Call_00a_44f6
    ld bc, $0030
    add hl, bc
    pop bc
    dec c
    jr nz, jr_00a_44db

    ld hl, $ddff
    call Call_00a_44f0
    ld hl, $de41

Call_00a_44f0:
    ld bc, $0042
    jp $3026


Call_00a_44f6:
    ld b, h
    ld c, l
    push de
    push bc
    ld a, [hl]
    ld [$d265], a
    ld hl, $78f1
    ld a, $3e
    rst $08
    pop bc
    pop de
    ld a, [$d265]
    ld [de], a
    inc de
    ld hl, $0022
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld hl, $0020
    add hl, bc
    ld a, [hl]
    ld [de], a
    inc de
    ld a, [bc]
    cp $51
    jr z, jr_00a_4528

    cp $52
    jr nz, jr_00a_4530

jr_00a_4528:
    ld a, $17
    ld [de], a
    inc de
    ld [de], a
    inc de
    jr jr_00a_4544

jr_00a_4530:
    push bc
    dec a
    ld hl, $542b
    ld bc, $0020
    call $30fe
    ld bc, $0002
    ld a, $14
    call $0e8d
    pop bc

jr_00a_4544:
    push bc
    ld hl, $0001
    add hl, bc
    ld bc, $001a
    call $3026
    pop bc
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld [de], a
    ld [$d143], a
    inc de
    push bc
    ld hl, $0024
    add hl, bc
    ld bc, $0008
    call $3026
    pop bc
    push de
    push bc
    ld a, [bc]
    dec a
    push bc
    ld b, $00
    ld c, a
    ld hl, $7656
    add hl, bc
    ld a, $3e
    call $304d
    ld [$d23b], a
    pop bc
    ld hl, $000a
    add hl, bc
    ld c, $05
    ld b, $01
    ld a, $0d
    call $2d83
    pop bc
    pop de
    ldh a, [$b5]
    ld [de], a
    inc de
    ldh a, [$b6]
    ld [de], a
    inc de
    ld h, b
    ld l, c
    ret


Call_00a_4595:
    ld de, $c800
    ld a, $fd
    ld b, $06

jr_00a_459c:
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_459c

    ld hl, $d47d
    ld bc, $000b
    call $3026
    ld hl, $dcd7
    ld bc, $0008
    call $3026
    ld hl, $d47b
    ld bc, $0002
    call $3026
    ld hl, $dcdf
    ld bc, $0120
    call $3026
    ld hl, $ddff
    ld bc, $0042
    call $3026
    ld hl, $de41
    ld bc, $0042
    call $3026
    ld a, [$c2dc]
    cp $02
    ret nz

    ld de, $c9f4
    ld a, $20
    call Call_00a_4682
    ld a, $00
    call $2fcb
    ld hl, $a600
    ld b, $06

jr_00a_45ef:
    push bc
    ld bc, $0021
    call $3026
    ld bc, $000e
    add hl, bc
    pop bc
    dec b
    jr nz, jr_00a_45ef

    ld hl, $a600
    ld b, $06

jr_00a_4603:
    push bc
    ld bc, $0021
    add hl, bc
    ld bc, $000e
    call $3026
    pop bc
    dec b
    jr nz, jr_00a_4603

    ld b, $06
    ld de, $a600
    ld hl, $c9f9

jr_00a_461a:
    push bc
    push hl
    push de
    push hl
    ld a, $77
    ld hl, $65c8
    rst $08
    pop de
    ld a, c
    or a
    jr z, jr_00a_463f

    sub $03
    jr nc, jr_00a_4635

    ld a, $77
    ld hl, $71e6
    rst $08
    jr jr_00a_463f

jr_00a_4635:
    cp $02
    jr nc, jr_00a_463f

    ld a, $77
    ld hl, $7220
    rst $08

jr_00a_463f:
    pop de
    ld hl, $002f
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld bc, $0021
    add hl, bc
    pop bc
    dec b
    jr nz, jr_00a_461a

    call $2fe1
    ld hl, $c9f9
    ld bc, $00c6

jr_00a_4658:
    ld a, [hl]
    cp $fe
    jr nz, jr_00a_465f

    ld [hl], $21

jr_00a_465f:
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_4658

    ld hl, $cabf
    ld de, $cb13
    ld b, $54
    ld c, $00

jr_00a_466f:
    inc c
    ld a, [hl]
    cp $fe
    jr nz, jr_00a_467a

    ld [hl], $ff
    ld a, c
    ld [de], a
    inc de

jr_00a_467a:
    inc hl
    dec b
    jr nz, jr_00a_466f

    ld a, $ff
    ld [de], a
    ret


Call_00a_4682:
    ld c, $05

jr_00a_4684:
    ld [de], a
    inc de
    dec c
    jr nz, jr_00a_4684

    ret


Call_00a_468a:
    push hl
    ld d, h
    ld e, l
    ld bc, $cbea
    ld hl, $cbe8
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $d288
    ld c, $06

jr_00a_469b:
    push bc
    call Call_00a_46ba
    pop bc
    dec c
    jr nz, jr_00a_469b

    pop hl
    ld bc, $0108
    add hl, bc
    ld de, $d3a8
    ld bc, $0042
    call $3026
    ld de, $d3ea
    ld bc, $0042
    jp $3026


Call_00a_46ba:
    ld b, h
    ld c, l
    ld a, [de]
    inc de
    push bc
    push de
    ld [$d265], a
    ld hl, $7908
    ld a, $3e
    rst $08
    pop de
    pop bc
    ld a, [$d265]
    ld [bc], a
    ld [$cf60], a
    ld hl, $0022
    add hl, bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl], a
    inc de
    ld hl, $0020
    add hl, bc
    ld a, [de]
    inc de
    ld [hl], a
    ld hl, $cbe8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, l
    ld [$cbe8], a
    ld a, h
    ld [$cbe9], a
    push bc
    ld hl, $0001
    add hl, bc
    push hl
    ld h, d
    ld l, e
    pop de
    push bc
    ld a, [hl+]
    ld b, a
    call Call_00a_4771
    ld a, b
    ld [de], a
    inc de
    pop bc
    ld bc, $0019
    call $3026
    pop bc
    ld d, h
    ld e, l
    ld hl, $001f
    add hl, bc
    ld a, [de]
    inc de
    ld [hl], a
    ld [$d143], a
    push bc
    ld hl, $0024
    add hl, bc
    push hl
    ld h, d
    ld l, e
    pop de
    ld bc, $0008
    call $3026
    pop bc
    call $3856
    push de
    push bc
    ld d, h
    ld e, l
    ld hl, $000a
    add hl, bc
    ld c, $05
    ld b, $01
    ld a, $0d
    call $2d83
    pop bc
    pop hl
    ldh a, [$b5]
    ld [hl+], a
    ldh a, [$b6]
    ld [hl+], a
    push hl
    push bc
    ld hl, $000a
    add hl, bc
    ld c, $06
    ld b, $01
    ld a, $0d
    call $2d83
    pop bc
    pop hl
    ldh a, [$b5]
    ld [hl+], a
    ldh a, [$b6]
    ld [hl+], a
    push hl
    ld hl, $001b
    add hl, bc
    ld a, $46
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl
    inc de
    inc de
    ret


Call_00a_4771:
    ld a, b
    and a
    ret z

    push hl
    ld hl, $4785

jr_00a_4778:
    ld a, [hl+]
    and a
    jr z, jr_00a_4783

    cp b
    jr z, jr_00a_4782

    inc hl
    jr jr_00a_4778

jr_00a_4782:
    ld b, [hl]

jr_00a_4783:
    pop hl
    ret


    add hl, de
    sub d
    dec l
    ld d, e
    ld [hl-], a
    xor [hl]
    ld e, d
    xor l
    ld h, h
    xor l
    ld a, b
    xor l
    add a
    xor l
    cp [hl]
    xor l
    jp $dcad


    xor l
    ld_long a, $ffad
    xor l
    nop

Call_00a_479e:
jr_00a_479e:
    ld a, [hl+]
    cp $fe
    jr z, jr_00a_479e

    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_479e

    ret


Call_00a_47ab:
    ldh a, [$cb]
    cp $02
    ret z

    ld hl, $d206
    call Call_00a_47d8
    ld de, $d1fa
    ld c, $0a

jr_00a_47bb:
    ld a, [hl+]
    cp $fe
    jr z, jr_00a_47bb

    cp $fd
    jr z, jr_00a_47bb

    ld [de], a
    inc de
    dec c
    jr nz, jr_00a_47bb

    ret


Call_00a_47ca:
jr_00a_47ca:
    ld a, [hl+]
    and a
    jr z, jr_00a_47ca

    cp $fd
    jr z, jr_00a_47ca

    cp $fe
    jr z, jr_00a_47ca

    dec hl
    ret


Call_00a_47d8:
jr_00a_47d8:
    ld a, [hl+]
    cp $fd
    jr z, jr_00a_47d8

    cp $fe
    jr z, jr_00a_47d8

    dec hl
    ret


Jump_00a_47e3:
    call $0fdb
    call Call_00a_4ef8
    ld a, $5b
    ld hl, $5673
    rst $08
    xor a
    ld hl, $cf51
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $01
    ld [$cfa9], a
    inc a
    ld [$cf56], a
    jp Jump_00a_488b


Jump_00a_4803:
    ld a, $01
    ld [$cf5f], a
    ld a, $c1
    ld [$cfa8], a
    ld a, [$d280]
    ld [$cfa3], a
    ld a, $01
    ld [$cfa4], a
    ld a, $09
    ld [$cfa1], a
    ld a, $06
    ld [$cfa2], a
    ld a, $01
    ld [$cfaa], a
    ld a, $10
    ld [$cfa7], a
    ld a, $20
    ld [$cfa5], a
    xor a
    ld [$cfa6], a

Jump_00a_4835:
    ld a, $5b
    ld hl, $570c
    rst $08
    ld a, d
    and a
    jp z, Jump_00a_491c

    bit 0, a
    jr z, jr_00a_485b

    ld a, $01
    ld [$d263], a
    ld hl, $4db9
    ld a, $14
    rst $08
    ld hl, $d288
    ld a, $13
    ld hl, $5319
    rst $08
    jp Jump_00a_491c


jr_00a_485b:
    bit 6, a
    jr z, jr_00a_4883

    ld a, [$cfa9]
    ld b, a
    ld a, [$d280]
    cp b
    jp nz, Jump_00a_491c

    xor a
    ld [$cf5f], a
    call $1bf7
    push hl
    push bc
    ld bc, $000b
    add hl, bc
    ld [hl], $7f
    pop bc
    pop hl
    ld a, [$dcd7]
    ld [$cfa9], a
    jr jr_00a_488b

jr_00a_4883:
    bit 7, a
    jp z, Jump_00a_491c

    jp Jump_00a_4ac9


Jump_00a_488b:
jr_00a_488b:
    ld a, $12
    ld hl, $5856
    rst $08
    xor a
    ld [$cf5f], a
    ld a, $c1
    ld [$cfa8], a
    ld a, [$dcd7]
    ld [$cfa3], a
    ld a, $01
    ld [$cfa4], a
    ld a, $01
    ld [$cfa1], a
    ld a, $06
    ld [$cfa2], a
    ld a, $01
    ld [$cfaa], a
    ld a, $10
    ld [$cfa7], a
    ld a, $20
    ld [$cfa5], a
    xor a
    ld [$cfa6], a
    call $3200

Jump_00a_48c5:
    ld a, $5b
    ld hl, $570c
    rst $08
    ld a, d
    and a
    jr nz, jr_00a_48d2

    jp Jump_00a_491c


jr_00a_48d2:
    bit 0, a
    jr z, jr_00a_48d9

    jp Jump_00a_4926


jr_00a_48d9:
    bit 7, a
    jr z, jr_00a_48fe

    ld a, [$cfa9]
    dec a
    jp nz, Jump_00a_491c

    ld a, $01
    ld [$cf5f], a
    call $1bf7
    push hl
    push bc
    ld bc, $000b
    add hl, bc
    ld [hl], $7f
    pop bc
    pop hl
    ld a, $01
    ld [$cfa9], a
    jp Jump_00a_4803


jr_00a_48fe:
    bit 6, a
    jr z, jr_00a_491c

    ld a, [$cfa9]
    ld b, a
    ld a, [$dcd7]
    cp b
    jr nz, jr_00a_491c

    call $1bf7
    push hl
    push bc
    ld bc, $000b

Jump_00a_4914:
    add hl, bc
    ld [hl], $7f
    pop bc
    pop hl
    jp Jump_00a_4ade


Jump_00a_491c:
jr_00a_491c:
    ld a, [$cf5f]
    and a
    jp z, Jump_00a_48c5

    jp Jump_00a_4835


Jump_00a_4926:
    call $309d
    ld a, [$cfa9]
    push af
    ld hl, $c5cc
    ld b, $01
    ld c, $12
    call Call_00a_4eef
    ld hl, $c5e2
    ld de, $4ab4
    call $1078
    ld a, $13
    ld hl, $5354
    rst $08

Jump_00a_4946:
    ld a, $7f
    ld [$c5eb], a
    ld a, $13
    ld [$cfa8], a
    ld a, $01
    ld [$cfa3], a
    ld a, $01
    ld [$cfa4], a
    ld a, $10
    ld [$cfa1], a

Jump_00a_495f:
    ld a, $01
    ld [$cfa2], a
    ld a, $01
    ld [$cfa9], a
    ld [$cfaa], a
    ld a, $20
    ld [$cfa7], a
    xor a
    ld [$cfa5], a
    ld [$cfa6], a
    call $1bd3
    bit 4, a
    jr nz, jr_00a_498d

    bit 1, a
    jr z, jr_00a_49cd

jr_00a_4983:
    pop af
    ld [$cfa9], a
    call $30b4
    jp Jump_00a_488b


jr_00a_498d:
    ld a, $7f
    ld [$c5e1], a
    ld a, $23
    ld [$cfa8], a
    ld a, $01
    ld [$cfa3], a
    ld a, $01
    ld [$cfa4], a
    ld a, $10
    ld [$cfa1], a
    ld a, $0b
    ld [$cfa2], a
    ld a, $01
    ld [$cfa9], a
    ld [$cfaa], a
    ld a, $20
    ld [$cfa7], a
    xor a
    ld [$cfa5], a
    ld [$cfa6], a
    call $1bd3
    bit 5, a
    jp nz, Jump_00a_4946

    bit 1, a
    jr nz, jr_00a_4983

    jr jr_00a_49fe

jr_00a_49cd:
    pop af
    ld [$cfa9], a
    ld a, $04
    ld [$d263], a
    ld hl, $4db9
    ld a, $14
    rst $08
    ld a, $13
    ld hl, $5319
    rst $08
    call $30b4
    ld hl, $c4ba
    ld bc, $0601
    ld a, $7f
    call Call_00a_4b77
    ld hl, $c4c5
    ld bc, $0601
    ld a, $7f
    call Call_00a_4b77
    jp Jump_00a_488b


jr_00a_49fe:
    call $1bee
    pop af
    ld [$cfa9], a
    dec a
    ld [$d002], a
    ld [$cf56], a
    ld a, $5b
    ld hl, $56ce
    rst $08
    ld a, [$cf51]
    cp $0f
    jp z, Jump_00a_47e3

    ld [$d003], a
    call Call_00a_4b68
    ld c, $64
    call $0468
    ld a, $3e
    ld hl, $757e
    rst $08
    jr c, jr_00a_4a58

    ld a, $3e
    ld hl, $75dd
    rst $08
    jp nc, Jump_00a_4b87

    xor a
    ld [$cf57], a
    ld [$cf52], a
    ld hl, $c590
    ld b, $04
    ld c, $12
    call Call_00a_4eef
    ld a, $13
    ld hl, $5354
    rst $08
    ld hl, $4aaf
    ld bc, $c5b9
    call $13e5
    jr jr_00a_4a89

jr_00a_4a58:
    xor a
    ld [$cf57], a
    ld [$cf52], a
    ld a, [$d003]
    ld hl, $d281
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    call $343b
    ld hl, $c590
    ld b, $04
    ld c, $12
    call Call_00a_4eef
    ld a, $13
    ld hl, $5354
    rst $08
    ld hl, $4ac4
    ld bc, $c5b9
    call $13e5

jr_00a_4a89:
    ld hl, $c590
    ld b, $04
    ld c, $12
    call Call_00a_4eef
    ld hl, $c5b9
    ld de, $4ece
    call $1078
    ld a, $01
    ld [$cf56], a
    ld a, $5b
    ld hl, $56ce
    rst $08
    ld c, $64
    call $0468
    jp Jump_00a_47e3


    ld d, $b1
    ld b, c
    ld [hl], c
    ld d, b
    sub d
    sub e
    add b
    sub e
    sub d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub e
    sub c
    add b
    add e
    add h
    ld d, b
    ld d, $e6
    ld b, c
    ld [hl], c
    ld d, b

Jump_00a_4ac9:
    ld a, [$cfa9]
    cp $01
    jp nz, Jump_00a_491c

    call $1bf7
    push hl
    push bc
    ld bc, $000b
    add hl, bc
    ld [hl], $7f
    pop bc
    pop hl

Jump_00a_4ade:
jr_00a_4ade:
    ld a, $ed
    ld [$c5fd], a

jr_00a_4ae3:
    call $0a57
    ldh a, [$a9]
    and a
    jr z, jr_00a_4ae3

    bit 0, a
    jr nz, jr_00a_4b0b

    push af
    ld a, $7f
    ld [$c5fd], a
    pop af
    bit 6, a
    jr z, jr_00a_4b03

    ld a, [$d280]
    ld [$cfa9], a
    jp Jump_00a_4803


jr_00a_4b03:
    ld a, $01
    ld [$cfa9], a
    jp Jump_00a_488b


jr_00a_4b0b:
    ld a, $ec
    ld [$c5fd], a
    ld a, $0f
    ld [$cf56], a
    ld a, $5b
    ld hl, $56ce
    rst $08
    ld a, [$cf51]
    cp $0f
    jr nz, jr_00a_4ade

Jump_00a_4b22:
    call $04b6
    call $0fdb
    ld b, $08
    call $3340
    call $3200
    xor a
    ld [$cfbb], a
    xor a
    ldh [rSB], a
    ldh [$cd], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ret


    ld hl, $c5e0
    ld a, $7e
    ld bc, $0028
    call $3041
    ld hl, $c5e1
    ld a, $7f
    ld bc, $0012
    call $3041
    ld hl, $c5e2
    ld de, $4b61
    jp $1078


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_00a_4b68:
    ld a, [$cf51]
    ld hl, $c55a
    ld bc, $0014
    call $30fe
    ld [hl], $ec
    ret


Call_00a_4b77:
jr_00a_4b77:
    push bc
    push hl

jr_00a_4b79:
    ld [hl+], a
    dec c
    jr nz, jr_00a_4b79

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_00a_4b77

    ret


Jump_00a_4b87:
    xor a
    ld [$cf57], a
    ld [$cf52], a
    ld hl, $c590
    ld b, $04
    ld c, $12
    call Call_00a_4eef
    ld a, $13
    ld hl, $5354
    rst $08
    ld a, [$d002]
    ld hl, $dcd8
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    call $343b
    ld hl, $d073
    ld de, $d004
    ld bc, $000b
    call $3026
    ld a, [$d003]
    ld hl, $d281
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    call $343b
    ld hl, $4eb8
    ld bc, $c5b9
    call $13e5
    call $1d6e
    ld hl, $c536
    ld b, $03
    ld c, $07
    call Call_00a_4eef
    ld de, $4eab
    ld hl, $c54c
    call $1078
    ld a, $08
    ld [$cfa1], a
    ld a, $0b
    ld [$cfa2], a
    ld a, $01
    ld [$cfa4], a
    ld a, $02
    ld [$cfa3], a
    xor a
    ld [$cfa5], a
    ld [$cfa6], a
    ld a, $20
    ld [$cfa7], a
    ld a, $03
    ld [$cfa8], a
    ld a, $01
    ld [$cfa9], a
    ld [$cfaa], a
    ld a, $13
    ld hl, $5354
    rst $08
    call $1bd3
    push af
    call $1d7d
    call $3200
    pop af
    bit 1, a
    jr nz, jr_00a_4c33

    ld a, [$cfa9]
    dec a
    jr z, jr_00a_4c54

jr_00a_4c33:
    ld a, $01
    ld [$cf56], a
    ld hl, $c590
    ld b, $04
    ld c, $12
    call Call_00a_4eef
    ld hl, $c5b9
    ld de, $4ece
    call $1078
    ld a, $5b
    ld hl, $56ce
    rst $08
    jp Jump_00a_4ea3


jr_00a_4c54:
    ld a, $02
    ld [$cf56], a
    ld a, $5b
    ld hl, $56ce
    rst $08

Jump_00a_4c5f:
    ld a, [$cf51]
    dec a
    jr nz, jr_00a_4c7b

    ld hl, $c590
    ld b, $04
    ld c, $12
    call Call_00a_4eef
    ld hl, $c5b9
    ld de, $4ece
    call $1078
    jp Jump_00a_4ea3


jr_00a_4c7b:
    ld hl, $a600
    ld a, [$d002]
    ld bc, $002f
    call $30fe
    ld a, $00
    call $2fcb
    ld d, h
    ld e, l
    ld bc, $002f
    add hl, bc
    ld a, [$d002]
    ld c, a

jr_00a_4c96:
    inc c
    ld a, c
    cp $06
    jr z, jr_00a_4ca6

    push bc
    ld bc, $002f
    call $3026
    pop bc
    jr jr_00a_4c96

jr_00a_4ca6:
    ld hl, $a600
    ld a, [$dcd7]
    dec a
    ld bc, $002f
    call $30fe
    push hl
    ld hl, $c9f4
    ld a, [$d003]
    ld bc, $002f
    call $30fe
    pop de
    ld bc, $002f
    call $3026
    call $2fe1
    ld hl, $d47d
    ld de, $c6e7
    ld bc, $000b
    call $3026
    ld a, [$d002]
    ld hl, $dcd8
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$c6d0], a
    push af
    ld a, [$d002]
    ld hl, $ddff
    call $30f4
    ld de, $c6f2
    ld bc, $000b
    call $3026
    ld hl, $dce5
    ld a, [$d002]
    call $3927
    ld a, [hl+]
    ld [$c6ff], a
    ld a, [hl]
    ld [$c700], a
    ld hl, $dcf4
    ld a, [$d002]
    call $3927
    ld a, [hl+]
    ld [$c6fd], a
    ld a, [hl]
    ld [$c6fe], a
    ld a, [$d002]
    ld hl, $dcdf
    call $3927
    ld b, h
    ld c, l
    ld a, $13
    ld hl, $7301
    rst $08
    ld a, c
    ld [$c701], a
    ld hl, $d26b
    ld de, $c719
    ld bc, $000b
    call $3026
    ld a, [$d003]
    ld hl, $d281
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$c702], a
    ld a, [$d003]
    ld hl, $d3a8
    call $30f4
    ld de, $c724
    ld bc, $000b
    call $3026
    ld hl, $d28e
    ld a, [$d003]
    call $3927
    ld a, [hl+]
    ld [$c731], a
    ld a, [hl]
    ld [$c732], a
    ld hl, $d29d
    ld a, [$d003]
    call $3927
    ld a, [hl+]
    ld [$c72f], a
    ld a, [hl]
    ld [$c730], a
    ld a, [$d003]
    ld hl, $d288
    call $3927
    ld b, h
    ld c, l
    ld a, $13
    ld hl, $7301
    rst $08
    ld a, c
    ld [$c733], a
    ld a, [$d002]
    ld [$d109], a
    ld hl, $dcd8
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$d002], a
    xor a
    ld [$d10b], a
    ld hl, $6039
    ld a, $03
    rst $08
    ld a, [$dcd7]
    dec a
    ld [$d109], a
    ld a, $01
    ld [$d1e9], a
    ld a, [$d003]
    push af
    ld hl, $d281
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$d003], a
    ld c, $64
    call $0468
    call $0fc8
    call $0e58
    ld b, $08
    call $3340
    ldh a, [$cb]
    cp $01
    jr z, jr_00a_4de4

    ld a, $1e
    call $2d83
    jr jr_00a_4de9

jr_00a_4de4:
    ld a, $1d
    call $2d83

jr_00a_4de9:
    pop af
    ld c, a
    ld [$d109], a
    ld hl, $d281
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$d108], a
    ld hl, $d288
    ld a, c
    call $3927
    ld de, $d10e
    ld bc, $0030
    call $3026
    ld a, $07
    call $2d83
    ld a, [$dcd7]
    dec a
    ld [$d109], a
    ld hl, $61d8
    ld a, $10
    rst $08
    call $0fdb
    call Call_00a_4ef8
    call Call_00a_4eff
    ld a, $13
    ld hl, $5354
    rst $08
    ld b, $01
    pop af
    ld c, a
    cp $97
    jr z, jr_00a_4e49

    ld a, [$d108]
    cp $97
    jr z, jr_00a_4e49

    ld b, $02
    ld a, c
    cp $fb
    jr z, jr_00a_4e49

    ld a, [$d108]
    cp $fb
    jr z, jr_00a_4e49

    ld b, $00

jr_00a_4e49:
    ld a, b
    ld [$cf56], a
    push bc
    call $0862
    pop bc
    ld a, [$c2dc]
    cp $01
    jr z, jr_00a_4e63

    ld a, b
    and a
    jr z, jr_00a_4e63

    ld a, [$cf52]
    cp b
    jr nz, jr_00a_4e49

jr_00a_4e63:
    ld a, $05
    ld hl, $4a58
    rst $08
    ld a, $41
    ld hl, $60af
    rst $08
    ld a, $41
    ld hl, $6187
    rst $08
    ld c, $28
    call $0468
    ld hl, $c590
    ld b, $04
    ld c, $12
    call Call_00a_4eef
    ld hl, $c5b9
    ld de, $4ebd
    call $1078
    ld a, $13
    ld hl, $5354
    rst $08
    ld c, $32
    call $0468
    ld a, [$c2dc]
    cp $01
    jp z, Jump_00a_405d

    jp Jump_00a_4177


Jump_00a_4ea3:
    ld c, $64
    call $0468
    jp Jump_00a_47e3


    sub e
    sub c
    add b
    add e
    add h
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld d, $12
    ld b, d
    ld [hl], c
    ld d, b
    sub e
    or c
    and b
    and e
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    and e
    rst $20
    ld d, b
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld c, [hl]
    or [hl]
    and b
    or d
    ld a, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    and h
    and e
    rst $20
    ld d, b

Call_00a_4eef:
    ld d, h
    ld e, l
    ld a, $5b
    ld hl, $56ca
    rst $08
    ret


Call_00a_4ef8:
    ld a, $5b
    ld hl, $5696
    rst $08
    ret


Call_00a_4eff:
    ld a, $5b
    ld hl, $56a7
    rst $08
    call $32f9
    ret


    ld hl, $c4a0
    ld b, $06
    ld c, $12
    call Call_00a_4eef
    ld hl, $c540
    ld b, $06
    ld c, $12
    call Call_00a_4eef
    ld a, $3e
    ld hl, $760d
    rst $08
    ret


    xor a
    ld [$cf66], a
    ld hl, $c6e7
    ld de, $c719
    call Call_00a_57ff
    ld hl, $c6d0
    ld de, $c702
    call Call_00a_5814
    ld de, $4f3f
    jr jr_00a_4fa1

    dec de
    ld bc, $211c
    dec l
    daa
    inc hl
    inc bc
    dec h
    jr z, @+$27

    ld e, $29
    ld b, $16
    rra
    add hl, de
    rla
    ld [hl+], a
    rra
    ld a, [hl+]
    ld c, $03
    inc h
    dec b
    dec h
    ld [bc], a
    daa
    dec h
    dec e
    inc l
    ld l, $1e
    jr jr_00a_4f81

    dec hl
    xor a
    ld [$cf66], a
    ld hl, $c719
    ld de, $c6e7
    call Call_00a_57ff
    ld hl, $c702
    ld de, $c6d0
    call Call_00a_5814
    ld de, $4f7e
    jr jr_00a_4fa1

    ld a, [de]
    rla
    ld [hl+], a

jr_00a_4f81:
    rra
    ld a, [hl+]
    ld b, $03
    inc h
    dec b
    dec h
    ld [bc], a
    daa
    dec h
    dec e
    inc l
    cpl
    ld e, $18
    rra
    dec de
    ld bc, $221c
    daa
    inc hl
    inc bc
    dec h
    jr z, @+$27

    ld e, $29
    ld c, $16
    rra
    dec hl

jr_00a_4fa1:
    ld hl, $c734
    ld [hl], e
    inc hl
    ld [hl], d
    ldh a, [$de]
    push af
    xor a
    ldh [$de], a
    ld hl, $d0ed
    ld a, [hl]
    push af
    res 0, [hl]
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call Call_00a_4fdb
    ld a, [$cf66]
    and a
    jr nz, jr_00a_4fca

    ld de, $0022
    call $3bbc

jr_00a_4fca:
    call Call_00a_5082
    jr nc, jr_00a_4fca

    pop af
    ld [$cfcc], a
    pop af
    ld [$d0ed], a
    pop af
    ldh [$de], a
    ret


Call_00a_4fdb:
    xor a
    ld [$cf63], a
    call $31f3
    call $300b
    call $0fc8
    call $0568
    call $0e58
    ld hl, $4f53
    ld a, $23
    rst $08
    ldh a, [$e6]
    and a
    jr z, jr_00a_500b

    ld a, $01
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    xor a
    call $3041
    ld a, $00
    ldh [rVBK], a

jr_00a_500b:
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    call $3041
    ld hl, $599b
    ld de, $9310
    call $0b50
    ld hl, $591b
    ld de, $8ed0
    ld bc, $0010
    ld a, $0a
    call $0e8d
    ld hl, $592b
    ld de, $8ee0
    ld bc, $0010
    ld a, $0a
    call $0e8d
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $13
    ld hl, $57fd
    rst $08
    call $058a
    call Call_00a_582b
    ld a, [$c6d0]
    ld hl, $c6fd
    ld de, $8000
    call Call_00a_5491
    ld a, [$c702]
    ld hl, $c72f
    ld de, $8310
    call Call_00a_5491
    ld a, [$c6d0]
    ld de, $c6d1
    call Call_00a_54a9
    ld a, [$c702]
    ld de, $c703
    call Call_00a_54a9
    call Call_00a_57ed
    ret


Call_00a_5082:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_00a_509b

    call Call_00a_50a0
    ld hl, $4f69
    ld a, $23
    rst $08
    ld hl, $cf65
    inc [hl]
    call $045a
    and a
    ret


jr_00a_509b:
    call $0e51
    scf
    ret


Call_00a_50a0:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $50af
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc d
    ld d, c
    ld l, $54
    ld h, c
    ld d, h
    ld c, b
    ld d, e
    ld a, [hl]
    ld d, e
    sub c
    ld d, e
    add hl, hl
    ld d, c
    xor a
    ld d, c
    call nz, $d951
    ld d, c
    ld e, l
    ld d, d
    jr nz, jr_00a_5119

    ld e, l
    ld d, d
    add hl, hl
    ld d, d
    inc a
    ld d, c
    ld e, l
    ld d, d
    add sp, $51
    db $fd
    ld d, c
    ld de, $2052
    ld d, d
    ld e, l
    ld d, d
    add hl, hl
    ld d, d
    ld bc, $3c57
    ld d, a
    ld e, h
    ld d, a
    ld a, a
    ld d, a
    and h
    ld d, a
    and [hl]
    ld d, e
    or [hl]
    ld d, e
    jp nc, $de53

    ld d, e
    ld [$0c53], a
    ld d, h
    rst $20
    ld d, h
    ldh a, [rHDMA4]
    dec de
    ld d, [hl]
    inc l
    ld d, [hl]
    ld a, c
    ld e, b
    add [hl]
    ld e, b
    ld c, c
    ld d, [hl]
    ld h, b
    ld d, [hl]
    ld l, l
    ld d, d
    ld [hl], a
    ld d, d
    inc hl
    ld d, c
    add a
    ld d, h
    ld sp, hl
    ld d, h
    ld [bc], a
    ld d, l
    inc c
    ld d, l

Call_00a_510f:
    ld hl, $cf63
    inc [hl]
    ret


Call_00a_5114:
    ld hl, $c734
    ld e, [hl]
    inc hl

jr_00a_5119:
    ld d, [hl]
    ld a, [de]
    ld [$cf63], a
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


    ld hl, $cf63
    set 7, [hl]
    ret


    ld a, $ed
    call Call_00a_52f6
    ld a, [$c74c]
    ld [$d265], a
    xor a
    ld de, $2c58
    ld b, $00
    jr jr_00a_514e

    ld a, $ee
    call Call_00a_52f6
    ld a, [$c74d]
    ld [$d265], a
    ld a, $02
    ld de, $4c94
    ld b, $04

jr_00a_514e:
    push bc
    push de
    push bc
    push de
    push af
    call $0568
    ld hl, $4f53
    ld a, $23
    rst $08
    ld hl, $9874
    ld bc, $000c
    ld a, $60
    call $3041
    pop af
    call Call_00a_5281
    xor a
    ldh [$cf], a
    ld a, $07
    ldh [$d1], a
    ld a, $70
    ldh [$d2], a
    call $058a
    call Call_00a_585a
    pop de
    ld a, $11
    call $3b2a
    ld hl, $000b
    add hl, bc
    pop bc
    ld [hl], b
    pop de
    ld a, $12
    call $3b2a
    ld hl, $000b
    add hl, bc
    pop bc
    ld [hl], b
    call $31f6
    ld b, $1b
    call $3340
    ld a, $e4
    call $0c9f
    ld a, $d0
    call $0cf8
    call Call_00a_510f
    ld a, $5c
    ld [$cf64], a
    ret


    call Call_00a_581d
    ldh a, [$cf]
    add $02
    ldh [$cf], a
    cp $50
    ret nz

    ld a, $01
    call Call_00a_5281
    call Call_00a_510f
    ret


    call Call_00a_581d
    ldh a, [$cf]
    add $02
    ldh [$cf], a
    cp $a0
    ret nz

    ld a, $02
    call Call_00a_5281
    call Call_00a_510f
    ret


    call Call_00a_581d
    ldh a, [$cf]
    add $02
    ldh [$cf], a
    and a
    ret nz

    call Call_00a_510f
    ret


    call Call_00a_581d
    ldh a, [$cf]
    sub $02
    ldh [$cf], a
    cp $b0
    ret nz

    ld a, $01
    call Call_00a_5281
    call Call_00a_510f
    ret


    call Call_00a_581d
    ldh a, [$cf]
    sub $02
    ldh [$cf], a
    cp $60
    ret nz

    xor a
    call Call_00a_5281
    call Call_00a_510f
    ret


    call Call_00a_581d
    ldh a, [$cf]
    sub $02
    ldh [$cf], a
    and a
    ret nz

    call Call_00a_510f
    ret


    ld a, $80
    ld [$cf64], a
    call Call_00a_510f
    ret


    call $31f3
    call $0fc8
    call $300b
    call $0568
    ld hl, $4f53
    ld a, $23
    rst $08
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    call $3041
    xor a
    ldh [$cf], a
    ld a, $90
    ldh [$d2], a
    call $058a
    call Call_00a_582b
    call $31f6
    call Call_00a_57ed
    call Call_00a_5114
    ret


    call Call_00a_581d
    ld hl, $cf64
    ld a, [hl]

Call_00a_5264:
    and a
    jr z, jr_00a_5269

    dec [hl]
    ret


jr_00a_5269:
    call Call_00a_510f
    ret


    call Call_00a_5114
    ld de, $00b7
    call $3c23
    ret


    call Call_00a_5114
    ld de, $00b8
    call $3c23
    ret


Call_00a_5281:
    and $03
    ld e, a
    ld d, $00
    ld hl, $528f
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub a
    ld d, d
    xor a
    ld d, d
    cp [hl]
    ld d, d
    sub a
    ld d, d
    call Call_00a_57cf
    ld hl, $c4e5
    ld [hl], $5b
    inc hl
    ld bc, $000a
    ld a, $60
    call $3041
    ld hl, $c4cb
    call Call_00a_52ec
    ret


    call Call_00a_57cf
    ld hl, $c4dc
    ld bc, $0014
    ld a, $60
    call $3041
    ret


    call Call_00a_57cf
    ld hl, $c4dc
    ld bc, $0011
    ld a, $60
    call $3041
    ld hl, $c4ed
    ld a, $5d
    ld [hl], a
    ld a, $61
    ld de, $0014
    ld c, $03

jr_00a_52d9:
    add hl, de
    ld [hl], a
    dec c
    jr nz, jr_00a_52d9

    add hl, de
    ld a, $5f
    ld [hl-], a
    ld a, $5b
    ld [hl], a
    ld hl, $c522
    call Call_00a_52ec
    ret


Call_00a_52ec:
    ld de, $58c7
    ld bc, $0806
    call Call_00a_57db
    ret


Call_00a_52f6:
    push af
    call $31f3
    call $163a
    ld a, $9c
    ldh [$d7], a
    call $0fc8
    ld hl, $c4a0
    ld bc, $0014
    ld a, $7a
    call $3041
    ld hl, $c4b4
    ld de, $c736
    call $1078
    ld hl, $c741
    ld de, $0000

jr_00a_531e:
    ld a, [hl+]
    cp $50
    jr z, jr_00a_5326

    dec de
    jr jr_00a_531e

jr_00a_5326:
    ld hl, $c4f0
    add hl, de
    ld de, $c741
    call $1078
    ld hl, $c4cf
    ld bc, $0006
    pop af
    call $3041
    call $31f6
    call $163a
    ld a, $98
    ldh [$d7], a
    call $0fc8
    ret


    call $0fc8
    call $163a
    ld a, $a0
    ldh [$cf], a
    call $045a
    ld hl, $c4d0
    ld de, $58f7
    ld bc, $030c
    call Call_00a_57db
    call $31f6
    ld b, $1b
    call $3340
    ld a, $e4
    call $0c9f
    ld de, $e4e4
    call $0ccb
    ld de, $0004
    call $3c23
    call Call_00a_510f
    ret


    ldh a, [$cf]
    and a
    jr z, jr_00a_5388

    add $04
    ldh [$cf], a
    ret


jr_00a_5388:
    ld c, $50
    call $0468
    call Call_00a_5114
    ret


    ldh a, [$cf]
    cp $a0
    jr z, jr_00a_539c

    sub $04
    ldh [$cf], a
    ret


jr_00a_539c:
    call $0fc8
    xor a
    ldh [$cf], a
    call Call_00a_5114
    ret


    ld a, $8f
    ldh [$d1], a
    ld a, $88
    ldh [$cf], a
    ld a, $50
    ldh [$d2], a
    call Call_00a_5114
    ret


    ldh a, [$d1]
    cp $07
    jr z, jr_00a_53c7

    sub $04
    ldh [$d1], a
    ldh a, [$cf]
    sub $04
    ldh [$cf], a
    ret


jr_00a_53c7:
    ld a, $07
    ldh [$d1], a
    xor a
    ldh [$cf], a
    call Call_00a_5114
    ret


    ld a, $07
    ldh [$d1], a
    ld a, $50
    ldh [$d2], a
    call Call_00a_5114
    ret


    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    call Call_00a_5114
    ret


    call $163a
    ld a, $9c
    ldh [$d7], a
    call $31f6
    ld a, $07
    ldh [$d1], a
    xor a
    ldh [$d2], a
    call $045a
    call $163a
    ld a, $98
    ldh [$d7], a
    call $0fc8
    call Call_00a_510f
    ret


    ldh a, [$d1]
    cp $a1
    jr nc, jr_00a_5417

    add $04
    ldh [$d1], a
    ret


jr_00a_5417:
    ld a, $9c
    ldh [$d7], a
    call $31f6
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $98
    ldh [$d7], a
    call Call_00a_5114
    ret


    call Call_00a_551f
    ld a, [$c6d0]
    ld [$d108], a
    ld a, [$c6fd]
    ld [$d123], a
    ld a, [$c6fe]
    ld [$d124], a
    ld b, $1a
    call $3340
    ld a, $e4
    call $0c9f
    call Call_00a_54bb
    ld a, [$c6d0]
    call $381e
    jr c, jr_00a_545d

    ld e, c
    ld d, b
    call $3be3

jr_00a_545d:
    call Call_00a_5114
    ret


    call Call_00a_5549
    ld a, [$c702]
    ld [$d108], a
    ld a, [$c72f]
    ld [$d123], a
    ld a, [$c730]
    ld [$d124], a
    ld b, $1a
    call $3340
    ld a, $e4
    call $0c9f
    call Call_00a_54c0
    call Call_00a_5114
    ret


    ld a, $13
    ld hl, $581e
    rst $08
    call Call_00a_5114
    ret


Call_00a_5491:
    push de
    push af
    ld a, $2d
    call $2d83
    pop af
    ld [$d108], a
    ld [$cf60], a
    call $3856
    pop de
    ld a, $3c
    call $2d83
    ret


Call_00a_54a9:
    push de
    ld [$d265], a
    call $343b
    ld hl, $d073
    pop de
    ld bc, $000b
    call $3026
    ret


Call_00a_54bb:
    ld de, $8000
    jr jr_00a_54c3

Call_00a_54c0:
    ld de, $8310

jr_00a_54c3:
    call $045a
    ld hl, $9000
    ld bc, $0a31
    call $0eba
    call $163a
    call Call_00a_57cf
    ld hl, $c4cf
    xor a
    ldh [$ad], a
    ld bc, $0707
    ld a, $13
    call $2d83
    call $31f6
    ret


    ld c, $50
    call $0468
    call Call_00a_5114
    ret


    ld c, $28
    call $0468
    call Call_00a_5114
    ret


    ld c, $60
    call $0468
    call Call_00a_5114
    ret


    call Call_00a_5516
    ret nz

    ld c, $50
    call $0468
    ret


    call Call_00a_5516
    ret nz

    ld c, $b4
    call $0468
    ret


Call_00a_5516:
    call Call_00a_5114
    ld a, [$c702]
    cp $fd
    ret


Call_00a_551f:
    ld de, $c6d0
    ld a, [de]
    cp $fd
    jr z, jr_00a_55a1

    call Call_00a_5573
    ld de, $c6d0
    call Call_00a_55e3
    ld de, $c6d1
    call Call_00a_55ef
    ld a, [$c701]
    ld de, $c6f2
    call Call_00a_55f6
    ld de, $c6ff
    call Call_00a_5611
    call Call_00a_55d8
    ret


Call_00a_5549:
    ld de, $c702
    ld a, [de]
    cp $fd
    jr z, jr_00a_55a1

    call Call_00a_5573
    ld de, $c702
    call Call_00a_55e3
    ld de, $c703
    call Call_00a_55ef
    ld a, [$c733]
    ld de, $c724
    call Call_00a_55f6
    ld de, $c731
    call Call_00a_5611
    call Call_00a_55d8
    ret


Call_00a_5573:
    call $163a
    call Call_00a_57cf
    ld a, $9c
    ldh [$d7], a
    ld hl, $c4a3
    ld b, $06
    ld c, $0d
    call $0fe8
    ld hl, $c4a4
    ld de, $5591
    call $1078
    ret


    ld a, d
    ld a, d
    ld a, d
    ld a, a
    ld [hl], h
    add sp, $4e
    ld c, [hl]
    adc [hl]
    sub e
    di
    ld c, [hl]
    ld [hl], e
    ld [hl], h
    add sp, $50

jr_00a_55a1:
    call $163a
    call Call_00a_57cf
    ld a, $9c
    ldh [$d7], a
    ld hl, $c4a3
    ld b, $06
    ld c, $0d
    call $0fe8
    ld hl, $c4cc
    ld de, $55c2
    call $1078
    call Call_00a_55d8
    ret


    add h
    add [hl]
    add [hl]
    ld c, [hl]
    adc [hl]
    sub e
    di
    and $e6
    and $e6
    and $4e
    ld [hl], e
    ld [hl], h
    add sp, -$1a
    and $e6
    and $e6
    ld d, b

Call_00a_55d8:
    call $31f6
    call $163a
    ld a, $98
    ldh [$d7], a
    ret


Call_00a_55e3:
    ld hl, $c4aa
    ld bc, $8103
    call $3198
    ld [hl], $7f
    ret


Call_00a_55ef:
    ld hl, $c4cc
    call $1078
    ret


Call_00a_55f6:
    cp $03
    jr c, jr_00a_55fb

    xor a

jr_00a_55fb:
    push af
    ld hl, $c4f7
    call $1078
    inc bc
    pop af
    ld hl, $560e
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld [bc], a
    ret


    ld a, a
    rst $28
    push af

Call_00a_5611:
    ld hl, $c51f
    ld bc, $8205
    call $3198
    ret


    ld de, $5458
    ld a, $0e
    call $3b2a
    call Call_00a_5114
    ld a, $20
    ld [$cf64], a
    ret


    ld de, $5458
    ld a, $0e
    call $3b2a
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $0007
    add hl, bc
    ld [hl], $dc
    call Call_00a_5114
    ld a, $38
    ld [$cf64], a
    ret


    ld de, $5458
    ld a, $0f
    call $3b2a
    call Call_00a_5114
    ld a, $10
    ld [$cf64], a
    ld de, $0029
    call $3c23
    ret


    ld a, $e4
    call $0cf8
    ld de, $2858
    ld a, $10
    call $3b2a
    call Call_00a_5114
    ld a, $40
    ld [$cf64], a
    ret


    ld hl, $000b
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $5686
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sbc d
    ld d, [hl]
    and h
    ld d, [hl]
    xor a
    ld d, [hl]
    cp l
    ld d, [hl]
    rst $08
    ld d, [hl]
    db $dd
    ld d, [hl]
    ld a, [c]
    ld d, [hl]

Call_00a_5694:
    ld hl, $000b
    add hl, bc
    inc [hl]
    ret


    call Call_00a_5694
    ld hl, $000c
    add hl, bc
    ld [hl], $80
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    dec [hl]
    and a
    ret nz

    call Call_00a_5694
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $94
    jr nc, jr_00a_56ba

    inc [hl]
    ret


jr_00a_56ba:
    call Call_00a_5694
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $4c
    jr nc, jr_00a_56c8

    inc [hl]
    ret


jr_00a_56c8:
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $2c
    jr z, jr_00a_56da

    dec [hl]
    ret


jr_00a_56da:
    call Call_00a_5694
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $58
    jr z, jr_00a_56e8

    dec [hl]
    ret


jr_00a_56e8:
    call Call_00a_5694
    ld hl, $000c
    add hl, bc
    ld [hl], $80
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    dec [hl]
    and a
    ret nz

    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


    ld a, [$c2dc]
    cp $01
    jr z, jr_00a_5725

    ld hl, $5737
    call $1057
    ld c, $bd
    call $0468
    ld hl, $5732
    call $1057
    call Call_00a_57c9
    ld c, $80
    call $0468
    call Call_00a_5114
    ret


jr_00a_5725:
    ld hl, $5732
    call $1057
    call Call_00a_57c9
    call Call_00a_5114
    ret


    ld d, $e9
    ld b, [hl]
    ld l, a
    ld d, b
    ld d, $01
    ld b, a
    ld l, a
    ld d, b
    ld hl, $5752
    call $1057
    call Call_00a_57c9
    ld hl, $5757
    call $1057
    call Call_00a_57c9
    call Call_00a_5114
    ret


    ld d, $03
    ld b, a
    ld l, a
    ld d, b
    ld d, $19
    ld b, a
    ld l, a
    ld d, b
    call $163a
    ld hl, $c568
    ld bc, $00a0
    ld a, $7f
    call $3041
    call $31f6
    ld hl, $577a
    call $1057
    call Call_00a_57c9
    call Call_00a_5114
    ret


    ld d, $1f
    ld b, a
    ld l, a
    ld d, b
    ld hl, $579a
    call $1057
    call Call_00a_57c9
    ld hl, $579f
    call $1057
    call Call_00a_57c9
    ld c, $0e
    call $0468
    call Call_00a_5114
    ret


    ld d, $39
    ld b, a
    ld l, a
    ld d, b
    ld d, $4c
    ld b, a
    ld l, a
    ld d, b
    ld hl, $57bf
    call $1057
    call Call_00a_57c9
    ld hl, $57c4
    call $1057
    call Call_00a_57c9
    ld c, $0e
    call $0468
    call Call_00a_5114
    ret


    ld d, $5e
    ld b, a
    ld l, a
    ld d, b
    ld d, $74
    ld b, a
    ld l, a
    ld d, b

Call_00a_57c9:
    ld c, $50
    call $0468
    ret


Call_00a_57cf:
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ret


Call_00a_57db:
jr_00a_57db:
    push bc
    push hl

jr_00a_57dd:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_00a_57dd

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_00a_57db

    ret


Call_00a_57ed:
    ldh a, [$e7]
    and a
    ld a, $e4
    jr z, jr_00a_57f6

    ld a, $f0

jr_00a_57f6:
    call $0cf8
    ld a, $e4
    call $0c9f
    ret


Call_00a_57ff:
    push de
    ld de, $c736

Jump_00a_5803:
    ld bc, $000b
    call $3026
    pop hl
    ld de, $c741
    ld bc, $000b

Jump_00a_5810:
    call $3026
    ret


Call_00a_5814:
    ld a, [hl]
    ld [$c74c], a
    ld a, [de]
    ld [$c74d], a
    ret


Call_00a_581d:
    ld a, [$cf65]
    and $07
    ret nz

    ldh a, [rBGP]
    xor $3c
    call $0c9f
    ret


Call_00a_582b:
    call $045a
    ld de, $5adb
    ld hl, $8620
    ld bc, $0a06
    call $0eba
    ld de, $5b3b
    ld hl, $8680
    ld bc, $0a0c
    call $0eba
    ld de, $593b
    ld hl, $8740
    ld bc, $0a04
    call $0eba
    xor a
    ld hl, $c300
    ld [hl+], a
    ld [hl], $62
    ret


Call_00a_585a:
    call $045a
    ld e, $03
    ld hl, $683f
    ld a, $23
    rst $08
    ld de, $595b
    ld hl, $8720
    ld bc, $0a04
    call $0eba
    xor a
    ld hl, $c300
    ld [hl+], a
    ld [hl], $62
    ret


    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_00a_5882

    dec [hl]
    ret


jr_00a_5882:
    call Call_00a_5114
    ret


    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_00a_588f

    dec [hl]
    ret


jr_00a_588f:
    call Call_00a_5114
    ret


    ld hl, $58b5
    ld a, [hl+]
    ld [$c6d0], a
    ld de, $c6e7
    ld c, $0d

jr_00a_589f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_00a_589f

    ld a, [hl+]
    ld [$c702], a
    ld de, $c719
    ld c, $0d

jr_00a_58ae:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_00a_58ae

    ret


    inc bc
    ld [$9be3], sp
    ret c

    ld d, b
    ld d, b
    inc hl
    ld bc, $8706
    ret c

    db $e3
    sub b
    xor l
    ld d, b
    ld d, [hl]
    inc b
    ld sp, $3232
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $36
    scf
    jr c, jr_00a_5908

    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    jr c, jr_00a_5916

    dec a
    ld a, $3e
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, e
    ld c, b
    ld c, c
    ld c, d
    ld b, c
    ld b, e
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld d, b
    ld d, c
    ld d, d
    ld b, e
    ld d, l
    ld d, [hl]
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld b, e
    ld d, a
    ld e, b
    ld d, h
    ld d, h

jr_00a_5908:
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld e, c
    ld e, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_00a_5916:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    nop
    jr nc, jr_00a_591e

jr_00a_591e:
    jr c, jr_00a_5920

jr_00a_5920:
    inc a
    nop
    ld a, $00
    ld a, $00
    inc a
    nop
    jr c, jr_00a_592a

jr_00a_592a:
    jr nc, jr_00a_592c

jr_00a_592c:
    inc c
    nop
    inc e
    nop
    inc a
    nop
    ld a, h
    nop
    ld a, h
    nop
    inc a
    nop
    inc e
    nop
    inc c
    nop
    nop
    nop
    nop
    rra
    rra
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    rlca
    rlca
    rra
    rra
    ld a, b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    inc bc
    inc bc
    rlca
    ld c, $07
    nop
    nop
    rlca
    nop
    scf
    rrca
    cp a
    ld a, a
    ei
    db $fc
    rst $18
    ldh [$7f], a
    add b
    rst $38
    nop
    dec e
    ld c, $0f
    inc e
    dec sp
    inc e
    ccf
    jr jr_00a_59a3

    jr c, jr_00a_59fd

    jr c, jr_00a_5a07

    jr nc, jr_00a_5a09

    jr nc, @+$01

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
    dec b
    ccf
    ccf
    ld a, a
    ld a, a
    ldh [$e0], a
    inc hl

jr_00a_59a3:
    ret nz

    ld bc, $c3c3
    inc hl
    rst $00
    inc hl
    rst $38
    ld h, d
    add $80
    rlca
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    inc e
    inc e
    dec h
    inc c
    inc hl
    adc h
    cpl
    rst $00
    ld bc, $ffff
    ld b, l
    rst $38
    ldh [rSB], a
    ccf
    ldh [$c7], a
    add c
    ld c, [hl]
    rst $38
    nop
    nop
    rst $38
    ld c, l
    rst $38
    rra
    cpl
    adc h
    ld d, b
    rst $38
    ldh [rP1], a
    nop
    ld c, l
    rst $38
    nop
    ld c, a
    rst $38
    rra
    dec l
    rst $00
    ld bc, $c3c3
    ld c, b
    rst $38
    ldh [rNR50], a
    rst $38
    add [hl]
    db $fd
    res 0, c
    ret


    rst $30
    inc b
    rst $38
    cp $fe
    ld hl, sp-$08
    inc hl
    adc h
    ret


    nop
    cpl
    ld bc, $0c0c
    cpl
    ret nz

jr_00a_59fd:
    ld h, a
    inc hl
    ldh a, [$c3]
    add b
    ld a, l
    ld bc, $0f0f
    cpl

jr_00a_5a07:
    inc c
    daa

jr_00a_5a09:
    rst $08
    daa
    ret nz

    ld bc, $9f9f
    inc hl
    ld l, a
    ld bc, $9f9f
    adc c
    rst $08
    inc bc
    rrca
    rrca
    add hl, de
    add hl, de
    inc hl
    rla
    ld bc, $1f1f
    and e
    adc l
    add e
    adc e
    rlca
    sub a
    sub a
    sbc a
    sbc a
    adc a
    adc a
    add b
    add b
    ld h, e
    adc a
    nop
    ldh a, [$67]
    inc bc
    ld hl, sp-$08
    ld hl, sp-$08
    ld h, e
    sub l
    adc a
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld [$0208], sp
    ld [bc], a
    jr z, jr_00a_5a6b

    ld [bc], a
    ld [bc], a
    ret


    or b
    add l
    add l
    add hl, hl
    ret nz

    push bc
    nop
    dec b
    ld l, e
    inc hl
    rst $38

Call_00a_5a51:
    dec b
    ld [$2208], sp
    ld [hl+], a
    ld [$6308], sp
    ld bc, $0101
    inc hl
    rst $38
    jp $2700


    add hl, bc
    jr jr_00a_5a7c

    jr c, jr_00a_5a9e

    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    ret nz

jr_00a_5a6b:
    ret nz

    adc e
    xor c
    add h
    nop
    push de
    ld b, $00
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $08
    or [hl]
    add hl, bc

jr_00a_5a7c:
    rra
    rra
    ld a, a
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    cp $8f
    xor a
    ld c, l
    jp $83fc


    sub [hl]
    inc b
    ldh [$1f], a
    ret nz

    ccf
    pop bc
    xor b
    adc a
    ld b, e
    jp $04fc


    db $e3
    db $fc
    rst $38
    rst $38
    ld a, a

jr_00a_5a9e:
    and [hl]
    cp c
    xor a
    adc a
    inc bc
    cp $fe
    ld h, a
    ld h, a
    inc hl
    ld a, [hl]
    ret


    add b
    dec c
    ccf
    nop
    ld h, b
    rra
    ld c, a
    ccf
    ld e, a
    ccf
    ld e, b
    ccf
    ld e, e
    inc a
    ld e, d
    inc a
    xor a
    adc a
    inc bc
    ld e, d
    inc a
    ld e, e
    inc a
    call nz, $0299
    ccf
    ld h, b
    rra
    add e
    ld bc, $afef
    adc a
    ld [bc], a
    nop
    nop
    rst $38
    ret z

    ld [bc], a
    dec sp
    nop
    rst $38
    add d
    sbc a
    ld c, a
    ld e, d
    inc a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld de, $111e
    ld e, $20
    ccf
    jr nz, jr_00a_5b2e

    jr c, jr_00a_5b18

    ccf
    jr nz, jr_00a_5b13

    db $10
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00a_5b03:
    rlca
    rlca
    jr jr_00a_5b26

    inc hl
    inc a
    inc hl
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_5b13:
    add b
    add b
    ld h, b
    ldh [rNR10], a

jr_00a_5b18:
    ldh a, [rNR10]
    ldh a, [rLCDC]
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, [hl]
    ccf
    jr nz, jr_00a_5b65

jr_00a_5b26:
    jr nz, jr_00a_5b47

    jr jr_00a_5b31

    rlca
    ld [$18f8], sp

jr_00a_5b2e:
    add sp, $38
    ret z

jr_00a_5b31:
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [$60], a
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
    nop
    nop

jr_00a_5b47:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    add hl, sp
    ccf
    ld b, b
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0102
    ld [bc], a

jr_00a_5b65:
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $7f02
    add b
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [$0e]
    ret nz

    ld a, $c0
    inc a
    add b
    ld [hl], b
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0302
    inc e
    dec e
    ld [hl+], a
    rra
    jr nz, jr_00a_5bc8

    ld b, c
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$07f8], sp
    db $fd
    ld [bc], a
    ldh a, [rIF]
    ldh [rNR34], a
    ld b, b
    cp h
    ld a, $41
    inc e
    ld h, e
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    inc e
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld [$110e], sp
    ld e, $21
    inc e

jr_00a_5bc8:
    ld [hl+], a
    jr nc, @+$4e

    nop
    ld [hl], b
    ld [hl], b
    adc h
    ldh a, [$0e]
    add b
    ld a, h
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    jr nc, @+$4e

    ld h, b
    sbc b
    ld h, b
    sbc b
    ld h, b
    sub b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    jr nz, jr_00a_5bea

jr_00a_5bea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $dcd8
    ld b, $06

jr_00a_5c00:
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_5c0c

    cp $98
    jr nc, jr_00a_5c42

    dec b
    jr nz, jr_00a_5c00

jr_00a_5c0c:
    ld a, [$dcd7]
    ld b, a
    ld hl, $dce0

jr_00a_5c13:
    push hl
    push bc
    ld d, [hl]
    ld a, $2e
    ld hl, $5e76
    rst $08
    pop bc
    pop hl
    jr c, jr_00a_5c5e

    ld de, $0030
    add hl, de
    dec b
    jr nz, jr_00a_5c13

    ld hl, $dce1
    ld a, [$dcd7]
    ld b, a

jr_00a_5c2e:
    ld c, $04

jr_00a_5c30:
    ld a, [hl+]
    cp $a6
    jr nc, jr_00a_5c4c

    dec c
    jr nz, jr_00a_5c30

    ld de, $002c
    add hl, de
    dec b
    jr nz, jr_00a_5c2e

    xor a
    jr jr_00a_5c63

jr_00a_5c42:
    ld [$d265], a
    call $343b
    ld a, $01
    jr jr_00a_5c63

jr_00a_5c4c:
    push bc
    ld [$d265], a
    call $34f8
    call $30d6
    pop bc
    call Call_00a_5c67
    ld a, $02
    jr jr_00a_5c63

jr_00a_5c5e:
    call Call_00a_5c67
    ld a, $03

jr_00a_5c63:
    ld [$c2dd], a
    ret


Call_00a_5c67:
    ld a, [$dcd7]
    sub b
    ld c, a
    inc c
    ld b, $00
    ld hl, $dcd7
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    call $343b
    ret


    ld c, $0a
    call $0468
    ld a, $04
    call Call_00a_5f17
    ld c, $28
    call $0468
    xor a
    ldh [$9e], a
    inc a
    ld [$c2dc], a
    ret


    ld c, $03
    call $0468
    ld a, $ff
    ldh [$cb], a
    xor a
    ldh [rSB], a
    ldh [$ce], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ld c, $03
    call $0468
    xor a
    ldh [rSB], a
    ldh [$ce], a
    ld a, $00
    ldh [rSC], a
    ld a, $80
    ldh [rSC], a
    ld c, $03
    call $0468
    xor a
    ldh [rSB], a
    ldh [$ce], a
    ldh [rSC], a
    ld c, $03
    call $0468
    ld a, $ff
    ldh [$cb], a
    ldh a, [rIF]
    push af
    xor a
    ldh [rIF], a
    ld a, $0f
    ldh [rIE], a
    pop af
    ldh [rIF], a
    ld hl, $cf5b
    xor a
    ld [hl+], a
    ld [hl], a
    ldh [$9e], a
    ld [$c2dc], a
    ret


    ld a, $01
    ld [$cf56], a
    ld [$d265], a
    ret


    ld a, $02
    ld [$cf56], a
    ld [$d265], a
    ret


    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ce], a
    ld a, $00
    ldh [rSC], a
    ld a, $80
    ldh [rSC], a
    xor a
    ld [$cf56], a
    ld [$d265], a
    ret


    ld a, [$cf56]
    and a
    jr z, jr_00a_5d2f

    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ce], a
    ld a, $00
    ldh [rSC], a
    ld a, $80
    ldh [rSC], a
    call $045a
    call $045a
    call $045a

jr_00a_5d2f:
    ld a, $02
    ld [$cf5c], a
    ld a, $ff
    ld [$cf5b], a

jr_00a_5d39:
    ldh a, [$cb]
    cp $02
    jr z, jr_00a_5d79

    cp $01
    jr z, jr_00a_5d79

    ld a, $ff
    ldh [$cb], a
    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ce], a
    ld a, $00
    ldh [rSC], a
    ld a, $80
    ldh [rSC], a
    ld a, [$cf5b]
    dec a
    ld [$cf5b], a
    jr nz, jr_00a_5d68

Jump_00a_5d5f:
    ld a, [$cf5c]
    dec a
    ld [$cf5c], a
    jr z, jr_00a_5d8d

jr_00a_5d68:
    ld a, $01
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    call $045a
    jr jr_00a_5d39

jr_00a_5d79:
    call $0908
    call $045a
    call $0908
    ld c, $32
    call $0468
    ld a, $01
    ld [$c2dd], a
    ret


jr_00a_5d8d:
    xor a
    ld [$c2dd], a
    ret


    ld a, $01
    ld [$cf56], a
    ld hl, $cf5b
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    call $31f6
    ld a, $02
    ldh [$9e], a
    call $045a
    call $045a
    call Call_00a_5e0c
    xor a
    ldh [$9e], a
    ld a, [$c2dd]
    and a
    ret nz

    jp Jump_00a_5f04


Call_00a_5dba:
    ld a, $05
    ld [$cf56], a
    ld hl, $cf5b
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    call $31f6
    ld a, $02
    ldh [$9e], a
    call $045a
    call $045a
    call Call_00a_5e0c
    ld a, [$c2dd]
    and a
    jr z, jr_00a_5e08

    ld bc, $ffff

jr_00a_5de0:
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_5de0

    ld a, [$cf51]
    cp $05
    jr nz, jr_00a_5e03

    ld a, $06
    ld [$cf56], a
    ld hl, $cf5b
    ld a, $01
    ld [hl+], a
    ld [hl], $32
    call Call_00a_5e0c
    ld a, [$cf51]
    cp $06
    jr z, jr_00a_5e08

jr_00a_5e03:
    xor a
    ld [$c2dd], a
    ret


jr_00a_5e08:
    xor a
    ldh [$9e], a
    ret


Call_00a_5e0c:
    xor a
    ldh [$ca], a
    ld a, [$cf5b]
    ld h, a
    ld a, [$cf5c]
    ld l, a
    push hl
    call Call_00a_5e3b
    pop hl
    jr nz, jr_00a_5e2f

    call Call_00a_5e47
    call Call_00a_5e53
    call Call_00a_5e3b
    jr nz, jr_00a_5e2f

    call Call_00a_5e47
    xor a
    jr jr_00a_5e31

jr_00a_5e2f:
    ld a, $01

jr_00a_5e31:
    ld [$c2dd], a
    ld hl, $cf5b
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00a_5e3b:
    call $087d
    ld hl, $cf5b
    ld a, [hl+]
    inc a
    ret nz

    ld a, [hl]
    inc a
    ret


Call_00a_5e47:
    ld b, $0a

jr_00a_5e49:
    call $045a
    call $0908
    dec b
    jr nz, jr_00a_5e49

    ret


Call_00a_5e53:
    dec h
    srl h
    rr l
    srl h
    rr l
    inc h
    ld a, h
    ld [$cf5b], a
    ld a, l
    ld [$cf5c], a
    ret


    ld a, [$d265]
    push af
    ld a, $05
    ld hl, $4ab2
    rst $08
    ld a, $01
    jr nc, jr_00a_5e75

    xor a

jr_00a_5e75:
    ld [$c2dd], a
    ld c, $1e
    call $0468
    pop af
    ld [$d265], a
    ret


    ld a, [$d265]
    call Call_00a_5f17
    push af
    call $0908
    call $045a
    call $0908
    pop af
    ld b, a
    ld a, [$d265]
    cp b
    jr nz, jr_00a_5eaa

    ld a, [$d265]
    inc a
    ld [$c2dc], a
    xor a
    ldh [$9e], a
    ld a, $01
    ld [$c2dd], a
    ret


jr_00a_5eaa:
    xor a
    ld [$c2dd], a
    ret


    ld a, $01
    ld [$c2dc], a
    call $2ed3
    ld hl, $4000
    ld a, $0a
    rst $08
    call $2ee4
    xor a
    ldh [$9e], a
    ret


    ld a, $02
    ld [$c2dc], a
    call $2ed3
    ld hl, $4000
    ld a, $0a
    rst $08
    call $2ee4
    xor a
    ldh [$9e], a
    ret


    ld a, $03
    ld [$c2dc], a
    call $2ed3
    ld hl, $4000
    ld a, $0a
    rst $08
    call $2ee4
    xor a
    ldh [$9e], a
    ret


    xor a
    ld [$c2dc], a
    ld c, $03
    call $0468
    jp Jump_00a_5f04


    ld c, $28
    call $0468
    ld a, $0e
    jp Jump_00a_5f17


Jump_00a_5f04:
    ld c, $03
    call $0468
    ld a, $ff
    ldh [$cb], a
    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ce], a
    ldh [rSC], a
    ret


Call_00a_5f17:
Jump_00a_5f17:
    add $d0
    ld [$cf56], a
    ld [$cf57], a
    ld a, $02
    ldh [$9e], a
    call $045a
    call $045a

jr_00a_5f29:
    call $083b
    ld a, [$cf51]
    ld b, a
    and $f0
    cp $d0
    jr z, jr_00a_5f40

    ld a, [$cf52]
    ld b, a
    and $f0
    cp $d0
    jr nz, jr_00a_5f29

jr_00a_5f40:
    xor a
    ldh [$9e], a
    ld a, b
    and $0f
    ret


    ldh a, [$cb]
    cp $01
    ld a, $01
    jr z, jr_00a_5f50

    dec a

jr_00a_5f50:
    ld [$c2dd], a
    ret


    nop
    nop
    nop

jr_00a_5f57:
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    ld b, c
    xor [hl]
    inc b
    ei
    jr nz, jr_00a_5fc1

    inc b
    ld [de], a
    nop

jr_00a_5f67:
    rla
    ld [bc], a
    dec d
    nop
    rla
    nop
    dec d
    ld bc, $0416
    inc de
    nop
    dec d
    inc b
    cp d
    jr nz, jr_00a_5f57

    add d
    ld [hl], l
    nop
    ldh [rP1], a
    rst $20
    ld b, b
    xor b

jr_00a_5f80:
    nop
    add sp, $20
    ld c, b
    inc b
    cp d
    jr nz, jr_00a_5f67

    add d
    ld [hl], l
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    cp d
    jr nz, @-$1f

    add d
    ld [hl], l
    nop
    rlca
    nop
    push hl
    ld bc, $0416
    inc de
    nop
    dec d
    nop
    xor b
    jr nz, @-$36

    add b
    ld l, b
    nop
    add sp, $00
    add sp, $40
    xor b
    nop
    add sp, $20
    ld c, b
    nop
    xor b
    jr nz, jr_00a_5f80

    add b
    ld l, b
    nop
    rst $20
    nop
    ldh [rSTAT], a
    xor [hl]
    inc b

jr_00a_5fc1:
    ei
    jr nz, @+$5f

    inc b
    ld [de], a
    nop
    rla
    ld [bc], a
    dec d
    nop
    rst $20
    nop
    dec b
    ld b, c
    xor [hl]
    inc b
    ei
    jr nz, @+$5f

    inc b
    cp d
    jr nz, @-$1f

    add d
    ld [hl], l
    nop
    rst $28
    nop
    push af
    ld b, c
    xor [hl]
    inc b
    ei
    jr nz, @+$5f

    ld a, $00
    call $2fcb
    ld d, $00
    ld b, $02
    ld a, $03
    call $2d83
    call $2fe1
    ld a, c
    and a
    ret


    call Call_00a_6205
    jr c, jr_00a_6006

    ld hl, $d25a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jr jr_00a_6011

jr_00a_6006:
    inc hl
    inc hl
    ld de, $d25a
    ld bc, $0003
    call $3026

jr_00a_6011:
    call Call_00a_621d
    ld a, $00
    jr nc, jr_00a_601b

    inc hl
    inc hl
    ld a, [hl]

jr_00a_601b:
    ld [$d25d], a
    ret


    ld hl, $c4a0
    ld bc, $0168
    xor a
    call $3041
    ld a, e
    and a
    jr nz, jr_00a_6043

    ld de, $c4a0
    ld hl, $65e9
    call Call_00a_6052
    ld hl, $711d
    call Call_00a_606e
    call Call_00a_60b7
    call Call_00a_60cf
    ret


jr_00a_6043:
    ld de, $c4a0
    ld hl, $7274
    call Call_00a_6052
    ld hl, $77f7
    jp Jump_00a_606e


Call_00a_6052:
jr_00a_6052:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    inc hl
    inc hl
    inc hl
    ld a, $15
    call Call_00a_6088
    jr nc, jr_00a_6067

    ld [de], a
    inc de

jr_00a_6067:
    pop hl
    ld bc, $002f
    add hl, bc
    jr jr_00a_6052

Call_00a_606e:
Jump_00a_606e:
jr_00a_606e:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    inc hl
    ld a, $03
    call Call_00a_6088
    jr nc, jr_00a_6081

    ld [de], a
    inc de

jr_00a_6081:
    pop hl
    ld bc, $0009
    add hl, bc
    jr jr_00a_606e

Call_00a_6088:
    inc hl

jr_00a_6089:
    push af
    ld a, [$d265]
    cp [hl]
    jr z, jr_00a_6098

    inc hl
    inc hl
    pop af
    dec a
    jr nz, jr_00a_6089

    and a
    ret


jr_00a_6098:
    pop af
    jp Jump_00a_609c


Call_00a_609c:
Jump_00a_609c:
    push de
    call $2caf
    ld c, a
    ld hl, $c4a0
    ld de, $0168

jr_00a_60a7:
    ld a, [hl+]
    cp c
    jr z, jr_00a_60b4

    dec de
    ld a, e
    or d
    jr nz, jr_00a_60a7

    ld a, c
    pop de
    scf
    ret


jr_00a_60b4:
    pop de
    and a
    ret


Call_00a_60b7:
    ld a, [$dfcf]
    ld b, a
    ld a, [$d265]
    cp b
    ret nz

    ld a, [$dfd1]
    ld b, a
    ld a, [$dfd2]
    ld c, a
    call Call_00a_609c
    ret nc

    ld [de], a
    inc de
    ret


Call_00a_60cf:
    ld a, [$dfd6]
    ld b, a
    ld a, [$d265]
    cp b
    ret nz

    ld a, [$dfd8]
    ld b, a
    ld a, [$dfd9]
    ld c, a
    call Call_00a_609c
    ret nc

    ld [de], a
    inc de
    ret


    call Call_00a_6103
    jr nc, jr_00a_60f8

    call Call_00a_614f
    jr nz, jr_00a_60f8

    call Call_00a_61df
    jr nc, jr_00a_60f8

    xor a
    ret


jr_00a_60f8:
    xor a
    ld [$d22e], a
    ld [$d230], a
    ld a, $01
    and a
    ret


Call_00a_6103:
    call Call_00a_6111
    call Call_00a_6124
    call Call_00a_6138
    call $2f8c
    cp b
    ret


Call_00a_6111:
    ld hl, $d25a
    call $1852
    ld a, $03
    jr z, jr_00a_611e

    ld a, [$d269]

jr_00a_611e:
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    ret


Call_00a_6124:
    ld a, [$c2c0]
    cp $51
    jr z, jr_00a_6135

    cp $4b
    jr z, jr_00a_6135

    cp $50
    ret nz

    srl b
    ret


jr_00a_6135:
    sla b
    ret


Call_00a_6138:
    ld hl, $dce0
    ld de, $0030
    ld a, [$dcd7]
    ld c, a

jr_00a_6142:
    ld a, [hl]
    cp $5e
    jr z, jr_00a_614c

    add hl, de
    dec c
    jr nz, jr_00a_6142

    ret


jr_00a_614c:
    srl b
    ret


Call_00a_614f:
    call Call_00a_6200
    jp nc, Jump_00a_61c1

    call Call_00a_62ce
    jp c, Jump_00a_61c9

    inc hl
    inc hl
    inc hl
    call $1852
    ld de, $61d9
    jr z, jr_00a_6174

    inc hl
    inc hl
    ld a, [$d269]
    ld bc, $000e
    call $30fe
    ld de, $61cb

jr_00a_6174:
    push hl

jr_00a_6175:
    call $2f8c
    cp $64
    jr nc, jr_00a_6175

    inc a
    ld b, a
    ld h, d
    ld l, e

jr_00a_6180:
    ld a, [hl+]
    cp b
    jr nc, jr_00a_6187

    inc hl
    jr jr_00a_6180

jr_00a_6187:
    ld c, [hl]
    ld b, $00
    pop hl
    add hl, bc
    ld a, [hl+]
    ld b, a
    call $1852
    jr nz, jr_00a_61aa

    call $2f8c
    cp $59
    jr c, jr_00a_61aa

    inc b
    cp $a5
    jr c, jr_00a_61aa

    inc b
    cp $d8
    jr c, jr_00a_61aa

    inc b
    cp $f2
    jr c, jr_00a_61aa

    inc b

jr_00a_61aa:
    ld a, b
    ld [$d143], a
    ld b, [hl]
    call Call_00a_64a0
    jr c, jr_00a_61c1

    ld a, b
    cp $c9
    jr nz, jr_00a_61bf

    ld a, [$def3]
    and a
    jr z, jr_00a_61c1

jr_00a_61bf:
    jr jr_00a_61c5

Jump_00a_61c1:
jr_00a_61c1:
    ld a, $01
    and a
    ret


jr_00a_61c5:
    ld a, b
    ld [$d22e], a

Jump_00a_61c9:
    xor a
    ret


    ld e, $00
    inc a
    ld [bc], a
    ld d, b
    inc b
    ld e, d
    ld b, $5f
    ld [$0a63], sp
    ld h, h
    inc c
    inc a
    nop
    ld e, d
    ld [bc], a
    ld h, h
    inc b

Call_00a_61df:
    ld a, [$dca1]
    and a
    jr z, jr_00a_61fe

    ld hl, $dd01
    ld bc, $002f

jr_00a_61eb:
    ld a, [hl+]
    or [hl]
    jr nz, jr_00a_61f2

    add hl, bc
    jr jr_00a_61eb

jr_00a_61f2:
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [$d143]
    cp [hl]
    jr nc, jr_00a_61fe

    and a
    ret


jr_00a_61fe:
    scf
    ret


Call_00a_6200:
    call $1852
    jr z, jr_00a_621d

Call_00a_6205:
    ld hl, $78d0
    ld bc, $002f
    call Call_00a_623d
    ret c

    ld hl, $65e9
    ld de, $7274
    call Call_00a_6235
    ld bc, $002f
    jr jr_00a_627a

Call_00a_621d:
jr_00a_621d:
    ld hl, $792f
    ld bc, $0009
    call Call_00a_623d
    ret c

    ld hl, $711d
    ld de, $77f7
    call Call_00a_6235
    ld bc, $0009
    jr jr_00a_627a

Call_00a_6235:
    call $2f17
    and a
    ret z

    ld h, d
    ld l, e
    ret


Call_00a_623d:
    call Call_00a_627f
    push hl
    ld hl, $dc20
    bit 2, [hl]
    pop hl
    jr z, jr_00a_625c

    ld a, [$dfcc]
    cp d
    jr nz, jr_00a_625c

    ld a, [$dfcd]
    cp e
    jr nz, jr_00a_625c

    call Call_00a_6288
    jr nc, jr_00a_6278

    scf
    ret


jr_00a_625c:
    push hl
    ld hl, $dc20
    bit 3, [hl]
    pop hl
    jr z, jr_00a_6278

    ld a, [$dc5a]
    cp d
    jr nz, jr_00a_6278

    ld a, [$dc5b]
    cp e
    jr nz, jr_00a_6278

    call Call_00a_6288
    jr nc, jr_00a_6278

    scf
    ret


jr_00a_6278:
    and a
    ret


jr_00a_627a:
    call Call_00a_627f
    jr jr_00a_6288

Call_00a_627f:
    ld a, [$dcb5]
    ld d, a
    ld a, [$dcb6]
    ld e, a
    ret


Call_00a_6288:
jr_00a_6288:
    push hl
    ld a, [hl]
    inc a
    jr z, jr_00a_629a

    ld a, d
    cp [hl]
    jr nz, jr_00a_6296

    inc hl
    ld a, e
    cp [hl]
    jr z, jr_00a_629d

jr_00a_6296:
    pop hl
    add hl, bc
    jr jr_00a_6288

jr_00a_629a:
    pop hl
    and a
    ret


jr_00a_629d:
    pop hl
    scf
    ret


    ld a, $f3
    ld [$dfcf], a
    ld a, $f4
    ld [$dfd6], a
    ld a, $28
    ld [$dfd0], a
    ld [$dfd7], a
    ld a, $02
    ld [$dfd1], a
    ld a, $05
    ld [$dfd2], a
    ld a, $0a
    ld [$dfd8], a
    ld a, $04
    ld [$dfd9], a
    xor a
    ld [$dfd3], a
    ld [$dfda], a
    ret


Call_00a_62ce:
    push hl
    call $1852
    jr z, jr_00a_630a

    call Call_00a_627f
    call $2f8c
    cp $64
    jr nc, jr_00a_630a

    and $03
    jr z, jr_00a_630a

    dec a
    ld hl, $dfd1
    ld c, a
    ld b, $00
    ld a, $07
    call $30fe
    ld a, d
    cp [hl]
    jr nz, jr_00a_630a

    inc hl
    ld a, e
    cp [hl]
    jr nz, jr_00a_630a

    dec hl
    dec hl
    dec hl
    ld a, [hl+]
    ld [$d22e], a
    ld a, [hl]
    ld [$d143], a
    ld a, $05
    ld [$d230], a
    pop hl
    scf
    ret


jr_00a_630a:
    pop hl
    and a
    ret


    ld a, [$dfd1]
    cp $ff
    jr z, jr_00a_6324

    ld b, a
    ld a, [$dfd2]
    ld c, a
    call Call_00a_6355
    ld a, b
    ld [$dfd1], a
    ld a, c
    ld [$dfd2], a

jr_00a_6324:
    ld a, [$dfd8]
    cp $ff
    jr z, jr_00a_633b

    ld b, a
    ld a, [$dfd9]
    ld c, a
    call Call_00a_6355
    ld a, b
    ld [$dfd8], a
    ld a, c
    ld [$dfd9], a

jr_00a_633b:
    ld a, [$dfdf]
    cp $ff
    jr z, jr_00a_6352

    ld b, a
    ld a, [$dfe0]
    ld c, a
    call Call_00a_6355
    ld a, b
    ld [$dfdf], a
    ld a, c
    ld [$dfe0], a

jr_00a_6352:
    jp Jump_00a_63f6


Call_00a_6355:
    ld hl, $640f

jr_00a_6358:
    ld a, [hl]
    cp $ff
    ret z

    ld a, b
    cp [hl]
    jr nz, jr_00a_6365

    inc hl
    ld a, c
    cp [hl]
    jr z, jr_00a_636b

jr_00a_6365:
    ld a, [hl+]
    and a
    jr nz, jr_00a_6365

    jr jr_00a_6358

jr_00a_636b:
    inc hl
    ld d, h
    ld e, l

jr_00a_636e:
    ld h, d
    ld l, e
    call $2f8c
    and $1f
    jr z, jr_00a_63cd

    and $03
    cp [hl]
    jr nc, jr_00a_636e

    inc hl
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [$dfe7]
    cp [hl]
    jr nz, jr_00a_6390

    inc hl
    ld a, [$dfe6]
    cp [hl]
    jr z, jr_00a_636e

    dec hl

jr_00a_6390:
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ret


    ld a, [$dfd1]
    cp $ff
    jr z, jr_00a_63a6

    call Call_00a_63cd
    ld a, b
    ld [$dfd1], a
    ld a, c
    ld [$dfd2], a

jr_00a_63a6:
    ld a, [$dfd8]
    cp $ff
    jr z, jr_00a_63b8

    call Call_00a_63cd
    ld a, b
    ld [$dfd8], a
    ld a, c
    ld [$dfd9], a

jr_00a_63b8:
    ld a, [$dfdf]
    cp $ff
    jr z, jr_00a_63ca

    call Call_00a_63cd
    ld a, b
    ld [$dfdf], a
    ld a, c
    ld [$dfe0], a

jr_00a_63ca:
    jp Jump_00a_63f6


Call_00a_63cd:
jr_00a_63cd:
    ld hl, $640f

jr_00a_63d0:
    call $2f8c
    and $0f
    cp $10
    jr nc, jr_00a_63d0

    inc a
    ld b, a

jr_00a_63db:
    dec b
    jr z, jr_00a_63e4

jr_00a_63de:
    ld a, [hl+]
    and a
    jr nz, jr_00a_63de

    jr jr_00a_63db

jr_00a_63e4:
    ld a, [$dcb5]
    cp [hl]
    jr nz, jr_00a_63f2

    inc hl
    ld a, [$dcb6]
    cp [hl]
    jr z, jr_00a_63cd

    dec hl

jr_00a_63f2:
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ret


Jump_00a_63f6:
    ld a, [$dfe4]
    ld [$dfe6], a
    ld a, [$dfe5]
    ld [$dfe7], a
    ld a, [$dcb6]
    ld [$dfe4], a
    ld a, [$dcb5]
    ld [$dfe5], a
    ret


    jr @+$05

    ld [bc], a
    ld a, [de]
    ld bc, $0905
    nop
    ld a, [de]
    ld bc, $1802
    inc bc
    ld a, [de]
    ld [bc], a
    nop
    ld a, [de]
    ld [bc], a
    inc bc
    ld a, [de]
    ld bc, $010a
    ld a, [bc]
    inc bc
    nop
    ld a, [bc]
    ld bc, $0a03
    inc bc
    ld a, [de]
    ld [bc], a
    ld [$0006], sp
    ld [$0206], sp
    ld a, [bc]
    ld bc, $010b
    nop
    dec bc
    ld bc, $0802
    ld b, $0a
    ld [bc], a
    nop
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    dec bc
    ld bc, $030a
    nop
    ld a, [bc]
    inc bc
    inc b
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ld a, [bc]
    ld bc, $040a
    nop
    ld a, [bc]
    inc b
    inc bc
    ld a, [bc]
    inc bc
    ld bc, $020c
    dec b
    nop
    ld bc, $030c
    ld a, [bc]
    inc b
    ld bc, $020d
    dec b
    nop
    ld bc, $010d
    ld bc, $000c
    ld [bc], a
    dec b
    inc b
    add hl, bc
    dec b
    ld [bc], a
    ld b, $0a
    inc b
    ld bc, $000c
    add hl, bc
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $00
    ld [bc], a
    ld b, $03
    ld [bc], a
    dec b
    add hl, bc
    dec b
    dec b
    ld [$0500], sp
    ld [$0202], sp
    ld b, $05
    add hl, bc
    nop
    dec b
    add hl, bc
    ld [bc], a
    dec b
    ld [$0318], sp
    nop
    rst $38

Call_00a_64a0:
    and a
    jr z, jr_00a_64a9

    cp $fc
    jr nc, jr_00a_64a9

    and a
    ret


jr_00a_64a9:
    scf
    ret


    ld a, $24
    ld hl, $4439
    rst $08
    ld d, b
    ld e, c
    ld hl, $65e9
    ld bc, $002f
    call Call_00a_6288
    jr c, jr_00a_64c6

    ld hl, $7274
    call Call_00a_6288
    jr nc, jr_00a_6514

jr_00a_64c6:
    push hl
    ld bc, $000d
    add hl, bc
    ld a, [$d269]
    ld bc, $000e
    call $30fe

jr_00a_64d4:
    call $2f8c
    and $03
    jr z, jr_00a_64d4

    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    inc hl
    ld c, [hl]
    pop hl
    ld de, $0005
    add hl, de
    inc hl
    ld b, $04

jr_00a_64eb:
    ld a, [hl+]
    cp c
    jr z, jr_00a_6514

    inc hl
    dec b
    jr nz, jr_00a_64eb

    push bc
    dec c
    ld a, c
    call $339b
    pop bc
    jr nz, jr_00a_6514

    ld de, $d073
    call $30d6
    ld a, c
    ld [$d265], a
    call $343b
    ld hl, $651a
    call $1057
    xor a
    ld [$c2dd], a
    ret


jr_00a_6514:
    ld a, $01
    ld [$c2dd], a
    ret


    ld d, $4b
    ld d, e
    ld l, a
    ld d, b
    ld a, $24
    ld hl, $4439
    rst $08
    ld d, b
    ld e, c
    ld hl, $65e9
    ld bc, $002f
    call Call_00a_6288
    jr c, jr_00a_6538

    ld hl, $7274
    call Call_00a_6288

jr_00a_6538:
    ld bc, $0005
    add hl, bc
    ld a, [$d269]
    inc a
    ld bc, $000e

jr_00a_6543:
    dec a
    jr z, jr_00a_6549

    add hl, bc
    jr jr_00a_6543

jr_00a_6549:
    call $2f8c
    and $03
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    inc hl
    ld a, [hl]
    ld [$d265], a
    call $343b
    ld hl, $d073
    ld de, $d0ac
    ld bc, $000b

Call_00a_6564:
    jp $3026


    ld a, $24
    ld hl, $4439
    rst $08
    ld hl, $5999
    ld a, d
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, $0e
    call $305d

jr_00a_657c:
    dec e
    jr z, jr_00a_658b

jr_00a_657f:
    ld a, $0e
    call $304d
    inc hl
    cp $ff
    jr nz, jr_00a_657f

    jr jr_00a_657c

jr_00a_658b:
    ld a, $0e
    call $304d
    inc hl
    cp $50
    jr nz, jr_00a_658b

    ld a, $0e
    call $304d
    inc hl
    ld bc, $0002
    cp $00
    jr z, jr_00a_65b3

    ld bc, $0006
    cp $01
    jr z, jr_00a_65b3

    ld bc, $0003
    cp $02
    jr z, jr_00a_65b3

    ld bc, $0007

jr_00a_65b3:
    ld e, $00
    push hl

jr_00a_65b6:
    inc e
    add hl, bc
    ld a, $0e
    call $304d
    cp $ff
    jr nz, jr_00a_65b6

    pop hl

jr_00a_65c2:
    call $2f8c
    and $07
    cp e
    jr nc, jr_00a_65c2

    inc a

jr_00a_65cb:
    dec a
    jr z, jr_00a_65d1

    add hl, bc
    jr jr_00a_65cb

jr_00a_65d1:
    inc hl
    ld a, $0e
    call $304d
    ld [$d265], a
    call $343b
    ld hl, $d073
    ld de, $d0ac
    ld bc, $000b
    jp $3026


    inc bc
    ld [bc], a
    dec b
    dec b
    dec b
    ld [$0838], sp
    ld [hl], $08
    dec h
    ld [$0845], sp
    daa
    ld [$0819], sp
    or c
    ld [$0825], sp
    cp [hl]
    ld [$0845], sp
    or a
    ld [$08e1], sp
    add hl, hl
    ld [$08d1], sp
    or c
    ld [$0845], sp
    jr c, jr_00a_6619

    ldh a, [$08]
    rst $28

Call_00a_6614:
    ld [$08ee], sp
    add hl, hl
    inc bc

jr_00a_6619:
    inc bc
    dec b
    dec b
    dec b
    add hl, bc
    or c
    add hl, bc
    add hl, de
    add hl, bc
    ld l, b
    add hl, bc
    ld b, l
    add hl, bc
    add hl, hl
    add hl, bc
    pop de
    add hl, bc
    ldh a, [$09]
    add hl, de
    add hl, bc
    ld b, l
    add hl, bc
    ldh a, [$09]
    xor $09
    ld l, b
    add hl, bc
    or c
    add hl, bc
    or c
    add hl, bc
    ld b, l
    add hl, bc
    add hl, de
    add hl, bc
    or c
    add hl, bc
    add hl, hl
    add hl, bc
    ld l, b
    add hl, bc
    and e
    ld [$035c], sp
    dec b
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    xor c
    ld h, h
    ld h, l
    ld h, h
    ld h, c
    ld h, h
    inc sp
    ld h, h
    dec [hl]
    ld h, h
    or d
    ld h, h
    ld e, c
    ld h, h
    xor c
    ld h, h
    ld h, l
    ld h, h
    ld h, c
    ld h, h
    inc sp
    ld h, h
    dec [hl]
    ld h, h
    or d
    ld h, h
    ld e, c
    ld h, h
    xor c
    ld h, h
    ld h, l
    ld h, h
    ld h, c
    ld h, h
    ld e, [hl]
    ld h, h
    inc sp
    ld h, h
    dec [hl]
    ld h, h
    or d
    inc bc
    ld b, $64
    ld h, h
    ld h, h
    ld h, h
    xor c
    ld h, h
    ld h, l
    ld h, h
    ld h, c
    ld h, h
    inc sp
    ld h, h
    dec [hl]
    ld h, h
    or d
    ld h, h
    ld e, c
    ld h, h
    xor c
    ld h, h
    ld h, l
    ld h, h
    ld h, c
    ld h, h
    inc sp
    ld h, h
    dec [hl]
    ld h, h
    or d
    ld h, h
    ld e, c
    ld h, h
    xor c
    ld h, h
    ld h, l
    ld h, h
    ld h, c
    ld h, h
    ld e, [hl]
    ld h, h
    inc sp
    ld h, h
    dec [hl]
    ld h, h
    or d
    inc bc
    rlca
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, l
    ld h, h
    xor c
    ld h, h
    inc sp
    ld h, h
    or d
    ld h, h
    cp l
    ld h, h
    xor b
    ld h, h
    inc d
    ld h, h
    ld h, l
    ld h, h
    xor c
    ld h, h
    inc sp
    ld h, h
    ld h, c
    ld h, h
    or d
    ld h, h
    dec [hl]
    ld h, h
    cp l
    ld h, h
    ld h, l
    ld h, h
    xor c
    ld h, h
    inc sp
    ld h, h
    ld e, [hl]
    ld h, h
    ld h, c
    ld h, h
    or d
    ld h, h
    xor b
    inc bc
    ld [$6464], sp
    ld h, h
    ld h, h
    cp l
    ld h, h
    ld h, l
    ld h, h
    xor c
    ld h, h
    adc $64
    or d
    ld h, h
    ld l, [hl]
    ld h, h
    add $64
    rst $08
    ld h, h
    ld h, l
    ld h, h
    xor c
    ld h, h
    adc $64
    ld l, [hl]
    ld h, h
    cp l
    ld h, h
    add $64
    adc $64
    rst $08
    ld h, h
    ld h, l
    ld h, h
    ld e, [hl]
    ld h, h
    ld l, [hl]
    ld h, h
    ld b, a
    ld h, h
    add $03
    add hl, bc
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    adc l
    ld h, h
    ld h, l
    ld h, h
    rst $08
    ld h, h
    ld b, b
    ld h, h
    xor c
    ld h, h
    inc sp
    ld h, h
    add hl, sp
    ld h, h
    adc l
    ld h, h
    ld h, l
    ld h, h
    rst $08
    ld h, h
    ld b, b
    ld h, h
    xor c
    ld h, h
    inc sp
    ld h, h
    add hl, sp
    ld h, h
    adc l
    ld h, h
    ld h, l
    ld h, h
    rst $08
    ld h, h
    ld e, [hl]
    ld h, h
    xor c
    ld h, h
    inc sp
    ld h, h
    push hl
    inc bc
    ld a, [bc]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    adc e
    ld h, h
    ld h, l
    ld h, h
    rst $08
    ld h, h
    ld h, c
    ld h, h
    xor c
    ld h, h
    ld sp, $4064
    ld h, h
    adc e
    ld h, h
    ld h, l
    ld h, h
    rst $08
    ld h, h
    ld h, c
    ld h, h
    xor c
    ld h, h
    ld sp, $4064
    ld h, h
    adc e
    ld h, h
    ld h, l
    ld h, h
    rst $08
    ld h, h
    ld e, [hl]
    ld h, h
    xor c
    ld h, h
    ld b, b
    ld h, h
    push hl
    inc bc
    dec bc
    ld h, h

Call_00a_6764:
    ld h, h
    ld h, h
    ld h, h
    xor c
    ld h, h
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    add hl, sp
    ld h, h
    call $3364
    ld h, h
    ld e, [hl]
    ld h, h
    xor c
    ld h, h
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    add hl, sp
    ld h, h
    call $3364
    ld h, h
    ld e, [hl]
    ld h, h
    xor c
    ld h, h
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    ld e, c
    ld h, h
    ld e, [hl]
    ld h, h
    push hl
    ld h, h
    ret z

    inc bc
    inc c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld e, [hl]
    ld h, h
    call Call_00a_6564
    ld h, h
    add h
    ld h, h
    add hl, sp
    ld h, h
    push hl
    ld h, h
    ret z

    ld h, h
    ld e, [hl]
    ld h, h
    call Call_00a_6564
    ld h, h
    add h
    ld h, h
    add hl, sp
    ld h, h
    push hl
    ld h, h
    ret z

    ld h, h
    ret z

    ld h, h
    ld e, [hl]
    ld h, h
    ld h, l
    ld h, h
    push hl
    ld h, h
    add hl, sp
    ld h, h
    add h
    ld h, h
    call $0d03
    ld h, h
    ld h, h
    ld h, h
    ld h, $2a
    ld h, $db
    ld h, $14
    ld h, $2f
    ld h, $68
    ld h, $6e
    ld h, $6e

jr_00a_67d2:
    ld h, $2a
    ld h, $db
    ld h, $2f
    ld h, $14
    ld h, $68
    ld h, $6e
    ld h, $6e
    ld h, $2a
    ld h, $db

jr_00a_67e4:
    ld h, $2f
    ld h, $68
    ld h, $14
    ld h, $6e
    ld h, $6e
    inc bc
    ld c, $64
    ld h, h

jr_00a_67f2:
    ld h, h
    jr z, jr_00a_6863

    jr z, jr_00a_67d2

    jr z, jr_00a_6828

    jr z, jr_00a_682c

    jr z, jr_00a_6827

    jr z, jr_00a_684a

    jr z, jr_00a_684c

    jr z, @+$70

    jr z, jr_00a_6862

    jr z, jr_00a_6836

    jr z, jr_00a_67e4

    jr z, @+$2c

    jr z, @+$33

    jr z, jr_00a_6840

    jr z, jr_00a_687f

    jr z, jr_00a_6844

    jr z, jr_00a_6844

    jr z, jr_00a_67f2

    jr z, jr_00a_6843

    jr z, @+$5f

    jr z, jr_00a_687a

    inc bc
    rrca
    ld h, h
    ld h, h
    ld h, h
    rra
    cp h
    rra
    ld c, l
    rra

jr_00a_6827:
    ld d, e

jr_00a_6828:
    rra
    ld hl, $191f

jr_00a_682c:
    rra
    ld b, [hl]
    rra
    ld de, $1e1f
    rra
    ld hl, $361f

jr_00a_6836:
    rra
    ld d, e
    rra
    inc l
    rra
    ld b, [hl]
    rra
    ld de, $531f

jr_00a_6840:
    rra
    ld c, l
    rra

jr_00a_6843:
    add hl, de

jr_00a_6844:
    rra
    ld [hl], $1f
    inc l
    rra
    ld b, [hl]

jr_00a_684a:
    rra
    and h

jr_00a_684c:
    inc bc
    ld d, $03
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    adc d
    add hl, bc
    adc d
    add hl, bc
    adc d
    add hl, bc
    adc h
    ld a, [bc]
    adc h
    dec bc
    adc h
    dec bc
    adc d
    ld [$088c], sp

jr_00a_6862:
    adc d

jr_00a_6863:
    ld [$088a], sp
    adc h
    ld [$098c], sp
    adc h
    ld [$088a], sp
    adc h
    ld [$088c], sp
    adc h
    ld [$088a], sp
    adc d
    ld [$088a], sp

jr_00a_687a:
    adc d
    inc bc
    dec de
    rrca
    rrca

jr_00a_687f:
    rrca
    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    dec b
    ret


    inc bc
    dec h
    inc sp
    inc sp
    ld h, h
    db $10
    ld l, l
    db $10
    rst $28
    db $10
    ld [hl-], a
    db $10
    ld e, b
    db $10
    ld l, $10
    inc hl
    db $10
    ld e, a
    db $10
    rst $28
    db $10
    ld l, l
    db $10
    ld [hl-], a
    db $10
    ld e, b
    db $10
    ld l, $10
    ld [hl-], a
    db $10
    rst $28
    db $10
    inc hl
    db $10
    rst $28
    db $10
    ld [hl-], a
    db $10
    ld l, l
    db $10
    ld l, $10
    jp nz, Jump_00a_5810

    inc bc
    ld h, $64
    ld h, h
    ld h, h
    db $10
    ld h, h
    db $10
    ld [hl-], a
    db $10
    ld l, l
    db $10
    ld h, h
    db $10
    ld e, a
    db $10
    ld [hl-], a
    db $10
    ld h, h
    db $10
    ld h, h
    db $10
    ld [hl-], a
    db $10
    ld l, l
    db $10
    ld h, h
    db $10
    ld e, a
    db $10
    ld [hl-], a
    db $10
    ld h, h
    db $10
    ld h, h
    db $10
    ld [hl-], a
    db $10
    ld e, h
    db $10
    ld h, h
    db $10
    ld l, l
    db $10
    ld [hl-], a
    db $10
    ld l, l
    inc bc
    daa
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, h
    adc l
    ld h, e
    ld a, [hl+]
    ld h, h
    adc e
    ld h, h
    ld l, h
    ld h, h
    ld e, $64
    ld hl, $8464
    ld h, e
    ld c, a
    ld h, h
    ld h, c
    ld h, h
    cpl
    ld h, h
    and d
    ld h, h
    inc e
    ld h, h
    ld c, a
    ld h, h
    add h
    ld h, h
    ld a, l
    ld h, h
    ld a, [hl]
    ld h, h
    cp c
    ld h, h
    inc h
    ld h, h
    db $db
    ld h, h
    add h
    ld h, h
    jp z, $2803

    dec b
    dec b
    dec b
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    call c, $f614
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    call c, $f614
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    ld c, a
    inc d
    call c, $f614
    inc bc
    add hl, hl
    dec b
    dec b
    dec b
    scf
    ld c, a
    scf
    ld c, a
    scf
    ld c, a
    scf
    ld c, a
    scf
    ld a, [hl+]
    scf
    ld c, a
    scf
    ld d, b
    scf
    ld c, a
    scf
    ld c, a
    scf
    ld c, a
    scf
    ld c, a
    scf
    ld a, [hl+]
    scf
    ld c, a
    scf
    ld d, b
    scf
    ld c, a
    scf
    ld c, a
    scf
    ld c, a
    scf
    ld c, a
    scf
    ld a, [hl+]
    scf
    ld c, a
    scf
    ld d, b
    inc bc
    inc [hl]
    ld h, h
    ld h, h
    ld h, h
    inc d
    ld h, [hl]
    dec d
    rst $28
    inc d
    inc a
    dec d
    cp h
    inc d
    call z, $1714
    dec d
    call z, $3c14
    inc d
    ld h, [hl]
    dec d
    cp h
    inc d
    call z, $ef15
    inc d
    ld h, [hl]
    dec d
    call z, Call_00a_6614
    dec d
    rst $28
    inc d
    call z, $3c14
    inc de
    ld e, h
    inc d
    call z, $1714
    inc bc
    add hl, sp
    ld h, h
    ld h, h
    ld h, h
    inc l
    ld a, [hl+]
    inc l
    ld c, e
    inc l
    ld b, e
    inc l
    cpl
    inc l
    inc d
    inc l
    ld a, [de]
    inc l
    ld h, $2c
    inc d
    inc l
    ld c, e
    inc l
    ld a, [hl+]
    inc l
    ld h, $2c
    ld a, [de]
    inc l
    cpl
    inc l
    ld b, e
    inc l
    ld a, [hl+]
    inc l
    inc d
    inc l
    ld h, $2c
    ld sp, $4b2c
    inc l
    ld a, [de]
    inc l
    ld b, e
    inc bc
    ld a, [hl-]
    ld h, h
    ld h, h
    ld h, h
    inc [hl]
    inc sp
    inc [hl]
    ld l, [hl]
    inc [hl]
    adc $34
    ld sp, $6434
    inc [hl]
    ld h, $34
    ld h, $34
    inc sp
    inc [hl]
    adc $34
    ld l, [hl]
    inc [hl]
    ld h, h
    inc [hl]
    cp c
    inc [hl]
    cpl
    inc [hl]
    ld h, $34
    inc sp
    inc [hl]
    ld sp, $5d34
    inc [hl]
    adc $34
    ld l, [hl]
    inc [hl]
    jr z, jr_00a_6a55

    ld a, [de]
    inc bc
    dec sp
    ld h, h
    ld h, h
    ld h, h
    add hl, sp
    ld l, [hl]
    add hl, sp
    inc sp
    add hl, sp
    adc $39
    ld e, l
    add hl, sp
    ld e, c
    add hl, sp
    inc sp
    add hl, sp
    adc $39
    ld l, [hl]
    add hl, sp
    inc sp
    add hl, sp
    adc $39
    ld e, c
    add hl, sp
    inc sp
    add hl, sp
    ld e, l
    add hl, sp
    adc $39
    ld l, [hl]
    add hl, sp
    inc sp
    add hl, sp
    adc $39
    ld e, l
    add hl, sp
    inc sp
    add hl, sp
    adc $39
    ld e, c
    inc bc
    inc a
    ld h, h
    ld h, h

jr_00a_6a55:
    ld h, h
    dec [hl]
    inc sp
    dec [hl]
    adc $35
    ld l, [hl]
    dec [hl]
    ld h, $35
    ld sp, $b935
    dec [hl]
    cp c
    dec [hl]
    inc sp
    dec [hl]
    ld l, [hl]
    dec [hl]
    adc $35
    ld h, $35
    ld sp, $b935
    dec [hl]
    cp c
    dec [hl]
    inc sp
    dec [hl]
    jr @+$37

    adc $35
    ld e, l
    dec [hl]
    ld sp, $2835
    dec [hl]
    jr z, jr_00a_6a84

    dec a
    ld h, h
    ld h, h

jr_00a_6a84:
    ld h, h
    ld d, e
    ld d, a
    ld d, e
    inc sp
    ld d, e
    ld [$dc50], a
    ld d, b
    xor $52
    ld e, d
    ld d, d
    ld a, [hl+]
    ld d, d
    ret c

    ld d, e
    inc sp
    ld d, e
    ld [$ee52], a
    ld d, e
    ld d, a
    ld d, d
    ld e, d
    ld d, d
    ld a, [hl+]
    ld d, e
    rst $10
    ld d, e
    inc sp
    ld d, e
    ld e, l
    ld d, e
    xor $50
    call c, Call_00a_5a51
    ld d, e
    ld d, a
    inc bc
    ld a, $64
    ld h, h
    ld h, h
    ld d, d
    inc sp
    ld d, d
    ld h, l
    ld d, d
    ld l, [hl]
    ld d, d
    ld d, a
    ld d, d
    adc $51
    ld a, [hl+]
    ld d, c
    reti


    ld d, d
    inc sp
    ld d, d
    ld h, l
    ld d, d
    ld l, [hl]
    ld d, e
    ld d, a
    ld d, e
    adc $51
    ld [$d950], a
    ld d, d
    inc sp
    ld d, d
    ld h, l
    ld d, d
    ld l, [hl]
    ld d, d
    adc $52
    ld d, a
    ld d, d
    ld a, [hl+]
    ld d, d
    reti


    inc bc
    ccf
    ld h, h
    ld h, h
    ld h, h
    ld d, e
    ld h, $53
    rst $10
    ld d, e
    ld l, d
    ld d, b
    xor $50
    rst $28
    ld d, b
    ldh a, [$50]
    ld c, a
    ld d, e
    ld h, $53
    rst $10
    ld d, e
    ld l, e
    ld d, b
    xor $53
    rst $28
    ld d, b
    ldh a, [rHDMA3]
    ld c, a
    ld d, e
    ld h, $53
    rst $10
    ld d, e
    db $ed
    ld d, b
    xor $50
    rst $28
    ld d, b
    ldh a, [rHDMA2]
    ld c, a
    inc bc
    ld b, b
    dec b
    dec b
    dec b
    ld d, e
    ld e, c
    ld d, e
    inc sp
    ld d, e
    ld h, l
    ld d, e
    adc $53
    ld h, b
    ld d, e
    ld l, b
    ld d, e
    db $eb
    ld d, e
    ld l, [hl]
    ld d, e
    ld b, e
    ld d, e
    ld a, d
    ld d, e
    ld d, a
    ld d, e
    call c, $8b53
    ld d, e
    add h
    ld d, e
    ld h, l
    ld d, e
    ld a, d
    ld d, e
    ld d, a
    ld d, e
    ld c, h
    ld d, e
    ld e, l
    ld d, e
    ld e, c
    ld d, e
    db $eb
    inc bc
    ld b, c
    ld l, $2e
    ld l, $53
    adc $53
    ld e, c
    ld d, e
    inc sp
    ld d, e
    ld d, a
    ld d, e
    reti


    ld d, e
    ld e, d
    ld d, e
    ld l, [hl]
    ld d, e
    adc $53
    inc sp
    ld d, e
    ld e, c
    ld d, e
    ld d, a
    ld d, e
    ld l, [hl]
    ld d, e
    ld a, d
    ld d, e
    db $eb
    ld d, e
    adc $53
    adc l
    ld d, e
    ld a, [hl+]
    ld d, e
    ld e, l
    ld d, e
    ld h, b
    ld d, e
    adc e
    ld d, e
    jp z, $4203

    ld h, h
    ld h, h
    ld h, h
    ld c, e
    ld d, a
    ld c, e
    ldh [rWX], a
    adc e
    ld c, e
    adc l
    ld c, e
    ld e, d
    ld c, e
    scf
    ld c, e
    ld c, h
    ld c, e
    ld d, a
    ld c, e
    ldh [rWX], a
    adc l
    ld c, e
    adc e
    ld c, e
    ld e, d
    ld c, e
    scf
    ld c, e
    ld c, h
    ld c, e
    ld d, a
    ld c, e
    ld e, l
    ld c, e
    ld c, h
    ld c, e
    inc e
    ld c, e
    jp z, $8b4b

    ld c, e
    adc l
    inc bc
    ld b, e
    ld h, h
    ld h, h
    ld h, h
    ld c, e
    ld d, a
    rla
    ld b, e
    ld d, $8d
    jr jr_00a_6bc0

    add hl, de
    adc e
    jr jr_00a_6c05

    jr jr_00a_6bfc

    ld c, e
    ld d, a
    ld c, e
    ld b, e
    ld c, e
    inc hl
    ld c, e
    ldh [rWX], a
    ld a, [hl+]
    jr jr_00a_6c08

    jr jr_00a_6c15

    ld c, e
    ld d, a
    ld c, e
    ld e, l
    ld c, e

jr_00a_6bc0:
    db $ed
    ld c, e
    ld c, a
    ld c, e
    ldh [rWX], a
    ld e, d
    ld c, e
    ld a, b
    inc bc
    ld b, h
    ld h, h
    ld h, h
    ld h, h
    ld c, e
    ld d, a
    ld c, e
    ld l, d
    ld c, e
    ldh [rWX], a
    ld l, [hl]
    ld c, e
    ld a, [hl+]
    ld c, e
    ld l, b
    ld c, e
    ld [hl], b
    ld c, e
    ld d, a
    ld c, e
    ld l, e
    ld c, e
    ldh [rWX], a
    ld l, [hl]
    ld c, e
    ld a, [hl+]
    ld c, e
    inc e
    ld c, e
    ld [hl], b
    ld c, e
    ld d, a
    ld c, e
    db $ed
    ld c, e
    ldh [rWX], a
    ld e, l
    ld c, e
    jp z, $334b

    ld c, e
    ld [hl], b
    inc bc
    ld b, l
    ld h, h
    ld h, h

jr_00a_6bfc:
    ld h, h
    ld h, h
    ld l, [hl]
    ld h, h
    ld d, a
    ld h, h
    inc sp
    ld h, h
    ld e, c

jr_00a_6c05:
    ld h, h
    ld c, h
    ld h, h

jr_00a_6c08:
    ld h, l
    ld h, h
    ld e, e
    ld h, h
    ld l, [hl]
    ld h, h
    ld d, a
    ld h, h
    inc sp
    ld h, h
    ld e, c
    ld h, h
    ld c, h

jr_00a_6c15:
    ld h, h
    ld h, l
    ld h, h
    ld e, e
    ld h, h
    ld l, [hl]
    ld h, h
    ld d, a
    ld h, h
    inc sp
    ld h, h
    ld e, c
    ld h, h
    ld c, h
    ld h, h
    ld h, l
    ld h, h
    ld e, e
    inc bc
    ld b, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld c, e
    ld d, a
    ld c, e
    ld l, e
    ld c, e
    ldh [rWX], a
    jp $1e4b


    ld c, e
    add h
    ld c, e
    ld [hl], b
    ld c, e
    ld d, a
    ld c, e
    db $ed
    ld c, e
    ld hl, $5a4b
    ld c, e
    daa
    ld c, e
    ld c, h
    ld c, e
    add h
    ld c, e
    ld d, a
    ld c, e
    ld e, l
    ld c, e
    ld c, h
    ld c, e
    ldh [rWX], a
    ld l, d
    ld c, e
    jp z, Jump_00a_784b

    inc bc
    ld b, a
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, l
    ld h, h
    ld d, a
    ld h, h
    xor c
    ld h, h
    inc sp
    ld h, h
    ld e, e
    ld h, h
    ld e, c
    ld h, h
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    ld e, e
    ld h, h
    xor c
    ld h, h
    inc sp
    ld h, h
    ld d, a
    ld h, h
    ld l, [hl]
    ld h, h
    ld e, c
    ld h, h
    ld h, l
    ld h, h
    ld e, e
    ld h, h
    xor c
    ld h, h
    inc sp
    ld h, h
    ld e, c
    ld h, h
    ld l, [hl]
    ld h, h
    ld d, a
    inc bc
    ld c, b
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    xor c
    ld h, h
    ld e, e
    ld h, h
    inc sp
    ld h, h
    ld h, l
    ld h, h
    ld c, h
    ld h, h
    adc e
    ld h, h
    adc l
    ld h, h
    xor c
    ld h, h
    ld e, e
    ld h, h
    inc sp
    ld h, h
    ld h, l
    ld h, h
    ld c, h
    ld h, h
    adc e
    ld h, h
    adc l
    ld h, h
    xor c
    ld h, h
    ld e, e
    ld h, h
    ld h, l
    ld h, h
    inc sp
    ld h, h
    ld c, h
    ld h, h
    adc e
    ld h, h
    adc l
    inc bc
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, l
    ld h, h
    ld e, e
    ld h, h
    inc sp
    ld h, h
    xor c
    ld h, h
    ld e, c
    ld h, h
    ld a, c
    ld h, h
    ld l, [hl]
    ld h, h
    inc sp
    ld h, h
    ld e, e
    ld h, h
    ld e, c
    ld h, h
    xor c
    ld h, h
    ld a, c
    ld h, h
    ld h, l
    ld h, h
    ld l, [hl]
    ld h, h
    ld a, c
    ld h, h
    ld h, l
    ld h, h
    ld e, e
    ld h, h
    ld e, c
    ld h, h
    ld e, [hl]
    ld h, h
    inc sp
    ld h, h
    xor c
    inc bc
    ld c, d
    ld d, l
    ld d, a
    ld d, e
    ld h, h
    xor c
    ld h, h
    ld b, c
    ld h, h
    ld h, l
    ld h, h
    ret nc

    ld h, h
    ld e, [hl]
    ld h, h
    ld b, h
    ld h, h
    adc [hl]
    ld h, h
    xor c
    ld h, h
    ret nc

    ld h, h
    ld h, l
    ld h, h
    ld b, c
    ld h, h
    ld e, [hl]
    ld h, h
    ld b, h
    ld h, h
    adc [hl]
    ld h, h
    xor c
    ld h, h
    ld hl, sp+$64
    ld b, c
    ld h, h
    ld h, l
    ld h, h
    ld e, [hl]
    ld h, h
    ret nc

    ld h, h
    ld b, h
    inc bc
    ld c, e
    ld d, e
    ld d, e
    ld d, [hl]
    ld h, h
    ld b, c
    ld h, h
    ld b, h
    ld h, h
    ld h, l
    ld h, h
    ld e, [hl]
    ld h, h
    jp hl


    ld h, h
    ld e, e
    ld h, h
    add e
    ld h, h
    ld b, c
    ld h, h
    ld e, [hl]
    ld h, h
    ld h, l
    ld h, h
    ld b, h
    ld h, h
    jp hl


    ld h, h
    ld e, e
    ld h, h
    ld h, c
    ld h, h
    ld b, c
    ld h, h
    ld e, [hl]
    ld h, h
    ld h, l
    ld h, h
    ld b, h
    ld h, h
    adc [hl]
    ld h, h
    add e
    ld h, h
    ld hl, sp+$03
    ld c, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, l
    ld h, h
    ld hl, sp+$64
    ld b, c
    ld h, h
    ld b, h
    ld h, h
    sub l
    ld h, h
    ld e, e
    ld h, h
    adc a
    ld h, h
    ld h, l
    ld h, h
    ld hl, sp+$64
    ld b, c
    ld h, h
    ld b, h
    ld h, h
    add e
    ld h, h
    sub l
    ld h, h
    adc a
    ld h, h
    ld h, l
    ld h, h
    ld hl, sp+$64
    ld b, c
    ld h, h
    ld b, h
    ld h, h
    ld e, [hl]
    ld h, h
    ld e, e
    ld h, h
    adc a
    inc bc
    ld c, l
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    adc [hl]
    ld h, h
    ld h, l
    ld h, h
    ld b, h
    ld h, h
    ld e, [hl]
    ld h, h
    ld hl, sp+$64
    sub l
    ld h, h
    ret nc

    ld h, h
    adc [hl]
    ld h, h
    ld b, h
    ld h, h
    ld b, c
    ld h, h
    ld h, l
    ld h, h
    ld hl, sp+$64
    sub l
    ld h, h
    ret nc

    ld h, h
    adc [hl]
    ld h, h
    ld b, h
    ld h, h
    ld h, l
    ld h, h
    ld e, [hl]
    ld h, h
    jp hl


    ld h, h
    sub l
    ld h, h
    ld hl, sp+$03
    ld c, [hl]
    inc bc
    inc bc
    inc bc
    rlca
    or $07
    ret c

    rlca
    ld l, a
    rlca
    rst $20
    rlca
    pop hl
    rlca
    dec de
    rlca
    add hl, hl
    rlca
    call c, $1b07
    rlca
    ld c, d
    rlca
    pop hl
    rlca
    rst $20
    rlca
    add hl, hl
    rlca
    ld b, d
    rlca
    ld c, d
    rlca
    dec de
    rlca
    call c, $f607
    rlca
    adc $07
    rst $20
    rlca
    ld l, a
    inc bc
    ld c, a
    ld [hl], $36
    ld [hl], $5f
    inc sp
    ld e, a
    ld b, b
    ld e, a
    ld l, [hl]
    ld e, a
    adc $5f
    jp z, Jump_00a_4c5f

    ld e, a
    reti


    ld e, a
    inc sp
    ld e, a
    ld b, b
    ld e, a
    ld e, c
    ld e, a
    reti


    ld e, a
    jp z, $ce5f

    ld e, a
    rst $30
    ld e, a
    inc sp
    ld e, a
    adc $5f
    reti


    ld e, a
    jp z, $405f

    ld e, a
    ld e, l
    ld e, a
    ld [hl], b
    jr jr_00a_6e02

    add hl, de
    add hl, de
    add hl, de

jr_00a_6e02:
    ld [bc], a
    cp a
    ld [bc], a
    dec c
    inc bc
    xor h
    inc bc
    xor [hl]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld c, $03
    dec bc
    ld [bc], a
    dec c
    ld [bc], a
    ld a, [bc]
    inc bc
    cp a
    inc bc
    ld c, $02
    xor [hl]
    inc bc
    xor h
    inc bc
    dec bc
    ld [bc], a
    dec c
    ld [bc], a
    xor l
    inc bc
    ld c, $03
    inc de
    ld [bc], a
    xor h
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    ld a, [de]
    ld bc, $1919
    add hl, de
    dec b
    and l
    dec b
    add hl, de
    dec b
    dec d
    dec b
    ld [hl], $05
    rla
    dec b
    dec hl
    dec b
    db $ec
    dec b
    and l
    dec b
    add hl, de
    dec b
    db $10
    dec b
    rla
    dec b
    and c
    dec b
    dec hl
    dec b
    db $ec
    dec b
    inc a
    dec b
    and a
    dec b
    and e
    dec b
    rla
    dec b
    and a
    dec b
    inc de
    dec b
    inc [hl]
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    add hl, de
    rlca
    or e
    rlca
    pop de

Jump_00a_6e64:
    rlca
    ld b, l
    rlca
    dec d
    rlca
    ld [hl], $07
    add hl, de
    rlca
    ld a, [hl-]
    rlca
    or e
    rlca
    pop de
    rlca
    ld b, l
    rlca
    db $10
    rlca
    ld [hl], $07
    add hl, de
    rlca
    dec h
    rlca

jr_00a_6e7d:
    or e
    rlca

jr_00a_6e7f:
    inc a
    rlca
    dec hl
    rlca
    jp nz, $d107

    rlca
    add hl, de
    rlca
    db $e4
    ld a, [bc]

jr_00a_6e8b:
    ld bc, $1919
    add hl, de
    inc c
    or e
    inc c
    dec h
    inc c
    dec hl
    inc c
    ld [hl], $0c
    ld a, [hl-]

jr_00a_6e99:
    inc c
    jr c, jr_00a_6ea8

    ld c, l
    inc c
    or e
    inc c
    ld a, [hl-]
    inc c
    cp e
    inc c
    daa
    inc c
    dec d
    inc c

jr_00a_6ea8:
    jr c, jr_00a_6eb6

    ld c, l
    inc c
    or e
    inc c
    jp nz, $2b0c

    inc c

jr_00a_6eb2:
    dec h
    inc c

jr_00a_6eb4:
    or e
    inc c

jr_00a_6eb6:
    ld a, [hl-]
    inc c
    db $e4
    ld [$1906], sp
    add hl, de
    add hl, de
    inc de
    or a

jr_00a_6ec0:
    inc de
    dec d

jr_00a_6ec2:
    inc de
    dec de
    inc de
    dec hl
    inc de
    rla
    inc de
    add hl, de
    inc de

jr_00a_6ecb:
    dec h
    inc de
    or a

jr_00a_6ece:
    inc de
    or e
    inc de
    dec de
    inc de
    cp e
    inc de
    rla
    inc de
    ld a, [hl-]
    inc de
    dec d
    inc de
    or a
    inc de
    dec hl
    inc de
    jr nz, @+$15

    dec e
    inc de
    add hl, de
    inc de
    add hl, hl
    inc de

jr_00a_6ee7:
    db $e4
    dec bc
    ld bc, $1919
    add hl, de
    jr jr_00a_6ec0

    jr jr_00a_6ecb

    jr @+$17

    jr @+$62

    jr jr_00a_6f1e

    jr jr_00a_6e7d

    jr jr_00a_6e7f

    jr jr_00a_6ece

    jr jr_00a_6f24

    jr jr_00a_6f35

    jr jr_00a_6eb4

    jr jr_00a_6f2c

    jr jr_00a_6e8b

    jr jr_00a_6f69

    jr @+$62

    jr jr_00a_6ee7

    jr jr_00a_6eb2

    jr jr_00a_6ec2

    jr jr_00a_6f3a

    jr jr_00a_6e99

    jr @-$7a

    ld a, [bc]
    ld [bc], a
    add hl, de
    add hl, de
    add hl, de
    inc e
    pop de

jr_00a_6f1e:
    inc e
    dec d
    inc e
    ld a, [hl-]
    inc e
    cp [hl]

jr_00a_6f24:
    inc e
    ld h, b
    inc e
    add h
    inc e
    pop bc
    inc e
    pop de

jr_00a_6f2c:
    inc e
    dec d
    inc e
    ld a, [hl-]
    inc e
    ld a, d
    inc e
    ld h, b
    inc e

jr_00a_6f35:
    add h
    inc e
    pop bc
    inc e
    ld h, b

jr_00a_6f3a:
    inc e
    and e
    inc e
    ld [hl], $1c
    ld a, d
    inc e
    add $1c
    add h
    inc e
    pop bc
    ld a, [bc]
    inc bc
    add hl, de
    add hl, de
    add hl, de
    add hl, bc
    or e
    rlca
    ld c, l
    ld [$08d1], sp
    dec e
    ld [$0820], sp
    dec d
    ld [$082b], sp
    ld a, [hl-]
    ld [$08b3], sp
    dec h
    ld [$084d], sp
    ld [hl], $08
    inc a
    ld [$082b], sp
    dec h

jr_00a_6f69:
    ld [$08b3], sp
    ld a, [hl-]
    ld [$08e4], sp
    jp nz, $1d08

    ld [$0a20], sp
    inc b
    add hl, de
    add hl, de
    add hl, de
    inc h
    and [hl]
    inc h
    add hl, de
    inc h
    ld c, l
    inc h
    inc d
    inc h
    ld de, $0f24
    inc h
    ld d, $24
    inc c
    inc h
    or h
    inc h
    inc d
    inc h
    ld c, l
    inc h
    rrca
    inc h
    inc l
    inc h
    ld d, $24
    inc d
    inc h
    xor b
    inc h
    cp b
    inc h
    add hl, de
    inc h
    ld a, [hl+]
    inc h
    ld c, l
    inc h
    and h
    ld bc, $640c
    ld h, h
    ld h, h
    dec hl
    dec a
    dec hl
    and d
    dec hl
    ld c, [hl]
    dec hl
    ret nz

    dec hl
    ld [$512b], a
    dec hl
    cp c
    dec hl
    ld [$162b], a
    dec hl
    ld d, c
    dec hl
    ret nz

    dec hl
    and d
    dec hl
    inc e
    dec hl
    cp c
    dec hl
    ld [$a42b], a
    dec hl
    ld d, c
    dec hl
    add $2b
    inc e
    dec hl
    rst $10
    dec hl
    cp c
    ld bc, $640d
    ld h, h
    ld h, h
    dec l
    ld c, [hl]
    dec l
    ret nz

    dec l
    or h
    dec l
    cp b
    dec l
    and d
    dec l
    ld [$122d], a
    dec l
    or h
    dec l
    ld c, [hl]
    dec l
    ld [hl], d
    dec l
    cp b
    dec l
    or b
    dec l
    ret nz

    dec l
    sra l
    ld [hl], d
    dec l
    ld l, h
    dec l
    or h
    dec l
    add $2d
    ld c, [hl]
    dec l
    ld [$342d], a
    ld [bc], a
    dec b
    ld h, h
    ld h, h
    ld h, h
    add hl, sp
    ret nz

    add hl, sp
    cpl
    add hl, sp
    ld [hl], d
    add hl, sp
    cp l
    add hl, sp
    ld [bc], a
    add hl, sp
    sbc c
    add hl, sp
    sbc c
    add hl, sp
    cp l
    add hl, sp
    ret nz

    add hl, sp
    ld [hl], d
    add hl, sp
    ld d, h
    add hl, sp
    sbc c
    add hl, sp
    ld [bc], a
    add hl, sp
    ld [bc], a
    add hl, sp
    cpl
    add hl, sp
    cp l
    add hl, sp
    xor b
    add hl, sp
    ld sp, $9939
    add hl, sp
    ld [bc], a
    add hl, sp
    ld [bc], a
    add hl, bc
    dec b
    ld h, h
    ld h, h
    ld h, h
    add hl, sp
    ld c, [hl]
    add hl, sp
    ld h, $39
    ld a, [hl-]
    add hl, sp
    ldh a, [$39]
    dec b
    add hl, sp
    sbc h
    add hl, sp
    sbc h
    add hl, sp
    ld c, [hl]
    add hl, sp
    ld h, $39
    ldh a, [$39]
    ld a, [hl-]
    add hl, sp
    sbc h
    add hl, sp
    dec b
    add hl, sp
    dec b
    add hl, sp
    ld c, [hl]
    add hl, sp
    ld h, $39
    inc e
    add hl, sp
    ld a, [hl-]
    add hl, sp
    sbc h
    add hl, sp
    dec b
    add hl, sp
    db $e4
    ld [bc], a
    ld b, $64
    ld h, h
    ld h, h
    ld b, [hl]
    ld e, $46
    ld c, [hl]
    ld b, [hl]
    cp l
    ld b, [hl]
    inc e
    ld b, [hl]
    bit 0, [hl]
    ld [$1a46], a
    ld b, [hl]
    ld hl, $2646
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    cp c
    ld b, [hl]
    jr z, jr_00a_70c4

    ld [de], a
    ld b, [hl]
    or l
    ld b, [hl]
    ld l, e
    ld b, [hl]
    ld a, [hl-]
    ld b, [hl]
    inc l
    ld b, [hl]
    ld a, d
    ld b, [hl]
    ld l, d
    ld b, [hl]
    ld a, l
    ld b, [hl]
    ld a, [hl]
    dec b
    ld [$6464], sp
    ld h, h
    ld e, h
    ld c, [hl]
    ld e, h
    ld d, l
    ld e, h
    ld hl, $7f5c
    ld e, d
    ld a, [de]
    ld e, d
    ld h, [hl]
    ld e, d
    ld [hl], b
    ld e, h
    jr jr_00a_7101

    inc e
    ld e, e
    ld a, l
    ld e, e
    ld sp, $125c
    ld e, e
    ld a, [hl-]

jr_00a_70ae:
    ld e, d
    ld c, h
    ld e, h
    ld [$2c5b], a
    ld e, h
    or l
    ld e, h
    ld e, $5c
    ld a, [hl]
    ld e, h
    inc hl
    ld e, h
    rst $08
    dec b
    add hl, bc
    inc bc
    inc bc
    inc bc
    dec b

jr_00a_70c4:
    jr nz, @+$07

    rlca
    dec b
    inc b
    dec b
    ld bc, $1d05
    dec b
    rlca
    dec b
    inc b
    dec b
    dec e
    dec b
    sbc b
    dec b
    sbc [hl]
    dec b
    sbc e
    dec b
    jr nz, jr_00a_70e1

    sbc [hl]
    dec b
    sbc e
    dec b
    sbc b

jr_00a_70e1:
    dec b
    sbc [hl]
    dec b
    rlca
    dec b
    inc b
    dec b
    sbc e
    dec b
    or e
    dec b
    add l
    inc de
    ld [bc], a
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    sub $64
    pop af
    ld h, h
    add a
    ld h, h
    add [hl]
    ld h, h
    ld h, a
    ld h, h
    call $f264
    ld h, h

jr_00a_7101:
    add b
    ld h, h
    add a

jr_00a_7104:
    ld h, h
    ld h, a
    ld h, h
    add [hl]
    ld h, h
    ld [hl+], a
    ld h, h
    call Call_00a_7164
    ld h, h
    xor c
    ld h, h
    push bc
    ld h, h
    add b
    ld h, h
    add a
    ld h, h
    call $f164
    ld h, h
    db $e3
    rst $38
    inc bc
    ld d, $64
    jr z, jr_00a_70ae

    jr z, jr_00a_70ae

    jr z, jr_00a_7104

    inc bc
    dec h
    ld h, h
    inc l
    jp nz, $c32c

    inc l
    jp $2603


    ld h, h
    inc l
    ld [hl], a
    inc l
    add d
    inc l
    jp $2703


    ld h, h
    ld e, a
    db $d3
    ld e, a
    jp $5b5f


    inc bc
    jr z, jr_00a_71a8

    dec hl
    ld c, a
    dec hl
    ld c, a
    dec hl
    ld c, a
    inc bc
    add hl, hl
    ld h, h
    dec l
    ld c, a
    dec l
    ld c, a
    dec l
    ld d, b
    inc bc
    inc [hl]
    dec b
    inc l
    ld [hl], $2c
    dec a
    inc l
    scf
    inc bc
    add hl, sp
    ld h, h
    ld [hl-], a
    db $d3
    ld [hl-], a
    ld a, [hl+]
    ld [hl-], a

Call_00a_7164:
    xor e
    inc bc
    dec sp
    ld h, h
    dec [hl]
    ld e, l
    dec [hl]
    ld [c], a
    dec [hl]
    db $d3
    inc bc
    inc a
    ld h, h
    ld [hl-], a
    db $d3
    ld [hl-], a
    jp $e232


    inc bc
    ld b, h
    ld h, h
    ld c, b
    ld [hl], l
    ld c, b
    ld d, a
    ld c, b
    ld a, [hl+]
    inc bc
    ld c, b
    ld h, h
    ld h, b
    ld e, e
    ld h, b
    ld c, c
    ld h, b
    and $03
    ld c, c
    ld h, h
    ld h, b
    xor c
    ld h, b
    ld a, c
    ld h, b
    and $03
    ld c, e
    ld h, h
    ld h, b
    sub l
    ld h, b
    ld a, c
    ld h, b
    and $03
    ld c, [hl]
    dec b
    ld e, a
    db $d3
    ld e, a
    jp $e25f


jr_00a_71a4:
    inc bc
    ld c, a

jr_00a_71a6:
    dec b
    ld e, a

jr_00a_71a8:
    db $d3
    ld e, a
    jp Jump_00a_5d5f


    inc bc
    ld d, c
    ld h, h
    ld e, a
    sub h
    ld e, a
    sub h
    ld e, a
    sub h
    rrca
    ld bc, $2c64
    ld e, d
    inc l
    xor d
    inc l
    rst $18
    ld a, [de]
    ld bc, $1405
    inc a
    rrca
    inc a
    inc d
    dec a
    ld a, [de]
    ld [bc], a
    dec b
    inc d
    inc a
    rrca
    inc a
    inc d
    dec a
    ld a, [bc]
    ld bc, $0f0f
    ld c, b
    inc d
    jp Jump_00a_4914


    dec bc
    ld bc, $140f
    ld c, b
    rrca
    ld c, b
    inc d
    ld c, c
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc d
    ld [hl], $0f
    ld [hl], $14
    scf
    ld d, $01
    ld h, h
    inc l
    ld [c], a
    inc l
    db $d3
    inc l
    xor e
    ld d, $02
    ld h, h
    dec l
    db $d3
    dec l
    xor e
    dec l
    ld [c], a
    ld [bc], a
    dec b
    ld h, h
    jr z, jr_00a_720b

    jr z, jr_00a_71a4

    jr z, jr_00a_71a6

    add hl, bc
    dec b
    ld h, h
    add hl, sp

jr_00a_720b:
    sbc a
    add hl, sp
    ld [$0839], sp
    ld [bc], a
    ld b, $64
    ld b, d
    scf
    ld b, d
    dec a
    ld b, d
    ld c, a
    dec b
    ld [$6064], sp
    add c
    ld h, b
    add c
    ld h, b
    add c
    jr jr_00a_7228

    rrca
    inc l
    ld [hl], a
    inc l

jr_00a_7228:
    ld c, b
    inc l
    ldh [rNR30], a
    inc bc
    rrca
    jr z, @-$1f

    jr z, jr_00a_7288

    jr z, jr_00a_72ac

    ld a, [bc]
    dec b
    dec b
    inc l
    dec a
    inc l
    ld h, e
    inc l
    ld c, b
    ld d, $03
    ld h, h
    cpl
    db $d3
    cpl
    ld [c], a
    cpl
    xor e
    ld bc, $640e
    dec hl
    ld h, e
    dec hl
    sbc $2b
    ld [hl], a
    inc b
    add hl, bc
    ld h, h
    jr z, jr_00a_72b6

    jr z, jr_00a_72cc

    jr z, @-$7d

    add hl, bc
    ld b, $64
    scf
    add d
    add hl, sp
    add d
    dec sp
    add d
    dec b
    ld a, [bc]
    ld h, h
    ld e, c
    add d
    ld e, c
    add d
    ld e, c
    add d
    inc de
    ld [bc], a
    ld h, h
    ld h, b
    ld e, e
    ld h, b
    ld a, c
    ld h, b
    add e
    rst $38
    inc bc
    ld d, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld h, h
    ld d, d
    ld h, h
    inc e
    ld h, h
    add sp, $64
    adc $64
    ld l, c
    ld h, h
    ld [hl-], a
    ld h, h

jr_00a_7288:
    inc sp
    ld h, h
    ld d, d
    ld h, h
    inc e
    ld h, h
    adc $64
    add sp, $64
    ld l, c
    ld h, h
    ld [hl-], a
    ld h, h
    inc sp
    ld h, h
    adc $64
    ld d, d
    ld h, h
    add sp, $64
    ld l, c
    ld h, h
    inc e
    ld h, h
    ld [hl-], a
    inc bc
    ld d, l
    ld c, a
    ld c, [hl]
    ld c, a
    ld h, h
    inc h
    ld h, h
    ld c, h

jr_00a_72ac:
    ld h, h
    adc l
    ld h, h
    cp c
    ld h, h
    adc e
    ld h, h
    ld [hl], b
    ld h, h
    inc hl

jr_00a_72b6:
    ld h, h
    inc h
    ld h, h
    ld c, h
    ld h, h
    adc l
    ld h, h
    cp c
    ld h, h
    adc e
    ld h, h
    ld [hl], b
    ld h, h
    inc hl
    ld h, h
    inc h
    ld h, h
    ld c, h
    ld h, h
    cp c
    ld h, h
    adc l

jr_00a_72cc:
    ld h, h
    adc e
    ld h, h
    ld [hl], b
    ld h, h
    inc hl
    inc bc
    ld d, a
    dec sp
    jr c, jr_00a_7312

    ld h, e
    ld b, e
    ld h, e
    ld e, l
    ld h, h
    rra
    ld h, h
    ld a, [de]
    ld h, h
    ld a, h
    ld h, h
    reti


    ld h, h
    ld l, d
    ld h, e
    ld b, e
    ld h, e
    ld e, l
    ld h, h
    ld a, h
    ld h, h
    rra
    ld h, h
    ld l, e
    ld h, h
    reti


    ld h, h
    ld l, c
    ld h, e
    ld b, e
    ld h, e
    ld e, l
    ld h, h
    ld a, h
    ld h, h
    db $ed
    ld h, h
    ld a, d
    ld h, h
    add sp, $64
    jp z, Jump_00a_5803

    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld sp, $e864
    ld h, h
    adc c
    ld h, h
    reti


    ld h, h
    db $dd
    ld h, h
    ld [hl], e

jr_00a_7312:
    ld h, h
    jp z, $3164

    ld h, h
    add sp, $64
    adc c
    ld h, h
    reti


    ld h, h
    db $dd
    ld h, h
    ld [hl], e
    ld h, h
    jp z, $3164

    ld h, h
    add sp, $64
    adc c
    ld h, h
    reti


    ld h, h
    db $dd
    ld h, h
    ld [hl], e
    ld h, h
    jp z, Jump_00a_5b03

    rrca
    rrca
    rrca
    ld h, h
    inc sp
    ld h, h
    ld e, c
    ld h, h
    reti


    ld h, e
    ld h, l
    ld h, h
    jp Jump_00a_6e64


    ld h, h
    ld [hl], b
    ld h, h
    inc sp
    ld h, h
    ld e, c
    ld h, h
    reti


    ld h, e
    ld h, l
    ld h, h
    adc l
    ld h, h
    ld l, [hl]
    ld h, h
    ld c, h
    ld h, h
    inc sp
    ld h, h
    ld l, [hl]
    ld h, h
    reti


    ld h, e
    ld h, l
    ld h, h
    adc e
    ld h, h
    ld e, c
    ld h, h
    ld c, h
    inc bc
    ld d, e
    rrca
    rrca
    rrca
    ld a, [hl+]
    inc hl
    ld a, [hl+]
    rst $20
    ld a, [hl+]
    ld b, e
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld h, b
    ld a, [hl+]
    jr c, jr_00a_7399

    ld e, a
    ld a, [hl+]
    ret c

    ld a, [hl+]
    rst $20
    ld a, [hl+]
    call c, $232a
    ld a, [hl+]
    pop hl
    ld a, [hl+]
    ld h, b
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    rst $20
    ld a, [hl+]
    ret c

    ld a, [hl+]
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    jp z, $dc2a

    ld a, [hl+]
    pop de
    dec c
    ld bc, $1919
    add hl, de
    ld h, h
    ld [de], a
    ld h, h
    and d
    ld h, h
    ld a, [de]

jr_00a_7399:
    ld h, h
    jr jr_00a_7400

    inc e
    ld h, h
    db $eb
    ld h, h
    jr z, jr_00a_7406

    ld [de], a
    ld h, h
    and d
    ld h, h
    ld a, [de]
    ld h, h
    jr jr_00a_740e

    inc e
    ld h, h
    db $eb
    ld h, h
    jr z, jr_00a_7414

    and h
    ld h, h
    inc d
    ld h, h
    ld a, [de]
    ld h, h
    ld [de], a
    ld h, h
    jr jr_00a_741e

    inc e
    ld h, h
    jr z, jr_00a_73d5

    ld bc, $6464
    ld h, h
    ld h, h
    add hl, de
    ld h, h
    and [hl]
    ld h, h
    rrca
    ld h, h
    ld a, a
    ld h, h
    cpl
    ld h, h
    ld sp, $7b64
    ld h, h
    add hl, de
    ld h, h
    inc c
    ld h, h

jr_00a_73d5:
    ld sp, $7b64
    ld h, h
    ld a, a
    ld h, h
    rrca
    ld h, h
    call nc, $1964
    ld h, h
    xor b
    ld h, h
    ld a, a
    ld h, h
    ld a, e
    ld h, h
    ld sp, $2f64
    ld h, h
    call nc, $010e
    add hl, de
    add hl, de
    add hl, de
    ld h, h
    ld d, $64
    jr @+$66

    inc e
    ld h, h
    jr z, jr_00a_745e

    or l
    ld h, h
    db $db
    ld h, h
    ld [hl], d
    ld h, h

jr_00a_7400:
    ld d, $64
    jr jr_00a_7468

    inc e
    ld h, h

jr_00a_7406:
    jr z, jr_00a_746c

    or l
    ld h, h
    db $db
    ld h, h
    ld [hl], d
    ld h, h

jr_00a_740e:
    ld a, [hl+]
    ld h, h
    jp nc, $2864

    ld h, h

jr_00a_7414:
    rst $08
    ld h, h
    or l
    ld h, h
    db $db
    ld h, h
    ld [hl], d
    rlca
    inc c
    add hl, de

jr_00a_741e:
    add hl, de
    add hl, de
    ld h, h
    ld h, $64
    ld a, d
    ld h, h
    or d
    ld h, h
    or b
    ld h, h
    db $ed
    ld h, h
    dec l
    ld h, h
    dec l
    ld h, h
    dec sp
    ld h, h
    ld l, d
    ld h, h
    or b
    ld h, h
    or d
    ld h, h
    ld a, d
    ld h, h
    or [hl]
    ld h, h
    or [hl]
    ld h, h
    push hl
    ld h, h
    adc b
    ld h, h
    ld a, [hl]
    ld h, h
    adc $64
    inc h
    ld h, h
    ld b, a
    ld h, e
    ld e, l
    add hl, de
    ld bc, $1919
    add hl, de
    ld h, h
    rra
    ld h, h
    ld [hl+], a
    ld h, h
    ld d, l
    ld h, d
    ld b, b
    ld h, h
    jp nc, $4062

    ld h, d
    ld b, b
    ld h, h

jr_00a_745e:
    rra
    ld h, h
    jp nc, $2264

    ld h, d
    ld b, b
    ld h, h
    ld d, l
    ld h, d

jr_00a_7468:
    ld b, b
    ld h, d
    ld b, b
    ld h, h

jr_00a_746c:
    rra
    ld h, h
    push hl
    ld h, h
    ld h, [hl]
    ld h, d
    ld b, b
    ld h, h
    ld [hl+], a
    ld h, c
    ccf
    ld h, d
    ccf
    inc c
    ld bc, $1919
    add hl, de
    ld h, h
    ld d, d
    ld h, h
    ld l, h
    ld h, h
    ld d, d
    ld h, h
    and d
    ld h, h
    inc d
    ld h, h
    jp nc, $eb64

    ld h, h
    ld l, h
    ld h, h
    jr z, jr_00a_74f5

    ld d, d
    ld h, h
    and d
    ld h, h
    inc d
    ld h, h
    jp nc, $d264

    ld h, h
    rst $10
    ld h, e
    ld h, b
    ld h, h
    ld d, d
    ld h, h
    scf
    ld h, h
    jr z, jr_00a_7509

    dec [hl]
    ld h, h
    dec [hl]
    dec d
    ld bc, $1919
    add hl, de
    ld h, h
    ld b, $64
    inc bc
    ld h, h
    add hl, bc
    ld h, h
    sbc l
    ld h, h
    and b
    ld h, h
    sbc d
    ld h, d
    ccf
    ld h, h
    ld b, $64
    inc bc
    ld h, h
    add hl, bc
    ld h, h
    sbc l
    ld h, h
    and b
    ld h, h
    sbc d
    ld h, d
    ccf
    ld h, h
    sbc l
    ld h, h
    sbc d
    ld h, h
    and b
    ld h, h
    ld b, $64
    inc bc
    ld h, h
    add hl, bc
    ld h, d
    ccf
    ld [de], a
    ld bc, $3e3e
    add hl, de
    ld h, h
    ld l, d
    ld h, h
    db $ed
    ld h, d
    ccf
    ld h, h
    adc b
    ld h, h
    ld l, e
    ld h, d
    ccf
    ld h, d
    ccf
    ld h, h
    ld l, e
    ld h, h
    db $ed
    ld h, d
    ccf
    ld h, h
    adc b
    ld h, h
    ld l, d
    ld h, d

jr_00a_74f5:
    ccf
    ld h, d
    ccf
    ld h, e
    ld h, b
    ld h, h
    and h
    ld h, d
    ccf
    ld h, e
    ld e, l
    ld h, h
    adc b
    ld h, d
    ccf
    ld h, d
    ccf
    rlca
    dec c
    ld e, b

jr_00a_7509:
    ld d, a
    ld d, a
    ld h, h
    bit 4, h
    ld b, a
    ld h, h
    ld a, d
    ld h, h
    ld sp, $be64
    ld h, h
    add hl, sp
    ld h, h
    add hl, sp
    ld h, h
    bit 4, h
    ld b, a
    ld h, h
    ld a, d
    ld h, h
    ld sp, $be64
    ld h, h
    add hl, sp
    ld h, h
    add hl, sp
    ld h, h
    bit 4, h
    ld b, a
    ld h, h
    ld a, d
    ld h, h
    ld sp, $be64
    ld h, h
    add hl, sp
    ld h, h
    add hl, sp
    rlca
    ld c, $64
    ld h, h
    ld h, h
    ld h, e
    adc c
    ld h, h
    ld a, l
    ld h, h
    ld d, d
    ld h, h
    or l
    ld h, h
    ld a, [de]
    ld h, h
    ld h, l
    ld h, h
    jp hl


    ld h, e
    adc c
    ld h, h
    ld a, l
    ld h, h
    ld d, d
    ld h, h
    or l
    ld h, h
    ld a, [de]
    ld h, h
    ld h, l
    ld h, h
    jp hl


    ld h, e
    adc c
    ld h, h
    ld a, l
    ld h, h
    ld d, d
    ld h, h
    or l
    ld h, h
    ld a, [de]
    ld h, h
    ld h, l
    ld h, h
    jp hl


    inc c
    ld [bc], a
    add hl, de
    add hl, de
    add hl, de
    ld h, h
    cp l
    ld h, h
    adc b
    ld h, h
    ld d, d
    ld h, h
    or d
    ld h, h
    ld a, d
    ld h, h
    ld h, c
    ld h, h
    ld h, c
    ld h, h
    cp l
    ld h, h
    adc b
    ld h, h
    ld d, d
    ld h, h
    or d
    ld h, h
    ld a, d
    ld h, h
    ld h, c
    ld h, h
    ld h, c
    ld h, d
    ccf
    ld h, h
    dec [hl]
    ld h, h
    ld d, d
    ld h, h
    and h
    ld h, h
    push hl
    ld h, h
    ld h, c
    ld h, h
    ld h, c
    ld de, $6401
    ld h, h
    ld h, h
    ld h, h
    dec sp
    ld h, h
    ld a, [hl]
    ld h, h
    ld h, $64
    ld c, [hl]
    ld h, h
    ld b, $64
    sbc l
    ld h, h
    push hl

Jump_00a_75a6:
    ld h, h
    ld a, [hl]
    ld h, h
    dec sp
    ld h, h
    ld c, [hl]
    ld h, h
    ld h, $64
    sbc l
    ld h, h
    ld b, $64
    push hl
    ld h, h
    push hl
    ld h, h
    dec sp
    ld h, h
    ld a, [hl]
    ld h, h
    ld c, [hl]
    ld h, h
    ld h, $64
    ld b, $64
    sbc l
    ld de, $6402
    ld h, h
    ld h, h
    ld h, h
    cp l
    ld h, h
    ret nz

    ld h, h
    or [hl]
    ld h, h
    ld [hl], d
    ld h, h
    ld h, [hl]
    ld h, h
    sbc d
    ld h, h
    inc bc
    ld h, h
    ld b, a
    ld h, h
    cp l
    ld h, h
    ld h, [hl]
    ld h, h
    or [hl]
    ld h, h
    dec l
    ld h, h
    sbc d
    ld h, h
    inc bc
    ld h, h
    dec l
    ld h, h
    ld b, a
    ld h, h
    ld [hl], d
    ld h, h
    cpl
    ld h, h
    or [hl]
    ld h, h
    inc bc
    ld h, h
    sbc d
    ld de, $1903
    add hl, de
    add hl, de
    ld h, h
    cp l
    ld h, h
    cp d
    ld h, h
    ld a, $64
    cp b
    ld h, h
    cp c
    ld h, h
    ld [$c764], a
    ld h, h
    adc b
    ld h, h
    cp d
    ld h, h
    ld a, $64
    cp b
    ld h, h
    cp c
    ld h, h
    ld [$dd64], a
    ld h, h
    adc b
    ld h, h
    jp $1c64


    ld h, h
    add $64
    ld [$b964], a
    ld h, h
    ld d, b
    dec d
    ld [bc], a
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld l, [hl]
    ld h, h
    ld e, c
    ld h, h
    jr jr_00a_7690

    rra
    ld h, h
    ld [hl+], a
    ld h, h
    ld sp, $a864
    ld h, h
    jr jr_00a_769a

    ld l, [hl]
    ld h, h
    ld e, c
    ld h, h
    ld sp, $1f64
    ld h, h
    ld [hl+], a
    ld h, h
    rrca
    ld h, h
    jr jr_00a_76a8

    ld l, [hl]
    ld h, h
    ld e, c
    ld h, h
    ld sp, $1f64
    ld h, e
    ld e, l
    ld h, h
    ld [hl+], a
    dec d
    inc bc
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    bit 4, h
    db $db
    ld h, h
    add sp, $64
    ld d, l
    ld h, h
    ld e, c
    ld h, h
    ld l, [hl]
    ld h, h
    ld c, h
    ld h, h
    ld d, l
    ld h, h
    db $db
    ld h, h
    ld e, c
    ld h, h
    bit 4, h
    ld l, [hl]
    ld h, h
    add sp, $64
    ld c, h
    ld h, h
    ld e, c
    ld h, h
    add sp, $64
    ld d, l
    ld h, h
    ld l, [hl]
    ld h, h
    ld c, [hl]
    ld h, h
    bit 4, h
    db $db
    ld de, $6404
    ld h, h
    ld h, h
    ld h, h
    or d
    ld h, h
    or b
    ld h, h
    ld d, $64
    ld [de], a
    ld h, h
    ld d, l
    ld h, h
    add $64

jr_00a_7690:
    pop hl
    ld h, h
    or d
    ld h, h
    or b
    ld h, h
    ld [de], a
    ld h, h
    ld d, $64

jr_00a_769a:
    ld d, e
    ld h, h
    ld d, l
    ld h, h
    add $64
    add $64
    and h
    ld h, h
    ld d, $64
    ld [de], a
    ld h, h

jr_00a_76a8:
    or d
    ld h, h
    or b
    ld h, e
    ld d, l
    ld b, $07
    rrca
    rrca
    rrca
    ld h, h
    ld [hl], d
    ld h, h
    bit 4, h
    ld a, [de]
    ld h, h
    ld a, d
    ld h, h
    db $dd
    ld h, h
    ld a, h
    ld h, h
    ld a, h
    ld h, h
    ld [hl], d
    ld h, h
    bit 4, h
    ld a, [de]
    ld h, h
    ld a, d
    ld h, h
    db $dd
    ld h, h
    ld a, h
    ld h, h
    ld a, h
    ld h, h
    ld [hl], d
    ld h, h
    bit 4, h
    ld a, [de]
    ld h, h
    ld a, d
    ld h, h
    db $dd
    ld h, h
    ld a, h
    ld h, h
    ld a, h
    rla
    ld [bc], a
    add hl, de
    add hl, de
    add hl, de
    ld h, h
    add l
    ld h, h
    add h
    ld h, h
    db $eb
    ld h, h
    jp z, $0964

    ld h, h
    ld b, $64
    inc bc
    ld h, h
    add l
    ld h, h
    add h
    ld h, h
    db $eb
    ld h, h
    jp z, $0664

    ld h, h
    add hl, bc
    ld h, h
    inc bc
    ld h, h
    add l
    ld h, h
    add h
    ld h, h
    db $eb
    ld h, h
    jp z, $a064

    ld h, h
    sbc l
    ld h, h
    sbc d
    rlca
    rrca
    add hl, de
    add hl, de
    add hl, de
    ld h, h
    add h
    ld h, h
    add hl, sp
    ld h, h
    rst $08
    ld h, d
    ccf
    ld h, h
    rst $30
    ld h, e
    sub h
    ld h, h
    ld [hl], e
    ld h, h
    add h
    ld h, h
    add hl, sp
    ld h, h
    rst $08
    ld h, d
    ccf
    ld h, h
    rst $30
    ld h, h
    sub h
    ld h, h
    ld [hl], e
    ld h, h
    add h
    ld h, h
    add hl, sp
    ld h, h
    rst $08
    ld h, d
    ccf
    ld h, h
    rst $30
    ld h, h
    sub h
    ld h, h
    ld [hl], e
    rlca
    db $10
    add hl, de
    add hl, de
    add hl, de
    ld h, h
    or l
    ld h, e
    ld b, b
    ld h, h
    inc h
    ld h, e
    ld b, e
    ld h, e
    sub h
    ld h, e
    rst $30
    ld h, h
    ld [hl], e
    ld h, h
    or l
    ld h, e
    ld b, b
    ld h, h
    inc h
    ld h, e
    ld b, e
    ld h, e
    sub h
    ld h, e
    rst $30
    ld h, h
    ld [hl], e
    ld h, h
    or l
    ld h, e
    ld b, b
    ld h, h
    push hl
    ld h, h
    inc h
    ld h, e
    sub h
    ld h, e
    rst $30
    ld h, h
    ld [hl], e
    jr jr_00a_776c

    add hl, de

jr_00a_776c:
    add hl, de
    add hl, de
    ld h, h
    cp l
    ld h, h
    adc b
    ld h, h
    cp d
    ld h, h
    ld a, [de]
    ld h, h
    jr jr_00a_77dd

    add hl, bc
    ld h, h
    rra
    ld h, h
    or d
    ld h, h
    ld a, [de]
    ld h, h
    ld a, $64
    ld a, e
    ld h, h
    adc $64
    sbc l
    ld h, h
    ld [hl+], a
    ld h, h
    ld d, l
    ld h, h
    ld sp, $7d64
    ld h, h
    jp nc, Jump_00a_7f64

    ld h, h
    inc e
    ld h, h
    push hl
    jr jr_00a_779c

    add hl, de
    add hl, de

jr_00a_779c:
    add hl, de
    ld h, h
    or l
    ld h, h
    or b
    ld h, h
    or [hl]
    ld h, h
    dec sp
    ld h, h
    ld l, d
    ld h, h
    adc $64
    ld d, l
    ld h, h
    ld a, [de]
    ld h, h
    ld d, l
    ld h, h
    ld b, a
    ld h, h
    ld c, [hl]
    ld h, h
    jr z, jr_00a_781a

    jr jr_00a_781c

    call nc, Call_00a_5264
    ld h, h
    or d
    ld h, h
    dec l
    ld h, h
    dec [hl]
    ld h, h
    inc e
    ld h, h
    ld [$e564], a
    inc de
    ld bc, $6464
    ld h, h
    ld h, h
    sub $64
    add [hl]
    ld h, h
    add a
    ld h, h
    ld h, a
    ld h, h
    db $e3
    ld h, h
    pop af
    ld h, h
    call nz, Call_00a_6764
    ld h, h

jr_00a_77dd:
    ld [hl+], a
    ld h, h
    add a
    ld h, h
    db $e3
    ld h, h
    ld [hl], c
    ld h, h
    add [hl]
    ld h, h
    add b
    ld h, h
    call $a964
    ld h, h
    push bc
    ld h, h
    ld h, c
    ld h, h
    push hl
    ld h, h
    add a
    ld h, h
    call nz, $03ff
    ld d, e
    ld a, [hl+]
    jr z, jr_00a_7870

    jr z, jr_00a_784d

    jr z, jr_00a_7878

    rrca
    ld [bc], a
    dec b
    ld e, a
    ld e, d
    ld e, a
    ld a, b
    ld e, a
    xor e
    rlca
    inc c
    ld a, [bc]
    ld e, a
    cp b
    ld e, a
    ld h, e
    ld e, a
    add d
    inc c
    ld bc, $5f62
    scf
    ld e, a
    ld h, e
    ld e, a

jr_00a_781a:
    ld c, a
    rlca

jr_00a_781c:
    dec c
    ld a, [bc]
    ld e, a
    db $d3
    ld e, a
    ld d, a
    ld e, a
    ld [hl], a
    rlca
    ld c, $0a
    ld e, a
    scf
    ld e, a
    ld c, a
    ld e, a
    cp b
    ld [de], a
    ld [bc], a
    rrca
    ld e, a
    scf
    ld e, a
    jp Jump_00a_495f


    ld de, $0f01
    ld e, a
    ldh [$5f], a
    jp Jump_00a_495f


    ld b, $05
    rrca
    ld e, a
    db $d3
    ld e, a
    xor e
    ld e, a
    ld c, c
    ld b, $06
    rrca

Jump_00a_784b:
    ld e, a
    db $d3

jr_00a_784d:
    ld e, a
    jp Jump_00a_495f


    ld b, $07
    rrca
    ld e, a
    xor e
    ld e, a
    ld [c], a
    ld e, a
    ld c, c
    rla
    ld [bc], a
    dec b
    ld e, a
    add hl, de
    ld e, a
    jp $d35f


    rlca
    rrca
    ld h, d
    ld e, a
    db $d3
    ld e, a
    ld d, a
    ld e, a
    ld a, [de]
    rlca
    db $10
    ld a, [bc]
    ld e, a

jr_00a_7870:
    ld a, $5f
    cp d
    ld e, a
    add [hl]
    jr jr_00a_7878

    rrca

jr_00a_7878:
    ld h, b
    db $d3
    ld h, b
    xor e
    ld h, b
    ld [c], a
    jr @+$04

    rrca
    jr z, jr_00a_78e6

    jr z, jr_00a_78fa

    jr z, jr_00a_78cf

    inc de
    ld bc, $6064
    sub l
    ld h, b
    ld e, e
    ld h, b
    add e
    dec c
    ld [bc], a
    rrca
    ld e, a
    ld a, b
    ld e, a
    ld e, d
    ld e, a
    ld c, c
    rla
    inc bc
    ld h, h
    ld e, a
    add hl, bc
    ld e, a
    and b
    ld e, a
    sub h
    rlca
    ld de, $5f0a
    db $d3
    ld e, a
    scf
    ld e, a
    ld [hl], l
    inc c
    inc bc
    rrca
    ld e, a
    db $d3
    ld e, a
    xor e
    ld e, a
    ld c, c
    dec d
    inc b
    dec b
    ld e, a
    ld e, c
    ld e, a
    ld e, c
    ld e, a
    ld e, b
    ld de, $6405
    ld e, a
    ld [c], a
    ld e, a
    db $d3
    ld e, a
    ld h, e
    ld b, $08
    ld h, h
    ld e, a
    ldh [$5f], a
    ld d, a
    ld e, a
    ld c, c

jr_00a_78cf:
    rst $38
    inc bc
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    adc $03
    adc $02
    adc $02
    adc $02
    adc $04
    adc $04
    adc $03
    ld c, d
    inc bc

jr_00a_78e6:
    adc $02
    add hl, hl
    ld [bc], a
    ld c, d
    ld [bc], a
    adc $04
    adc $04
    adc $03
    adc $03
    adc $02
    adc $02
    adc $02

jr_00a_78fa:
    adc $04
    adc $04
    adc $0a
    ld [bc], a
    add hl, de
    add hl, de
    add hl, de
    ld h, $c1
    ld h, $c1
    ld h, $c1
    ld h, $c1
    ld h, $c1
    ld h, $c1
    ld h, $c1
    inc c
    jr nz, jr_00a_7921

    dec e
    inc c
    pop bc
    ld c, $c1
    ld c, $10
    ld a, [bc]
    add h
    ld a, [bc]
    add h
    inc c

jr_00a_7921:
    jr nz, jr_00a_792f

    dec e
    inc c
    pop bc
    ld c, $c1
    ld c, $a3
    ld a, [bc]
    add h
    ld a, [bc]
    add h
    rst $38

jr_00a_792f:
    rst $38
    ld a, $00
    ld hl, $39b0
    rst $08
    ld hl, $dd01
    call Call_00a_7995
    push bc
    ld hl, $d2aa
    call Call_00a_7995
    ld a, c
    pop bc
    cp c
    jr z, jr_00a_794c

    jr c, jr_00a_797f

    jr jr_00a_7976

jr_00a_794c:
    call Call_00a_79e1
    jr z, jr_00a_798a

    ld a, e
    cp $01
    jr z, jr_00a_7976

    cp $02
    jr z, jr_00a_797f

    ld hl, $dd01
    call Call_00a_79a6
    push de
    ld hl, $d2aa
    call Call_00a_79a6
    pop hl
    ld a, d
    cp h
    jr c, jr_00a_7976

    jr z, jr_00a_7970

    jr jr_00a_797f

jr_00a_7970:
    ld a, e
    cp l
    jr z, jr_00a_798a

    jr nc, jr_00a_797f

jr_00a_7976:
    ld a, [$d0ee]
    and $f0
    ld [$d0ee], a
    ret


jr_00a_797f:
    ld a, [$d0ee]
    and $f0
    add $01
    ld [$d0ee], a
    ret


jr_00a_798a:
    ld a, [$d0ee]
    and $f0
    add $02
    ld [$d0ee], a
    ret


Call_00a_7995:
    ld c, $00
    ld b, $03
    ld de, $002f

jr_00a_799c:
    ld a, [hl+]
    or [hl]
    jr nz, jr_00a_79a1

    inc c

jr_00a_79a1:
    add hl, de
    dec b
    jr nz, jr_00a_799c

    ret


Call_00a_79a6:
    ld de, $0000
    ld c, $03

jr_00a_79ab:
    ld a, [hl+]
    or [hl]
    jr z, jr_00a_79d7

    dec hl
    xor a
    ldh [$b3], a
    ld a, [hl+]
    ldh [$b4], a
    ld a, [hl+]
    ldh [$b5], a
    xor a
    ldh [$b6], a
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    srl b
    rr a
    srl b
    rr a
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b6]
    add e
    ld e, a
    ldh a, [$b5]
    adc d
    ld d, a
    dec hl

jr_00a_79d7:
    push de
    ld de, $002f
    add hl, de
    pop de
    dec c
    jr nz, jr_00a_79ab

    ret


Call_00a_79e1:
    ld hl, $dd01
    call Call_00a_7a01
    jr nz, jr_00a_79f2

    ld hl, $d2aa
    call Call_00a_7a01
    ld e, $01
    ret


jr_00a_79f2:
    ld hl, $d2aa
    call Call_00a_7a01
    ld e, $00
    ret nz

    ld e, $02
    ld a, $01
    and a
    ret


Call_00a_7a01:
    ld d, $03

jr_00a_7a03:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    or b
    jr z, jr_00a_7a10

    ld a, [hl+]
    cp b
    ret nz

    ld a, [hl-]
    cp c
    ret nz

jr_00a_7a10:
    push de
    ld de, $002e
    add hl, de
    pop de
    dec d
    jr nz, jr_00a_7a03

    ret


    db $ec
    ld c, c
    inc hl
    ld bc, $0307
    ld [bc], a
    rlca
    dec b
    rlca
    ld b, $0f
    ld [$1f43], sp
    db $10
    ld b, e
    ccf
    jr nz, @+$03

    ld a, $21
    ld a, l
    add hl, bc
    ld bc, $0701
    rlca
    rra
    rra
    ld hl, $3e3f
    ccf
    rst $08
    adc b
    rlca
    inc bc
    inc bc
    inc b
    inc b
    ld [$1008], sp
    db $10
    inc hl
    jr nz, jr_00a_7a65

    ld b, b
    ld b, b
    ld a, l
    ld a, h
    add e
    rst $38
    ret nz

    ccf
    ret c

    ccf
    and $7f
    pop de
    xor a
    and b
    ld e, a
    ret nc

    cpl
    and b
    ld e, a
    ret nz

    ccf
    add b
    ld a, a
    jr nc, @-$2f

    ld [hl], b

jr_00a_7a65:
    adc a
    add a
    xor l
    inc d
    inc c
    rrca
    db $10
    rra
    jr nz, @+$41

    ld bc, $427f
    ld a, a
    ld b, c
    ld a, a
    ld [bc], a
    rst $38
    add l
    rst $38
    adc d
    rst $38
    add l
    rst $38
    adc e
    jr z, @+$01

    inc b
    rrca
    rst $38
    ldh a, [rIE]
    ld a, a
    ld b, e
    ld a, a
    ccf
    ldh [$30], a
    ccf
    rra
    ccf
    rrca
    rra
    rrca
    rrca
    rst $20
    rst $30
    rra
    rrca
    ccf
    ld b, e
    rra
    ld h, $0b
    inc e
    rla
    ld b, $2b
    inc bc
    ld d, l
    nop
    xor d
    nop
    push af
    ret nz

    ld a, $f0
    rra
    db $ec
    dec bc
    rst $30
    dec d
    ld [$f50a], a
    dec b
    ld a, [$fd42]
    jr nz, @+$01

    jr z, @+$01

    inc e
    rst $38
    ld e, $ff
    ld h, e
    ld b, $9f
    ld a, a
    nop
    add b
    db $fc
    cp $7f
    ld [hl+], a
    rst $38
    add h
    add e
    jr nc, @+$01

    inc b
    ld hl, sp-$01
    add $ff
    ld a, $44

jr_00a_7ad2:
    cp $ff
    ld de, $fffe
    cp $fb
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    adc a
    ld bc, $0322
    dec b
    rlca
    add a
    add [hl]
    rst $20
    ld h, [hl]
    ld [hl], a
    and e
    sub l
    ld [de], a
    rlca

jr_00a_7af4:
    rst $38
    inc bc
    cp $ce
    or h
    ld a, h
    ld b, h
    cp [hl]
    xor a
    ld e, c
    ld e, h
    xor b
    jr c, jr_00a_7ad2

    jr jr_00a_7af4

    inc a
    db $e3
    and h
    nop
    ld a, d
    dec c
    ret nz

    jr nc, @+$3a

    ld c, $06
    cp [hl]
    pop bc
    rst $28
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$05
    ld c, d
    db $fc
    rst $38
    ld a, [bc]
    db $fd
    cp $ff
    rst $38
    ld a, a
    ld hl, sp-$09
    ld hl, sp+$7f
    ld h, b
    ld e, h
    ld b, l
    ld b, b
    nop
    ld bc, $8000
    ld h, c
    ld [$c180], sp
    ld bc, $02c2
    db $e4
    inc b
    ldh a, [$78]
    and e
    nop
    adc b
    rra
    add b
    add b
    ret z

    ld c, h
    db $d3
    ld d, e
    pop af
    ld hl, $31f9
    cp $6f
    cp b
    sbc a
    db $10
    rra
    rrca
    ld c, a
    dec bc
    cpl
    ld [$3028], sp
    jr nc, @-$02

    db $ec
    ccf
    ld b, e
    ld a, a
    add a
    ld hl, sp+$18
    xor l
    nop
    ld [hl], c
    ld b, [hl]
    ret nz

    ld b, b
    ld b, e
    ret nz

    ldh [rIF], a
    ldh a, [rSVBK]
    ldh a, [$f0]
    jr c, @+$7a

    ld hl, sp-$08
    ld a, h
    db $ec
    ld h, h
    ret nz

    ld b, b
    ld b, b
    ret nz

    nop
    ld [hl+], a
    add b
    nop
    nop
    ld [hl+], a
    ld b, b
    ld bc, $4000
    xor l
    nop
    adc b
    dec de
    ld h, b
    ld [hl], b
    adc b
    adc b
    add b
    inc b
    db $e4
    db $e4
    db $fc
    inc [hl]
    xor b
    jr jr_00a_7bf4

    db $fc
    sbc h
    sbc h
    inc c
    inc c
    sub h
    sbc h
    ld h, h
    ld h, h
    ld a, [bc]
    ld a, [bc]
    ld [hl-], a
    ld [hl-], a
    db $fc
    db $fc
    ld h, e
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
    ld h, d
    ld [bc], a
    ld bc, $0703
    ld [hl+], a
    rrca
    inc hl
    rra
    dec h
    ccf
    inc [hl]
    ld a, a
    call nz, $c597
    sbc a
    ld bc, $0f1f
    ld b, e
    rrca
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    ld c, b
    inc bc
    ld [bc], a
    rlca
    ld b, $07
    inc b
    rlca
    ld c, $0f
    rrca
    dec c
    inc hl
    rra
    add e
    rst $00
    ld a, [hl+]
    ccf
    ld bc, $3e3c
    dec a
    rst $38
    ld [hl+], a
    cp $47
    cp $ff
    add l
    add d
    ld [$fbfc], sp
    db $fc
    cp a
    ld hl, sp-$01
    sub b
    rst $28
    sub b
    ld b, h
    rst $38
    add b
    ld de, $ff00
    nop

jr_00a_7bf4:
    cp $00
    db $fc
    nop
    ld a, [$fd00]
    nop
    ld a, [$3fc0]
    db $fc
    jp $fcff


    ld [hl+], a
    rst $38
    ld [bc], a
    db $fd
    rst $38
    ld a, [$8386]
    ld bc, $fffe
    ld h, c
    inc d
    ret nz

    ldh [$f0], a
    ld hl, sp-$52
    cp $d7
    rst $38
    rst $28
    rst $38
    db $fd
    db $fd
    call c, $eefe
    cp $f3
    di
    pop af
    ld sp, hl
    ld hl, sp-$5d
    nop
    inc sp
    ld [hl+], a
    ldh [$03], a
    jr nz, @+$62

    jr nz, @+$22

    dec h
    ld b, b
    ld b, e
    ret nz

    nop
    inc bc
    add b
    ret nz

    ret nz

    nop
    ld b, e
    ldh [rP1], a
    ld a, [bc]
    ldh a, [rP1]
    pop af
    ld bc, $02fa
    db $fc
    inc e
    ldh [rNR41], a
    and b
    ld [hl+], a
    jr nz, jr_00a_7c6e

jr_00a_7c4b:
    db $10
    ld a, [bc]
    ld [$0408], sp
    ld b, $87
    rlca
    ld a, [hl]
    rra
    push hl
    rst $38
    ld e, $22
    rst $38
    nop
    ld a, [hl]
    ld [hl+], a
    rst $38
    ld [bc], a

jr_00a_7c5f:
    ld e, a
    rst $38
    xor a
    add h
    add e
    ld l, c
    ld bc, $8080
    ld b, e
    add b
    ret nz

    ld [bc], a
    ld b, b
    ld b, b

jr_00a_7c6e:
    nop
    ld a, [hl+]
    jr nz, jr_00a_7c72

jr_00a_7c72:
    nop
    ld [hl+], a
    ld b, b
    adc c
    sub c
    nop
    nop
    add h
    db $eb
    nop
    add b
    jp nz, Jump_00a_75a6

    inc de
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$58]
    ld hl, sp-$58
    ld hl, sp-$2c
    db $fc
    xor h
    db $fc
    call nc, $ecfc
    add hl, sp
    inc hl
    ld bc, $0343
    ld [bc], a
    add hl, bc
    ld h, e
    ld h, d
    sub e
    sub d
    di
    sub d
    ei
    adc h
    ld a, a
    ld b, h
    ld b, e
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, jr_00a_7cf4

    rra
    ld de, $1004
    rrca
    ld [$0c0f], sp
    db $ec
    scf
    ld [bc], a
    ret nz

    ret nz

    nop
    ld b, h
    jr nz, jr_00a_7c5f

    rlca
    or b
    jr nc, jr_00a_7c4b

    ld c, b
    add sp, $48
    ldh [rLY], a
    ld b, e
    db $f4
    inc h
    inc de
    cp h
    ld b, h
    cp b
    ld e, b
    add sp, $68
    add b
    add h
    call nz, $f404
    inc [hl]
    db $e4
    ld b, h
    add sp, -$38
    ld hl, sp+$48
    ldh a, [$30]
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

jr_00a_7cf4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00a_7f64:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
