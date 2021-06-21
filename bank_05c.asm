; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05c", ROMX[$4000], BANK[$5c]

    ld a, [$c62b]
    ld [$c6d0], a
    ld hl, $c62e
    ld de, $c6e7
    ld bc, $0005
    call $3026
    ld a, $50
    ld [de], a
    ld hl, $c663
    ld de, $c6f2
    ld bc, $0005
    call $3026
    ld a, $50
    ld [de], a
    ld hl, $c648
    ld a, [hl+]
    ld [$c6fd], a
    ld a, [hl]
    ld [$c6fe], a
    ld hl, $c639
    ld a, [hl+]
    ld [$c6ff], a
    ld a, [hl]
    ld [$c700], a
    ld bc, $c633
    ld a, $13
    ld hl, $7301
    rst $08

Call_05c_4043:
    ld a, c
    ld [$c701], a
    ld a, [$cd81]
    ld [$c74e], a
    ld hl, $c608
    ld de, $d800
    ld bc, $008f
    call $3026
    ret


    ld a, $05
    call $2fcb
    ld a, [$a824]
    ld [$c702], a
    ld hl, $a827
    ld de, $c719
    ld bc, $0005
    call $3026
    ld a, $50
    ld [de], a
    ld hl, $a85c
    ld de, $c724
    ld bc, $0005
    call $3026
    ld a, $50
    ld [de], a
    ld hl, $a841
    ld a, [hl+]
    ld [$c72f], a
    ld a, [hl]
    ld [$c730], a
    ld hl, $a832
    ld a, [hl+]
    ld [$c731], a
    ld a, [hl]
    ld [$c732], a
    ld bc, $a82c
    ld a, $13
    ld hl, $7301
    rst $08
    ld a, c
    ld [$c733], a
    ld a, [$cd81]
    ld [$c74e], a
    call $2fe1
    ret


    call Call_05c_421e
    ld a, $46
    ld hl, $4121
    rst $08
    ret


    call Call_05c_421e
    ld a, $46
    ld hl, $411a
    rst $08
    ret


    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    call Call_05c_442c
    ld a, $05
    call $2fcb
    ld a, $01
    ld [$be45], a
    xor a
    ld [$be46], a
    ld hl, $dffc
    ld de, $aa41
    ld bc, $0004
    call $3026
    ld hl, $d202
    ld de, $aa8e
    ld bc, $0594
    call $3026
    ld hl, $aa5d
    ld a, [hl]
    inc [hl]
    inc hl
    sla a
    sla a
    ld e, a
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, $dffc
    ld bc, $0004
    call $3026
    call $2fe1
    pop af
    ldh [rSVBK], a
    ret


    call Call_05c_421e
    call Call_05c_4121
    ld a, $46
    ld hl, $405f
    rst $08
    ret


Call_05c_4121:
    ld a, $05
    call $2fcb
    ld hl, $a948
    ld de, $c608
    ld bc, $00f6
    call $3026
    call $2fe1
    call Call_05c_4c8b
    ret


    ld a, $05
    call $2fcb
    ld de, $aa41
    ld h, $00
    ld l, h
    ld bc, $03e8
    call Call_05c_420c
    ld bc, $0064
    call Call_05c_420c
    ld bc, $000a
    call Call_05c_420c
    ld a, [de]
    ld c, a
    ld b, $00
    add hl, bc
    call $2fe1
    ld a, h
    ld [$c608], a
    ld a, l
    ld [$c609], a
    ld hl, $c628
    ld a, [$d47b]
    ld [hl+], a
    ld a, [$d47c]
    ld [hl+], a
    ld a, [$d84a]
    ld [hl+], a
    ld a, [$d84b]
    ld [hl+], a
    ld e, l
    ld d, h
    ld hl, $d47d
    ld bc, $0005
    call $3026
    ld bc, $d47b
    ld de, $d472
    ld a, $13
    ld hl, $6929
    rst $08
    ld de, $c631
    ld a, c
    ld [de], a
    inc de
    ld a, $df
    ld [$cd49], a
    ld a, $dc
    ld [$cd4a], a
    ld a, $41
    ld [$cd4b], a
    ld a, $de
    ld [$cd4c], a
    ld a, $03

jr_05c_41ac:
    push af
    ld a, [$cd49]
    ld l, a
    ld a, [$cd4a]
    ld h, a
    ld bc, $0030
    call $3026
    ld a, l
    ld [$cd49], a
    ld a, h
    ld [$cd4a], a
    ld a, [$cd4b]
    ld l, a
    ld a, [$cd4c]
    ld h, a
    ld bc, $0006
    call $3026
    ld a, l
    ld [$cd4b], a
    ld a, h
    ld [$cd4c], a
    pop af
    dec a
    jr nz, jr_05c_41ac

    ld a, $04
    call $2fcb
    ld hl, $a013
    ld bc, $0024
    call $3026
    call $2fe1
    ld a, $05
    call $2fcb
    ld hl, $a894
    ld bc, $0006
    call $3026
    ld hl, $c608
    ld de, $a948
    ld bc, $00f6
    call $3026
    call $2fe1
    ret


Call_05c_420c:
    ld a, [de]
    inc de
    and a
    ret z

jr_05c_4210:
    add hl, bc
    dec a
    jr nz, jr_05c_4210

    ret


    xor a
    ld [$cf63], a
    call Call_05c_422c
    ret


    ret


Call_05c_421e:
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    ret


Call_05c_422c:
jr_05c_422c:
    call Call_05c_423a
    call $045a
    ld a, [$cf63]
    cp $01
    jr nz, jr_05c_422c

    ret


Call_05c_423a:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $4249
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld c, l
    ld b, d
    ret


    ld b, h
    ld a, [$cfcc]
    push af
    ld hl, $cfcc
    set 6, [hl]
    ld a, [$cfc0]
    push af
    or $01
    ld [$cfc0], a
    xor a
    ld [$c2dc], a
    ld a, $41
    ld hl, $60a2
    rst $08
    ld a, $03
    ld hl, $4658
    rst $08
    call Call_05c_42b7
    call Call_05c_4bf7
    ld a, $16
    call $2d83
    ld a, $05
    ld hl, $500c
    rst $08
    ld a, $03
    ld hl, $4658
    rst $08
    ld a, [$d0ee]
    ld [$c2dd], a
    and a
    jr nz, jr_05c_42a9

    ld a, $01
    call $2fcb
    ld a, [$be46]
    ld [$cf64], a
    call $2fe1
    ld hl, $d099
    ld a, [$cf64]
    add $f7
    ld [hl+], a
    ld a, $50
    ld [hl], a

jr_05c_42a9:
    pop af
    ld [$cfc0], a
    pop af
    ld [$cfcc], a
    ld a, $01
    ld [$cf63], a
    ret


Call_05c_42b7:
    call Call_05c_44a2
    ld de, $c643
    ld c, $0b
    ld a, $5f
    ld hl, $5073
    rst $08
    jr nc, jr_05c_42db

    ld a, [$c613]
    ld [$d265], a
    call $343b
    ld l, e
    ld h, d
    ld de, $c643
    ld bc, $000b
    call $3026

jr_05c_42db:
    ld de, $c67e
    ld c, $0b
    ld a, $5f
    ld hl, $5073
    rst $08
    jr nc, jr_05c_42fc

    ld a, [$c64e]
    ld [$d265], a
    call $343b
    ld l, e
    ld h, d
    ld de, $c67e
    ld bc, $000b
    call $3026

jr_05c_42fc:
    ld de, $c6b9
    ld c, $0b
    ld a, $5f
    ld hl, $5073
    rst $08
    jr nc, jr_05c_431d

    ld a, [$c689]
    ld [$d265], a
    call $343b
    ld l, e
    ld h, d
    ld de, $c6b9
    ld bc, $000b
    call $3026

jr_05c_431d:
    ld a, $50
    ld [$c64d], a
    ld [$c688], a
    ld [$c6c3], a
    call Call_05c_4c98
    ld de, $c608
    ld c, $0a
    ld a, $5f
    ld hl, $5073
    rst $08
    jr nc, jr_05c_433d

    ld hl, $4426
    jr jr_05c_4340

jr_05c_433d:
    ld hl, $c608

jr_05c_4340:
    ld de, $d26b
    ld bc, $000a
    call $3026
    ld a, $50
    ld [de], a
    ld hl, $c612
    ld a, [hl+]
    ld [$d22f], a
    ld a, $ea
    ld [$cd20], a
    ld a, $d3
    ld [$cd21], a
    ld de, $d288
    ld bc, $d280
    ld a, $03
    ld [bc], a
    inc bc

jr_05c_4367:
    push af
    ld a, [hl]
    ld [bc], a
    inc bc
    push bc
    ld bc, $0030
    call $3026
    push de
    ld a, [$cd20]
    ld e, a
    ld a, [$cd21]
    ld d, a
    ld bc, $000b
    call $3026
    ld a, e
    ld [$cd20], a
    ld a, d
    ld [$cd21], a
    pop de
    pop bc
    pop af
    dec a
    and a
    jr nz, jr_05c_4367

    ld a, $ff
    ld [bc], a
    ret


    ld hl, $c613
    ld d, $03

Jump_05c_4399:
    push de
    push hl
    ld b, h
    ld c, l
    ld a, [hl]
    and a
    jr z, jr_05c_43b1

    cp $ff
    jr z, jr_05c_43b1

    cp $fe
    jr z, jr_05c_43b1

    cp $fd
    jr z, jr_05c_43b1

    cp $fc
    jr nz, jr_05c_43b4

jr_05c_43b1:
    ld a, $eb
    ld [hl], a

jr_05c_43b4:
    ld [$cf60], a
    call $3856
    ld a, $05
    call $2fcb
    ld a, [$b2fb]
    call $2fe1
    ld e, a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    cp $02
    ld a, $02
    jr c, jr_05c_43d6

    ld a, [hl]
    cp e
    jr c, jr_05c_43d7

    ld a, e

jr_05c_43d6:
    ld [hl], a

jr_05c_43d7:
    ld [$d143], a
    ld hl, $0002
    add hl, bc
    ld d, $03
    ld a, [hl+]
    and a
    jr z, jr_05c_43ea

    cp $fc
    jr nc, jr_05c_43ea

    jr jr_05c_43f4

jr_05c_43ea:
    dec hl
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jr jr_05c_43ff

jr_05c_43f4:
    ld a, [hl]
    cp $fc
    jr c, jr_05c_43fb

    ld [hl], $00

jr_05c_43fb:
    inc hl
    dec d
    jr nz, jr_05c_43f4

jr_05c_43ff:
    ld hl, $0024
    add hl, bc
    ld d, h
    ld e, l
    push hl
    push de
    ld hl, $000a
    add hl, bc
    ld b, $01
    ld a, $0c
    call $2d83
    pop de
    pop hl
    dec de
    dec de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    pop hl
    ld bc, $003b
    add hl, bc
    pop de
    dec d
    jp nz, Jump_05c_4399

    ret


    add d
    add a
    sub c
    adc b
    sub d
    ld d, b

Call_05c_442c:
    ld hl, $d2be
    ld a, $07

jr_05c_4431:
    push af
    push hl
    ld c, $12

jr_05c_4435:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]

Call_05c_4438:
    and a
    jr z, jr_05c_4451

    cp $0f
    jr nc, jr_05c_445b

    push hl
    ld hl, $4470
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    pop hl
    cp b
    jr c, jr_05c_445b

    jr z, jr_05c_445b

    jr jr_05c_4456

jr_05c_4451:
    ld a, b
    cp $fc
    jr nc, jr_05c_445b

jr_05c_4456:
    dec c
    jr nz, jr_05c_4435

    jr jr_05c_4466

jr_05c_445b:
    pop de
    push de
    ld hl, $447e
    ld bc, $0024
    call $3026

jr_05c_4466:
    pop hl
    ld de, $00e0
    add hl, de
    pop af
    dec a
    jr nz, jr_05c_4431

    ret


    ld [de], a
    inc h
    ld b, l
    ld b, l
    ld b, d
    ld b, d
    ld b, l
    ld b, d
    daa
    daa
    ld b, l
    daa
    ld b, d
    inc h
    inc bc
    inc b
    dec b
    ld [$0503], sp
    ld c, $06
    inc bc
    ld [bc], a
    nop
    nop
    add hl, sp
    rlca
    rlca
    inc b
    nop
    dec b
    inc b
    rlca
    ld bc, $0005
    nop
    rrca
    dec b
    inc d
    rlca
    dec b
    dec b
    ld de, $0c0c
    ld b, $06
    inc b

Call_05c_44a2:
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d100
    ld de, $c608
    ld bc, $00e0
    call $3026
    pop af
    ldh [rSVBK], a
    ld a, $01
    call $2fcb
    ld a, $02
    ld [$be45], a
    ld hl, $be46
    inc [hl]
    call $2fe1
    ret


    ld a, [$be46]
    cp $07
    jr c, jr_05c_44d3

    ld a, $06

jr_05c_44d3:
    ld hl, $afce
    ld de, $ff20

jr_05c_44d9:
    and a
    jr z, jr_05c_44e0

    add hl, de
    dec a
    jr jr_05c_44d9

jr_05c_44e0:
    ret


    call $103e
    call $2b29
    call Call_05c_421e
    call Call_05c_44f1
    call $2b3c
    ret


Call_05c_44f1:
    call $31f3
    call $300b
    call $0fdb

jr_05c_44fa:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_05c_450f

    call Call_05c_4510
    ld a, $41
    ld hl, $4061
    rst $08
    jr jr_05c_44fa

jr_05c_450f:
    ret


Call_05c_4510:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $451f
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec h
    ld b, l
    ld [hl], c
    ld b, l
    ld [hl], a
    ld b, l
    ld a, $05
    call $2fcb
    ld hl, $a89c
    ld de, $d099
    ld bc, $0016
    call $3026
    ld hl, $a8b2
    ld de, $c608
    ld bc, $0096
    call $3026
    call $2fe1
    ld hl, $c4b5
    ld de, $d099
    call $1078
    ld hl, $c4dd
    ld de, $4676
    call $1078
    ld hl, $c4e0
    ld de, $d0ac
    call $1078
    ld hl, $c4e4
    ld de, $467a
    call $1078
    call Call_05c_45b7
    call Call_05c_45f0
    jr jr_05c_45b2

    call $32f9
    call Call_05c_45b2
    ld hl, $ffa7
    ld a, [hl]
    and $01
    jr nz, jr_05c_45ac

    ld a, [hl]
    and $02
    jr nz, jr_05c_45ac

    ld a, [hl]
    and $40
    jr nz, jr_05c_458f

    ld a, [hl]
    and $80
    jr nz, jr_05c_459d

    ret


jr_05c_458f:
    ld a, [$cf64]
    and a
    ret z

    sub $0f
    ld [$cf64], a
    call Call_05c_45f0
    ret


jr_05c_459d:
    ld a, [$cf64]
    cp $3c
    ret z

    add $0f
    ld [$cf64], a
    call Call_05c_45f0
    ret


jr_05c_45ac:
    ld hl, $cf63
    set 7, [hl]
    ret


Call_05c_45b2:
jr_05c_45b2:
    ld hl, $cf63
    inc [hl]
    ret


Call_05c_45b7:
    ld hl, $c4f0
    ld a, $79
    ld [hl+], a
    ld c, $12

jr_05c_45bf:
    ld a, $7a
    ld [hl+], a
    dec c
    jr nz, jr_05c_45bf

    ld a, $7b
    ld [hl+], a
    ld de, $0014
    ld c, $0c

jr_05c_45cd:
    ld a, $7c
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_05c_45cd

    ld a, $7d
    ld [hl+], a
    ld c, $12

jr_05c_45d9:
    ld a, $7a
    ld [hl+], a
    dec c
    jr nz, jr_05c_45d9

    ld a, $7e
    ld [hl], a
    ld de, $ffec
    add hl, de
    ld c, $0c

jr_05c_45e8:
    ld a, $7c
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_05c_45e8

    ret


Call_05c_45f0:
    call Call_05c_464b
    call Call_05c_465d
    ld a, $50
    ld [$cd4e], a
    ld hl, $c608
    ld a, [$cf64]
    ld c, a
    xor a
    ld b, a
    add hl, bc
    push hl
    pop bc
    ld hl, $c519
    ld a, $06

jr_05c_460c:
    push af
    push hl
    ld a, $03

jr_05c_4610:
    push af
    ld de, $cd49
    ld a, [bc]
    and a
    jr z, jr_05c_4625

    ld a, $05

jr_05c_461a:
    push af
    ld a, [bc]
    ld [de], a
    inc bc
    inc de
    pop af
    dec a
    jr nz, jr_05c_461a

    jr jr_05c_4631

jr_05c_4625:
    ld a, $05

jr_05c_4627:
    push af
    ld a, $e3
    ld [de], a
    inc de
    inc bc
    pop af
    dec a
    jr nz, jr_05c_4627

jr_05c_4631:
    ld de, $cd49
    push bc
    call $1078
    ld de, $0006
    add hl, de
    pop bc
    pop af
    dec a
    jr nz, jr_05c_4610

    pop hl
    ld de, $0028
    add hl, de
    pop af
    dec a
    jr nz, jr_05c_460c

    ret


Call_05c_464b:
    ld hl, $c505
    xor a
    ld b, $0c

jr_05c_4651:
    ld c, $12

jr_05c_4653:
    ld [hl+], a
    dec c
    jr nz, jr_05c_4653

    inc hl
    inc hl
    dec b
    jr nz, jr_05c_4651

    ret


Call_05c_465d:
    ld a, [$cf64]
    and a
    jr z, jr_05c_4669

    ld hl, $c516
    ld a, $61
    ld [hl], a

jr_05c_4669:
    ld a, [$cf64]
    cp $3c
    ret z

    ld hl, $c5f2
    ld a, $ee
    ld [hl], a
    ret


    and [hl]
    db $e3
    sbc a
    ld d, b
    jp c, $30b7

    or d
    ret c

    db $e3
    rrca
    db $e3
    or d
    pop bc
    rst $10
    sbc $50
    ld a, [$c2dd]
    ld e, a
    ld d, $00
    ld hl, $4696
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld e, a
    ld b, a
    adc b
    ld b, a
    ld a, b
    ld b, a
    sbc c
    ld b, a
    sbc l
    ld b, a
    xor h
    ld b, a
    db $f4
    ld b, a
    ld l, b
    ld c, b
    add c
    ld c, b
    sbc d
    ld c, b
    or c
    ld c, b
    cp c
    ld c, b
    ret z

    ld c, b
    ldh a, [rOBP0]
    inc a
    ld c, c
    xor d
    ld c, c
    cp e
    ld c, c
    sbc h
    ld c, d
    and b
    ld c, d
    xor a
    ld c, d
    cp [hl]
    ld c, d
    rst $10
    ld c, d
    rlca
    ld c, b
    dec e
    ld c, b
    add sp, $4a
    ld d, $4b
    sub $46
    xor $46
    dec de
    ld b, a
    add hl, hl
    ld b, a
    ld a, $47
    scf
    ld b, a
    ld a, $01
    call $2fcb
    ld a, $ff
    ld hl, $be48
    ld bc, $0007
    call $3041
    xor a
    ld [$be46], a
    call $2fe1
    ret


    ld a, $01
    call $2fcb
    ld a, [$be50]
    call $2fe1
    ld [$c2dd], a
    ld hl, $d892
    ld a, [hl+]
    cp $14
    ret c

    ld b, $14
    ld a, [$c2dd]
    ld c, a

jr_05c_4709:
    ld a, [hl+]
    cp c
    jr nz, jr_05c_4711

    ld a, [hl]
    cp $5f
    ret c

jr_05c_4711:
    inc hl
    dec b
    jr nz, jr_05c_4709

    ld a, $12
    ld [$c2dd], a
    ret


    ld a, $01
    call $2fcb
    ld a, $03
    ld [$be45], a
    call $2fe1
    ret


    ld a, $01
    call $2fcb
    ld a, $04
    ld [$be45], a
    call $2fe1
    ret


    ld a, $05
    ld hl, $4dbb
    rst $08
    ret


jr_05c_473e:
    call $2f8c
    ldh a, [$e1]
    and $07
    cp $06
    jr c, jr_05c_474b

    sub $06

jr_05c_474b:
    add $1a
    cp $1e
    jr z, jr_05c_473e

    push af
    ld a, $01
    call $2fcb
    pop af
    ld [$be50], a
    call $2fe1
    ret


    call Call_05c_489a
    ld a, [$c2dd]
    and a
    ret z

    ld a, $01
    call $2fcb
    ld a, [$be4f]
    and $02
    ld [$c2dd], a
    call $2fe1
    ret


    ld hl, $be45
    ld a, $01
    call $2fcb
    ld a, [hl]
    ld [$c2dd], a
    call $2fe1
    ret


    ld a, $01
    call $2fcb
    ld a, [$be4f]
    or $02
    ld [$be4f], a
    call $2fe1
    ret


    ld c, $01
    jr jr_05c_479f

    ld c, $00

jr_05c_479f:
    ld a, $01
    call $2fcb
    ld a, c
    ld [$be45], a
    call $2fe1
    ret


    ld a, $05
    call $2fcb
    ld a, [$aa8c]
    ld b, a
    ld a, [$be46]
    ld [$c2dd], a
    call $2fe1
    and a
    ret z

    ld a, b
    cp $02
    jr nc, jr_05c_47ef

    push bc
    call $05a7
    pop bc
    ld a, $05
    call $2fcb
    ld a, [$aa8b]
    call $2fe1
    ld c, a
    ld a, [$d4cb]
    sub c
    jr c, jr_05c_47e5

    cp $08
    jr nc, jr_05c_47ef

    ld a, b
    and a
    jr nz, jr_05c_47ef

    ret


jr_05c_47e5:
    ld hl, $d4cb
    ld a, $8c
    sub c
    add [hl]
    cp $08
    ret c

jr_05c_47ef:
    ld a, $08
    ld [$c2dd], a
    ld a, $05
    call $2fcb
    xor a
    ld [$be46], a
    ld [$aa8b], a
    ld [$aa8c], a
    call $2fe1
    ret


    call $05a7
    ld a, $05
    call $2fcb
    ld a, [$d4cb]
    ld [$b2f9], a
    xor a
    ld [$b2fa], a
    call $2fe1
    ret


    xor a
    ld [$c2dd], a
    ld a, $05
    call $2fcb
    ld a, [$b2f9]
    ld c, a
    ld a, [$b2fa]
    ld b, a
    call $2fe1
    cp $02
    jr nc, jr_05c_4853

    push bc
    call $05a7
    pop bc
    ld a, [$d4cb]
    sub c
    jr c, jr_05c_4849

    cp $0b
    jr nc, jr_05c_4853

    ld a, b
    and a
    jr nz, jr_05c_4853

    ret


jr_05c_4849:
    ld hl, $d4cb
    ld a, $8c
    sub c
    add [hl]
    cp $0b
    ret c

jr_05c_4853:
    ld a, $01
    ld [$c2dd], a
    ld a, $05
    call $2fcb
    xor a
    ld [$b2f9], a
    ld [$b2fa], a
    call $2fe1
    ret


    ld a, $01
    call $2fcb
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, [$d800]
    ld [$be47], a
    pop af
    ldh [rSVBK], a
    call $2fe1
    ret


    ld a, $01
    call $2fcb
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, [$be47]
    ld [$d800], a
    pop af
    ldh [rSVBK], a
    call $2fe1
    ret


Call_05c_489a:
    ld a, [$cfcd]
    and a
    jr z, jr_05c_48ad

    ld a, $05
    ld hl, $4bcb
    rst $08
    jr z, jr_05c_48ab

    xor a
    jr jr_05c_48ad

jr_05c_48ab:
    ld a, $01

jr_05c_48ad:
    ld [$c2dd], a
    ret


    xor a
    ld [$c2a7], a
    call $3c97
    ret


    ld a, $01
    call $2fcb
    ld a, [$be3c]
    ld [$c2dd], a
    call $2fe1
    ret


    call $05a7
    ld a, $05
    call $2fcb
    ld a, [$d4cb]
    ld [$aa8b], a
    xor a
    ld [$aa8c], a
    ld a, [$aa5d]
    cp $02
    jr nc, jr_05c_48ec

    ld a, [$d4cb]
    ld [$aa48], a
    ld a, $01
    ld [$aa47], a

jr_05c_48ec:
    call $2fe1
    ret


    xor a
    ld [$c2dd], a
    call $05a7
    ld a, $05
    call $2fcb
    ld a, [$aa48]
    ld c, a
    ld a, [$aa47]
    call $2fe1
    and a
    ret z

    ld hl, $d4cb
    ld a, c
    cp [hl]
    jr nz, jr_05c_4923

    ld a, $05
    call $2fcb
    ld a, [$aa5d]
    call $2fe1
    cp $05
    ret c

    ld a, $01
    ld [$c2dd], a
    ret


jr_05c_4923:
    ld a, $05
    call $2fcb
    xor a
    ld [$aa48], a
    ld [$aa47], a
    ld hl, $aa5d
    ld bc, $0011
    call $3041
    call $2fe1
    ret


    xor a
    ld [$c2dd], a
    ld a, $81
    ld [$d106], a
    ld hl, $d892
    call $2f79
    ret nc

    ld a, [$dcd7]
    ld b, $00
    ld c, a
    ld hl, $dcd8

jr_05c_4955:
    ld a, [hl+]
    cp $fd
    jr nz, jr_05c_499f

    push hl
    ld hl, $ddff
    ld de, $0006
    ld a, b
    and a
    jr z, jr_05c_4969

jr_05c_4965:
    add hl, de
    dec a
    jr nz, jr_05c_4965

jr_05c_4969:
    ld de, $49a4
    ld a, $06

jr_05c_496e:
    push af
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr nz, jr_05c_499d

    pop af
    dec a
    jr nz, jr_05c_496e

    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $50
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld a, $81
    ld [$d106], a
    ld a, $01
    ld [$d10c], a
    ld a, $ff
    ld [$d107], a
    ld hl, $d892
    call $2f53
    ld a, $01
    ld [$c2dd], a
    ret


jr_05c_499d:
    pop af
    pop hl

jr_05c_499f:
    inc b
    dec c
    jr nz, jr_05c_4955

    ret


    push bc
    cpl
    sub h
    ld c, $50
    ld d, b
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, [$d090]
    ld [$c2dd], a
    pop af
    ldh [rSVBK], a
    ret


    xor a
    ld [$c2dd], a
    ld a, $05
    call $2fcb
    ld a, [$a800]
    call $2fe1
    cp $06
    jr nc, jr_05c_49da

    ld e, a
    ld d, $00
    ld hl, $49e7
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_05c_49da:
    ld a, $05
    call $2fcb
    xor a
    ld [$a800], a
    call $2fe1
    ret


    nop
    ld c, d
    nop
    ld c, d
    di
    ld c, c
    di
    ld c, c
    ld bc, $334a
    ld c, d
    ld a, $05
    call $2fcb
    ld a, $01
    ld [$a800], a
    call $2fe1
    ret


    ld a, $05
    call $2fcb
    ld hl, $b023
    ld de, $c608
    ld bc, $0069
    call $3026
    ld a, [$a825]
    ld [$cd30], a
    ld a, [$a826]
    ld [$cd31], a
    call $2fe1
    ld a, $46
    ld hl, $76b4
    rst $08
    ld a, $5f
    ld hl, $50f3
    rst $08
    ld a, $01
    ld [$c2dd], a
    ret


    ld a, $00
    call $2fcb
    ld hl, $d4ba
    ld de, $c608
    ld bc, $0004
    call $3026
    call $2fe1
    ld a, $05
    call $2fcb
    ld hl, $b08c
    ld de, $c608
    ld c, $04

jr_05c_4a54:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_05c_4a78

    inc hl
    dec c
    jr nz, jr_05c_4a54

    call $2fe1
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2147
    ld a, d
    or e
    jr z, jr_05c_4a72

    ld a, [de]
    and a
    ret nz

jr_05c_4a72:
    ld a, $01
    ld [$c2dd], a
    ret


jr_05c_4a78:
    call $2fe1
    ld a, $05
    call $2fcb
    xor a
    ld [$a800], a
    call $2fe1
    ld [$c2dd], a
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2147
    ld a, d
    or e
    jr z, jr_05c_4a9b

    xor a
    ld [de], a

jr_05c_4a9b:
    ret


    ld c, $00
    jr jr_05c_4aa2

    ld c, $01

jr_05c_4aa2:
    ld a, $05
    call $2fcb
    ld a, c
    ld [$aa8d], a
    call $2fe1
    ret


    ld a, $05
    call $2fcb
    ld a, [$aa8d]
    ld [$c2dd], a
    call $2fe1
    ret


    call Call_05c_489a
    ld a, [$c2dd]
    and a
    ret z

    ld a, $01
    call $2fcb
    ld a, [$be4f]
    and $01
    ld [$c2dd], a
    call $2fe1
    ret


    ld a, $01
    call $2fcb
    ld a, [$be4f]
    or $01
    ld [$be4f], a
    call $2fe1
    ret


    ld a, $05
    call $2fcb
    ld a, [$b2fb]
    call $2fe1
    ld c, $0a
    call $3110
    ld a, b
    ld [$cd4f], a
    xor a
    ld [$c2dd], a
    ld a, $46
    ld hl, $5d93
    rst $08
    ret nc

    ld a, $05
    call $2fcb
    ld a, [$b2fb]
    call $2fe1
    ld [$c2dd], a
    ret


    ld a, $05
    call $2fcb
    ld a, [$b2fb]
    call $2fe1
    ld c, $0a
    call $3110
    ld a, b
    ld [$cd4f], a
    xor a
    ld [$c2dd], a
    ld a, $46
    ld hl, $5dd1
    rst $08
    ret nc

    ld a, $05
    call $2fcb
    ld a, [$b2fb]
    call $2fe1
    ld [$c2dd], a
    ret


    ld a, $7e
    ld hl, $4000
    rst $08
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d10a
    ld a, [hl]
    dec a
    ld c, a
    ld b, $00
    pop af
    ldh [rSVBK], a
    ld hl, $4b90
    add hl, bc
    ld a, [hl]
    ld [$cd49], a
    ld a, [$c2dd]
    dec a
    sla a
    ld e, a
    sla a
    sla a
    sla a
    ld c, a
    ld b, $00
    ld d, $00
    ld hl, $d71e
    add hl, bc
    inc hl
    ld a, [$cd49]
    ld [hl], a
    ld hl, $d154
    add hl, de
    ld [hl+], a
    ldh [$bd], a
    ld a, [hl]
    ldh [$be], a
    ld a, $05
    ld hl, $43c8
    rst $08
    ret


    ld [de], a
    inc de
    inc d
    dec d
    jr jr_05c_4bad

    ld d, $19
    inc b
    dec b
    ld de, $1c01
    dec de
    ld hl, $1a1e
    dec e
    rra
    inc a
    jr nz, @+$29

    daa
    daa
    jr z, jr_05c_4bb4

    inc hl
    inc h
    ld a, [hl+]

jr_05c_4bad:
    dec hl
    dec [hl]
    ld b, b
    ld a, [hl+]
    add hl, hl
    ld [hl+], a
    dec h

jr_05c_4bb4:
    ld a, [hl-]
    dec hl
    inc h
    ld c, c
    dec hl
    rlca
    inc l
    dec l
    ld c, d
    dec c
    ld c, e
    ld a, [hl-]
    dec hl
    ld b, c
    dec [hl]
    daa
    jr z, jr_05c_4bed

    ld [hl], $3e
    jr nc, jr_05c_4bf6

    dec l
    dec a
    ld h, $2e
    ld b, $07
    ld b, e
    ld [hl], $c9
    ld a, $22
    ld hl, $7201
    rst $08
    jr c, jr_05c_4bde

    xor a
    jr jr_05c_4be0

jr_05c_4bde:
    ld a, $01

jr_05c_4be0:
    ld [$c2dd], a
    ret


    ld a, $05
    call $2fcb
    xor a
    ld hl, $a894

jr_05c_4bed:
    ld bc, $0008
    call $3041
    call $2fe1

jr_05c_4bf6:
    ret


Call_05c_4bf7:
    ld a, $05
    call $2fcb
    ld hl, $a89a
    xor a
    ld [hl+], a
    ld [hl], a
    call $2fe1
    ret


    ld a, $05
    call $2fcb
    ld hl, $a894
    ld a, [$d0ee]
    and a
    jr nz, jr_05c_4c15

    inc [hl]

jr_05c_4c15:
    inc hl
    inc hl
    ld a, [$a89b]
    add [hl]
    ld [hl-], a
    ld a, [$a89a]
    adc [hl]
    ld [hl+], a
    jr nc, jr_05c_4c27

    ld a, $ff
    ld [hl-], a
    ld [hl+], a

jr_05c_4c27:
    inc hl
    push hl
    ld de, $0000
    xor a
    ld [$d265], a

jr_05c_4c30:
    ld hl, $dd01
    ld a, [$d265]
    call $3927
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    inc hl
    inc hl
    ld a, [hl-]
    sub c
    ld c, a
    ld a, [hl]
    sbc b
    ld b, a
    push de
    pop hl
    add hl, bc
    push hl
    pop de
    jr c, jr_05c_4c58

    ld a, [$d265]
    inc a
    ld [$d265], a
    cp $03
    jr c, jr_05c_4c30

    jr jr_05c_4c5b

jr_05c_4c58:
    ld de, $ffff

jr_05c_4c5b:
    pop hl
    inc hl
    ld a, e
    add [hl]
    ld [hl-], a
    ld a, d
    adc [hl]
    ld [hl+], a
    jr nc, jr_05c_4c69

    ld a, $ff
    ld [hl-], a
    ld [hl+], a

jr_05c_4c69:
    inc hl
    push hl
    ld b, $00
    ld c, $00

jr_05c_4c6f:
    ld hl, $dd01
    ld a, b
    push bc
    call $3927
    pop bc
    ld a, [hl+]
    or [hl]
    jr nz, jr_05c_4c7d

    inc c

jr_05c_4c7d:
    inc b
    ld a, b
    cp $03
    jr c, jr_05c_4c6f

    pop hl
    ld a, [hl]
    add c
    ld [hl], a
    call $2fe1
    ret


Call_05c_4c8b:
    ld hl, $c6f9
    ld b, $05

jr_05c_4c90:
    ld a, [hl]
    xor $ff
    ld [hl+], a
    dec b
    jr nz, jr_05c_4c90

    ret


Call_05c_4c98:
    ld c, $03
    ld hl, $c615

jr_05c_4c9d:
    push hl
    ld a, [hl]
    cp $fc
    jr c, jr_05c_4ca6

    ld a, $01
    ld [hl], a

jr_05c_4ca6:
    inc hl
    ld b, $03

jr_05c_4ca9:
    ld a, [hl]
    and a
    jr z, jr_05c_4cb1

    cp $fc
    jr c, jr_05c_4cb9

jr_05c_4cb1:
    xor a
    ld [hl], a
    inc hl
    dec b
    jr nz, jr_05c_4cb1

    jr jr_05c_4cbd

jr_05c_4cb9:
    inc hl
    dec b
    jr nz, jr_05c_4ca9

jr_05c_4cbd:
    pop hl
    ld de, $003b
    add hl, de
    dec c
    jr nz, jr_05c_4c9d

    ret


    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld hl, $4d16
    ld de, $d000
    call $0b50
    ld a, $01
    ldh [rVBK], a
    ld de, $d000
    ld hl, $8000
    ld bc, $06c1
    call $0f82
    xor a
    ldh [rVBK], a
    ld hl, $55a4
    ld de, $d000
    call $0b50
    ld de, $d000
    ld hl, $8000
    ld bc, $0653
    call $0f82
    pop af
    ldh [rSVBK], a
    ret


    ld a, $01
    ldh [rVBK], a
    ld de, $5848
    ld hl, $8c10
    ld bc, $5c18
    call $0f82

Jump_05c_4d12:
    xor a
    ldh [rVBK], a
    ret


    ld a, c
    dec d
    rlca
    nop
    jr jr_05c_4d23

    inc l
    inc de
    rlca
    inc b
    rra
    db $10
    ccf

jr_05c_4d23:
    inc bc
    ld a, a
    inc c
    rst $38
    db $10
    db $fc
    daa
    ld [hl], b
    rst $08
    ld h, b
    sbc a
    xor b
    adc a
    ld b, $0c
    rst $38
    add e
    rra
    ldh a, [$03]
    cp $69
    rrca
    add b
    nop
    add b
    add b
    ret nz

    nop
    db $10
    rrca
    ld [$0607], sp
    ld bc, $0003
    ld bc, $4302
    inc bc
    inc b
    db $10
    ld [bc], a
    ld bc, $fc02
    inc b
    ld hl, sp+$38
    ret nz

    call nz, $8638
    ld a, b
    ret


    ld [hl], $30
    rst $08
    add b
    and h
    xor a
    jr jr_05c_4d71

    nop
    rra
    nop
    ccf
    nop
    ld [hl], a
    nop
    rst $20
    nop
    jp $1800


    nop
    inc e

jr_05c_4d71:
    nop
    ld e, $00
    rrca
    nop
    rlca
    nop
    inc bc
    nop

jr_05c_4d7a:
    ld bc, $076a
    jr c, jr_05c_4d7f

jr_05c_4d7f:
    ld a, a
    nop
    ld [hl], a
    ld [$1f68], sp
    jp nz, $c493

    sub a
    ld b, l
    ld b, $01
    ld [bc], a
    inc c
    inc bc
    add b
    and [hl]
    adc l
    inc bc
    or b
    ld b, b
    jr nc, @-$3e

    ld b, e
    jr jr_05c_4d7a

    ld bc, $00b0
    ld b, l
    ret nz

    nop
    ld b, e
    add b
    nop
    ret


    rst $38
    nop
    ld bc, $cdc4
    ld [bc], a
    rrca
    nop
    rra
    jp $00d1


    ld [bc], a
    add h
    pop bc
    nop
    inc b
    ld b, l
    ld b, $01
    and l
    rst $08
    and l
    bit 0, e
    jr nc, jr_05c_4d7f

    add l
    nop
    ld d, b
    ld b, $0b
    inc b
    add hl, bc
    ld b, $04
    inc bc
    inc bc
    ld h, d
    inc c
    call c, $9823
    ld h, a
    add b
    ld a, a
    add [hl]
    ld a, a
    ld l, a
    rra
    cpl
    rra
    ld h, $43
    rra
    jr nz, jr_05c_4ded

    rst $18
    ld b, b
    cp a
    nop
    rst $38
    db $10
    rst $28
    ld [$07f7], sp
    ld hl, sp+$03
    db $fc
    ld bc, $07fe

jr_05c_4ded:
    ld hl, sp-$7d
    add e
    inc b
    rra
    ldh [$fc], a
    nop
    ldh a, [$84]
    db $ed
    nop
    ldh [$a3], a
    nop
    add a
    ld l, d
    ld [bc], a
    ld [bc], a
    ld bc, $8401
    rst $38
    ld bc, $0102
    add [hl]
    adc c
    add hl, bc
    cp $82
    ld a, h
    rst $38
    nop
    rlca
    ld hl, sp+$0e
    ldh a, [$38]
    and h
    rst $18
    ld [bc], a
    add e
    nop
    ld bc, $008c
    adc e
    nop
    dec c
    ret z

    add a
    ld [bc], a
    inc bc
    nop
    inc bc
    xor h
    ret


    jp $01d3


    ldh a, [rP1]
    ld b, e
    inc c
    inc bc
    ld bc, $031c
    ld b, l
    jr jr_05c_4e3c

    inc bc
    ld c, $01
    inc bc
    nop
    ld b, e
    inc c

jr_05c_4e3c:
    ldh a, [rSCX]
    ld b, $f8
    dec b
    rrca
    ldh a, [rNR23]
    rst $20
    ld b, b
    cp a
    add l
    nop
    ld l, [hl]
    dec bc
    inc bc
    nop
    rra
    nop
    ld a, [hl]
    ld bc, $07f8
    db $f4
    dec bc
    ld a, b

jr_05c_4e56:
    rlca
    and e
    nop
    sbc b
    inc b
    pop af
    ld c, $c0
    ccf
    nop
    ld b, [hl]
    rst $38
    nop
    inc b
    ld b, $01
    ld c, $09
    inc c
    ld b, e
    inc bc
    adc h

jr_05c_4e6c:
    ld [bc], a
    dec bc
    ld a, [hl]
    add c
    add e
    ld bc, $4322
    jr jr_05c_4e56

    ld b, e
    ld [$03f0], sp
    jr jr_05c_4e6c

    db $10
    ldh [$a3], a
    ld bc, $070a
    inc bc
    db $fc
    inc b
    ei
    ld [$e0f7], sp
    rra
    ld b, e

jr_05c_4e8b:
    pop bc
    ld a, $03
    and b
    ld e, a
    add b
    ld a, a
    add e
    ld bc, $a400
    ld bc, $0042
    ld bc, $0145
    nop
    ld a, [de]
    inc bc
    db $fc
    and $19
    inc e
    db $e3
    ld b, $f9
    add c
    ld a, [hl]
    ld b, b
    cp a
    jr nz, jr_05c_4e8b

    nop
    rst $38
    add b
    nop
    ld b, a
    add b

Jump_05c_4eb2:
    ld c, a
    add b
    sbc a
    nop
    dec a
    nop
    ldh a, [$84]
    nop
    push af
    and l
    nop
    ld d, $01
    db $fc
    nop
    ld b, e
    cp $00
    ld [bc], a
    ld a, $00
    inc c
    add [hl]
    nop
    ld c, a
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    and l
    nop
    add $0b
    ld [bc], a
    db $fc
    ld b, $f8
    add hl, de
    and $f1
    ld c, $c1
    ld a, $82
    ld a, l
    add e
    rst $38
    ld h, c
    rrca
    inc c
    nop

jr_05c_4ee7:
    ld e, $00
    ccf
    nop
    rst $30
    nop

jr_05c_4eed:
    db $e3
    nop
    ld b, e
    add b
    ld b, c
    add b
    ld h, b
    rra
    ld b, l
    jr nc, jr_05c_4f07

    ld b, e
    jr @+$09

    inc bc
    inc c
    inc bc
    rlca
    nop
    add l
    ld bc, $83f2
    ld bc, $07b8

jr_05c_4f07:
    jr nz, @-$1f

    add b

jr_05c_4f0a:
    ld a, a
    nop
    rst $38
    ld bc, $4700
    ld [bc], a
    ld bc, $0185
    ld [hl], d
    db $10
    jr nc, jr_05c_4ee7

    ld l, b
    sub a
    ld a, b
    add a
    jr nc, jr_05c_4eed

    ld bc, $80fe
    rst $38
    jp nz, $e1fd

    ld a, [hl]
    rra
    adc [hl]
    ld bc, $078d
    nop
    rst $38
    jp nz, Jump_05c_7c3d

    inc bc
    jr nc, jr_05c_4f42

    ld b, e
    ld b, b
    ccf
    inc bc
    jr nz, jr_05c_4f58

    inc hl
    rra
    xor b
    ld bc, $12d8
    sbc a
    or b
    ld c, a

jr_05c_4f42:
    ldh a, [rIF]
    ld h, b
    sbc a
    ld b, b
    add b
    jr nz, jr_05c_4f0a

    ld [hl], b
    add b
    jr nc, @-$3e

    db $10
    ldh [$50], a
    and b
    add e
    ld bc, $61fa
    inc de
    add a

jr_05c_4f58:
    nop
    adc a
    nop
    sbc a
    nop
    cp c
    nop
    ld [hl], b
    add b
    ld h, b
    add b
    ld d, b
    and b
    inc bc
    nop
    inc b
    inc bc
    inc b
    inc bc
    adc c
    db $d3
    ld [$7f80], sp
    ld h, e
    sbc h
    inc e
    ldh [$08], a
    ldh a, [$f0]
    ld h, [hl]
    ld [$6090], sp
    ld [$88f0], sp
    ld [hl], b
    ld c, b
    jr nc, jr_05c_4fb2

    ld l, [hl]
    nop
    add b
    push bc
    ld bc, $b045
    nop
    add a
    and e
    ld bc, $0660
    ld a, $01
    ld c, b
    scf
    ld d, b
    cpl
    inc sp
    and h
    or e
    ld [bc], a
    add c
    nop
    add c
    and h
    ld bc, $8957
    nop
    adc $45
    ld [bc], a
    ld bc, $0300
    add [hl]
    ld [bc], a
    xor c
    inc bc
    nop
    rst $38
    ld c, b
    or a
    add l
    ld [bc], a
    or [hl]

jr_05c_4fb2:
    rrca
    pop bc
    cp $f0
    adc a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld b, $f9
    inc h
    db $db
    ldh a, [rIF]
    db $10
    rrca
    ld b, e
    jr z, jr_05c_4fdd

    ldh [$2b], a
    ld d, $09
    ld h, b
    ccf
    jr c, jr_05c_4fd5

    rrca
    nop
    rla
    ld [$1c23], sp
    ld [hl+], a

jr_05c_4fd5:
    dec e
    inc h
    dec de
    ld e, b
    daa
    rla
    rrca
    rrca

jr_05c_4fdd:
    rlca
    rlca
    ld bc, $0043
    db $e4
    inc bc
    db $f4
    inc bc
    jp c, $9105

    ld c, $80
    rst $38
    add c
    cp $06
    ld hl, sp-$06
    inc b
    ld [hl], c
    adc [hl]
    ld b, e
    add hl, hl
    sub $04
    add $38
    ld b, b
    add b
    add b
    ld [hl], b
    ld [hl+], a
    ld bc, $0005
    inc bc
    inc bc
    rlca
    inc b
    rlca
    call nz, $1b00
    dec c
    ret nz

    ret nz

    ldh a, [rNR10]
    db $fc
    inc b
    rst $38
    pop bc
    rst $38
    jr nc, @+$01

    inc c
    ccf
    jp nz, $a5ab

    ld [$40c0], sp
    ldh [rNR41], a
    inc e
    nop
    add hl, de
    nop
    ld bc, $03b0
    add hl, sp
    nop
    rlca
    add h
    nop
    db $db
    ld [bc], a
    rra
    nop
    ccf
    add [hl]
    inc bc
    ld b, e
    rlca
    rst $20
    nop
    rst $38
    daa
    xor a
    ld e, a
    rst $18
    cpl
    ld b, e
    rst $38
    rlca
    inc bc
    rst $30
    rrca
    di
    rrca
    and e
    ld bc, $052a
    jr nz, jr_05c_506a

    db $10
    rrca
    ld l, h
    inc de
    ld h, e
    dec bc
    ld a, b
    nop
    cp $00
    rst $38
    nop
    rst $30
    ld [$1669], sp
    ld [hl], b
    rrca
    xor l
    jp Jump_05c_7001


    add b
    and e
    nop
    sub [hl]
    dec bc
    rra
    nop
    dec sp
    inc b

jr_05c_506a:
    add hl, sp
    ld b, $34
    dec bc

jr_05c_506e:
    jr nc, jr_05c_507f

    jr nc, jr_05c_5081

    adc e
    inc bc
    ld b, d
    add e
    ld [bc], a
    or $05
    jr nc, @-$2f

jr_05c_507b:
    add b
    rst $38
    pop hl
    ld a, [hl]

jr_05c_507f:
    add l
    inc bc

jr_05c_5081:
    or b
    inc bc
    inc de
    inc c
    ld de, $a60e
    adc a
    ld a, [bc]
    db $fd
    inc e
    db $e3
    ld sp, hl
    ld b, $5e
    and b
    inc d
    add sp, $06

jr_05c_5094:
    ld bc, $00ab
    jp nz, $0161

    adc a
    ld [hl], c
    and l
    ld bc, $43d6
    add b
    ld a, a
    ld b, e
    ret nz

    ccf
    dec bc
    ldh [$80], a
    ldh a, [$50]
    ldh a, [rNR41]
    jr nc, jr_05c_506e

    inc a
    ret nz

    inc hl
    call c, Call_05c_4043
    cp a
    adc l
    ld bc, $0190
    jr nz, jr_05c_507b

    and l
    ld [bc], a
    ld b, [hl]
    ld b, e
    rst $38
    nop
    and l
    ld [bc], a
    ret nz

    rlca
    rst $30
    rrca
    ei
    rlca
    ldh a, [rIF]
    ldh [$1f], a
    add e
    inc b
    ld e, d
    inc bc
    inc a
    inc de
    ld b, a
    jr c, jr_05c_507f

    adc a
    rlca
    ld c, $f4
    ld [hl-], a
    call z, $18e4
    ld [hl], b
    rrca
    ld b, e
    jr c, jr_05c_50ea

    ld b, e
    inc e
    inc bc
    nop
    rrca
    add h
    pop af

jr_05c_50ea:
    ld b, l
    jr jr_05c_50f4

    ld b, e

jr_05c_50ee:
    inc c
    inc bc
    nop
    rlca
    add h
    adc a

jr_05c_50f4:
    inc bc
    inc de
    ldh [rNR23], a
    rst $20
    add h
    ld [bc], a
    inc l
    nop
    ld a, a
    add l
    ld [bc], a
    or b
    add e
    ld [bc], a
    db $10
    rlc h
    ld [hl], $07
    add h
    ld a, b
    adc b
    ld [hl], b
    jr jr_05c_50ee

    db $e4
    jr jr_05c_5094

    add a
    nop
    ld [hl], b
    ld h, c
    ld bc, $1f00
    add [hl]
    inc b
    add hl, sp
    ld b, e
    ccf
    nop
    add hl, bc
    ld a, $00
    inc a
    nop
    ldh [$1f], a
    inc a
    inc bc
    db $10
    rrca
    ld b, l
    jr nz, jr_05c_514b

    ld b, e
    db $10
    rrca
    ld bc, $7f80
    add a
    ld [bc], a
    ldh [rP1], a
    inc c
    ld b, h
    rst $38
    ld e, $07
    sub b
    ld h, b
    ld c, b
    or b
    db $ec
    db $10
    ld h, h
    sbc b
    and a
    sbc a
    ld [bc], a
    ld c, b
    jr nc, jr_05c_5179

jr_05c_5149:
    adc b
    inc b

jr_05c_514b:
    sub c
    add e
    inc bc
    ld [c], a
    add hl, bc
    ld b, [hl]
    add hl, sp
    sub h
    ld l, e
    sub b
    ld l, a
    ld a, b
    rlca
    ld [$8307], sp
    ld [bc], a
    ld e, b
    dec b
    ld c, $00
    ld l, b
    sub b
    inc h
    ret c

    add e
    xor c
    ld a, [bc]
    jr jr_05c_5149

jr_05c_5169:
    inc l
    ret c

    call z, $8438
    ld a, b
    ld bc, $0100
    adc h
    inc bc
    ld a, c
    add a
    inc b
    and b
    rlca

jr_05c_5179:
    ld a, b
    rlca
    adc a
    ld [hl], b
    ld b, $f9
    inc [hl]
    res 4, a
    adc a
    rlca
    dec e
    ld [c], a
    ldh a, [rIF]
    db $e4
    dec de
    and a
    ld e, b
    xor l
    xor l
    adc c
    inc bc
    ld [c], a
    ld a, [bc]
    ld a, b
    nop
    rst $38
    nop
    rst $20
    jr jr_05c_5169

    cpl
    ld bc, $0100
    ld [hl], h
    nop
    inc bc
    add h
    inc b
    scf
    ld bc, $000e
    add e
    ld [bc], a
    ld d, d
    dec bc
    add hl, de
    nop
    db $fc
    nop
    db $fd
    nop
    rst $20
    nop
    add d
    ld bc, $0304

jr_05c_51b6:
    jp $aa05


    dec bc
    add c
    ld a, [hl]
    cp $00
    dec e
    ld [c], a
    inc c
    di
    adc h
    ld [hl], e
    ld [hl], e
    adc h
    and d
    sbc a
    ld bc, $8080
    xor d
    ld bc, $8981
    inc b
    and b
    dec b
    rra
    nop
    ld h, $19
    ld b, h
    dec sp
    add l
    ld b, $10
    dec bc
    rlca
    db $fc
    inc e
    db $e3
    ldh a, [rIF]
    or a
    ld c, b
    jr z, jr_05c_51b6

    add b
    nop
    xor h
    ld bc, $9052
    db $fd
    rlca
    ret nc

    rrca
    ld [$1407], sp
    dec bc
    inc de
    inc c
    and l
    dec b
    ld a, d
    ld h, c
    ld [$f804], sp
    ld a, [bc]
    db $f4
    ld [hl-], a
    call z, $1ce2
    inc e
    and a
    nop
    inc de
    ld b, h
    rra
    ld h, b
    dec b
    jr nc, jr_05c_521c

    db $10
    rrca
    add hl, de
    ld b, $83
    dec b
    ld a, [hl-]
    ld bc, $c033
    adc l
    dec b
    ld d, d
    ld [bc], a
    add b

jr_05c_521c:
    nop
    add b
    add h
    ld b, $27
    ld [bc], a

jr_05c_5222:
    ld b, b
    add b
    add b
    sub h
    nop
    add hl, bc
    add hl, bc
    rrca
    nop
    ccf
    rlca
    ld a, a
    jr @+$81

    jr nz, jr_05c_5222

    ld c, a
    add e
    inc b
    ld d, [hl]
    ld de, $bf40
    ret nz

    ld b, b
    ld hl, sp+$08
    rst $38
    ld h, c
    rst $38
    jr @+$01

    ld b, $0f
    pop af
    rra
    ldh [rTAC], a
    ld hl, sp-$79
    ld b, $22
    add l
    inc b
    jr jr_05c_5256

    add b
    nop
    ld b, h
    dec sp
    jr z, jr_05c_526d

jr_05c_5256:
    inc e
    adc d
    inc bc
    dec d
    add e
    dec b
    and $04
    inc h
    ret c

    call nz, Call_05c_4438
    and [hl]
    ld b, $e7
    dec b
    rla
    ldh [rNR23], a
    rst $20
    ld h, b
    sbc a

jr_05c_526d:
    ld b, e
    add b
    ld a, a
    add e
    inc bc
    sub b
    ld bc, $cf31
    add l
    ld b, $56
    jr jr_05c_52ba

    ld bc, $0f78
    ld a, $03
    rrca
    nop
    inc bc
    ld [bc], a
    ld a, h
    nop
    cp $00
    di
    inc e
    inc bc
    cp $01
    cp $02
    rst $38
    call nz, $f83f
    ret z

    rlca
    inc l
    rlca
    pop bc
    nop
    ld sp, $09c0
    ldh a, [rDIV]
    ld hl, sp-$77

jr_05c_52a0:
    inc b
    db $f4
    call nz, $4401
    adc h
    nop
    db $d3
    ld b, e
    rra
    nop
    dec b
    ld h, a
    nop
    ld hl, sp+$17
    ld hl, sp+$2f
    jp $2705


    add e
    dec b
    inc d
    inc c
    add b

jr_05c_52ba:
    ld a, a
    ret nz

    nop
    jr nc, @-$3e

    inc c
    ldh a, [$3f]
    call c, $ea1f
    rra
    jp $e004


    nop
    ret nz

    adc e
    inc bc
    ld b, b
    add e
    pop bc
    inc bc
    ld l, $11
    ld e, h
    inc hl
    adc c
    ld bc, $0114
    db $10
    rrca
    add e
    dec b
    and [hl]
    ld bc, $ee11
    and e
    ld [bc], a
    db $ec
    and l
    inc b
    sub $04
    rrca
    ldh a, [$3c]
    ret nz

    ldh a, [$84]
    dec b
    ret


    ld [bc], a
    add a
    nop
    rrca
    call z, $8101
    inc b
    add b
    nop
    ld hl, sp+$00
    cp $89
    inc b
    cpl
    ldh [$2c], a
    ld bc, $061f
    ccf
    ld [$117e], sp
    jr jr_05c_530b

jr_05c_530b:
    ld a, [hl]
    ld b, $ff
    add hl, de
    rst $38
    ld h, b
    rst $38
    add b
    rst $20
    jr jr_05c_52a0

    ld a, h
    ld b, $f8
    ld c, c
    or b
    ld c, a
    or b
    ld [hl], $c8
    inc c
    ldh a, [$32]
    call z, $3ec1
    dec h
    ld a, [de]
    ld e, $00
    ldh [rP1], a
    ld [hl], b
    nop
    ld a, b
    nop
    ld b, e
    inc a
    nop
    nop
    jr jr_05c_52ba

    rlca
    daa
    ld c, $04
    ld c, $09
    inc e
    inc de
    jr jr_05c_5346

    ld sp, $362e
    inc c
    ld l, h
    ld d, b
    ld [hl], b

jr_05c_5346:
    nop
    add e
    ld bc, $0120
    ld b, b
    cp a
    and e
    ld bc, $072c
    and c
    ld e, a
    or e
    ld c, a
    ld d, e
    cpl
    inc b
    ld hl, sp+$45
    ld [bc], a
    db $fc
    rlca
    inc b
    ld hl, sp-$74
    ldh a, [$cb]
    db $f4
    ret nc

    rst $28
    add h
    inc b
    ld a, d
    add hl, bc
    nop
    ld [hl], b
    nop
    jr nc, jr_05c_536e

jr_05c_536e:
    jr c, jr_05c_5370

jr_05c_5370:
    jr jr_05c_5372

jr_05c_5372:
    sbc b
    add h
    dec b
    adc e
    ld bc, $0038
    adc c
    inc bc
    jr c, jr_05c_537e

    and b

jr_05c_537e:
    ld e, a
    add h
    ld b, $f0
    dec de
    ccf
    inc [hl]
    dec bc
    inc e
    inc bc
    inc de
    inc c
    inc hl
    inc e

jr_05c_538c:
    rra
    ldh [$6f], a
    sub b
    or a
    ld c, b
    rst $30
    ld [$9c7b], sp
    dec sp
    ldh [$e9], a
    db $10
    adc b
    ld [hl], b
    ldh [rP1], a
    ldh [$88], a
    nop
    pop bc
    ld [bc], a
    nop
    nop
    inc bc
    add h

jr_05c_53a7:
    ld b, $5f
    ld b, e
    add hl, bc
    ld b, $00
    ld b, $86
    ld bc, $0459
    ld [bc], a
    db $fd
    inc c
    di
    ldh a, [$84]
    ld [$181f], sp
    jr nc, jr_05c_538c

    call z, $0303
    nop
    call z, $2c00
    ret nz

    jr jr_05c_53a7

    ld e, $e0
    ld de, $30ee
    rst $08
    call z, $8b33
    ld [hl], b
    ld a, [hl]
    nop
    inc e
    adc h
    ld b, $23
    rrca
    ld hl, sp+$27
    ldh a, [rVBK]
    ld [hl], b
    ld c, a
    ld a, b
    daa
    jr c, jr_05c_53f9

    inc e
    dec bc
    dec c
    ld b, $08
    rlca
    and l
    ld [bc], a
    add b
    ld [$e01e], sp
    add hl, de
    and $70
    adc a
    add b
    ld a, a
    nop
    jp z, $d102

    inc b

jr_05c_53f9:
    add e
    nop
    adc a
    nop
    ld e, a
    add e
    rlca
    ld a, [de]
    jp $4f02


    ret z

    ld [bc], a
    ld c, c
    nop
    ld h, b
    ld l, [hl]
    inc b
    ld c, c
    scf
    jr nc, jr_05c_541e

    rrca
    xor d
    rlca
    dec d
    inc bc
    and b
    rst $18
    ld h, b
    sbc a
    add e
    rlca
    inc a
    ld b, $8b
    ld [hl], h

jr_05c_541e:
    sbc h
    ld h, e
    pop af
    ld c, $3e
    add h
    inc bc
    add hl, bc
    ld [bc], a
    ld b, b
    add b
    ret nz

    adc c
    rlca
    dec d
    ld e, $ff
    nop
    rst $38
    pop bc
    cp $e0
    ld a, a
    ld [hl], b
    rra
    inc e
    add e
    dec bc
    inc h
    ld de, $250e
    ld a, [de]
    jr c, @+$09

    jr nz, jr_05c_5462

    jr nc, jr_05c_5454

    ld c, [hl]
    ld sp, $7c83
    xor h
    ld d, b
    ld [hl], b
    nop
    ld b, e
    sub h
    ld l, b
    ld a, [bc]
    ld h, [hl]
    sbc b
    rrca

jr_05c_5454:
    ldh a, [$35]
    ret z

    jp nz, $563c

    jr z, jr_05c_5498

    add e
    rlca
    sub e
    inc bc
    nop
    db $fc

jr_05c_5462:
    nop
    ldh a, [$8c]
    inc bc
    ld d, e
    add e
    inc b
    ld h, h
    rlca
    rst $28
    db $10
    jp $603c


    rra
    ld h, b
    rra
    adc e
    inc b
    ld [hl], b
    ld a, [bc]
    ld [hl], b
    add b
    db $10
    ldh [$84], a
    ld a, b
    ld b, h
    jr c, jr_05c_54a4

    jr @+$1a

    ld l, b
    inc b
    ld [de], a
    dec c
    ld [hl-], a
    dec c
    inc l
    xor d
    ld [$0375], sp
    db $10
    rrca
    inc d
    dec bc
    ld b, e
    ld d, $09
    ld bc, $0d12
    ld b, e

jr_05c_5498:
    ld [$0107], sp
    ld b, $01
    add [hl]
    ld [bc], a
    ld [c], a
    ld [de], a
    rst $38
    ldh a, [rIE]

jr_05c_54a4:
    pop af
    cp $62
    db $fd
    inc e
    db $e3
    ld e, h
    add b
    ld c, l
    add b
    ld b, [hl]
    add c
    cp h
    inc bc
    call nz, $a43b
    rlca
    inc a
    dec b
    db $fc
    ld h, b
    nop
    sub b
    ld h, b
    db $10
    and h
    ld [bc], a
    adc e
    ld b, $20
    ret nz

    db $10
    ldh [$08], a
    ldh a, [rTMA]
    add h
    rlca
    push de
    ld bc, $050a
    ld b, a
    jr jr_05c_54d9

jr_05c_54d2:
    adc c
    inc b
    sub d
    ld bc, $8060
    add e

jr_05c_54d9:
    ld [bc], a
    db $f4
    ld bc, $0102
    adc [hl]
    ld b, $40
    adc c
    add hl, bc
    pop de
    ld b, $03
    dec bc
    inc b
    ld de, $780e

jr_05c_54eb:
    add b
    ld b, e
    cp b
    nop
    ld bc, $0038
    ld b, l
    ld [hl], b
    nop
    inc bc
    ldh [rP1], a
    ld b, $10
    add h
    rst $08
    inc b
    dec h
    jr jr_05c_5507

    jr jr_05c_5529

    add h
    rst $08
    nop
    ld b, b
    add l

jr_05c_5507:
    ld b, $8a
    jr jr_05c_54eb

    inc b
    ld h, b
    adc b
    ld [hl], b
    add d
    jr nc, jr_05c_54d2

    ld b, b
    sub b
    adc h
    jr nz, @-$72

    nop
    ld c, $40
    ld b, $00
    ld h, a
    nop
    ld a, e
    nop
    ld e, a
    nop
    ld [hl], b
    add [hl]
    ld [bc], a
    add e
    ld bc, $0619

jr_05c_5529:
    add l
    add hl, bc
    and h
    add a
    rlca
    add b
    ld bc, $4fb0
    add e
    rlca
    inc c
    ld bc, $cf31
    xor a
    rlca
    inc d
    ld b, $e0
    rra
    ld hl, $42de
    cp h
    call nz, $06a8
    rst $20
    inc b
    inc b
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    ld l, d
    nop
    ret z

jr_05c_554f:
    adc [hl]
    inc bc
    scf
    and h
    ld bc, $a3f4
    nop
    cp l
    ld bc, $0702
    add h
    ret


    ld bc, $c037
    add a
    rlca
    add d
    dec bc
    ld h, b
    sbc a
    jr jr_05c_554f

    dec a
    jp nz, Jump_05c_4d12

    ld [hl-], a
    dec c
    inc l
    sub e
    adc c
    ld a, [bc]
    ld b, [hl]
    inc b
    ld c, b
    or b
    ld c, a
    or b
    scf
    adc c
    ld [$8e75], sp
    ld bc, $6141
    inc bc
    jr nc, jr_05c_55d2

    db $10
    cpl
    add h
    rst $08
    inc b
    ld [hl+], a
    rlca
    ld b, b
    ld [bc], a
    add hl, bc
    sub c
    rst $08
    nop
    add $8e
    xor a
    add hl, bc
    ld [bc], a
    ld bc, $1401
    ld bc, $0008
    ld [bc], a
    nop
    ld [bc], a
    and h
    ld a, [bc]
    ld a, [hl-]
    sub b
    rst $18
    rst $38
    ld [hl], a
    inc b
    inc b
    nop
    ld a, [hl+]
    nop
    ld de, $0061
    ld [bc], a
    ld l, d
    inc b
    ld a, b
    nop
    add [hl]
    add b
    ld bc, $99a3
    inc b
    ld b, b
    nop
    add b
    nop
    ld b, b
    rst $00

jr_05c_55be:
    add c
    rlca
    nop
    stop
    jr z, jr_05c_55c5

jr_05c_55c5:
    ld b, h
    nop
    ld [hl+], a
    and d
    xor d
    ld bc, $0100
    adc d
    xor a
    ld [bc], a
    inc a
    nop

jr_05c_55d2:
    jp $0061


    dec b
    ld l, d
    add d
    or c
    xor h
    rst $08
    inc b
    ld b, b
    ld bc, $0228
    inc d
    and a
    db $ed
    ld [bc], a
    inc e
    ret nz

    inc bc
    add d
    cp [hl]
    ld h, [hl]

jr_05c_55ea:
    add e
    pop de
    ld [bc], a
    ld b, l
    nop
    add d
    add e
    xor l
    rlca
    jr nz, jr_05c_55f9

    nop
    ld a, [bc]
    nop
    ld d, c

jr_05c_55f9:
    nop
    jr nz, jr_05c_55be

    sub [hl]
    xor b
    ldh a, [$a5]
    adc d
    inc b
    jr c, jr_05c_5604

jr_05c_5604:
    add [hl]
    nop
    ld bc, $dba9
    and e
    nop
    ld [hl-], a
    ld [bc], a
    ld b, h
    nop
    xor b
    xor d
    nop
    rrca
    add e
    rst $28
    nop
    ld b, h
    ret z

    sbc d
    ld b, $02
    nop
    inc b
    ld a, [de]
    ld [$0461], sp
    and h
    nop
    cpl
    inc b
    adc b
    nop
    ld d, b
    nop
    jr nz, jr_05c_55d2

    sub [hl]
    dec b
    inc b
    nop
    ld [$0800], sp
    nop
    ld b, a
    stop
    ld bc, $4008
    ld l, h
    ld [bc], a
    ld [$4000], sp
    add d
    and e
    add h
    nop
    dec sp
    add hl, bc
    jr nz, jr_05c_5646

jr_05c_5646:
    jr nz, jr_05c_5688

    jr nz, jr_05c_55ea

    ld b, b
    inc b
    nop
    inc b
    xor b
    xor h
    nop
    inc b
    ld h, c
    inc bc
    inc b
    ld a, [bc]
    nop
    db $10
    xor l
    nop
    ld h, c
    xor b
    and b
    ld [$1040], sp
    and b
    nop
    db $10
    jr nz, @+$04

    inc b
    ld bc, $a8c8
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    xor [hl]
    rst $18
    and d
    adc $ad
    sbc a
    add h
    ld bc, $0a03
    stop
    jr z, @+$12

jr_05c_567d:
    ld b, l
    db $10
    add d
    ld [$0840], sp
    ld bc, $b28c
    ld [bc], a
    ld [bc], a

jr_05c_5688:
    nop
    db $10
    adc b
    ld bc, $8323
    xor l
    inc b
    ld [$2a40], sp
    ld bc, $ac11
    sub c
    xor c
    ld bc, $0042
    ld bc, $df86
    inc c
    inc b
    db $10
    ld a, [bc]
    db $10
    ld de, $a208
    ld [$0844], sp
    ld [bc], a
    ld [$a301], sp
    ld bc, $0505
    inc b
    jr nz, @+$04

    ld de, $0a00
    and [hl]
    nop
    di
    ld b, $05
    nop
    ld b, d
    nop
    add b
    ld bc, $c800
    nop
    dec l
    inc bc
    db $10
    ld b, b
    ld [$8c80], sp
    ld bc, $0272
    ld [bc], a
    jr nz, jr_05c_56d1

    add h

jr_05c_56d1:
    nop
    jr c, jr_05c_567d

    ld bc, $cc6c
    nop
    ld e, l
    ld [bc], a
    ld a, [bc]
    ld b, b
    inc b
    adc h
    xor a
    ld bc, $0100
    xor a
    ld bc, $0470
    db $10
    jp $3408


    dec b
    adc c
    ld bc, $04a1
    add b
    ld b, b
    nop
    and b
    nop
    jp nz, $0193

    nop
    nop
    adc $00
    or l
    adc b
    cp [hl]
    adc d
    ld [bc], a
    dec b
    ld h, c
    inc b
    inc d
    add b
    and d
    nop
    ld b, c
    add e
    and d
    adc h
    ld bc, $8844
    add [hl]
    add h
    ld bc, $0580
    ld [$1180], sp
    ld h, b
    ld [hl+], a
    inc e
    and [hl]

jr_05c_571a:
    sub c
    ld b, $10
    nop
    jr nz, @+$42

    nop
    add b
    nop
    call nc, $8af8
    ld bc, $03a0
    add b
    inc a
    ld b, b
    add e
    add l
    ld [bc], a
    ld a, [hl+]
    ld b, $05
    nop
    ld a, [bc]
    nop
    stop
    jr nz, @-$4f

    sbc a
    add l
    ld bc, $c7c4
    ld [bc], a
    inc a
    ld [hl], b
    and e
    ld [bc], a
    ld [hl], d
    inc bc
    add hl, bc
    ld bc, $0307
    adc d
    nop
    ld hl, $7804
    cp $7e
    cp a
    cp a
    ld a, c
    inc b
    ld e, $00
    ld a, a
    nop
    rst $38
    ld l, [hl]
    nop
    ret nz

    adc e
    ld [bc], a
    call c, $0304
    nop
    rlca
    nop
    ld c, $ac
    xor h
    ld [bc], a
    ld a, l
    add d
    jr c, jr_05c_571a

    ld [bc], a
    reti


    ld bc, $00c0
    adc l
    ld bc, $0130
    inc b
    add b
    xor h
    ld [bc], a
    add d
    nop
    db $10
    xor [hl]
    ld bc, $1d82
    ld bc, $0500
    dec b
    dec bc
    dec bc
    dec c
    dec c
    ld e, $1e
    rra
    rra
    ld a, [de]
    ld a, [de]
    dec d
    dec d
    rrca
    rrca
    rst $18
    rst $18
    rst $28
    rst $28
    rst $18
    rst $18
    xor $ee
    ld [hl], l
    ld [hl], l
    ei
    ei
    inc hl
    rst $38
    inc hl
    add b
    ld bc, $4040
    daa
    ldh [rSC], a
    ret nz

    ret nz

    ld bc, $03c4
    adc h

jr_05c_57ae:
    ld [bc], a
    ld b, $00
    rlca
    add h
    add e
    ld bc, $0003
    ld b, a
    rst $38
    nop
    add hl, bc
    ld a, l
    nop
    ld a, [$7700]
    nop
    xor a
    nop
    ldh [rP1], a
    ld b, e
    ldh a, [rP1]
    ldh [rNR50], a
    ld hl, sp+$00
    ldh a, [rP1]
    add sp, $00
    ld e, b
    nop
    or b
    nop
    ld bc, $020c
    add hl, de
    inc b
    inc de
    nop
    dec de
    ld b, h
    inc de
    adc b
    rlca
    ld d, b
    rrca
    jr nz, jr_05c_57eb

    ld b, l
    sub d
    jr z, jr_05c_57ae

    ld de, $02ec

jr_05c_57eb:
    db $fc
    ld bc, $00fe
    jp $0381


    db $fc
    nop
    ld b, b
    add b
    and e
    ret z

    push bc
    add c
    and d
    jp c, RST_00

    xor [hl]
    ld [bc], a
    call nc, $0a00
    rst $08
    nop
    ld e, a
    ld b, $40
    nop
    add b
    add b
    nop
    ld b, b
    nop
    sub d
    ld [bc], a
    dec l
    ld h, h
    ld bc, $0f0f
    and e
    inc b
    inc c
    nop
    ld bc, $c388
    dec h
    rst $38
    nop
    cp $c8
    inc bc
    ld c, h
    and d
    sbc e
    nop
    add b
    xor h
    inc bc
    ld [hl], d
    adc [hl]
    ld [bc], a
    ld d, b
    ld [bc], a
    rst $18
    nop
    rst $38
    call z, Call_05c_6f03
    ld [bc], a
    ldh a, [rP1]
    ldh [$a3], a
    and e
    or h
    inc bc
    ld [hl], h
    add h
    inc bc
    add l
    ld [bc], a
    cp $00
    cp $cb
    nop
    inc l
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
    or $00
    ld hl, sp+$01
    or $00
    ld hl, sp+$01
    or $00
    ld hl, sp+$01
    or $00
    ld hl, sp+$01
    inc c
    call z, $3303
    inc c
    call z, $3303
    inc c
    call z, $3303
    inc c
    call z, $3303
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$01
    ldh a, [rTMA]
    ld hl, sp+$01
    db $fc
    nop
    di
    inc bc
    call z, $030c
    inc sp
    inc c
    call z, $3303
    inc c
    call z, $3303
    or $00
    ld hl, sp+$01
    db $fc
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc c
    call z, $3303
    inc c
    call z, $3303
    inc c
    call z, $33c3
    db $fc
    inc c
    rst $38
    inc bc
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
    ld b, b
    nop
    ld b, b
    nop
    cp $00
    ld b, d
    nop
    ld b, h
    nop
    ld b, b
    nop
    ld b, b
    nop
    inc a
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, d
    nop
    ld b, h
    nop
    ld e, b
    nop
    ld h, b
    nop
    nop
    nop
    ld a, h
    nop
    ld b, h
    nop
    add h
    nop
    inc b
    nop
    inc b
    nop
    ld [$7000], sp
    nop
    jr nz, jr_05c_590a

jr_05c_590a:
    jr nz, jr_05c_590c

jr_05c_590c:
    jr nz, jr_05c_590e

jr_05c_590e:
    inc a
    nop
    ld [hl+], a
    nop
    jr nz, jr_05c_5914

jr_05c_5914:
    jr nz, jr_05c_5916

jr_05c_5916:
    jr nz, jr_05c_5918

jr_05c_5918:
    jr nz, jr_05c_591a

jr_05c_591a:
    jr nz, jr_05c_591c

jr_05c_591c:
    inc l
    nop
    jr nc, jr_05c_5920

jr_05c_5920:
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ld a, [hl]
    nop
    nop
    nop
    jr c, jr_05c_592c

jr_05c_592c:
    ld l, h
    nop
    add $00
    add $00
    cp $00
    add $00
    add $00
    stop
    stop
    cp $00
    stop
    ld d, h
    nop
    ld d, d
    nop
    ld d, d
    nop
    sub d
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld b, d
    nop
    ld [hl], d
    nop
    adc [hl]
    nop
    ld [bc], a
    nop
    inc b
    nop
    jr c, jr_05c_5958

jr_05c_5958:
    nop
    nop
    ld [c], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld hl, sp+$00
    nop
    nop
    cp $00
    inc c
    nop
    stop
    jr nz, jr_05c_5972

jr_05c_5972:
    jr nz, jr_05c_5974

jr_05c_5974:
    stop
    inc c
    nop
    jr nz, jr_05c_597a

jr_05c_597a:
    jr nz, jr_05c_597c

jr_05c_597c:
    db $fc
    nop
    ld b, b
    nop
    ld a, h
    nop
    ld b, d
    nop
    ld [bc], a
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    stop
    cp b
    nop
    call nc, $9400
    nop
    jr c, jr_05c_5996

jr_05c_5996:
    stop
    ld a, b
    nop
    nop
    nop
    jr c, jr_05c_599e

jr_05c_599e:
    ld b, h
    nop
    inc b
    nop
    inc b
    nop
    ld [$3000], sp
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld b, h
    nop
    jr c, jr_05c_59b8

jr_05c_59b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [de], a
    nop
    ld [$f000], sp
    xor d
    push af
    ld a, $01
    ldh [$aa], a
    call Call_05c_59d6
    pop af
    ldh [$aa], a
    ret


Call_05c_59d6:
    ld a, $46
    ld hl, $43cb
    rst $08
    call Call_05c_59ed
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    call Call_05c_5a11
    pop af
    ldh [rSVBK], a
    ret


Call_05c_59ed:
    xor a
    ld [$cd49], a
    ld [$cd4a], a
    dec a
    ld [$cd4b], a
    call $31f3
    call $300b
    ld a, $5c
    ld hl, $5d2b
    rst $08
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $23
    ld hl, $4f53
    rst $08
    ret


Call_05c_5a11:
jr_05c_5a11:
    call $0a57
    ld a, [$cd49]
    bit 7, a
    jr nz, jr_05c_5a2c

    call Call_05c_5a36
    ld a, $23
    ld hl, $4f69
    rst $08
    ld a, $41
    ld hl, $4061
    rst $08
    jr jr_05c_5a11

jr_05c_5a2c:
    ld a, $23
    ld hl, $4f53
    rst $08
    call $300b
    ret


Call_05c_5a36:
    ld a, [$cd49]
    ld e, a
    ld d, $00
    ld hl, $5a45
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub l
    ld e, d
    ret


    ld e, d
    ld e, l
    ld e, d
    rst $10
    ld e, d
    ld e, l
    ld e, d
    db $ec
    ld e, d
    ld c, e
    ld e, e
    add l
    ld e, e
    call z, $2c5b
    ld e, h
    add hl, sp
    ld e, h
    ld b, c
    ld e, h
    ld a, [$c821]
    bit 1, a
    jr nz, jr_05c_5a6a

    bit 0, a
    ret nz

    jp Jump_05c_5c66


jr_05c_5a6a:
    ld a, $00
    call $3e32
    ld [$c300], a
    ld a, l
    ld [$c301], a
    ld a, h
    ld [$c302], a
    ld a, $0a
    call $3e32
    ldh a, [rSVBK]
    push af

jr_05c_5a82:
    ld a, $01
    ldh [rSVBK], a
    ld a, $46
    ld hl, $4452
    rst $08
    pop af
    ldh [rSVBK], a
    ld a, $0a
    ld [$cd49], a
    ret


    ld a, $5c
    ld hl, $5ccd
    rst $08
    ld hl, $c542
    ld de, $5aa7
    call $1078
    jp Jump_05c_5c66


    and c
    add hl, de
    add c
    and [hl]
    add b
    rrca
    ld b, d
    adc a
    add $4e
    cp [hl]
    jp nz, $b82f

    ld a, a
    cp h
    jp $cfb2


    cp l
    ld c, [hl]
    cp h
    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    or l
    rst $08
    pop bc
    cp b
    jr nc, jr_05c_5a82

    or d
    ld d, b
    ld de, $cd81
    ld hl, $005c
    ld a, $02
    call $3e32
    jp Jump_05c_5c66


    xor a
    ld hl, $c608
    ld bc, $0066
    call $3041
    ld de, $c608
    ld a, $0c
    call $3e32
    jp Jump_05c_5c66


    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $46
    ld hl, $4452
    rst $08
    pop af
    ldh [rSVBK], a
    ld hl, $c51a
    ld a, $08

jr_05c_5b01:
    push af
    push hl
    xor a
    ld bc, $0010
    call $3041
    pop hl
    ld de, $0014
    add hl, de
    pop af
    dec a
    jr nz, jr_05c_5b01

    ld hl, $c52e
    ld a, $03
    ld de, $c608

jr_05c_5b1b:
    push af
    push hl
    ld a, [de]
    and a
    jr z, jr_05c_5b34

    ld a, [$cd4b]
    inc a
    ld [$cd4b], a
    push hl
    call Call_05c_5b42
    pop hl
    ld bc, $ffec
    add hl, bc
    call Call_05c_5b42

jr_05c_5b34:
    pop hl
    ld bc, $0014
    add hl, bc
    add hl, bc
    add hl, bc
    pop af
    dec a
    jr nz, jr_05c_5b1b

    jp Jump_05c_5c66


Call_05c_5b42:
jr_05c_5b42:
    ld a, [de]
    inc de
    and a
    ret z

    sub $20
    ld [hl+], a
    jr jr_05c_5b42

    ld de, $4010
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $08
    ld [hl], a
    ld de, $4098
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $09
    ld [hl], a
    ld de, $8a70
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $0a
    ld [hl], a
    ld a, $04
    ld [$cd23], a
    ld a, $08
    ld [$cd24], a
    jp Jump_05c_5c66


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jp nz, Jump_05c_5b9f

    ld a, [hl]
    and $01
    jp nz, Jump_05c_5bbd

    ld a, [hl]
    and $40
    jr nz, jr_05c_5ba5

    ld a, [hl]
    and $80
    jr nz, jr_05c_5baf

    ret


Jump_05c_5b9f:
    ld a, $80
    ld [$cd49], a
    ret


jr_05c_5ba5:
    ld a, [$cd4a]
    and a
    ret z

    dec a
    ld [$cd4a], a
    ret


jr_05c_5baf:
    ld a, [$cd4b]
    ld c, a
    ld a, [$cd4a]
    cp c
    ret z

    inc a
    ld [$cd4a], a
    ret


Jump_05c_5bbd:
    call $2009
    ld a, $08
    ld [$cd23], a
    xor a
    ld [$cd24], a
    jp Jump_05c_5c66


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jp nz, Jump_05c_5bdc

    ld a, [hl]
    and $01
    jp nz, Jump_05c_5beb

    ret


Jump_05c_5bdc:
    ld a, $04
    ld [$cd23], a
    ld a, $08
    ld [$cd24], a
    ld hl, $cd49
    dec [hl]
    ret


Jump_05c_5beb:
    ld a, $05
    call $2fcb
    ld a, [$cd4a]
    ld [$aa4a], a
    call $2fe1
    ld hl, $5c6b
    call $1d35
    call $1cbb
    call $1cfd
    ld a, $41
    ld hl, $4061
    rst $08
    ld hl, $c5b9
    ld de, $5c73
    call $1078
    ld a, [$cd4a]
    cp $02
    jr z, jr_05c_5c1f

    ld a, $08
    jr jr_05c_5c21

jr_05c_5c1f:
    ld a, $0c

jr_05c_5c21:
    ld [$cd24], a
    ld a, $1e
    ld [$cd4c], a
    call Call_05c_5c66
    ld hl, $cd4c
    dec [hl]
    ret nz

    call $1c07
    call $31f3
    jr jr_05c_5c60

    ld a, $28
    ld [$cd4c], a
    call Call_05c_5c66
    ld hl, $cd4c
    dec [hl]
    ret nz

    call $31f3
    ld a, $41
    ld hl, $6462
    rst $08
    ld a, $41
    ld hl, $6464
    rst $08
    ld a, $02
    ld [$c303], a
    ld a, $5f
    ld hl, $7555
    rst $08

jr_05c_5c60:
    ld a, $80
    ld [$cd49], a
    ret


Call_05c_5c66:
Jump_05c_5c66:
    ld hl, $cd49
    inc [hl]
    ret


    ld b, b
    inc c
    nop
    ld de, $0013
    nop
    nop
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    db $dd
    ld a, a
    cp c
    rst $18
    jp Jump_05c_4eb2


    cp h
    rst $08
    cp h
    ret nz

    ld d, b
    call $0568
    ld hl, $5db1
    ld de, $9000
    ld bc, $06e0
    call $3026
    ld hl, $6abd
    ld de, $8000
    call $0b50
    call $058a
    ld hl, $6491
    ld de, $c4a0
    ld bc, $0168
    call $3026
    ld hl, $67ed
    ld de, $cdd9
    ld bc, $0168
    call $3026
    ld hl, $c4cb
    ld de, $6e31
    call $1078
    ld hl, $c5e3
    ld de, $6e3f
    call $1078
    ret


    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $5d71
    ld de, $d000
    ld bc, $0040
    call $3026
    ld hl, $d042
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl], a
    call $32f9
    pop af
    ldh [rSVBK], a
    ret


    xor a
    ld hl, $c5d0
    ld [hl+], a
    ld [hl+], a
    ld a, [$cd4b]
    xor $01
    ld [$cd4b], a
    and a
    jr nz, jr_05c_5d16

    ld hl, $651d
    ld de, $c52c
    ld bc, $008c
    call $3026
    ld hl, $c5e3
    ld de, $6e3f
    jp $1078


jr_05c_5d16:
    ld hl, $65f9
    ld de, $c52c
    ld bc, $008c
    call $3026
    ld hl, $c5e3
    ld de, $6e4e
    jp $1078


    call $0568
    ld hl, $5db1
    ld de, $9000
    ld bc, $06e0
    call $3026
    ld hl, $6abd
    ld de, $8000
    call $0b50
    call $058a
    ld hl, $6685
    ld de, $c4a0
    ld bc, $0168
    call $3026
    ld hl, $6955
    ld de, $cdd9
    ld bc, $0168
    call $3026
    ld hl, $c4ca
    ld de, $6e5d
    call $1078
    ld hl, $c5ee
    ld de, $6e58
    call $1078
    ret


    nop
    nop
    inc bc
    nop
    dec b
    nop
    rst $38
    ld [hl], a
    ld b, b
    jr z, jr_05c_5dbe

    ld d, l
    nop
    nop
    ld c, d
    ld a, a
    nop
    nop
    ldh [rNR41], a
    rra
    ld bc, $3e21
    rra
    ld [bc], a
    rst $18
    ld [bc], a
    ld a, a
    inc bc
    rst $38
    inc bc
    ld e, a
    ld a, [de]
    ld h, b
    nop
    jr nz, jr_05c_5d98

    add b

jr_05c_5d98:
    ld bc, $0200
    ret nz

    ld [bc], a
    jr nz, jr_05c_5da2

    ld h, b
    inc bc
    and l

jr_05c_5da2:
    ld b, b
    ld l, b
    ld [hl], d
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    or l
    ld d, d
    ld l, e
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_5dbe:
    nop
    nop
    nop
    nop
    nop
    jr jr_05c_5ddd

    jr jr_05c_5ddf

    jr jr_05c_5de1

    jr jr_05c_5de3

    jr jr_05c_5de5

    nop
    nop
    jr jr_05c_5de9

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_5ddd:
    nop
    nop

jr_05c_5ddf:
    nop
    nop

jr_05c_5de1:
    nop
    nop

jr_05c_5de3:
    inc l
    inc l

jr_05c_5de5:
    ld a, [hl]
    ld a, [hl]
    inc l
    inc l

jr_05c_5de9:
    inc l
    inc l
    ld a, [hl]
    ld a, [hl]
    inc l
    inc l
    inc l
    inc l
    nop
    nop
    db $10
    db $10
    ld a, $3e
    ld d, b
    ld d, b
    inc a
    inc a
    ld d, $16
    ld a, h
    ld a, h
    db $10
    stop
    nop
    jr nz, jr_05c_5e25

    ld d, h
    ld d, h
    jr z, jr_05c_5e31

    db $10
    db $10
    jr z, jr_05c_5e35

    ld d, h
    ld d, h
    ld [$0008], sp
    nop
    jr nc, jr_05c_5e45

    ld e, b
    ld e, b
    ld e, b
    ld e, b
    jr nc, jr_05c_5e4b

    ld d, h
    ld d, h
    ld c, b
    ld c, b
    inc [hl]
    inc [hl]
    jr jr_05c_5e3b

    jr jr_05c_5e3d

jr_05c_5e25:
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

jr_05c_5e31:
    jr jr_05c_5e4b

    jr nc, jr_05c_5e65

jr_05c_5e35:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_05c_5e3b:
    ld h, b
    ld h, b

jr_05c_5e3d:
    jr nc, jr_05c_5e6f

    jr jr_05c_5e59

    jr jr_05c_5e5b

    inc c
    inc c

jr_05c_5e45:
    ld b, $06
    ld b, $06
    ld b, $06

jr_05c_5e4b:
    ld b, $06
    inc c
    inc c
    jr jr_05c_5e69

    nop
    nop
    nop
    nop
    inc h
    inc h
    jr jr_05c_5e71

jr_05c_5e59:
    ld a, [hl]
    ld a, [hl]

jr_05c_5e5b:
    jr jr_05c_5e75

    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_5e65:
    jr @+$1a

    jr jr_05c_5e81

jr_05c_5e69:
    ld a, [hl]
    ld a, [hl]
    jr jr_05c_5e85

    jr jr_05c_5e87

jr_05c_5e6f:
    nop
    nop

jr_05c_5e71:
    nop
    nop
    nop
    nop

jr_05c_5e75:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$1010], sp

jr_05c_5e81:
    nop
    nop
    nop
    nop

jr_05c_5e85:
    nop
    nop

jr_05c_5e87:
    nop
    nop
    ld a, [hl]
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
    inc c
    inc c
    inc c
    inc c
    ld b, $06
    ld b, $06
    inc c
    inc c
    inc c
    inc c
    jr jr_05c_5ec3

    jr jr_05c_5ec5

    jr nc, jr_05c_5edf

    jr nc, jr_05c_5ee1

    nop
    nop
    jr c, jr_05c_5eed

    ld c, h
    ld c, h
    add $c6
    add $c6
    ld h, h
    ld h, h
    jr c, jr_05c_5ef7

    nop
    nop
    nop
    nop

jr_05c_5ec3:
    jr jr_05c_5edd

jr_05c_5ec5:
    jr c, jr_05c_5eff

    jr jr_05c_5ee1

    jr jr_05c_5ee3

    jr jr_05c_5ee5

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    ld c, $0e
    ld a, b
    ld a, b
    ldh [$e0], a

jr_05c_5edd:
    cp $fe

jr_05c_5edf:
    nop
    nop

jr_05c_5ee1:
    nop
    nop

jr_05c_5ee3:
    ld a, [hl]
    ld a, [hl]

jr_05c_5ee5:
    inc c
    inc c
    jr c, jr_05c_5f21

    ld b, $06
    add $c6

jr_05c_5eed:
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc a
    inc a

jr_05c_5ef7:
    ld l, h
    ld l, h
    call z, $fecc
    cp $0c
    inc c

jr_05c_5eff:
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ret nz

    ret nz

    db $fc
    db $fc
    ld b, $06
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ret nz

    ret nz

    db $fc
    db $fc
    add $c6
    add $c6
    ld a, h
    ld a, h
    nop
    nop

jr_05c_5f21:
    nop
    nop
    cp $fe
    add $c6
    inc c
    inc c
    jr jr_05c_5f43

    jr nc, jr_05c_5f5d

    jr nc, jr_05c_5f5f

    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    ld a, h
    ld a, h
    add $c6
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop

jr_05c_5f43:
    ld a, h
    ld a, h
    add $c6
    add $c6
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    jr jr_05c_5f6d

    jr jr_05c_5f6f

    nop
    nop
    nop
    nop
    jr jr_05c_5f75

jr_05c_5f5d:
    jr jr_05c_5f77

jr_05c_5f5f:
    nop
    nop
    nop
    nop
    jr jr_05c_5f7d

    jr jr_05c_5f7f

    nop
    nop
    nop
    nop
    jr jr_05c_5f85

jr_05c_5f6d:
    jr jr_05c_5f87

jr_05c_5f6f:
    jr nc, jr_05c_5fa1

    nop
    nop
    nop
    nop

jr_05c_5f75:
    jr jr_05c_5f8f

jr_05c_5f77:
    jr nc, jr_05c_5fa9

    ld h, b
    ld h, b
    jr nc, jr_05c_5fad

jr_05c_5f7d:
    jr jr_05c_5f97

jr_05c_5f7f:
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_5f85:
    nop
    nop

jr_05c_5f87:
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop

jr_05c_5f8f:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_05c_5faf

jr_05c_5f97:
    inc c
    inc c
    ld b, $06
    inc c
    inc c
    jr jr_05c_5fb7

    nop
    nop

jr_05c_5fa1:
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld b, $06

jr_05c_5fa9:
    inc e
    inc e
    jr jr_05c_5fc5

jr_05c_5fad:
    nop
    nop

jr_05c_5faf:
    jr jr_05c_5fc9

    inc a
    inc a
    ld b, [hl]
    ld b, [hl]
    ld e, [hl]
    ld e, [hl]

jr_05c_5fb7:
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld c, h
    ld c, h
    ld h, b
    ld h, b
    inc a
    inc a
    nop
    nop
    jr c, @+$3a

jr_05c_5fc5:
    ld l, h
    ld l, h
    add $c6

jr_05c_5fc9:
    add $c6
    cp $fe
    add $c6
    add $c6
    nop
    nop
    db $fc
    db $fc
    add $c6
    add $c6
    db $fc
    db $fc
    add $c6
    add $c6
    db $fc
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    and $e6
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    and $e6
    ld a, h
    ld a, h
    nop
    nop
    ld hl, sp-$08
    call z, $c6cc
    add $c6
    add $c6
    add $cc
    call z, $f8f8
    nop
    nop
    cp $fe
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    cp $fe
    nop
    nop
    cp $fe
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ldh [$e0], a
    ret nz

    ret nz

    adc $ce
    add $c6
    and $e6
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    add $c6
    add $c6
    add $c6
    cp $fe
    add $c6
    add $c6
    add $c6
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr jr_05c_605f

    jr jr_05c_6061

    jr jr_05c_6063

    jr jr_05c_6065

    jr jr_05c_6067

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    add $c6
    add $c6

jr_05c_605f:
    ld a, h
    ld a, h

jr_05c_6061:
    nop
    nop

jr_05c_6063:
    add $c6

jr_05c_6065:
    add $c6

jr_05c_6067:
    call z, $f8cc
    ld hl, sp-$34
    call z, $c6c6
    add $c6
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    add d
    add d
    add $c6
    xor $ee
    cp $fe
    sub $d6
    add $c6
    add $c6
    nop
    nop
    add $c6
    and $e6
    or $f6
    cp $fe
    sbc $de
    adc $ce
    add $c6
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    add $c6
    add $c6
    add $c6
    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    ld a, h
    ld a, h
    add $c6
    add $c6
    add $c6
    add $c6
    call c, Call_05c_76dc
    halt
    nop
    db $fc
    db $fc
    add $c6
    add $c6
    adc $ce
    ld hl, sp-$08
    call c, $cedc
    adc $00
    nop
    ld a, b
    ld a, b
    call z, $c0cc
    ret nz

    ld a, h
    ld a, h
    ld b, $06
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr jr_05c_610f

    jr jr_05c_6111

    jr jr_05c_6113

    jr jr_05c_6115

    jr jr_05c_6117

    jr jr_05c_6119

    nop
    nop
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6

jr_05c_610f:
    ld a, h
    ld a, h

jr_05c_6111:
    nop
    nop

jr_05c_6113:
    add $c6

jr_05c_6115:
    add $c6

jr_05c_6117:
    add $c6

jr_05c_6119:
    xor $ee
    ld a, h
    ld a, h
    jr c, jr_05c_6157

    db $10
    stop
    nop
    add $c6
    add $c6
    sub $d6
    cp $fe
    cp $fe
    xor $ee
    add $c6
    nop
    nop
    add $c6
    add $c6
    ld l, h
    ld l, h
    jr c, jr_05c_6173

    ld l, h
    ld l, h
    add $c6
    add $c6
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    jr jr_05c_6165

    jr jr_05c_6167

    jr jr_05c_6169

    nop
    nop
    cp $fe
    ld c, $0e

jr_05c_6157:
    inc e
    inc e
    jr c, jr_05c_6193

    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    cp $fe
    jr c, jr_05c_619b

    jr nc, jr_05c_6195

jr_05c_6165:
    jr nc, jr_05c_6197

jr_05c_6167:
    jr nc, jr_05c_6199

jr_05c_6169:
    jr nc, jr_05c_619b

    jr nc, jr_05c_619d

    jr nc, jr_05c_619f

    jr c, jr_05c_61a9

    ld h, d
    ld h, d

jr_05c_6173:
    inc [hl]
    inc [hl]
    jr jr_05c_618f

    ld a, [hl]
    ld a, [hl]
    jr jr_05c_6193

    ld a, [hl]
    ld a, [hl]
    jr jr_05c_6197

    jr jr_05c_6199

    inc e
    inc e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_05c_618f:
    inc e
    inc e
    jr jr_05c_61ab

jr_05c_6193:
    inc a
    inc a

jr_05c_6195:
    ld h, [hl]
    ld h, [hl]

jr_05c_6197:
    nop
    nop

jr_05c_6199:
    nop
    nop

jr_05c_619b:
    nop
    nop

jr_05c_619d:
    nop
    nop

jr_05c_619f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_61a9:
    nop
    nop

jr_05c_61ab:
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr nc, jr_05c_61e3

    jr c, jr_05c_61ed

    jr jr_05c_61cf

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld b, $06
    ld a, $3e
    ld h, [hl]
    ld h, [hl]
    ld a, $3e

jr_05c_61cf:
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop

jr_05c_61e3:
    nop
    nop
    ld e, $1e
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_05c_61ed:
    ld e, $1e
    nop
    nop
    ld b, $06
    ld b, $06
    db $76
    db $76
    adc $ce
    add $c6
    adc $ce
    db $76
    halt
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld a, $3e
    nop
    nop
    jr jr_05c_622b

    jr nc, jr_05c_6245

    jr nc, jr_05c_6247

    ld a, h
    ld a, h
    jr nc, jr_05c_624b

    jr nc, jr_05c_624d

    jr nc, jr_05c_624f

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_05c_622b:
    ld a, $3e
    ld b, $06
    inc a
    inc a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    jr jr_05c_625b

    jr jr_05c_625d

jr_05c_6245:
    nop
    nop

jr_05c_6247:
    jr jr_05c_6261

    jr jr_05c_6263

jr_05c_624b:
    jr jr_05c_6265

jr_05c_624d:
    jr jr_05c_6267

jr_05c_624f:
    nop
    nop
    jr jr_05c_626b

    jr jr_05c_626d

    nop
    nop
    jr jr_05c_6271

    jr jr_05c_6273

jr_05c_625b:
    jr jr_05c_6275

jr_05c_625d:
    jr jr_05c_6277

    jr nc, jr_05c_6291

jr_05c_6261:
    ld h, b
    ld h, b

jr_05c_6263:
    ld h, b
    ld h, b

jr_05c_6265:
    ld h, [hl]
    ld h, [hl]

jr_05c_6267:
    ld l, h
    ld l, h
    ld a, b
    ld a, b

jr_05c_626b:
    ld l, h
    ld l, h

jr_05c_626d:
    ld h, [hl]
    ld h, [hl]
    nop
    nop

jr_05c_6271:
    jr @+$1a

jr_05c_6273:
    jr jr_05c_628d

jr_05c_6275:
    jr @+$1a

jr_05c_6277:
    jr jr_05c_6291

    jr jr_05c_6293

    jr jr_05c_6295

    jr jr_05c_6297

    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    jp c, $dada

    jp c, $dada

jr_05c_628d:
    jp c, $00da

    nop

jr_05c_6291:
    nop
    nop

jr_05c_6293:
    nop
    nop

jr_05c_6295:
    ld a, h
    ld a, h

jr_05c_6297:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld a, $3e
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, $3e
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld [hl], b
    ld [hl], b
    inc a
    inc a
    ld c, $0e
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    jr jr_05c_630d

    inc a
    inc a
    jr jr_05c_6311

    jr jr_05c_6313

    jr jr_05c_6315

    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_05c_630d:
    ld a, $3e
    nop
    nop

jr_05c_6311:
    nop
    nop

jr_05c_6313:
    nop
    nop

jr_05c_6315:
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    jr jr_05c_6337

    nop
    nop
    nop
    nop
    nop
    nop
    sub $d6
    sub $d6
    cp $fe
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]

jr_05c_6337:
    inc a
    inc a
    jr jr_05c_6353

    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    inc e
    inc e
    jr jr_05c_6367

    jr nc, jr_05c_6381

    nop
    nop

jr_05c_6353:
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc c
    inc c
    jr jr_05c_6373

    jr nc, jr_05c_638d

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    jr jr_05c_637d

    jr nc, jr_05c_6397

jr_05c_6367:
    jr nc, jr_05c_6399

    ld h, b
    ld h, b
    jr nc, jr_05c_639d

    jr nc, jr_05c_639f

    jr jr_05c_6389

    jr jr_05c_638b

jr_05c_6373:
    jr jr_05c_638d

    jr jr_05c_638f

    jr jr_05c_6391

    jr jr_05c_6393

    jr jr_05c_6395

jr_05c_637d:
    jr jr_05c_6397

    jr jr_05c_6399

jr_05c_6381:
    nop

jr_05c_6382:
    nop
    jr jr_05c_639d

    inc c

jr_05c_6386:
    inc c
    inc c

jr_05c_6388:
    inc c

jr_05c_6389:
    ld b, $06

jr_05c_638b:
    inc c
    inc c

jr_05c_638d:
    inc c
    inc c

jr_05c_638f:
    jr jr_05c_63a9

jr_05c_6391:
    ld h, b
    ld h, b

jr_05c_6393:
    sub d
    sub d

jr_05c_6395:
    inc c
    inc c

jr_05c_6397:
    nop
    nop

jr_05c_6399:
    nop
    nop
    nop
    nop

jr_05c_639d:
    nop
    nop

jr_05c_639f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_63a9:
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
    ld hl, sp+$0f
    ldh [rNR10], a
    rst $00
    ld hl, $23cc
    sbc c
    ld h, $92
    inc l
    sub h
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rra

jr_05c_63d5:
    ldh a, [rTAC]
    ld [$84e3], sp
    inc sp
    ret nz

    sbc c
    ld h, b
    ld c, c
    jr nz, jr_05c_640a

    inc l
    sub l
    inc l
    sub l
    inc l
    sub l
    inc l
    sub l
    inc l
    sub l
    inc l
    sub l
    inc l
    sub l
    inc l
    sub l
    jr nz, @-$75

    jr nz, @-$75

    jr nz, @-$75

    jr nz, jr_05c_6382

    jr nz, @-$75

    jr nz, jr_05c_6386

    jr nz, jr_05c_6388

    jr nz, @-$75

    inc h
    sub h
    ld h, $92
    inc hl
    sbc c
    jr nz, jr_05c_63d5

    db $10

jr_05c_640a:
    rst $00
    ld [$00e0], sp
    ld hl, sp+$00
    rst $38
    nop
    rst $38
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
    nop
    nop
    rst $38
    jr nz, jr_05c_644c

    ld h, b
    ld c, c
    ret nz

    sbc c
    inc b
    inc sp
    ld [$10e3], sp
    rlca
    nop
    rra
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_05c_644c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    cp $fe
    cp $00
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    rst $38
    nop
    rst $38
    rst $38
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
    db $fc
    nop
    cp $00
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld h, h
    ld h, e
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    cpl
    jr nc, jr_05c_657c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05c_658c

    ld a, [hl-]
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_05c_657c:
    ld c, l
    ld c, [hl]
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_658c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    ld l, e
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, l
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, e
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_05c_661f

    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_661f:
    nop
    ld h, h
    ld h, e
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    inc c
    dec c
    ld c, $0f
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05c_6658

jr_05c_6658:
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    ld l, e
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, l
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    db $e3
    ld l, a
    inc bc
    nop
    rlca
    inc bc
    inc c
    rlca

jr_05c_6ac5:
    inc c
    rlca

jr_05c_6ac7:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_05c_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    inc a
    rst $20
    cp [hl]
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_05c_6ac5

    jr nc, jr_05c_6ac7

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [$03], a
    nop
    rlca
    inc bc
    inc c
    rlca

jr_05c_6af5:
    inc c
    rlca

jr_05c_6af7:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_05c_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    cp [hl]
    rst $20
    inc a
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_05c_6af5

    jr nc, jr_05c_6af7

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [$03], a
    nop
    rlca
    inc bc
    inc c
    rlca

jr_05c_6b25:
    inc c
    rlca

jr_05c_6b27:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_05c_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    ld a, l
    rst $20
    inc a
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_05c_6b25

    jr nc, jr_05c_6b27

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [$03], a
    nop
    rlca
    inc bc
    inc c
    rlca

jr_05c_6b55:
    inc c
    rlca

jr_05c_6b57:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_05c_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    ld a, l
    rst $20
    inc a
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_05c_6b55

    jr nc, jr_05c_6b57

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [$03], a
    nop
    rlca
    inc bc
    inc c
    rlca

jr_05c_6b85:
    inc c
    rlca

jr_05c_6b87:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_05c_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    inc a
    rst $20
    ld a, l
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_05c_6b85

    jr nc, jr_05c_6b87

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [rP1], a
    nop
    ld a, h
    nop
    ld b, h
    jr c, @+$46

    jr c, jr_05c_6bfc

    jr c, jr_05c_6c36

    nop
    nop
    nop
    nop
    nop
    inc c
    rlca

jr_05c_6bc1:
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    inc bc
    ld bc, $0103
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $08ff
    rst $38
    jr nc, jr_05c_6bc1

    or b
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    add b
    nop
    ret nz

    add b
    inc c
    rlca

jr_05c_6bf1:
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rra
    ld bc, $0f1f
    rra

jr_05c_6bfc:
    add hl, bc
    rra
    ld [$ffff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    sbc c
    rst $38
    ldh [$7f], a
    jr nc, jr_05c_6bf1

    or b
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    add b
    nop
    ret nz

    add b
    inc c
    rlca

jr_05c_6c21:
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $0300
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05c_6c36:
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    sbc h
    rst $30
    inc e
    rst $30
    jr nc, jr_05c_6c21

    or b
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    inc c
    rlca
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    inc bc
    ld bc, $0103
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    add c
    rst $38
    inc bc
    cp $30
    ldh [$b0], a
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ld hl, sp-$80
    ld hl, sp-$10
    ld hl, sp-$70
    ld hl, sp+$10
    inc c
    rlca

jr_05c_6c81:
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    inc bc
    ld bc, $0103
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nc, jr_05c_6c81

    or b
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    ret nz

    add b
    ld h, b
    ret nz

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
    ld a, $03
    ld a, a
    ccf
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    db $10
    rst $38
    and d
    rst $38
    rst $20
    rst $38
    rst $38
    jr @+$3e

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    ld a, h
    ret nz

    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    ccf
    ld [$3f7f], sp
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    db $e4
    ccf
    ld hl, sp+$1f
    rst $30
    rst $38
    rst $38
    jr @+$3e

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    ld a, h
    ret nz

    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    ld a, $03
    ld a, a

jr_05c_6d22:
    ccf
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    ld a, $ef
    jr c, jr_05c_6d22

    rst $38
    rst $28
    rst $38
    jr @+$3e

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    ld a, h
    ret nz

    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    ld a, $03
    ld a, a
    ccf
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    rlca
    db $fc
    rrca
    ld hl, sp-$11
    rst $38
    rst $38
    jr @+$3e

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    db $fc
    db $10
    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    ld a, $03
    ld a, a
    ccf
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    ld [bc], a
    rst $38
    ld bc, $e7ff
    rst $38
    rst $38
    jr jr_05c_6dd4

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    ld a, h
    ret nz

    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    sub b
    ld h, b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_6dd4:
    nop
    nop
    nop
    rra
    rra
    ccf
    jr nz, @+$62

    ld e, a
    rst $08
    or b
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
    nop
    nop
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
    cp $fe
    rst $38
    ld bc, $fd03
    rst $38
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
    ld h, b
    ld e, a
    rst $08
    or b
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    db $fd
    rst $38
    ld bc, $00ff

jr_05c_6e31:
    ld b, b
    adc h
    xor c
    db $e3
    inc de
    rra
    or d
    jp c, $b8c3

    jr nc, @-$43

    or d
    ld d, b
    or a
    ret c

    or [hl]
    or h
    ld a, a
    call nc, $d9d2
    ld a, a
    ld a, a
    cp c
    rst $18
    jp $50b2


    or a
    ret c

    or [hl]
    or h
    ld a, a
    call nc, $d9d2
    ld a, a
    ld a, a
    cp c
    rst $18
    jp $50b2


    cp [hl]
    jp nz, $b82f

    cp l
    reti


    ld a, a
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    db $dd
    ld c, [hl]
    or h
    rst $10
    sbc $33
    ld a, a
    cp b
    jr nc, jr_05c_6e31

    or d
    ld d, b
    ld a, $7f
    ld hl, $c4a0
    ld bc, $0168
    call $3041
    ld a, $07
    ld hl, $cdd9
    ld bc, $0168
    call $3041
    call $0568
    ld hl, $6f1f
    ld de, $9000
    ld bc, $0610
    call $3026
    call $058a
    ld hl, $73af
    ld de, $c4a0
    ld bc, $0168
    call $3026
    ld hl, $7524
    ld de, $cdd9
    ld bc, $0168
    call $3026
    ret


    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $6edf
    ld de, $d000
    ld bc, $0040
    call $3026
    ld hl, $6edf
    ld de, $d080
    ld bc, $0040
    call $3026
    call $32f9
    pop af
    ldh [rSVBK], a
    ret


    add l
    ld b, l
    rst $38
    ld a, a
    ld [hl-], a
    ld [hl], e
    ld a, [hl+]
    ld d, [hl]
    and [hl]
    ld c, c
    rst $38
    ld a, a
    ld d, h
    ld [hl], e
    ld l, h
    ld e, [hl]
    ld b, e
    ld b, c
    rst $38
    ld a, a
    and [hl]
    ld c, c
    ld d, h
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_05c_6f03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and l
    ld b, b
    ld l, b
    ld [hl], d
    nop
    nop
    rst $38

jr_05c_6f16:
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    nop

jr_05c_6f1c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    adc h
    ld [hl], e
    adc e
    ld [hl], a
    add [hl]
    ld c, $ed
    inc c
    db $eb
    jr jr_05c_6f1c

    jr jr_05c_6f16

    inc b
    rlca
    ld hl, sp-$08
    rst $20
    sub a
    sub b
    ld a, a
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $10ff
    ldh a, [$08]
    rra
    sub a
    xor b
    jr z, jr_05c_6fb6

    ld c, b
    ccf
    ld c, b
    ccf
    ld c, b
    ccf
    ld c, b
    ccf
    rst $38
    rst $38
    sbc h
    rst $38
    sbc e
    rst $38
    or $ff
    db $f4
    cp $f4
    cp $f5
    cp $f4
    cp $ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    add hl, sp
    rst $38
    reti


    rst $38
    ld l, a
    rst $38
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    rst $38
    nop
    sbc h
    inc bc
    sbc e
    inc b
    or $09
    push af
    dec bc
    push af
    dec bc
    db $f4
    ld a, [bc]
    push af
    dec bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    nop
    add hl, sp
    ret nz

    reti


    jr nz, @+$71

jr_05c_6fb6:
    sub b
    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    rst $38
    nop
    rst $38
    ld h, b
    ldh a, [$6f]
    and $19
    adc $31
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld e, d
    and l
    db $10
    rst $18
    db $10
    rst $18
    db $10
    rst $18
    db $10
    rst $18
    db $10
    rst $18
    db $10
    rst $18
    db $10
    rst $18
    db $10
    rst $18
    ld de, $11ff
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld c, b
    ccf

Jump_05c_7001:
    ld c, b
    ld a, a
    add b
    add b
    nop
    rst $38
    ld d, l
    rst $38
    nop
    xor d
    ld b, b
    ld [$fa10], a
    ld [de], a
    db $fc
    ld [de], a
    cp $01
    ld bc, $ff00
    ld d, l
    rst $38
    nop
    xor d
    ld bc, $04ab
    xor a
    db $f4
    cp $f4
    cp $f4
    cp $f6
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $fe
    db $f4
    db $fc
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    add hl, sp
    add hl, sp
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cpl
    ccf
    cpl
    ccf
    push af
    dec bc
    push af
    dec bc
    push af
    dec bc
    or $09
    rst $30
    ld [$08f7], sp
    rst $30
    add hl, bc
    rst $30
    dec bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add $af
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    ld l, a
    sub b
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    ret nc

    rst $28
    ret nc

    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc c
    ld h, b
    sbc c
    ld h, b
    sbc c
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    jp $bd3c


    ld b, d
    add c
    ld a, [hl]
    rst $38
    nop
    add c
    ld a, [hl]
    db $10
    rst $18
    db $10
    rst $18
    db $10
    rst $18
    db $10
    rst $18
    ld de, $12df
    sbc $10
    db $dd
    ld de, $01dc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $10
    rra
    ret nz

    cpl
    jr nz, @-$0f

    dec b
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    db $fd
    ld [$50fe], sp
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    and b
    cp a
    db $10
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld [$03f8], sp
    db $f4
    inc b
    di
    ld [$08fb], sp
    ei
    ld [$08fb], sp
    ei
    adc b
    ei
    ld c, b
    ld a, e
    ld [$88bb], sp
    cp e
    db $f4
    db $fc
    or $fe
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    sbc e
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    sbc c
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld c, a
    ld e, a
    xor a
    cp a
    ld c, a
    ld e, a
    sbc c
    cp a
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $30
    dec bc
    rst $30
    add hl, bc
    rst $30
    ld [$08f7], sp
    rst $30

jr_05c_7138:
    ld [$049b], sp
    sbc h
    inc bc
    rst $38
    nop
    rst $38
    add $ff
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    or b
    rst $28
    ld d, b
    rst $28
    or b
    reti


    ld h, b
    add hl, sp
    ret nz

    rst $38
    nop
    inc l
    db $d3
    nop
    rst $38
    ld d, [hl]
    xor c
    ld b, [hl]
    cp c
    jr nc, jr_05c_7138

    add b
    ld a, a
    rst $08
    jr nc, @+$01

    nop
    nop
    jp $e700


    jp $c33c


    inc a
    jr @+$01

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld de, $11dc

jr_05c_7182:
    call c, $dd10
    db $10

jr_05c_7186:
    db $dd
    ld de, $10dd
    cp [hl]
    db $10
    cp a
    db $10
    cp a
    ldh [$2f], a
    jr nz, jr_05c_7182

    ldh [$ef], a
    jr nz, jr_05c_7186

    ldh [$ef], a
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    rla
    ld_long a, $ff10
    nop
    rst $28
    nop
    ldh a, [rP1]
    rst $38
    rrca
    rst $38
    ld a, h
    rst $38
    ld [$e8ff], sp
    cp a
    ld [$00ff], sp
    rst $30
    nop
    rrca
    nop
    rst $38
    ldh a, [rIE]
    ld a, $ff
    inc b
    di
    inc b
    di
    inc b
    di
    inc b
    di
    inc bc
    rst $30
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    adc b
    cp e
    adc b
    cp e
    adc b
    cp e
    adc b
    cp e
    ld [$08bb], sp
    ld a, l
    ld [$08fd], sp
    db $fd
    rst $38
    rst $38
    rst $38
    sbc a
    ldh a, [$9f]
    and $ff
    adc $ff
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld e, d
    rst $38
    nop
    rst $38
    ld h, e
    sbc a
    ld h, h
    sbc a
    add hl, bc
    rst $38
    dec bc
    cp $0b
    cp $0a
    rst $38
    dec bc
    cp $00
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    rst $38
    add $f9
    ld h, $f9
    sub b
    rst $38
    ret nc

    ld a, a
    ret nc

    ld a, a
    ret nc

    ld a, a
    ret nc

    ld a, a
    nop
    rst $38
    ld h, b
    sbc a
    ld l, a
    sbc a
    add hl, de
    rst $38
    ld sp, $61ff
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    and l
    rst $38
    jr jr_05c_72d0

    rra
    ld a, a
    rrca
    ld a, a
    ld b, b
    ld a, a
    jr nc, jr_05c_7298

    ld c, a
    ld c, a
    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    rlca
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    ld b, e
    db $db
    sbc c
    cp l
    jr @+$3e

    jp $e7db


    rst $20
    ei
    rst $38
    ei
    rst $38
    call z, $87cc
    or a
    inc sp
    ld a, e
    jr nc, jr_05c_72f3

    add a
    or a
    call z, $dfcd
    rst $18
    rst $18
    rst $18
    inc sp
    inc sp
    pop hl
    db $ed
    call z, $0cde
    ld e, $e1
    db $ed
    inc sp
    or e
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    ld sp, hl
    sbc a

jr_05c_7298:
    ld sp, hl
    sbc a
    ld sp, hl
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdff


    rst $38
    add c
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    dec bc
    cp $0b
    cp $0b
    cp $09
    rst $38
    ld [$08ff], sp
    rst $38
    add hl, bc
    cp $0b
    db $fc
    add c
    nop
    add c
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add $39
    ret nc

jr_05c_72d0:
    ld a, a
    ret nc

    ld a, a
    ret nc

    ld a, a
    sub b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ret nc

    ccf
    ret nc

    ccf
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, [hl]
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38

jr_05c_72f3:
    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ccf
    ld a, a
    ld c, a
    ld a, a
    or b
    cp a
    ld c, a
    rst $08
    ld b, b
    or b
    ld a, a
    adc a
    ld [hl], b
    adc a
    nop
    rst $38
    ret nz

    rst $18
    rra
    sbc a
    ret nz

    ret nz

    ccf
    ccf
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    cp $80
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc l

jr_05c_7330:
    rst $38
    nop
    rst $38
    ld d, [hl]
    rst $38
    ld b, [hl]
    rst $38
    jr nc, @+$01

    add b
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    nop
    jp $e700


    jp $c3ff


    rst $38
    jr jr_05c_7330

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec [hl]
    rst $38
    nop
    rst $38
    ld l, d
    rst $38
    ld h, d
    rst $38
    inc c
    rst $38
    ld bc, $e3ff
    rst $38
    rst $38
    rst $38
    dec bc
    db $fc
    add hl, bc
    cp $08
    rst $38
    ld [$08ff], sp
    rst $38
    ld h, h
    sbc a
    ld h, e
    sbc a
    nop
    rst $38
    add $39
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    sbc c
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    or b
    ld e, a
    ld d, b
    cp a
    or b
    ld e, a
    ld h, [hl]
    cp c
    add $f9
    nop
    rst $38
    ld d, b
    rst $38
    rst $38
    rst $38
    xor c
    rst $38
    cp c
    rst $38
    rst $08
    rst $38
    ld a, a
    rst $38
    jr c, @+$01

    nop
    rst $38
    rst $38
    jp $e7ff


    inc a
    rst $38
    inc a
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec c
    ld a, [bc]
    inc b
    dec b
    ld b, $31
    ld [hl-], a
    ld sp, $0807
    add hl, bc
    inc l
    dec l
    inc l
    ld l, $2f
    jr nc, jr_05c_73ce

    ld a, [bc]
    dec bc
    dec c
    ld a, [bc]
    inc b
    ld d, $10
    ld de, $3c12
    dec a
    inc a
    inc de

jr_05c_73ce:
    inc d
    dec d
    scf
    jr c, jr_05c_740a

    add hl, sp
    ld a, [hl-]
    dec sp
    ld d, $17
    ld d, $10
    inc h
    ld e, $1f
    jr nz, jr_05c_7426

    ld c, b
    ld b, a
    ld hl, $2322
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    inc h
    dec h
    inc h
    ld e, $30
    dec c
    ld a, [bc]
    dec bc
    dec c
    ld a, [bc]
    inc b
    dec b
    ld b, $31
    ld [hl-], a
    ld sp, $0807
    add hl, bc
    inc l
    dec l
    inc l
    ld l, $2f
    jr nc, jr_05c_7411

    ld a, [bc]
    dec sp
    ld d, $17
    ld d, $10

jr_05c_740a:
    ld de, $3c12
    dec a
    inc a
    inc de
    inc d

jr_05c_7411:
    dec d
    scf
    jr c, jr_05c_744c

    add hl, sp
    ld a, [hl-]
    dec sp
    ld d, $46
    inc h
    dec h
    inc h
    ld e, $1f
    jr nz, jr_05c_7468

    ld c, b
    ld b, a
    ld hl, $2322

jr_05c_7426:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    inc h
    inc l
    ld l, $2f
    jr nc, jr_05c_743f

    ld a, [bc]
    dec bc
    dec c
    ld a, [bc]
    ld bc, $0302
    inc bc
    ld [bc], a
    ld bc, $0807
    add hl, bc

jr_05c_743f:
    inc l
    dec l
    inc l
    ld l, $37
    add hl, sp
    ld a, [hl-]
    dec sp
    ld d, $17
    ld d, $0c
    dec c

jr_05c_744c:
    ld a, [bc]
    ld c, $0f
    dec c
    ld a, [bc]
    inc c
    inc de
    inc d
    dec d
    scf
    jr c, jr_05c_748f

    add hl, sp
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    inc h
    dec h
    inc h
    jr @+$1b

    dec de
    inc e
    dec e
    ld hl, $2322

jr_05c_7468:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    add hl, bc
    inc l
    dec l
    inc l
    ld l, $2f
    jr nc, jr_05c_749a

    daa
    jr z, jr_05c_74a0

    ld a, [hl+]
    dec hl
    ld sp, $3132
    rlca
    ld [$2c09], sp
    dec d
    scf
    jr c, jr_05c_74bb

    add hl, sp
    ld a, [hl-]
    dec sp
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $34
    inc sp
    inc a
    dec a

jr_05c_748f:
    inc a
    inc de
    inc d
    dec d
    scf
    inc hl
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_05c_749a:
    ld b, [hl]
    ld a, $3f
    ld b, b
    ld b, b
    ccf

jr_05c_74a0:
    ld a, $47
    ld c, b
    ld b, a
    ld hl, $2322
    ld b, c
    ld sp, $0807
    add hl, bc
    inc l
    dec l
    inc l
    ld l, $2f
    jr nc, jr_05c_74c0

    ld a, [bc]
    dec bc
    dec c
    ld a, [bc]
    inc b
    dec b
    ld b, $31

jr_05c_74bb:
    ld [hl-], a
    ld sp, $3c07
    inc de

jr_05c_74c0:
    inc d
    dec d
    scf
    jr c, jr_05c_74fc

    add hl, sp
    ld a, [hl-]
    dec sp
    ld d, $17
    ld d, $10
    ld de, $3c12
    dec a
    inc a
    inc de
    ld b, a
    ld hl, $2322
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    inc h
    dec h
    inc h
    ld e, $1f
    jr nz, jr_05c_752a

    ld c, b
    ld b, a
    ld hl, $3106
    ld [hl-], a
    ld sp, $0807
    add hl, bc
    inc l
    dec l
    inc l
    ld l, $2f
    jr nc, jr_05c_7501

    ld a, [bc]
    dec bc
    dec c
    ld a, [bc]
    inc b
    dec b
    ld b, $31

jr_05c_74fc:
    ld [de], a
    inc a
    dec a
    inc a
    inc de

jr_05c_7501:
    inc d
    dec d
    scf
    jr c, @+$39

    add hl, sp
    ld a, [hl-]
    dec sp
    ld d, $17
    ld d, $10
    ld de, $3c12
    jr nz, @+$49

    ld c, b
    ld b, a
    ld hl, $2322
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    inc h
    dec h
    inc h
    ld e, $1f
    jr nz, @+$49

    ld hl, $0101
    ld bc, $0101

jr_05c_752a:
    ld hl, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld hl, $2101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld hl, $0000
    nop
    jr nz, @+$22

    jr nz, @+$03

    ld bc, $0101
    ld bc, $0121
    ld hl, $0101
    ld bc, $0101
    ld hl, $0000
    nop
    nop
    jr nz, jr_05c_75dd

    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0021
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121

jr_05c_75dd:
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0001
    nop
    nop
    nop
    jr nz, @+$22

    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    jr nz, jr_05c_762c

    jr nz, @+$03

    ld bc, $0121
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld hl, $2101
    ld bc, $0101

jr_05c_762c:
    ld bc, $2101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_05c_76dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_05c_7c3d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_05c_7e81:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
