; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

Call_021_4000:
    ld hl, $c800
    ld bc, $040c
    xor a
    call Call_021_42ab
    xor a
    ldh [rSB], a
    ldh [rSC], a
    ld [$c2d5], a
    ld hl, $c2d4
    set 0, [hl]
    ld a, [$cfd0]
    ld [$cbfb], a
    xor a
    ld [$cf63], a
    ret


Call_021_4022:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $4031
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], a
    ld b, b
    ld b, e
    ld b, c
    jr nz, @+$43

    sbc c
    ld b, b
    add b
    ld b, c
    ld l, $41
    push bc
    ld b, b
    add b
    ld b, c
    jr nz, jr_021_4084

    sbc $40
    add b
    ld b, c
    jr nz, jr_021_408a

    and c
    ld b, c
    ld h, e
    ld b, b
    ld l, l
    ld b, b
    jr nz, @+$43

    inc bc
    ld b, c
    ld [hl], c
    ld b, b
    or b
    ld b, c
    or e
    ld b, c

Call_021_4059:
    ld hl, $cf63
    inc [hl]
    ret


Call_021_405e:
    ld hl, $cf63
    dec [hl]
    ret


    xor a
    ld [$ca89], a
    ld hl, $cf63
    set 7, [hl]
    ret


    call Call_021_4059
    ret


    ld a, $01
    ld [$cf63], a
    ret


    call Call_021_41fb
    ld hl, $42b7
    call Call_021_41e2
    xor a
    ld [$ca8e], a

jr_021_4084:
    ld [$ca8f], a
    ld a, [$cf65]

jr_021_408a:
    ld [$ca81], a
    call Call_021_4059
    call Call_021_41c3
    ld a, $01
    ld [$cbf8], a
    ret


    call Call_021_41fb
    ld hl, $ca81
    ld a, [hl]
    and a
    jr z, jr_021_40c5

    ld hl, $42c3
    call Call_021_41e2
    call Call_021_4260
    ld a, $80
    ld [$ca8e], a
    ld a, $02
    ld [$ca8f], a
    call Call_021_4219
    call Call_021_4059
    call Call_021_41c3
    ld a, $02
    ld [$cbf8], a
    ret


jr_021_40c5:
    ld a, $06
    ld [$cf63], a
    ld hl, $42c9
    call Call_021_41e2
    xor a
    ld [$ca8e], a
    ld [$ca8f], a
    call Call_021_4059
    call Call_021_41c3
    ret


    call Call_021_41fb
    ld hl, $42bd
    call Call_021_41e2
    call Call_021_4249
    ld a, $04
    ld [$ca8e], a
    ld a, $00
    ld [$ca8f], a
    call Call_021_4219
    call Call_021_4059
    call Call_021_41c3
    ld a, $03
    ld [$cbf8], a
    ret


    call Call_021_41fb
    ld hl, $42b7
    call Call_021_41e2
    xor a
    ld [$ca8e], a
    ld [$ca8f], a
    ld a, [$cf65]
    ld [$ca81], a
    call Call_021_4059
    call Call_021_41c3
    ret


    ld hl, $ca8b
    inc [hl]
    ld a, [hl]
    cp $06
    ret c

    xor a
    ld [hl], a
    call Call_021_4059
    ret


    ld hl, $ca8b
    inc [hl]
    ld a, [hl]
    cp $06
    ret c

    xor a
    ld [hl], a
    ld hl, $ca81
    dec [hl]
    call Call_021_405e
    call Call_021_405e
    ret


    ld a, [$c2d5]
    and a
    ret nz

    ld a, [$ca88]
    cp $ff
    jr nz, jr_021_4156

    ld a, [$ca89]
    cp $ff
    jr z, jr_021_4172

jr_021_4156:
    ld a, [$ca88]
    cp $81
    jr nz, jr_021_4172

    ld a, [$ca89]
    cp $00
    jr nz, jr_021_4172

    ld hl, $c2d4
    set 1, [hl]
    ld a, $05
    ld [$ca8a], a
    call Call_021_4059
    ret


jr_021_4172:
    ld a, $ff
    ld [$ca88], a
    ld [$ca89], a
    ld a, $0e
    ld [$cf63], a
    ret


    ld a, [$c2d5]
    and a
    ret nz

    ld a, [$ca89]
    and $f0
    jr nz, jr_021_419b

    ld a, [$ca89]
    and $01
    jr nz, jr_021_4197

    call Call_021_4059
    ret


jr_021_4197:
    call Call_021_405e
    ret


jr_021_419b:
    ld a, $12
    ld [$cf63], a
    ret


    ld a, [$c2d5]
    and a
    ret nz

    ld a, [$ca89]
    and $f3
    ret nz

    call Call_021_4059
    ret


    call Call_021_4059
    ld a, [$c2d5]
    and a
    ret nz

    ld a, [$ca89]
    and $f0
    ret nz

    xor a
    ld [$cf63], a
    ret


Call_021_41c3:
jr_021_41c3:
    ld a, [$c2d5]
    and a
    jr nz, jr_021_41c3

    xor a
    ld [$ca8c], a
    ld [$ca8d], a
    ld a, $01
    ld [$c2d5], a
    ld a, $88
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ret


Call_021_41e2:
    ld a, [hl+]
    ld [$ca82], a
    ld a, [hl+]
    ld [$ca83], a
    ld a, [hl+]
    ld [$ca84], a
    ld a, [hl+]
    ld [$ca85], a
    ld a, [hl+]
    ld [$ca86], a
    ld a, [hl]
    ld [$ca87], a
    ret


Call_021_41fb:
    xor a
    ld hl, $ca82
    ld [hl+], a

Jump_021_4200:
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $ca86
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$ca8e], a
    ld [$ca8f], a
    ld hl, $c800
    ld bc, $0280
    call Call_021_42ab
    ret


Call_021_4219:
    ld hl, $0000
    ld bc, $0004
    ld de, $ca82
    call Call_021_423c
    ld a, [$ca8e]
    ld c, a
    ld a, [$ca8f]
    ld b, a
    ld de, $c800
    call Call_021_423c
    ld a, l
    ld [$ca86], a
    ld a, h
    ld [$ca87], a
    ret


Call_021_423c:
jr_021_423c:
    ld a, [de]
    inc de
    add l
    jr nc, jr_021_4242

    inc h

jr_021_4242:
    ld l, a
    dec bc
    ld a, c
    or b
    jr nz, jr_021_423c

    ret


Call_021_4249:
    ld a, $01
    ld [$c800], a
    ld a, [$cbfa]
    ld [$c801], a
    ld a, $e4
    ld [$c802], a
    ld a, [$cbfb]
    ld [$c803], a
    ret


Call_021_4260:
    ld a, [$ca81]
    xor $ff
    ld d, a
    ld a, [$cf65]
    inc a
    add d
    ld hl, $ca90
    ld de, $0028

jr_021_4271:
    and a
    jr z, jr_021_4278

    add hl, de
    dec a
    jr jr_021_4271

jr_021_4278:
    ld e, l
    ld d, h
    ld hl, $c800
    ld c, $28

jr_021_427f:
    ld a, [de]
    inc de
    push bc
    push de
    push hl
    swap a
    ld d, a
    and $f0
    ld e, a
    ld a, d
    and $0f
    ld d, a
    and $08
    ld a, d
    jr nz, jr_021_4297

    or $90
    jr jr_021_4299

jr_021_4297:
    or $80

jr_021_4299:
    ld d, a
    ld bc, $2101
    call $0eba
    pop hl
    ld de, $0010
    add hl, de
    pop de
    pop bc
    dec c
    jr nz, jr_021_427f

    ret


Call_021_42ab:
    push de
    ld e, a

jr_021_42ad:
    ld [hl], e
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_021_42ad

    ld a, e
    pop de
    ret


    ld bc, $0000
    nop
    ld bc, $0200
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    add b
    ld [bc], a
    nop
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    ld [$0000], sp
    nop
    ld [$0f00], sp
    nop
    nop
    nop
    rrca
    nop
    ld a, [$c2d5]
    add a
    ld e, a
    ld d, $00
    ld hl, $42ea
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cpl
    ld b, e
    jr nc, @+$45

    add hl, sp
    ld b, e
    ld b, e
    ld b, e
    ld c, l
    ld b, e
    ld d, a
    ld b, e
    ld h, c
    ld b, e
    adc e
    ld b, e
    sub l
    ld b, e
    sbc a
    ld b, e
    xor b
    ld b, e
    or [hl]
    ld b, e
    jr nc, @+$45

    ret nz

    ld b, e
    ret


    ld b, e
    ret


    ld b, e
    ret


    ld b, e
    ret nz

    ld b, e
    ret


    ld b, e
    sbc a
    ld b, e
    xor b
    ld b, e
    and $43
    jr nc, @+$45

    jp nc, $c943

    ld b, e
    ret


    ld b, e
    ret


    ld b, e
    jp nc, $c943

    ld b, e
    sbc a
    ld b, e
    xor b
    ld b, e
    or [hl]
    ld b, e

Call_021_432a:
    ld hl, $c2d5
    inc [hl]
    ret


    ret


    ld a, $33
    call Call_021_43db
    call Call_021_432a
    ret


    ld a, [$ca82]
    call Call_021_43db
    call Call_021_432a
    ret


    ld a, [$ca83]
    call Call_021_43db
    call Call_021_432a
    ret


    ld a, [$ca84]
    call Call_021_43db
    call Call_021_432a
    ret


    ld a, [$ca85]
    call Call_021_43db
    call Call_021_432a
    ret


    ld hl, $ca8e
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    or d
    jr z, jr_021_4388

    dec de
    ld [hl], d
    dec hl
    ld [hl], e
    ld a, [$ca8c]
    ld e, a
    ld a, [$ca8d]
    ld d, a
    ld hl, $c800
    add hl, de
    inc de
    ld a, e
    ld [$ca8c], a
    ld a, d
    ld [$ca8d], a
    ld a, [hl]
    call Call_021_43db
    ret


jr_021_4388:
    call Call_021_432a
    ld a, [$ca86]
    call Call_021_43db
    call Call_021_432a
    ret


    ld a, [$ca87]
    call Call_021_43db
    call Call_021_432a
    ret


    ld a, $00
    call Call_021_43db
    call Call_021_432a
    ret


    ldh a, [rSB]
    ld [$ca88], a
    ld a, $00
    call Call_021_43db
    call Call_021_432a
    ret


    ldh a, [rSB]
    ld [$ca89], a
    xor a
    ld [$c2d5], a
    ret


    ld a, $0f
    call Call_021_43db
    call Call_021_432a
    ret


    ld a, $00
    call Call_021_43db
    call Call_021_432a
    ret


    ld a, $08
    call Call_021_43db
    call Call_021_432a
    ret


Call_021_43db:
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ret


    ldh a, [rSB]
    ld [$ca89], a
    xor a
    ld [$c2d5], a
    ret


Call_021_43f0:
jr_021_43f0:
    call $0a57
    call Call_021_46f6
    jr c, jr_021_440f

    ld a, [$cf63]
    bit 7, a
    jr nz, jr_021_440d

    call Call_021_4022
    call Call_021_4757
    call Call_021_4785
    call $045a
    jr jr_021_43f0

jr_021_440d:
    and a
    ret


jr_021_440f:
    scf
    ret


Call_021_4411:
    xor a
    ld [$c2d4], a
    ld [$c2d5], a
    ret


Call_021_4419:
    push af
    call Call_021_4000
    pop af
    ld [$cbfa], a
    call Call_021_4728
    ret


Call_021_4425:
    call $222a
    call Call_021_4753
    ret


    ld a, [$cf65]
    push af
    ld hl, $8800
    ld de, $4000
    ld bc, $3680
    call $0f1e
    xor a
    ldh [$ac], a
    call Call_021_474c
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    call Call_021_4000
    ld a, $10
    ld [$cbfa], a
    ld a, $77
    ld hl, $41b0
    rst $08
    call $0fc8
    ld a, $e4
    call $0c9f
    call $045a
    ld hl, $ff9e
    ld a, [hl]
    push af
    ld [hl], $04
    ld a, $08
    ld [$cf65], a
    call Call_021_4742
    call Call_021_43f0
    jr c, jr_021_449d

    call Call_021_4411

Call_021_447c:
    ld c, $0c
    call $0468
    xor a
    ldh [$d4], a
    call Call_021_4000
    ld a, $03
    ld [$cbfa], a
    ld a, $77
    ld hl, $4213
    rst $08
    call Call_021_4742
    ld a, $04
    ld [$cf65], a
    call Call_021_43f0

jr_021_449d:
    pop af
    ldh [$9e], a
    call Call_021_4411
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    call Call_021_4425
    ld c, $08

jr_021_44ae:
    call $3c9d
    call $045a
    dec c
    jr nz, jr_021_44ae

    pop af
    ld [$cf65], a
    ret


    ld a, [$cf65]
    push af
    ld a, $09
    ld [$cf65], a
    ld a, e
    ld [$d004], a
    ld a, d
    ld [$d005], a
    ld a, b
    ld [$d006], a
    ld a, c
    ld [$d007], a
    xor a
    ldh [$ac], a
    ld [$d003], a
    call Call_021_474c
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    ld hl, $ff9e
    ld a, [hl]
    push af
    ld [hl], $04
    xor a
    ldh [$d4], a
    call Call_021_4817
    ld a, $10
    call Call_021_4419
    call Call_021_4559
    jr c, jr_021_4545

    call Call_021_4411
    ld c, $0c
    call $0468
    xor a
    ldh [$d4], a
    call Call_021_486f
    ld a, $00
    call Call_021_4419
    call Call_021_4559
    jr c, jr_021_4545

    call Call_021_4411
    ld c, $0c
    call $0468
    xor a
    ldh [$d4], a
    call Call_021_4893
    ld a, $00
    call Call_021_4419
    call Call_021_4559
    jr c, jr_021_4545

    call Call_021_4411
    ld c, $0c
    call $0468
    xor a
    ldh [$d4], a
    call Call_021_48b7
    ld a, $03
    call Call_021_4419
    call Call_021_4559

jr_021_4545:
    pop af
    ldh [$9e], a
    call Call_021_4411
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    call Call_021_4425
    pop af
    ld [$cf65], a
    ret


Call_021_4559:
    call Call_021_4742
    call Call_021_43f0
    ret


    ld a, [$cf65]
    push af
    xor a
    ldh [$ac], a
    call Call_021_474c
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    ld hl, $ff9e
    ld a, [hl]
    push af
    ld [hl], $04
    xor a
    ldh [$d4], a
    call $309d
    ld a, $05
    ld hl, $6dac
    rst $08
    ld a, $00
    call Call_021_4419
    call $30b4
    call Call_021_4742
    ld a, $09
    ld [$cf65], a

jr_021_4597:
    call $0a57
    call Call_021_46f6
    jr c, jr_021_45c0

    ld a, [$cf63]
    bit 7, a
    jr nz, jr_021_45c0

    call Call_021_4022
    ld a, [$cf63]
    cp $02
    jr nc, jr_021_45b5

    ld a, $03
    ld [$ca81], a

jr_021_45b5:
    call Call_021_4757
    call Call_021_4785
    call $045a
    jr jr_021_4597

jr_021_45c0:
    pop af
    ldh [$9e], a
    call Call_021_4411
    call $30b4
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    pop af
    ld [$cf65], a
    ret


    call Call_021_45db
    call Call_021_4425
    ret


Call_021_45db:
    ld a, [$cf65]
    push af
    xor a
    ldh [$ac], a
    call Call_021_474c
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    xor a
    ldh [$d4], a
    ld a, $13
    call Call_021_4419
    ld hl, $ff9e
    ld a, [hl]
    push af
    ld [hl], $04
    ld a, $09
    ld [$cf65], a
    call Call_021_43f0
    pop af
    ldh [$9e], a
    call Call_021_4411
    call Call_021_4735
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    pop af
    ld [$cf65], a
    ret


    ld a, [$cf65]
    push af
    xor a
    ldh [$ac], a
    call Call_021_474c
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    xor a
    ldh [$d4], a
    ld a, $77
    ld hl, $4381
    rst $08
    ld a, $10
    call Call_021_4419
    ld hl, $ff9e
    ld a, [hl]
    push af
    ld [hl], $04
    ld a, $08
    ld [$cf65], a
    call Call_021_4742
    call Call_021_43f0
    jr c, jr_021_4671

    call Call_021_4411
    ld c, $0c
    call $0468
    xor a
    ldh [$d4], a
    ld a, $77
    ld hl, $447b
    rst $08
    ld a, $03
    call Call_021_4419
    ld a, $09
    ld [$cf65], a
    call Call_021_4742
    call Call_021_43f0

jr_021_4671:
    pop af
    ldh [$9e], a
    call Call_021_4411
    call Call_021_4735
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    call Call_021_4425
    pop af
    ld [$cf65], a
    ret


    ld a, [$cf65]
    push af
    ld a, $77
    ld hl, $5709
    rst $08
    xor a
    ldh [$ac], a
    call Call_021_474c
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    ld hl, $ff9e
    ld a, [hl]
    push af
    ld [hl], $04
    ld a, $10
    call Call_021_4419
    call Call_021_4742
    ld a, $09
    ld [$cf65], a
    call Call_021_43f0
    jr c, jr_021_46e2

    call Call_021_4411
    ld c, $0c
    call $0468
    call $309d
    xor a
    ldh [$d4], a
    ld a, $77
    ld hl, $57ae
    rst $08
    ld a, $03
    call Call_021_4419
    call $30b4
    call Call_021_4742
    ld a, $09
    ld [$cf65], a
    call Call_021_43f0

jr_021_46e2:
    pop af
    ldh [$9e], a
    call Call_021_4411
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    call Call_021_4425
    pop af
    ld [$cf65], a
    ret


Call_021_46f6:
    ldh a, [$a8]
    and $02
    jr nz, jr_021_46fe

    and a
    ret


jr_021_46fe:
    ld a, [$ca80]
    cp $0c
    jr nz, jr_021_4722

jr_021_4705:
    ld a, [$c2d5]
    and a
    jr nz, jr_021_4705

    ld a, $16
    ld [$c2d5], a
    ld a, $88
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_021_471c:
    ld a, [$c2d5]
    and a
    jr nz, jr_021_471c

jr_021_4722:
    ld a, $01
    ldh [$ac], a
    scf
    ret


Call_021_4728:
    ld hl, $c4a0
    ld de, $ca90
    ld bc, $0168
    call $3026
    ret


Call_021_4735:
    ld hl, $ca90
    ld de, $c4a0
    ld bc, $0168
    call $3026
    ret


Call_021_4742:
    xor a
    ldh [$a6], a
    ldh [$a7], a
    ldh [$a8], a
    ldh [$a9], a
    ret


Call_021_474c:
    ld de, $005b
    call $3bbc
    ret


Call_021_4753:
    call $3d47
    ret


Call_021_4757:
    ld a, [$ca88]
    cp $ff
    jr nz, jr_021_4765

    ld a, [$ca89]
    cp $ff
    jr z, jr_021_477f

jr_021_4765:
    ld a, [$ca89]
    and $e0
    ret z

    bit 7, a
    jr nz, jr_021_477b

    bit 6, a
    jr nz, jr_021_4777

    ld a, $06
    jr jr_021_4781

jr_021_4777:
    ld a, $07
    jr jr_021_4781

jr_021_477b:
    ld a, $04
    jr jr_021_4781

jr_021_477f:
    ld a, $05

jr_021_4781:
    ld [$cbf8], a
    ret


Call_021_4785:
    ld a, [$cbf8]
    and a
    ret z

    push af
    xor a
    ldh [$d4], a
    ld hl, $c504
    ld bc, $0a12
    call $0fe8
    pop af
    ld e, a
    ld d, $00
    ld hl, $4807
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c52d
    ld a, $77
    call $13d4
    ld hl, $c5ce
    ld de, $47f5
    call $1078
    ld a, $01
    ldh [$d4], a
    xor a
    ld [$cbf8], a
    ret


    ld a, [$cbf8]
    and a
    ret z

    push af
    xor a
    ldh [$d4], a
    ld hl, $c4f2
    ld bc, $0d10
    call $0fb6
    pop af
    ld e, a
    ld d, $00
    ld hl, $4807
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c530
    ld a, $77
    call $13d4
    ld hl, $c5d0
    ld de, $47f5
    call $1078
    ld a, $01
    ldh [$d4], a
    xor a
    ld [$cbf8], a
    ret


    adc a
    or c
    and h
    or d
    or d
    ld a, a
    add c
    ld a, a
    or e
    xor [hl]
    ld a, a
    add d
    and b
    xor l
    and d
    and h
    xor e
    ld d, b
    ld [hl], l
    ld b, d
    db $76
    ld b, d
    adc c
    ld b, d
    sbc h
    ld b, d
    xor l
    ld b, d
    ld [c], a
    ld b, d
    rla
    ld b, e
    ld c, h
    ld b, e

Call_021_4817:
    xor a
    ld [$d002], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    call Call_021_4a0e
    ld hl, $c4a0
    ld bc, $00b4
    ld a, $7f
    call $3041
    call Call_021_49e9
    call Call_021_49d7
    ld hl, $c4e0
    ld de, $4865
    call $1078
    ld a, [$d007]
    ld bc, $0009
    ld hl, $db75
    call $30fe
    ld d, h
    ld e, l
    ld hl, $c50a
    call $1078
    ld a, $01
    call Call_021_49c6
    ld hl, $c556
    ld c, $03
    call Call_021_48e7
    ret


    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    adc b
    sub d
    sub e
    ld d, b

Call_021_486f:
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    call Call_021_4a0e
    call Call_021_49e9
    ld a, [$d003]
    and a
    ret nz

    ld a, $04
    call Call_021_49c6
    ld hl, $c4a2
    ld c, $06
    call Call_021_48e7
    ret


Call_021_4893:
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    call Call_021_4a0e
    call Call_021_49e9
    ld a, [$d003]
    and a
    ret nz

    ld a, $0a
    call Call_021_49c6
    ld hl, $c4a2
    ld c, $06
    call Call_021_48e7
    ret


Call_021_48b7:
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    call Call_021_4a0e
    ld hl, $c5cd
    ld bc, $0212
    call $0fb6
    call Call_021_49e9
    call Call_021_49fc
    ld a, [$d003]
    and a
    ret nz

    ld a, $10
    call Call_021_49c6
    ld hl, $c4a2
    ld c, $05
    call Call_021_48e7
    ret


Call_021_48e7:
    ld a, [$d006]
    call $2fcb

Jump_021_48ed:
    ld a, c
    and a
    jp z, Jump_021_4986

    dec c
    ld a, [de]
    cp $ff
    jp z, Jump_021_4981

    ld [$d265], a
    ld [$d108], a
    push bc
    push hl
    push de
    push hl
    ld bc, $0010
    ld a, $7f
    call $3041
    pop hl
    push hl
    call $3420
    pop hl
    push hl
    call $1078
    ld a, [$d108]
    cp $fd
    pop hl
    jr z, jr_021_4972

    ld bc, $000b
    add hl, bc
    call Call_021_498a
    ld bc, $0009
    add hl, bc
    ld a, $f3
    ld [hl+], a
    push hl
    ld bc, $000e
    ld a, $7f
    call $3041
    pop hl
    push hl
    ld a, [$d004]
    ld l, a
    ld a, [$d005]
    ld h, a
    ld bc, $0372
    add hl, bc
    ld bc, $000b
    ld a, [$d002]
    call $30fe
    ld e, l
    ld d, h
    pop hl
    push hl
    call $1078
    pop hl
    ld bc, $000b
    add hl, bc
    push hl
    ld a, [$d004]
    ld l, a
    ld a, [$d005]
    ld h, a
    ld bc, $0035
    add hl, bc
    ld bc, $0020
    ld a, [$d002]
    call $30fe
    ld a, [hl]
    pop hl
    call $383d

jr_021_4972:
    ld hl, $d002
    inc [hl]
    pop de
    pop hl
    ld bc, $003c
    add hl, bc
    pop bc
    inc de
    jp Jump_021_48ed


Jump_021_4981:
    ld a, $01
    ld [$d003], a

Jump_021_4986:
    call $2fe1
    ret


Call_021_498a:
    push hl
    ld a, [$d004]
    ld l, a
    ld a, [$d005]
    ld h, a
    ld bc, $002b
    add hl, bc
    ld bc, $0020
    ld a, [$d002]
    call $30fe
    ld de, $d123
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$d002]
    ld [$d109], a
    ld a, $03
    ld [$cf5f], a
    ld a, $14
    ld hl, $4bdd
    rst $08
    ld a, $7f
    jr c, jr_021_49c3

    ld a, $ef
    jr nz, jr_021_49c3

    ld a, $f5

jr_021_49c3:
    pop hl
    ld [hl+], a
    ret


Call_021_49c6:
    push hl
    ld e, a
    ld d, $00
    ld a, [$d004]
    ld l, a
    ld a, [$d005]
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


Call_021_49d7:
    ld hl, $c4a0
    ld a, $79
    ld [hl+], a
    ld a, $7a
    ld c, $12

jr_021_49e1:
    ld [hl+], a
    dec c
    jr nz, jr_021_49e1

    ld a, $7b
    ld [hl], a
    ret


Call_021_49e9:
    ld hl, $c4a0
    ld de, $0013
    ld c, $12

jr_021_49f1:
    ld a, $7c
    ld [hl], a
    add hl, de
    ld a, $7c
    ld [hl+], a
    dec c
    jr nz, jr_021_49f1

    ret


Call_021_49fc:
    ld hl, $c5f4
    ld a, $7d
    ld [hl+], a
    ld a, $7a
    ld c, $12

jr_021_4a06:
    ld [hl+], a
    dec c
    jr nz, jr_021_4a06

    ld a, $7e
    ld [hl], a
    ret


Call_021_4a0e:
    ld hl, $c4a2
    ld c, $06

jr_021_4a13:
    push bc
    push hl
    ld de, $4a25
    call $1078
    pop hl
    ld bc, $003c
    add hl, bc
    pop bc
    dec c
    jr nz, jr_021_4a13

    ret


    ld a, a
    ld a, a
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b
    ld h, [hl]
    inc c
    jr jr_021_4a3a

    ld d, $06
    add hl, bc
    rlca
    ld [$0403], sp
    nop

jr_021_4a3a:
    ld bc, $0100
    ld b, e
    ld bc, $0b02
    inc bc
    inc b
    rlca
    adc b
    adc a
    ld [hl], b
    rst $38
    nop
    inc bc
    inc b
    ld bc, $8602
    adc a
    inc b
    ld [$300f], sp
    ccf
    ret nz

    ld c, a
    rst $38
    nop
    sub b
    cp a
    nop
    jr jr_021_4aa0

    jr jr_021_4a83

    ld b, e
    inc a
    ld b, d
    ld bc, $817e
    ld b, e
    rst $38
    nop
    dec b
    inc bc
    inc b
    rlca
    jr jr_021_4a8d

    ld h, b
    ld b, e
    ld a, a
    add b
    dec b
    rra
    ld h, b
    rlca
    jr jr_021_4a7b

    inc b
    sub b
    cp a

jr_021_4a7b:
    ld b, $01
    nop
    ld b, c
    ld bc, $1332
    inc l

jr_021_4a83:
    ld b, e
    rrca
    db $10
    rlca
    rra
    jr nz, jr_021_4ac9

    ret nz

    ld hl, sp+$00

jr_021_4a8d:
    rst $38
    ld [hl], b
    ld c, e
    rst $38
    ld [hl], a
    and e
    and b
    add e
    sub e
    ld c, b
    rst $38
    db $76
    ld [bc], a
    ld [hl], a
    rst $38
    nop
    ld b, [hl]
    rst $38
    ld a, [hl]

jr_021_4aa0:
    ld [$7f30], sp
    rlca
    rrca
    rlca
    rst $38
    db $76
    rst $38
    nop
    ld b, [hl]
    cp $fc
    ld a, [de]
    ld hl, sp-$04
    ldh a, [$f8]
    ret nz

    inc bc
    ld bc, $0107
    rst $00
    inc bc
    rst $20
    add e
    rst $38
    jp $e7ff


    rst $38
    rst $30
    rst $38
    ld [hl], b
    rst $38
    ld h, a
    rst $38
    ld e, a
    rst $38
    rra

jr_021_4ac9:
    and [hl]
    sbc a
    ld b, $1f
    ccf
    rlca
    inc bc
    nop
    ld a, e
    ld bc, $7f44
    ld sp, $390a
    ld a, a
    add hl, de
    rst $38
    dec e
    rst $38
    rst $08
    ret nz

    nop
    db $fc
    add b
    ld b, e
    db $fc
    sbc b
    add hl, bc
    rst $38
    sbc b
    rst $38
    cp e
    rst $38
    or e
    rst $38
    or $ff
    rst $28
    ld b, h
    rst $38
    ld a, a
    and a
    rst $08
    nop
    rlca
    and d
    adc e
    nop
    db $fc
    xor b
    cp l
    ld [bc], a
    ldh a, [$f8]
    ldh [$c3], a
    nop
    ld b, d
    adc b
    nop
    or d
    ld bc, $ff7e
    ld b, l
    ld a, $7f
    ld b, e
    ld e, $3f
    ld bc, $1f0e
    ld h, h
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_4b1c:
    nop
    nop
    ldh [$27], a
    ldh a, [$f0]
    inc c
    db $fc
    ei
    rlca
    db $ec
    inc e
    ldh a, [$f0]
    jr nc, jr_021_4b1c

    add sp, $18
    ldh [$e0], a
    inc bc
    inc b
    rlca
    ld [$110e], sp
    inc e
    ld [hl+], a
    jr c, jr_021_4b7e

    ld [hl], b
    adc b
    ldh [rNR10], a
    ret nz

    jr nz, jr_021_4b41

jr_021_4b41:
    ld bc, $4100
    ld bc, $1332
    inc l
    ld b, e
    rrca
    db $10
    inc bc
    rra
    jr nz, jr_021_4b8e

    ret nz

    ld b, l
    db $dd
    or e
    ld a, [bc]
    dec h
    ld l, e
    ld c, [hl]
    ld c, d
    ld a, [bc]
    ld c, $0c
    inc c
    ld [$0008], sp
    ld b, [hl]
    rst $38
    nop
    inc bc
    ld h, b
    sbc a
    ld sp, hl
    ld b, $43
    rst $38
    nop
    ld bc, $f807
    ld b, e
    inc bc
    db $fc
    ld b, e
    rlca
    ld hl, sp+$43
    rrca
    ldh a, [rSB]
    rlca
    ld hl, sp-$01
    nop
    nop
    nop
    nop

jr_021_4b7e:
    ld b, $00
    ld [$1d00], sp
    nop
    ld e, a
    nop
    ld b, e
    rst $38
    nop
    inc b
    ld a, a
    nop
    ld a, a
    ld [bc], a

jr_021_4b8e:
    dec a
    ld b, e
    inc bc
    db $fc
    ld bc, $f807
    ld b, h
    rlca
    ld a, b
    inc b
    jr c, jr_021_4b9e

    inc a
    inc bc
    inc e

jr_021_4b9e:
    ld l, h
    inc bc
    ld bc, $0300

jr_021_4ba3:
    nop
    ld b, e
    rlca
    nop
    ld [bc], a
    rra
    ld bc, $833e
    sbc e
    dec c
    inc bc
    inc e
    ld bc, $000e
    jr z, jr_021_4bb5

jr_021_4bb5:
    ld a, [hl+]
    nop
    ld l, [hl]
    nop
    ld a, [hl]
    jr jr_021_4ba3

    ld b, h
    inc a
    jp Jump_021_4200


    ld h, d
    ld b, $10
    nop
    inc d
    nop
    inc a
    nop
    ld a, [hl]
    ld b, h
    jr jr_021_4c33

    nop
    inc h
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
    ld h, [hl]
    nop
    jr z, jr_021_4c44

    inc e
    adc [hl]
    nop
    ccf
    jr nz, jr_021_4c47

    dec sp
    ld b, h
    ld c, $f1
    ld b, b
    cp a
    ld h, [hl]
    sbc c
    ld a, a
    add b
    dec sp
    call nz, Call_021_7f00
    nop
    inc sp
    nop
    rst $38
    ld e, d
    and l
    ld a, [hl]
    add c
    inc h
    db $db
    add a
    add a
    ld l, d
    inc d
    ld c, $0e
    ld sp, $601f
    inc b
    ld a, e
    ld [hl], c
    adc [hl]
    ccf
    ret nz

    add hl, de
    and $00
    rst $38
    ld b, h
    cp e
    inc sp
    ld c, h
    nop
    inc sp
    adc h
    xor e
    inc b
    rst $38
    ld e, d
    and l
    nop
    ld bc, HeaderCGBFlag
    ld [bc], a
    inc bc
    nop
    ld bc, $6000
    ld b, e
    ld h, b
    sub b
    ld bc, $6000
    ld h, [hl]
    ld [$0707], sp

jr_021_4c33:
    jr c, jr_021_4c6d

    ld b, b
    rlca
    jr c, jr_021_4c39

jr_021_4c39:
    rlca
    ld l, b
    add e
    and a
    ld a, [bc]
    ld a, [de]
    jr jr_021_4c66

    jr jr_021_4c67

    nop

jr_021_4c44:
    jr jr_021_4c46

jr_021_4c46:
    rlca

jr_021_4c47:
    rlca
    jr jr_021_4c8d

    rra
    jr nz, jr_021_4c52

    rlca
    jr jr_021_4c50

jr_021_4c50:
    rlca
    nop

jr_021_4c52:
    ld [$0843], sp
    inc d
    add hl, bc
    inc e
    ld [hl+], a
    ld a, $41
    ld [hl], $41
    inc e
    ld [hl+], a
    nop
    inc e
    ld l, b
    ld [$0303], sp
    inc b

jr_021_4c66:
    rlca

jr_021_4c67:
    ld [$0806], sp
    nop
    inc e
    add l

jr_021_4c6d:
    sbc e
    dec c
    ld a, $41
    ld a, h
    add d
    ld h, b
    sbc h
    nop
    ldh [rP1], a
    ld b, h
    nop
    ld d, l
    ld d, l
    xor d
    ld e, c
    ld a, a
    add b
    inc bc
    ld l, a
    sub b
    rlca
    ld l, b
    xor d
    nop
    ld l, h
    nop
    nop
    ld b, l
    cp $01

jr_021_4c8d:
    dec b
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    ld b, $69
    add l
    sub a
    ld a, [bc]
    jr nz, jr_021_4c99

jr_021_4c99:
    ld [hl], b
    nop
    jr c, jr_021_4c9d

jr_021_4c9d:
    inc e
    nop
    ld c, $00
    inc b
    db $ec
    ld [hl+], a
    rst $38
    nop
    nop
    nop
    nop

jr_021_4ca9:
    nop
    nop
    nop
    nop
    nop
    inc de
    ld bc, $0302
    inc b
    ld b, $09
    inc bc
    inc b
    rlca
    ld [$0906], sp
    inc c
    ld [de], a
    jr jr_021_4d23

    add b
    ld b, b
    nop
    add b
    ld h, d
    ld [bc], a
    add b
    nop
    add b
    ld h, l
    rlca
    ld [hl], b
    adc h
    inc e
    db $e3
    rlca
    jr jr_021_4cd1

jr_021_4cd1:
    rlca
    and h
    sub c
    ld [bc], a
    ld bc, $0201
    add e
    sbc e
    dec c
    add b
    ld [hl], b
    ldh a, [$08]
    jr nc, jr_021_4ca9

    ld h, b
    sub b
    add b
    ld h, b
    add b
    ld b, b
    nop
    inc bc
    ld h, h
    nop
    ld bc, $c783
    dec bc
    inc bc
    inc b
    ld bc, $c002
    jr nc, jr_021_4d66

    adc b
    ld b, b
    or b
    add b
    ld b, b
    and l
    xor l
    ld bc, $20c0
    add l
    sub a
    ld bc, $0300
    add a
    and e
    inc bc
    ret nz

    jr nz, jr_021_4d0b

jr_021_4d0b:
    ld hl, sp-$7b
    cp l
    and e
    xor l
    inc bc
    nop
    add b
    ld bc, $a402
    xor e
    ld [bc], a
    rra
    rrca
    db $10
    and [hl]
    sub c
    add e
    or l
    inc c
    jr nc, jr_021_4d52

    ret z

jr_021_4d23:
    ret c

    inc h
    ld [hl], b
    adc b
    nop
    ldh a, [$80]
    ld h, b
    nop
    ld bc, $db89
    add e
    xor c
    and e
    nop
    ld [$cfa3], sp
    add l
    rst $18
    and l
    xor a
    ld b, e
    ld [bc], a
    dec b
    and l
    call $cfa8
    nop
    nop
    add l
    sbc l
    dec bc
    add b
    ld b, b
    rrca
    nop
    ld a, $00
    db $fc
    nop
    ld h, b
    nop
    jr c, jr_021_4d52

jr_021_4d52:
    ld b, e
    inc a
    nop
    ld [bc], a
    ldh a, [rP1]
    ld h, b
    and h
    adc a
    ld b, $93
    nop
    reti


    nop
    db $fc
    nop
    ld a, [hl]
    ld h, d
    ld c, $30

jr_021_4d66:
    nop
    ld [hl-], a
    nop
    halt
    ld a, a
    nop
    ld [hl], e
    nop
    ld h, a
    nop
    inc l
    nop
    inc c
    ld l, h
    inc bc
    ld bc, $0301
    ccf
    ld h, d
    inc c
    rlca
    rlca
    jr jr_021_4d9d

    ld [hl+], a
    db $10
    dec l
    ld d, [hl]
    ld l, a
    rst $10
    rst $28
    xor a
    rst $18
    rst $00
    nop
    ld e, $44
    add b
    ld b, b
    ld [hl+], a
    ret nz

    rrca
    ccf
    ld b, e
    ld h, a
    sbc a
    ld b, a
    and a
    ld b, a
    or a
    ld [hl], a
    adc a
    rla

jr_021_4d9d:
    ld l, a
    ld [de], a
    cpl
    ld e, $23
    ld b, l
    xor a
    rst $18
    dec h
    rst $38
    ld b, e
    cp a
    ld a, a
    ld d, $c0
    ret nz

    add b
    ldh [$e0], a
    sub b
    and b
    ret nc

    ret nc

    add sp, -$18
    db $f4
    db $e4
    ld [$cac4], a
    dec b
    ld a, [de]
    ld bc, $0106
    ld [bc], a
    nop
    ret z

    jp c, $bf0b

    ld a, a
    ld a, a
    rst $38
    cp [hl]
    ld a, d
    jp nc, Jump_021_622d

    sub l
    ld bc, $8372
    sub l
    add hl, bc
    ret z

    call nc, $a890
    db $10
    jr z, jr_021_4dfb

    ld d, b
    ld b, b
    and b
    add l
    nop
    jp nc, $00ff

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    inc b
    ld b, $06
    add hl, sp
    ccf
    ld b, b
    ld h, d
    nop
    ld bc, $0145
    ld [bc], a

jr_021_4dfb:
    ld b, e
    inc bc
    inc b
    dec b
    ld bc, $7f02
    add b
    cp $01
    ld b, e
    ld hl, sp+$07
    rlca
    ldh a, [$0e]
    ret nz

    ld a, $c0
    inc a
    add b
    ld [hl], b
    add a
    sbc a
    rlca
    inc bc
    inc e
    dec e
    ld [hl+], a
    rra
    jr nz, jr_021_4e59

    ld b, c
    ld h, d
    ld de, $f0f0
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
    ld b, e
    ld a, a
    nop
    ld bc, $003f
    ld b, e
    rra
    nop
    ld [bc], a
    inc e
    nop
    db $fc
    and h
    adc c
    ld b, e
    ldh [rP1], a
    nop
    ret nz

    ld h, [hl]
    jr @+$03

    ld bc, $0706
    ld [$110e], sp
    ld e, $21
    inc e
    ld [hl+], a
    jr nc, jr_021_4e9f

    nop
    ld [hl], b
    ld [hl], b
    adc h
    ldh a, [$0e]

jr_021_4e59:
    add b
    ld a, h
    nop
    ret nz

    nop
    add b
    ld h, e
    ld bc, $4c30
    ld b, h
    ld h, b
    sbc b
    ld b, $90
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    jr nz, @+$73

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
    dec b
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    inc hl
    ld a, a
    dec h
    rst $38
    ld h, l
    dec b
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    inc hl
    rra
    inc bc
    rrca
    rrca
    ccf
    ccf
    dec hl
    rst $38
    ld bc, $3f3f
    add l
    xor l

jr_021_4e9f:
    scf
    rst $38
    ld h, l
    ld bc, $0101
    add l
    pop bc
    inc bc
    ld e, $1f
    rlca
    rlca
    add e
    xor a
    add hl, bc
    db $fc
    rst $38
    ldh [rIE], a
    jp $0ffc


    ldh a, [$3e]
    ret nz

    ld b, e
    inc a
    ccf
    inc d
    ld a, c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], e
    ld a, h
    di
    db $fc
    rst $20
    ld hl, sp-$1a
    ld hl, sp+$78
    add b
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    ld h, [hl]
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
    db $10
    jr @+$1a

    inc [hl]
    inc h
    ld h, d
    ld b, d
    pop de
    add c
    and c
    add c
    pop de
    add c
    xor e
    add c
    push de
    add c
    db $eb
    ld b, [hl]
    add c
    rst $38
    inc bc
    add c
    pop af
    ld b, d
    ld [hl], d
    jp Jump_021_6198


    ld bc, $0000
    adc c
    and e
    nop
    db $eb
    sub h
    sbc e
    jp $048c


    adc a
    pop af
    ld c, [hl]
    ld [hl], d
    inc l
    add d
    sub e
    add a
    sub c
    add a
    adc l
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
    rrca
    inc bc
    inc bc
    ld b, $05
    dec c
    ld a, [bc]
    ld a, [hl-]
    dec [hl]
    ld d, l
    ld l, d
    ld l, d
    ld d, l
    push de
    xor d
    ld [$61d5], a
    ldh [$3d], a
    ldh [$e0], a
    ld d, b
    or b
    or b
    ld d, b
    ld e, b
    xor b
    xor h
    ld d, h
    ld d, [hl]
    xor d
    ld c, $f6
    or h
    db $eb
    sbc [hl]
    rst $38
    sub l
    rst $38
    xor d
    rst $38
    ld d, l
    ld a, a
    ld a, [hl+]
    ccf
    dec e
    rra
    rlca
    rlca
    rrca
    ld sp, hl
    rra
    pop af
    rst $38
    pop hl
    cp [hl]
    ld a, [c]
    ld e, [hl]
    ld a, [$fcac]
    ld [hl], b
    ldh a, [$c0]
    ret nz

    inc a
    inc a
    ld b, d
    ld a, [hl]
    pop bc
    rst $38
    db $e3
    cp a
    push af
    sbc a
    ld a, e
    ld c, l
    ld a, [hl]
    ld c, d
    inc a
    inc a
    ld h, l
    rrca
    rlca
    rlca
    rrca
    ld [$101f], sp
    dec sp
    inc l
    ld l, l
    ld d, [hl]
    rrca
    rrca
    rra
    db $10
    rst $38
    ldh [rOBP1], a
    rst $38
    nop
    add e
    rst $18
    dec bc
    db $fc
    inc e
    cp $02
    ei
    dec b
    push de
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    xor d
    ld h, a
    and e
    nop
    nop
    ldh [rNR51], a
    cp b
    ld e, b
    ld e, h
    and h
    ld d, a
    ld l, e
    ld l, d
    ld d, l
    dec [hl]
    ld a, [hl+]
    ld a, [hl+]
    dec [hl]
    ld b, l
    ld a, d
    ld b, d
    ld a, l
    ld d, c
    ld a, [hl]
    ld l, b
    ld a, a
    cp $01
    db $fd
    jp nz, $a57a

    or l
    ld e, d
    ld e, a
    xor a
    cp d
    ld e, a
    ld d, l
    cp a
    cp d
    ld e, a
    xor d
    ld d, l
    and l
    add c
    ld [de], a
    ldh a, [rIE]
    xor a
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    xor h
    ld e, h
    ld e, h
    cp h
    cp h
    ld a, h
    ld a, h
    cp h
    db $fc
    db $fc
    ld a, [hl]
    ld b, h
    cp $3e
    dec b
    inc [hl]
    ccf
    ld a, [hl+]
    ccf
    dec d
    rra
    and e
    nop
    inc a
    ld bc, $0101
    ld h, e
    inc b
    ld [hl], l
    sbc a
    ld a, [hl+]
    rst $38
    ld d, l
    and a
    add c
    ld [bc], a
    ld a, a
    ccf
    ccf
    xor d
    adc l
    ld c, $ff
    ld e, a
    rst $38
    ldh a, [$f0]
    ld e, $fe
    inc e
    db $fc
    inc c
    db $fc
    adc b
    ld hl, sp-$50
    ldh a, [$c5]
    nop
    adc c
    rst $38
    nop
    nop
    nop
    nop
    nop
    jr jr_021_5017

    rlca
    rra
    rra
    ccf
    ccf
    ld [hl], e
    ld [hl], e

jr_021_5017:
    ld h, c
    ld h, c
    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, a
    dec a
    dec a
    rlca
    rlca
    ld h, l
    ld h, l
    ld a, b
    ld a, b
    ld c, $0e
    inc bc
    call nz, $0780
    ld h, b
    ld h, b
    ld bc, $0301
    inc bc
    dec de
    dec de
    inc hl
    ccf
    rlca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $10
    db $10
    inc hl
    jr c, jr_021_5043

    ld a, h
    ld c, h

jr_021_5043:
    ld c, h
    inc h
    ld a, h
    ld bc, $3838
    ld l, c
    dec b
    inc a
    inc a
    ld a, [hl]
    ld e, [hl]
    rst $38
    rst $38
    adc b
    adc e
    ld [bc], a
    ld l, [hl]
    rst $38
    rst $18
    inc hl
    rst $38
    add [hl]
    adc c
    inc bc
    rst $18
    rst $38
    rst $38
    ld a, [hl]
    jp nz, $8b88

    adc a
    add l
    sub c
    jp $0180


    jp $23c3


    add c
    ld h, l
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
    ld h, c
    dec e
    inc a
    inc a
    ld a, [hl]
    ld b, d
    db $e3
    sbc l
    rst $18
    and c
    ld a, $c2
    db $fc
    adc h
    ldh a, [$f0]
    ld bc, $0301
    inc bc
    ld b, $06
    ld c, $0a
    ld e, $12

jr_021_5098:
    inc a
    inc h
    ld a, b
    ld a, b
    ret nz

    ret nz

    ld h, e
    add hl, bc
    inc bc
    inc bc
    ld c, $0e
    ld a, $32
    db $fc
    call nz, $3838
    ld l, c
    inc bc
    rst $38
    rst $38
    ld a, [hl]
    ld b, d
    jp $05b8


    ld e, $1e
    ld a, l
    ld h, e
    ld a, l
    ld b, e
    ld b, e
    ld sp, hl
    add a
    dec d
    ld [c], a
    sbc [hl]
    add [hl]
    cp $78
    ld a, b
    ld [$1808], sp
    jr jr_021_5104

    inc h
    ld a, h
    ld b, h
    ld a, [hl]
    ld b, d
    ld e, [hl]
    ld h, d
    inc sp
    dec a
    rrca
    rrca
    ld h, c
    and e
    sub c
    inc bc
    inc e
    inc d
    ld e, $12
    ld b, e
    rrca
    add hl, bc
    ld bc, $0407
    ld h, l
    dec b
    db $10
    db $10
    jr nc, jr_021_5117

    ld d, b
    ld [hl], b
    ld b, e
    and b
    ldh [$0b], a
    dec bc
    ld a, [bc]
    add hl, de
    add hl, de
    dec a
    dec h
    ld a, l
    ld b, l
    ld a, a
    ld b, e
    ld e, a
    ld h, e
    add e
    xor a
    ld b, $d0
    ret nc

    jr jr_021_5098

    inc a
    and h
    ld a, $a8

jr_021_5104:
    adc a
    ld h, e
    dec bc
    ld hl, sp-$08
    cp [hl]
    add $5f
    ld h, c
    ld c, a
    ld [hl], c
    daa
    jr c, jr_021_5145

    inc a
    ld h, l
    dec c
    rrca
    rrca

jr_021_5117:
    scf
    add hl, sp
    ld c, [hl]
    ld [hl], d
    sbc [hl]
    ld [c], a
    cp h
    call nz, $0e0d
    inc bc
    ld [bc], a
    add hl, hl
    ld bc, $0207
    inc bc
    sbc b
    ld hl, sp-$20
    ld h, b
    ret nz

    ld b, b
    ld c, c
    ld b, b
    ret nz

    rrca
    jr nz, @+$22

    jr nc, @+$32

    inc a
    inc l
    ld l, $32
    cpl
    ld sp, $3927
    rla
    jr @+$15

    inc e
    ld h, c
    and e
    sub c

jr_021_5145:
    dec c
    inc e
    inc d
    inc l
    inc [hl]
    ld e, h
    ld h, h
    sbc b
    add sp, -$48
    ret z

    add hl, bc
    ld c, $07
    ld b, $8b
    cp a
    ld bc, $f090
    adc l
    cp a
    rst $38
    nop
    nop
    ld h, a
    inc bc
    inc bc
    inc bc
    inc c
    rrca
    ld b, e
    ld de, $431e
    jr nz, jr_021_51a9

    inc bc
    jr c, jr_021_5194

    ccf
    jr nz, jr_021_51b3

    rra
    db $10
    res 2, b
    inc bc
    rlca
    rlca
    jr @+$21

    ld b, e
    inc hl
    inc a
    ld h, a
    inc bc
    add b
    add b
    ld h, b
    ldh [rSCX], a
    db $10
    ldh a, [rLYC]
    ld b, b
    ld a, a
    ld bc, $7e41
    ld b, e
    ccf
    jr nz, @-$3b

    and b
    rlca
    ld [$18f8], sp

jr_021_5194:
    add sp, $38
    ret z

    ld hl, sp+$08
    rst $00
    sbc b
    adc e
    rst $10
    ld bc, $1f18
    inc hl
    rlca
    ld bc, $1f1f
    ld [hl+], a
    ccf
    nop
    daa

jr_021_51a9:
    add a
    rst $18
    ld a, a
    rst $38
    nop
    dec b
    rlca
    rlca
    jr jr_021_51cb

jr_021_51b3:
    jr nz, @+$22

    inc hl
    ld b, b
    dec h
    add b
    add hl, bc
    ldh [$e0], a
    ld a, b
    jr @+$1e

    inc b
    ld c, $02
    ld b, $02
    ld b, l
    rlca
    ld bc, $8000
    ld b, h
    add b

jr_021_51cb:
    ret nz

    add hl, bc
    ld h, b
    ld b, b
    ld [hl], b
    ld b, b
    ccf
    jr nz, @+$21

    jr @+$09

    rlca
    ld b, e
    rlca
    ld bc, $0f04
    ld bc, $021e
    ld a, $a6
    adc a
    ld h, e
    inc bc
    inc bc
    inc bc
    inc c
    inc c
    inc hl
    db $10
    inc hl
    jr nz, @-$59

    adc a
    dec b
    ld [hl], b
    jr nc, jr_021_522a

    ld [$0818], sp
    ld b, e
    inc c
    inc b
    ld [$2020], sp
    jr nc, jr_021_521d

    jr jr_021_520f

    inc e
    db $10
    rrca
    add $a2
    ld b, $0c
    inc b
    inc e
    inc b
    jr jr_021_5213

    ld a, b
    xor b
    adc a
    inc bc

jr_021_520f:
    inc a
    inc a
    ld b, [hl]
    ld b, d

jr_021_5213:
    ld b, l
    add e
    add c
    ld c, $c7
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a

jr_021_521d:
    ld e, $1e
    ld h, c
    ld a, a
    sbc [hl]
    pop hl
    ld [hl], c
    add b
    ret nz

    ld h, [hl]
    ld b, $3f
    ccf

jr_021_522a:
    jp $3ffc


    ret nz

    ldh [rSVBK], a
    jp $2f00


    ld [bc], a
    ld h, e
    ld a, h
    sbc h
    add [hl]
    rst $38
    ld b, $c5
    add $3b
    db $fc
    jp nz, Jump_021_7c3c

    ld h, d
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
    ld h, e
    dec bc
    inc bc
    inc bc
    ccf
    ccf
    rra
    rra
    jr jr_021_5270

    rrca
    rrca
    ld [$6108], sp
    dec bc
    jr c, jr_021_5298

    ld hl, sp-$08
    add sp, -$18
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    daa
    ld [$3801], sp
    jr c, jr_021_5293

jr_021_5270:
    ld a, b
    inc bc
    jr nc, @+$32

    nop
    nop
    adc l
    adc l
    ld h, l
    inc bc
    ld [$1808], sp
    jr jr_021_52a2

    ld [$ad91], sp
    ld h, e
    inc bc
    jr nz, @+$22

    jr c, jr_021_52c0

    inc hl
    inc a
    ld bc, $3636
    dec h
    ld [de], a
    inc bc
    inc d
    inc d
    ld [hl], b

jr_021_5293:
    ld [hl], b
    inc hl
    ldh a, [rSB]
    ld h, b

jr_021_5298:
    ld h, b
    ld l, b
    ld a, [bc]
    ld bc, $0600
    nop
    adc h
    nop
    ret c

jr_021_52a2:
    nop
    ldh a, [rP1]
    ldh a, [rOCPS]
    add hl, bc
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    jr nz, jr_021_52b0

jr_021_52b0:
    add hl, sp
    nop
    ld b, e
    ccf
    nop
    dec bc
    scf
    nop
    ld [hl], c
    nop
    ldh a, [rP1]
    sub b
    nop
    ldh a, [rP1]

jr_021_52c0:
    ret nc

    nop
    ld b, a
    ret nz

    nop
    nop
    ld b, b
    ld h, d
    ld bc, $0006
    ld b, e
    ld e, $00
    inc b
    ld [hl-], a
    nop
    ld h, b
    nop
    add b
    ld l, b
    ld b, $08
    nop
    inc e
    nop
    rst $30
    nop
    inc bc
    and h
    sub c
    dec bc
    ld b, b
    nop
    ld b, c
    nop
    pop hl
    nop
    di
    nop
    cp [hl]
    nop
    sbc h
    nop
    ld b, e
    ld [$4300], sp
    add b
    nop
    ld a, [bc]
    ret z

    nop
    call c, $ff00
    nop
    ldh a, [rP1]
    ld h, b
    nop
    ld b, b
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
    ld c, a
    rst $38
    nop
    ld h, c
    inc c
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $65
    add hl, de
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    ld a, [bc]
    dec c
    dec d
    ld a, [de]
    rlca
    rlca
    jr c, jr_021_536a

    ret nz

    ret nz

jr_021_5334:
    add b
    nop
    pop bc
    nop
    rst $38
    nop
    xor [hl]
    ld d, c
    ld d, l
    xor d
    and e
    adc a
    dec bc
    rra
    inc bc
    dec a
    ld [bc], a
    ld a, [$d405]
    dec hl
    xor b
    ld d, a
    ld b, b
    cp a
    and a
    xor a
    dec d
    ld b, b
    ret nz

    jr nz, jr_021_5334

    db $10
    ldh a, [$08]
    ld hl, sp+$60
    ld a, a
    and b
    sbc a
    sub b
    cp a
    ld l, h
    ld e, a
    dec hl
    daa
    dec de
    jr jr_021_536c

    rlca
    ld h, c
    ld bc, $55aa

jr_021_536a:
    add l
    rst $20

jr_021_536c:
    add hl, bc
    ret nz

    rst $38

jr_021_536f:
    cp a
    ld a, a
    cp a
    add b
    ld a, a
    ld a, a
    nop
    rst $38
    xor l
    adc a
    xor a
    xor a
    rst $38
    nop
    nop
    rlca
    ld b, b
    ld b, b
    ld [c], a
    and d
    ld b, a
    ld b, l
    ld [bc], a
    ld [bc], a
    ld h, c
    dec bc
    db $10
    db $10
    jr c, jr_021_53b5

    db $10
    db $10
    ld b, b
    ld b, b
    and d
    ld [c], a
    ld b, l
    ld b, a
    add l
    adc a
    jp $ff8e


    nop
    nop
    nop
    nop
    add hl, bc
    rlca
    rlca
    jr jr_021_53c2

    daa
    jr c, jr_021_53fe

    ld h, b
    ld d, b
    ld h, b

jr_021_53a9:
    ld b, l
    and b
    ret nz

    inc b
    jr nz, jr_021_536f

    ld b, b
    add b
    add b
    ld h, d
    rlca
    ld a, b

jr_021_53b5:
    nop
    rst $00
    jr c, jr_021_53f1

    rst $38
    rst $00
    rst $00
    ld h, a
    rlca
    inc bc
    inc bc
    inc c
    rrca

jr_021_53c2:
    inc sp
    inc a
    rst $08
    ldh a, [$87]
    add a
    ld [$c03c], sp
    di
    nop
    rst $08
    nop
    inc a

jr_021_53d0:
    inc bc
    nop
    ld b, e
    jr nz, jr_021_53d5

jr_021_53d5:
    ld [de], a
    jr nc, jr_021_53e8

    add hl, hl
    add hl, de
    ld h, $3f
    ld b, b
    rra
    ldh [rTAC], a
    jr jr_021_53e2

jr_021_53e2:
    stop
    jr nc, jr_021_53e6

jr_021_53e6:
    ld h, b
    ld b, b

jr_021_53e8:
    and b
    ld b, e
    add b
    ld b, b
    dec b
    ret nz

    jr nz, jr_021_53d0

    rra

jr_021_53f1:
    inc bc
    inc b
    ld b, e

jr_021_53f4:
    ld bc, $0002
    nop
    ld c, b
    ld bc, $0500
    ld hl, sp+$06

jr_021_53fe:
    ldh a, [$08]
    ldh [rNR10], a
    ld b, l
    ret nz

    jr nz, jr_021_540b

    ldh [rNR10], a
    ldh a, [$08]
    nop

jr_021_540b:
    ld bc, $a9a6
    ld [bc], a
    ld [$1f00], sp
    ld h, e
    inc bc
    ld hl, sp+$06
    ldh [$1f], a
    and l
    or e
    dec b
    ret nz

    jr nz, jr_021_541e

jr_021_541e:
    ldh [rP1], a
    jr nc, jr_021_53a9

    db $fc
    rlca
    inc c
    inc sp
    jr nc, jr_021_53f4

    ret nz

    jr nc, jr_021_542b

jr_021_542b:
    ret nz

    rst $38
    nop
    ld h, d
    add hl, bc
    stop
    db $10
    db $10
    jr z, jr_021_546e

    add $10
    jr z, jr_021_543a

jr_021_543a:
    push bc
    add a
    ld h, c
    dec b
    db $10
    stop
    jr c, jr_021_5487

    db $10
    add e
    sbc c
    nop
    nop
    ld c, a
    ccf
    ret nz

    ld c, a
    rst $38
    nop
    ld c, a
    inc bc
    inc c
    ld c, a
    ld h, b
    ld b, $00
    nop
    ld b, h
    ld bc, $4300
    ld bc, $0502
    inc bc
    inc b
    rlca
    jr jr_021_5481

    ldh [$62], a
    ld [$0060], sp
    ld [hl], b
    nop
    inc a
    inc c
    inc de
    rrca
    db $10

jr_021_546e:
    ld b, e
    rlca
    ld [$0000], sp
    ld c, [hl]
    inc h
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld d, $01

jr_021_5481:
    ld bc, $0706
    ld [$130f], sp

jr_021_5487:
    inc e
    ld h, $38
    inc l
    jr nc, jr_021_54d5

    ld [hl], b
    inc a
    inc a
    jp $18ff


    rst $20
    rst $38
    nop
    add c
    ld h, [hl]
    dec b
    ld e, b
    ld h, b
    ld d, b
    ld h, b
    sub b
    ldh [rSCX], a
    or b
    ret nz

    dec b
    sub b
    ldh [$50], a
    ld h, b
    ld e, b
    ld h, b
    ld l, a
    ld [$0707], sp
    jr jr_021_54ce

    inc hl
    inc a
    ld c, [hl]
    ld [hl], b
    ld e, b
    add h
    and l
    ld bc, $c0a0
    ld h, e
    ld de, $0303
    inc c
    rrca
    ld de, $171e
    jr jr_021_54e8

    jr c, jr_021_54f2

    jr nc, @+$3e

    inc a
    ld b, d
    ld a, [hl]
    sbc c
    rst $20
    ld b, e

jr_021_54ce:
    and l
    jp $9905


    rst $20
    ld b, d
    ld a, [hl]

jr_021_54d5:
    inc a
    inc a
    ld h, c
    inc bc
    jr jr_021_54f3

    inc h
    inc a
    ld b, e
    ld e, d
    ld h, [hl]
    inc bc
    inc h
    inc a
    jr jr_021_54fd

    ld h, l
    add e
    sub c

jr_021_54e8:
    add a
    adc l
    rst $38
    nop
    nop
    nop
    ld h, c
    ldh [$2b], a
    ld [hl], b

jr_021_54f2:
    ld [hl], b

jr_021_54f3:
    cp $06
    ld [bc], a
    db $fc
    ld bc, $c103
    db $fd
    ld a, [hl]
    add d

jr_021_54fd:
    sbc h
    ld a, b
    nop
    ld a, b
    ld a, h
    nop
    cp $fe
    nop
    pop hl
    jr c, jr_021_550f

    ld a, b
    ld hl, sp+$00
    ld a, h
    ld a, $3c

jr_021_550f:
    ld a, [c]
    ld [$6684], a
    jr @+$1c

    call c, $f0e4
    ld [$1010], sp
    ret nz

    ldh [$66], a

jr_021_551e:
    inc bc
    rra
    nop
    jr nz, jr_021_5542

    ret


    add c
    ld h, c
    nop
    rst $38
    add a
    add d
    jp $059d


    ld h, b
    ld e, $1e
    ld bc, $0003
    and e
    xor d
    ld bc, $0003
    and [hl]
    or b
    ld b, $c0
    ret nz

    jr nc, @-$0e

    ld [$04f8], sp

jr_021_5542:
    ld b, e
    db $fc
    ld [bc], a
    ld l, c
    dec b
    rlca
    nop
    cp $01
    nop
    cp $a6
    and b

jr_021_554f:
    ld b, $00
    ccf
    nop
    db $fc
    inc bc
    nop
    db $fc
    add l
    adc c
    dec b
    rra
    nop
    cp $01
    ldh [rNR34], a

jr_021_5560:
    and l
    cp h
    rlca
    ld hl, sp+$04
    ldh a, [$08]
    ret nz

    jr nc, jr_021_556a

jr_021_556a:
    ret nz

    ld l, [hl]
    ld [$4040], sp
    and b
    jr nz, jr_021_55c2

    db $10
    inc l
    inc c
    inc de
    ld l, a
    rlca
    rlca
    ld [$0403], sp
    ld bc, $0002
    ld bc, $90a9
    add hl, bc
    ldh [rNR32], a
    call c, $fc22
    ld [bc], a
    jr c, jr_021_554f

    nop
    jr c, jr_021_551e

    cp a
    nop
    dec l
    adc d
    cp a
    ld [bc], a
    ld a, h
    ld a, h
    add d
    ld b, e
    cp $01
    ld bc, $0906
    adc l
    cp a
    dec b
    xor $11
    ld e, $e1
    cp $01
    adc c
    cp a
    rst $38
    nop
    nop

jr_021_55ab:
    nop
    nop
    nop
    ld bc, $0300
    ld l, b
    ld [bc], a
    ld bc, $0e00
    ld h, d
    ld [bc], a
    ldh [rP1], a
    jr c, jr_021_5560

    add c
    nop
    ld [hl], b
    and l
    sbc c
    adc e

jr_021_55c2:
    sbc a
    rlca
    ld bc, $000e
    ld a, a
    nop
    ld hl, sp+$38
    ld b, [hl]
    ld b, e
    ld e, $21
    rlca
    inc a
    ld b, d
    ld [hl], b
    adc h
    add b
    ld [hl], b
    nop
    add b
    and e
    or c
    rlca
    rlca
    jr jr_021_55f6

    daa
    nop
    ld a, b
    nop
    ret nz

    add h
    adc l
    ld c, $f0
    ldh a, [$0c]
    db $fc
    ld [bc], a
    inc e
    ld [c], a
    ld b, $19
    ld [bc], a
    dec b
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld l, e

jr_021_55f6:
    ldh [$27], a
    ld hl, $3321
    ld [hl-], a
    rlca
    rlca
    rrca
    add hl, bc
    dec e
    inc de
    ld a, [hl-]
    ld h, $74
    ld c, h
    add sp, -$68
    ret nc

    jr nc, jr_021_55ab

    ld h, b
    rra
    inc e
    ld c, $0d
    rla
    rra
    cpl
    ccf
    ld e, l
    ld a, l
    cp b
    ld hl, sp+$70
    ld [hl], b
    jr nz, @+$22

    ld b, b
    ret nz

    add b
    add b
    and l
    db $ec
    nop
    ret nz

    add h
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $3e
    ld b, b
    ld a, [hl]
    inc a
    call c, $c3bc
    ld b, a
    ld a, b
    jr nc, jr_021_567a

    ld bc, $6707
    ld [bc], a
    cp $ff
    rst $38
    ld h, c
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld h, l
    add hl, bc
    rra
    ld a, a
    ld a, a
    add b
    ret nz

    ccf
    rrca
    rst $38
    nop
    ret nz

    ld h, e
    add hl, bc
    inc bc
    rrca
    adc a
    ldh a, [$f8]
    rlca
    inc bc
    rst $38
    ret nz

    ld hl, sp+$63
    add hl, bc
    ld c, $1f
    sbc a
    ldh [$f0], a
    rrca
    rlca
    rst $38
    ldh [$f0], a

jr_021_566b:
    and [hl]
    xor e
    ld b, $07
    add c
    ld a, a
    jr nc, jr_021_566b

    nop
    add b
    ld h, a
    inc bc
    jr nz, @-$1e

    nop

jr_021_567a:
    add b
    ld [hl], a
    ld e, $06
    rrca
    ld l, a
    ldh a, [rNR23]
    inc e
    ld b, $1a
    inc b

jr_021_5686:
    dec bc
    dec c
    inc de
    jr c, jr_021_56b1

    ld [hl], d
    adc $e4
    inc e
    adc b
    ld a, b
    ld bc, $0403
    rlca
    inc bc

jr_021_5696:
    dec c
    dec bc
    inc c
    inc b
    rlca
    ld [bc], a
    and l
    db $ed
    ld b, $c0
    nop
    ret nz

    add b
    add b
    sbc a
    ld a, a
    add e
    nop
    jr jr_021_56aa

jr_021_56aa:
    ccf
    add [hl]
    nop
    dec e
    add hl, bc
    rrca
    rra

jr_021_56b1:
    sbc a
    ldh [$e0], a
    rra
    rlca
    rst $38
    ret nz

    ldh [$91], a
    nop
    ld l, $08
    rra
    inc a

jr_021_56bf:
    ld a, $c1
    ldh [$1f], a
    inc c
    cp $c0
    and [hl]
    nop
    dec c
    dec b
    pop hl
    rra
    ld [$c0fc], sp
    ldh [$ec], a
    ld hl, $0117
    ld bc, $0603
    rla
    jr c, jr_021_5696

    jp $c0c0


    jr nz, jr_021_56bf

    nop
    ld [hl], b
    ld d, b
    or b
    ret nz

    jr nz, jr_021_5686

    ld h, b
    nop
    ret nz

    ld b, b
    ret nz

    rst $38
    nop
    nop
    ld h, c
    dec b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$1f43], sp
    db $10
    ld b, e
    ccf
    jr nz, jr_021_5744

    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, jr_021_5706

    rra
    jr jr_021_570d

jr_021_5706:
    rlca
    ld h, c
    ld bc, $1f1f
    adc c
    sub l

jr_021_570d:
    ld bc, $407f
    ld h, e
    inc bc
    ldh [$e0], a
    ld hl, sp+$18
    and l
    sub e
    ld bc, $01ff
    ld b, l
    ccf
    jr nz, jr_021_5762

    rra
    db $10
    inc b
    rrca
    ld [$0607], sp
    ld bc, HeaderNewLicenseeCode
    rst $38
    and l
    cp a
    dec b
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    ld h, e
    dec b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    add l
    push bc
    ld h, c
    inc bc
    ldh a, [$f0]
    db $fc
    inc c
    add l

jr_021_5744:
    cp e
    ld b, e
    rst $38
    ld bc, $fd8c
    ld b, $35
    ld a, [hl+]
    ld a, [hl+]
    ld d, l
    ld d, l
    ld a, a
    ld l, d
    adc l
    rst $38
    add e
    cp a
    ld bc, $0e0d
    ld b, e
    ld [de], a
    inc e
    inc bc
    ld hl, $203e
    ccf
    push bc

jr_021_5762:
    nop
    rrca
    ret


    call z, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0201
    ld b, l
    ld [bc], a
    dec b
    ld b, l
    inc b
    ld a, [bc]
    ld l, h
    add d
    sbc e
    adc c
    sbc c
    ld b, l
    ld [$8a14], sp
    sbc e
    ld [bc], a
    ld b, $02
    dec c
    adc c
    sub a
    ld bc, $2810
    xor d
    sbc a
    inc b
    ld bc, $0601
    ld b, $09
    adc l
    sbc c
    ld b, a
    jr nz, jr_021_57e9

    adc e
    sbc e
    adc e
    sub a
    ld b, a
    ld b, b
    and b
    ld h, e
    add hl, bc
    inc bc
    inc bc
    rrca
    inc c
    rra
    inc de
    ld a, $25
    ld a, a
    ld c, c
    ld b, e
    ld sp, hl
    adc a
    add hl, bc
    ld a, c
    ld c, a
    inc a
    daa
    rra
    inc de
    rrca
    inc c
    inc bc
    inc bc
    ld h, e
    adc b
    sbc a
    ld c, $10
    ccf
    jr nz, @+$81

    ld b, b
    rst $38
    ret nz

    rst $38
    cp b
    ld a, a
    ld b, a
    ccf
    jr nz, jr_021_57eb

    db $10
    add a
    sbc a
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
    ld l, d
    inc b
    inc bc
    inc bc
    inc b

jr_021_57e3:
    rlca
    ld [$1468], sp
    ldh [$e0], a

jr_021_57e9:
    jr jr_021_57e3

jr_021_57eb:
    inc b
    db $fc
    ld [bc], a
    rrca
    db $10
    ld c, $11
    dec e
    ld [hl+], a
    ld d, $29
    jr z, jr_021_584f

    nop
    ld a, b
    nop
    ld d, b
    ld h, c
    add hl, bc
    call nc, $a82a
    ld d, h
    ld d, h
    xor d
    ld [$00f6], sp
    inc e
    ld l, [hl]
    and e
    xor a
    ld [bc], a
    ld h, b
    ld a, a
    add b
    add h
    rst $00
    ld [bc], a
    inc c
    rrca
    db $10
    and e
    cp e
    inc bc
    ld a, a
    add b
    ld a, a
    add b
    ld h, c
    adc a
    pop hl
    add e
    sbc e
    add e
    sbc l
    add l
    sbc a
    adc l
    sbc c
    adc c
    sbc e
    add l
    sbc l
    ld bc, $807f
    add l
    sbc c
    add a
    sbc e
    adc a
    sbc l
    ld bc, $807f
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld bc, $2018
    ld h, c
    ld bc, $073c
    ld l, [hl]
    nop
    rst $38
    ld l, l
    ld bc, $c07f
    ld l, d
    nop

jr_021_584f:
    rrca
    ld h, c
    nop
    ld hl, sp+$6a
    ld bc, $f01f
    call $0082
    add b
    db $ec
    add hl, hl
    nop
    ld c, $a3
    xor e
    dec b
    inc c
    inc b
    nop
    inc c
    nop
    jr jr_021_58ca

    ld [bc], a
    jr nc, jr_021_586c

jr_021_586c:
    ldh [$85], a
    cp e
    dec b
    db $10
    dec bc
    db $10
    inc b
    jr nz, jr_021_5876

jr_021_5876:
    adc c
    pop af
    db $10
    ld bc, $0200
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_021_5885

jr_021_5885:
    add b
    nop
    rst $38
    nop
    ld b, b
    and h
    adc a
    dec c
    nop
    ccf
    nop
    ld d, b
    nop
    sub b
    ret nz

    ld bc, $0270
    ld c, b
    inc b
    ld b, b
    rlca
    ld b, a
    ld b, b
    inc b
    rrca
    nop
    ld [$000f], sp
    inc d
    nop
    inc h
    nop
    ld b, d
    add b
    ld [hl], d
    nop
    ld c, l
    nop
    ld b, d
    nop
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
    ld h, e
    dec bc
    ld [bc], a

jr_021_58c1:
    ld [bc], a
    dec d
    dec d
    xor d
    xor d
    dec b
    dec b
    ld a, [hl+]
    ld a, [hl+]

jr_021_58ca:
    ld bc, $6101
    dec b
    dec b
    dec b
    adc d
    adc d
    ld d, l
    ld d, l
    and l
    add c
    dec b
    ld b, c
    ld b, c
    xor b
    xor b
    ld d, l
    ld d, l
    xor c
    add c
    ld bc, $5454
    and e
    xor l
    ld bc, $8080
    jp $0386


    ld d, h
    ld d, h
    and b
    and b
    ld l, c
    dec b
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    jr nz, jr_021_5916

    ld h, l
    ld bc, $0202
    add l
    xor a
    and a
    sbc c
    add a
    cp a
    ld bc, $0808
    ld h, l
    add a
    cp a
    ld h, a
    ld a, [bc]
    ld [bc], a
    nop
    dec d
    nop
    xor d
    nop
    dec b
    nop
    ld a, [hl+]
    nop
    ld bc, $0462
    dec b

jr_021_5916:
    nop
    adc d
    nop
    ld d, l
    and [hl]
    add c
    inc b
    ld b, c
    nop
    xor b
    nop
    ld d, l
    xor d
    add c
    nop
    ld d, h
    and h
    xor l
    nop
    add b
    call nz, $0185
    ld d, h
    nop
    adc d
    cp $05
    nop
    ld a, [bc]
    nop
    dec b
    nop
    jr nz, jr_021_58c1

    rst $08
    add e
    xor a
    nop
    ld d, l
    xor b
    sbc c
    add a
    cp a
    add [hl]
    cp $88
    cp a
    ld h, e
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, c
    dec b
    ld bc, $0c03
    inc e
    jr nz, @+$22

    add l
    adc d
    ldh [$3d], a
    ld b, $0e
    jr nc, jr_021_59ce

    add e
    add b
    rra
    nop

jr_021_5962:
    ld a, h
    inc bc
    inc bc
    rlca
    rra
    add hl, sp
    ret


    rst $00
    ld [hl], $0e
    db $ec
    inc e
    sbc b
    ld a, b
    jr nc, jr_021_5962

    ld h, b
    ldh [rNR42], a
    jr nz, jr_021_598a

    jr nz, jr_021_5980

    jr c, jr_021_598a

    jr nc, jr_021_599b

    ld hl, $0007

jr_021_5980:
    ld b, $01

jr_021_5982:
    ld bc, $f802
    rlca
    pop hl
    rra

jr_021_5988:
    add e
    ld a, a

jr_021_598a:
    ld b, $fe
    inc c
    db $fc
    jr jr_021_5988

    jr nc, jr_021_5982

    ldh [$60], a
    ret nz

    ret nz

    add b
    add b
    ld l, l
    dec bc
    inc bc

jr_021_599b:
    inc bc
    ld c, $0d
    inc a
    ld [hl-], a
    ldh a, [$cc]
    ld b, b
    ld a, b
    jr nz, @+$32

    ld h, c
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld [bc], a
    ld bc, $0100
    ld b, e
    ld bc, $0502
    nop
    ld bc, $1800
    jr jr_021_5a21

    ld h, d
    ld [bc], a
    ld b, b
    nop
    ret nz

    ld b, e
    ret nz

    jr nz, jr_021_59d1

    add b
    ld b, b
    nop
    adc h
    inc c
    inc de
    inc e
    ld [hl+], a

jr_021_59ce:
    jr jr_021_5a34

    nop

jr_021_59d1:
    jr @-$76

    and c
    ld [$1c01], sp
    ld [hl+], a
    inc c
    inc de
    nop
    adc h
    add b
    ld b, b
    ld b, e
    ret nz

    jr nz, jr_021_59e2

jr_021_59e2:
    nop
    push bc
    and a
    ld h, c
    ld a, [bc]
    stop
    inc e
    jr @+$66

    inc e
    ld [hl+], a
    inc c
    ld [hl-], a
    nop
    ld c, $b4
    adc a
    ld [bc], a
    ld c, $0c
    ld [hl-], a
    add h
    rst $00
    jp nz, $afa5

    adc a
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
    ld bc, $0c0c
    ld b, l
    ld e, $12
    rlca
    rra
    inc de
    rra
    db $10
    ccf
    jr nc, jr_021_5a9b

    ld d, b

jr_021_5a1d:
    ld h, a
    rlca
    add b
    add b

jr_021_5a21:
    ldh [$60], a
    ld hl, sp+$18
    db $fc
    inc b
    ld b, e
    ld a, a
    ld b, b
    dec b
    ccf
    jr nz, @+$21

    db $10
    rrca
    ld [$1f22], sp
    ld [bc], a

jr_021_5a34:
    db $10
    rra
    rra
    ld b, e
    db $fc
    inc b
    ld bc, $08f8
    xor c
    adc a
    ld l, e
    inc de
    ld bc, $0301
    ld [bc], a
    inc e
    inc e
    inc a
    inc h
    dec sp
    daa
    ccf
    ld hl, $417f
    cp $8e
    ldh a, [rNR10]
    ldh [rNR41], a
    ld h, l
    dec b
    inc bc
    inc bc
    rst $08
    call z, $b0ff
    ld b, e
    rst $18
    and b
    rlca
    inc c
    inc c
    inc a
    inc [hl]
    cp $c2
    cp $02
    ld b, a
    rst $38
    ld bc, $df07
    and b
    jp z, $f5b5

    cp d
    adc $cd
    rst $00
    and b
    inc de
    rst $38
    ld bc, $55ab
    ld d, l
    xor e
    xor e
    ld d, l
    ld d, [hl]
    xor d
    ld [$3cd6], a
    inc [hl]
    inc c
    inc c
    jr c, @+$3a

    ld a, h
    ld b, h
    ld b, a
    cp $82
    ld bc, $447c
    ld d, b
    jr c, jr_021_5abd

    nop
    jr c, jr_021_5a1d

    push af
    ld b, a
    rlca

jr_021_5a9b:
    inc b
    dec b
    rrca
    dec bc
    ldh [$e0], a
    ldh a, [rNR10]
    ld b, l
    ld hl, sp+$08
    add e
    db $fd
    inc bc
    ret nz

    ret nz

    inc e
    inc d
    adc l
    xor a
    ld [hl], c
    ld [$0f0f], sp
    ld [$0408], sp
    inc b
    ld [$1008], sp
    ld d, d
    db $10
    rra

jr_021_5abd:
    jp $089a


    ld bc, $0a00
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    ld d, l
    add h
    add e
    ld h, e
    nop
    and b
    and [hl]
    sub c
    and h
    sub l
    call $d091
    adc l
    dec h
    ld [$1807], sp
    jr jr_021_5af8

    inc e
    ld a, $3e
    ld h, e
    ld h, e
    jp $1900


    daa
    ld [bc], a
    inc bc
    ld b, $06
    ld a, h
    ld a, h
    and [hl]
    nop
    inc d
    nop
    rlca
    and e
    nop
    inc e
    ld bc, $203f
    ld b, e
    ld a, a

jr_021_5af8:
    ld b, b
    rlca
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [$a0], a
    ldh [$60], a
    add l
    nop
    jp nc, $fc05

    inc b
    rst $38
    add b
    rst $38
    cp h
    ld [hl+], a
    rst $38
    ld [$7ffc], sp
    ld a, b
    ccf
    jr c, jr_021_5b24

    inc c
    inc bc
    inc bc
    ld b, l
    db $fc
    inc b
    ld bc, $c8f8
    ld b, e
    ld hl, sp+$68
    inc bc
    ldh a, [$f0]

jr_021_5b24:
    ret nz

    ret nz

    adc e
    nop
    ld b, h
    inc bc
    rlca
    inc b
    rrca
    ld [$00a5], sp
    and b
    inc bc
    rst $38
    add c
    rst $38
    ld bc, $00a5
    ld [hl+], a
    and e
    jp Jump_021_7f0b


    ld b, b
    rst $38
    ldh [$9f], a
    pop af
    adc [hl]
    ld a, [$7c4c]
    jr c, jr_021_5b80

    add h
    nop
    jp c, $4002

    add b
    add b
    ld l, e
    ld [hl+], a
    ccf
    ld [bc], a
    jr nz, jr_021_5b94

    cpl
    ld b, l
    jr c, jr_021_5b81

    add h
    nop
    adc h
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    add $00
    sub b
    ld c, a
    jr c, jr_021_5b8f

    ld [de], a
    nop
    ld bc, $0700
    ld bc, $010a
    ld [hl+], a
    ld bc, $0162
    ld b, d
    inc bc
    db $fc
    ccf
    ret nz

    inc bc
    db $fc
    ld bc, $87c6
    inc bc
    nop
    rlca

jr_021_5b80:
    nop

jr_021_5b81:
    ld bc, $008f
    ld b, b
    and l
    nop
    ld e, [hl]
    inc de
    rlca
    rlca
    ccf
    jr c, @+$01

    rst $00

jr_021_5b8f:
    ld hl, sp+$18
    ldh [$60], a
    add b

jr_021_5b94:
    add b
    rrca
    add hl, bc
    ld c, $0a
    ld e, $12
    inc e
    inc d
    add a
    nop
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
    nop
    nop
    nop
    nop
    ld h, l
    add hl, bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld h, l
    add hl, bc
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    ld l, l
    ld bc, $e0e0
    and e
    sbc e
    inc hl
    inc bc
    inc hl
    rlca
    inc hl
    rrca
    ccf
    rst $38
    and e
    xor l
    xor c
    db $dd
    ld bc, $ffff
    adc e
    cp e
    inc hl
    rra
    add e
    sub l
    add e
    sub a
    rlca
    rst $38
    rst $38
    rst $30
    rst $30
    di
    di
    db $e3
    db $e3
    inc hl
    rra
    inc b
    ccf
    ld a, $fe
    db $fd
    db $fd
    jr z, @+$01

    rlca
    rst $00
    add a
    add c
    ld bc, $e464
    or $f6
    inc hl
    rst $38
    and e
    sub [hl]
    add e
    xor l
    dec bc
    rst $30
    rst $30
    ld a, e
    ld a, e
    dec a
    dec a
    sbc [hl]
    sbc [hl]
    rst $08
    rst $08
    rst $28
    rst $28
    add e
    adc e
    add hl, bc
    cp l
    cp l
    sbc $de
    db $ec
    db $ec
    ldh a, [$f0]
    ld h, b
    ld h, b
    add a
    rst $28
    ld bc, $c0c0
    ld l, a
    inc h
    ld bc, $0002
    ccf
    ccf
    and h
    pop af
    ld a, [bc]
    ld a, [hl]
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    rra
    rst $38
    rst $38
    rst $20
    rst $20
    ld [hl+], a
    rst $28
    dec b
    sbc a
    rst $28
    ld a, a
    rst $28
    rst $38
    rst $28
    ld b, e
    rst $38
    rst $30
    ld h, $ff
    ld bc, $fefe
    dec h
    db $fc
    ld bc, $f8f8
    daa
    rra
    ld bc, $0f0f
    and l
    db $d3
    inc hl
    ldh [$a9], a
    nop
    ld [hl], h
    ld bc, $7c7c
    adc c
    db $dd
    push bc
    nop
    rrca
    add l
    adc e
    ld bc, $1f1f
    dec h
    rst $38
    ld de, $fcfc
    inc bc
    rlca
    dec sp
    ccf
    ei
    rst $38
    ei
    db $fc
    rst $30
    di
    push bc
    push bc
    dec b
    dec b
    ld bc, $2201
    rst $38
    dec b
    ld hl, sp-$01
    rst $00
    rst $38
    ccf
    rst $38
    ret


    db $e3
    nop
    rrca
    add e
    nop
    adc d
    ld bc, $f3f3
    inc hl
    ld sp, hl
    ld bc, $f8f8
    ret


    or $05
    db $e3
    db $e3
    ldh [$e0], a
    db $e3
    db $e3
    add l
    nop
    ld [bc], a
    dec bc
    adc a
    adc a
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    ld a, $3e
    or d
    or d
    ld e, $1e
    jp Jump_021_7500


    ld bc, $8181
    dec h
    ret nz

    ld bc, $4040
    add l
    nop
    ld [de], a
    rlca
    ret nz

    ret nz

    ld h, b
    ld h, b
    jr nc, @+$32

    jr jr_021_5cdd

    ld h, c
    jp Jump_021_7900


    xor e
    nop
    ret c

    adc a
    nop
    sub $01
    rst $38
    rst $38
    inc hl
    db $dd
    inc bc
    ld e, l
    ld e, l
    dec c
    dec c
    push bc
    ld bc, $c555

jr_021_5cdd:
    ld bc, $231f
    call c, $de11
    sbc $ce
    adc $0e
    ld c, $77
    ld [hl], a
    inc a
    inc a
    ld e, $1e
    rra
    rra
    add hl, sp
    add hl, sp
    ld sp, $2331
    inc h
    add hl, bc
    ld [c], a
    ld [c], a
    add sp, -$18
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    jr nc, jr_021_5d31

    ld h, l
    inc bc
    inc a
    inc a
    jr jr_021_5d1f

    ld l, e
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld h, l
    ldh [$29], a
    ld [bc], a
    ld bc, $0403
    ld b, $09
    jr jr_021_5d20

    ld [$0a17], sp
    dec b
    cpl
    db $10

jr_021_5d1f:
    cp b

jr_021_5d20:
    ld b, a
    ldh [$1f], a
    add d
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    and b
    ld d, b
    ldh a, [$0c]
    ld a, c
    add a

jr_021_5d31:
    ld a, $c3
    ld e, $e1
    rra
    ldh [$7f], a
    add b
    ccf
    ret nz

    ld h, l
    ldh [$33], a
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld a, b
    add sp, $18
    db $10
    cpl
    nop
    ccf
    nop
    ld a, a
    ld [$407f], sp
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    ld bc, $09fe
    cp $01
    cp $23
    db $fc
    ld b, a
    db $fc
    add e
    db $fc
    cp a
    ld b, b
    rst $08
    jr nc, @+$01

    nop
    rst $18
    jr nz, @-$5f

    ld h, b
    ld b, e
    ld a, a
    add b
    inc d
    rst $38
    nop
    db $e4
    inc e
    ldh a, [$0c]
    or $0e
    ld a, [$fd06]
    rlca
    ei
    rlca
    cp l
    ld b, e
    db $fd
    inc bc
    ld d, c
    rst $38
    and b
    jp $14b5


    rst $30
    ld d, [hl]
    ld a, c
    cpl

jr_021_5d92:
    ld a, b
    inc de
    inc a
    dec hl
    inc a
    ld bc, $2bfe
    cp $35
    adc $b1
    adc $7b
    add h
    ld a, [hl]
    add c
    ld c, e
    rst $38
    nop
    and e
    ei
    dec b
    jr jr_021_5d92

    add sp, $17
    ld a, l
    add e
    ld b, e
    db $fd
    inc bc
    ld [de], a
    ei
    rlca
    ld a, $c6
    ld a, [hl-]
    add $14
    db $ec
    inc e
    db $ec
    inc de
    inc e
    rrca
    jr jr_021_5dc9

    ld [$0603], sp
    ld bc, $00a5
    cpl

jr_021_5dc9:
    xor d
    xor a
    ld a, [bc]
    cp a
    ldh [rNR24], a
    ld a, $05
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
    add e
    nop
    inc e
    rrca
    inc bc
    di
    rrca
    db $fc
    inc c
    ld d, b
    ldh a, [$78]
    adc b
    ld hl, sp+$38
    ldh a, [rSVBK]
    ldh [$e0], a
    ret nz

    add [hl]
    nop
    cpl
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
    ld h, h
    ld c, e
    ccf
    nop
    ld h, e
    ld c, d
    rst $38
    nop
    or b
    sbc a
    ld c, a
    ccf
    nop
    ld c, [hl]
    rst $38
    nop
    or b
    sbc a
    ld h, e
    nop
    inc bc
    adc h
    rst $18
    nop
    rra
    adc l
    rst $18
    ld [bc], a
    ret nz

    nop
    ldh a, [$89]
    xor [hl]
    nop
    nop
    sbc a
    rst $18
    sub d
    sbc $ac
    ret nz

    xor [hl]
    sbc $a5
    cp $9a
    rst $18
    sbc [hl]
    nop
    ld b, c
    ldh a, [$64]
    nop
    nop
    add hl, bc
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    rra
    add h
    nop
    ld l, [hl]
    nop
    ld a, [hl]
    sub b
    nop
    db $d3
    xor e
    sbc a
    ld bc, $003f
    ld c, d
    ld a, a
    nop
    sub h
    nop
    ld a, $ac
    sbc a
    or b
    cp a
    ld b, $00
    ld b, $78
    inc bc
    db $fc
    ld bc, $8bfe
    rst $18
    add a
    sbc $03
    ld a, b
    add b
    ld a, h
    add b
    sbc a
    rst $18
    ld bc, $807c
    ld c, e
    ld a, $c0
    ld bc, $807c
    adc e
    rst $18
    inc bc
    ld bc, $011e
    ld a, $61
    dec b
    ld e, $60
    ccf
    ret nz

    ld a, a
    add b
    sub a
    ld bc, $0199
    ld bc, $4b3e
    inc bc
    ld a, h
    ld bc, $3e01
    ldh a, [rNR43]
    ld bc, $f0c1
    ld e, h
    ld bc, $ff84
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    dec bc
    rrca
    rrca
    rra
    db $10
    ccf
    jr nz, jr_021_5ee6

    jr z, jr_021_5f08

    ld l, c
    ccf
    jr nz, jr_021_5f12

    inc de
    add b
    add b
    ldh [$60], a
    ldh a, [$90]
    ld hl, sp+$18
    db $fc
    inc d
    ccf
    jr nz, jr_021_5efa

    ld hl, $101f
    rrca
    ld [$0707], sp
    and l
    sub a
    dec bc
    db $fc
    inc h
    ld hl, sp-$38
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    ld b, b
    ld b, b
    jp $9aa4


    cp a
    inc b
    db $10
    ld hl, sp-$38
    db $fc
    inc [hl]
    sub b
    cp a
    ld [bc], a
    inc d
    ld hl, sp-$18
    adc h
    cp a
    ld [$0e0e], sp

jr_021_5ee6:
    ld de, $100f
    rra
    ld h, a
    ld a, a
    adc [hl]
    ld b, e
    ld a, a
    sbc h
    ld bc, $403f
    xor [hl]
    adc a
    ld [de], a
    ld a, [c]
    ccf
    ld b, c
    ld a, a

jr_021_5efa:
    add c
    ld a, a
    add b
    ld a, a
    add c
    rra
    ld h, c
    rrca
    db $10
    ld c, $11
    nop
    ld c, $fc

jr_021_5f08:
    jp nz, $8fad

    dec b
    nop
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld a, [hl]
    add c

jr_021_5f12:
    ld b, e
    inc a
    ld b, d
    dec b
    ld a, [hl]
    add c
    ld h, [hl]
    sbc c
    nop
    ld h, [hl]
    ld h, h
    nop
    jr jr_021_5f63

    jr jr_021_5f46

    nop
    nop
    push bc
    add l
    inc b

jr_021_5f27:
    nop
    ld e, $1e
    rra
    rra
    add l
    db $fd
    ld bc, $0303
    and l
    nop
    inc a
    dec de
    ret nz

    ret nz

    ld hl, sp-$08
    cp $fe
    ld e, $1e
    ld a, b
    ld a, b
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    inc a
    inc a
    rlca

jr_021_5f46:
    rlca
    inc de
    inc de
    cp $fe
    ret z

    ret z

    ld h, b
    ld h, b
    ld a, $3e
    ld h, e
    rlca
    jr c, jr_021_5f8d

    inc c
    inc c
    db $10
    db $10
    inc a
    inc a
    ld h, l
    dec c
    ld [bc], a
    inc bc
    dec b
    ld b, $0a
    inc c

jr_021_5f63:
    inc d
    jr @+$2a

    jr nc, jr_021_5f7c

    jr jr_021_5f74

    inc c
    add l
    adc c
    dec b
    ld d, b
    ld h, b
    and b
    ret nz

    ld d, b
    ld h, b

jr_021_5f74:
    add e
    sub c
    add a
    adc l
    add a
    adc a
    add a
    nop

jr_021_5f7c:
    ld a, $07
    inc de
    inc e
    ld [de], a
    dec e
    ld h, $39
    inc h
    dec sp
    ld h, a
    rlca
    ret nz

    ret nz

    ld [hl], b
    or b
    ret c

jr_021_5f8d:
    jr z, jr_021_5f27

    ld l, b
    jp $01d2


    ccf
    inc hl
    add h
    nop
    ld h, h
    ld [bc], a
    inc b
    inc e
    dec de
    add l
    nop
    ld c, [hl]
    ld [hl+], a
    db $fc
    ld [bc], a
    inc b
    ld hl, sp+$18
    and l
    adc a
    ld bc, $407f
    ld b, l
    rst $38
    add b
    ld b, e
    ld a, a
    ld b, b
    inc bc
    ccf
    jr nc, jr_021_5fc3

    rrca
    xor a
    adc a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$3b], a
    nop
    inc bc
    inc bc

jr_021_5fc3:
    inc b

jr_021_5fc4:
    ld [bc], a
    dec b
    ld [$1c0f], sp
    inc de
    ccf
    jr nz, jr_021_604c

    ld b, b
    rst $38
    adc a
    ld b, b
    ret nz

    jr nc, jr_021_5fc4

    inc a
    call z, $c33f
    ld a, a
    add a
    ld sp, hl
    rra
    pop hl
    rst $38
    rlca
    ld sp, hl
    ldh a, [rIE]
    add b
    rst $38
    adc a
    ldh a, [rIE]
    add b
    ldh a, [$8f]
    add b
    rst $38
    adc a
    rst $38
    ldh a, [$f0]
    rra
    pop hl

jr_021_5ff2:
    ld sp, hl
    rlca
    pop hl
    rra
    ld b, $fe
    jr jr_021_5ff2

    ldh [$e0], a
    ld l, c
    add hl, bc
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    ld h, e
    ld [hl+], a
    db $fc
    inc b
    inc e
    db $fc
    inc c
    inc a
    call nz, $1c43
    db $e4
    inc b
    jr nz, jr_021_6056

    ld b, b
    ld a, a
    add b
    call nz, $0fd6
    ld de, $0a1f
    ld c, $04
    inc b
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld h, a
    inc bc
    jr nc, jr_021_6061

    ld a, b
    ld c, b
    ld b, e
    ld a, h
    ld b, h
    ld b, e
    ld a, [hl]
    ld b, d
    ld bc, $e2fe
    ld b, l
    rst $38
    sub c
    ld b, e
    cp $82
    dec b
    db $fc
    call nz, Call_021_447c
    jr c, jr_021_6081

    and a
    and h
    ld [bc], a

jr_021_604c:
    nop
    ld e, $00
    ld b, a
    ccf
    nop
    ld [$001f], sp
    rrca

jr_021_6056:
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $fd89
    ld b, e
    inc bc
    ld [bc], a

jr_021_6061:
    inc bc
    rlca
    inc b
    ld a, a
    ld a, b
    jp $01ea


    rra
    jr @+$45

    rrca
    ld [$1f05], sp
    ld de, $161e
    jr jr_021_608d

    ld l, a
    and l
    push af
    dec e
    ldh [$e0], a
    ldh a, [$90]
    ld a, b
    ld c, b
    ld h, h
    ld e, h

jr_021_6081:
    db $f4
    cp h
    call z, $034c
    ld [bc], a
    rlca
    dec b
    ld c, $0a
    inc e
    inc d

jr_021_608d:
    jr c, jr_021_60b7

    ld [hl], b
    ld d, b
    ld h, b
    ld h, b
    nop
    nop
    add b
    add b
    ld l, l
    rst $38
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    ld c, c
    rst $38
    nop
    and l
    adc a
    ld d, e
    rst $38
    nop
    call nz, $b0a5
    adc a
    ld h, d
    and h
    or e
    ld b, [hl]
    ccf
    nop

jr_021_60b7:
    or b
    adc a
    adc $91
    or b
    adc a
    ld [bc], a
    jr jr_021_60c0

jr_021_60c0:
    ld a, [hl]
    adc b
    pop de
    jp $0e89


    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0090
    add hl, de
    ld h, e
    ld c, c
    ld bc, $0000
    rlca
    ld l, d
    inc b
    add b
    nop
    add b
    nop
    db $fc
    db $ec
    inc a
    ld [bc], a
    ld bc, $0200
    adc b

jr_021_60ec:
    rst $10
    inc b
    add hl, sp
    nop
    ld b, c
    nop
    add c
    ret z

    adc a
    ld [bc], a
    ldh [rP1], a
    inc e
    add h
    sbc e
    dec b
    add b
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld b, l
    ld [$4300], sp
    stop
    nop
    ld de, $008a
    or e
    jp $9c00


    nop
    rst $38
    xor [hl]
    sbc a
    nop
    rst $38
    sub b
    rst $18
    ld b, a
    stop
    ld [$003c], sp
    db $d3
    nop
    stop
    jr jr_021_6124

jr_021_6124:
    inc b
    add h
    rst $08
    ld [bc], a
    add hl, bc
    nop
    rst $38
    ret z

    add e
    dec b
    jr jr_021_6130

jr_021_6130:
    inc a
    nop
    rst $38
    nop
    rst $00
    add c
    add l
    reti


    ld bc, $000d
    ld b, e
    ld de, $0200
    ld hl, $2700
    add [hl]
    nop
    ld c, a
    nop
    jr nc, jr_021_60ec

    ei
    inc b
    add h
    nop
    rst $38
    nop
    add b
    add [hl]
    pop af
    ld [bc], a
    inc c
    nop
    ld c, $83
    nop
    sbc c
    or b
    adc a
    adc $91
    xor e
    adc a
    call nc, $0f01
    ld b, a
    ld bc, $d500
    add c
    nop
    add b
    sbc d
    xor l
    ld [bc], a
    inc bc
    nop
    rlca
    adc [hl]
    ld bc, $c35d
    adc e
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
    ld h, a
    inc hl
    ld bc, $0343
    ld [bc], a
    ld h, c
    dec c
    rra
    rra
    ld a, a
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld [$0c61], sp
    ldh a, [$f0]

Jump_021_6198:
    db $fc
    inc c
    cp $02
    rst $38
    rrca
    rst $38
    sub c
    rst $38
    ld b, b
    rst $38
    ld l, h
    inc hl
    add b
    ld b, e
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    rrca
    ld [$1f43], sp
    db $10
    inc bc
    rrca
    ld [$161f], sp
    ld b, [hl]
    rst $38
    ld [$8b02], sp
    rst $38
    ld [$ff44], sp
    db $10
    ld b, $20
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    adc h
    ld b, h
    rst $38
    nop
    ld a, [bc]
    ld c, c
    rst $38
    ld sp, $03ff
    add b
    add b
    ret nz

    ret nz

    ldh [$a0], a
    ld b, h
    ldh a, [$90]
    inc c
    db $10
    ldh [rNR41], a
    ret nz

    ret nz

    ccf
    ld hl, $203f
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld b, h
    ld a, a
    ld c, c
    ld e, $4b
    ld a, h
    ld b, h
    rst $38
    ret c

    rst $38
    db $10
    rst $38
    inc h
    rst $38
    inc hl
    rst $38
    ld b, b
    rst $38
    ret z

    ld a, a
    ld b, a
    ld a, a
    ld b, b
    db $fc
    inc c
    rst $38
    ld [hl], e
    rst $38
    nop
    rst $38
    ld [$89ff], sp
    cp $86
    ld b, e
    db $fc
    inc b
    ld bc, $0000
    and l
    nop
    ld a, [bc]
    rst $00
    ld a, [$3c03]
    inc h
    jr jr_021_6233

    ld l, e
    dec b
    ccf
    jr nz, jr_021_625f

    jr nc, jr_021_62a1

    ld b, e
    ld b, e
    ld a, h
    ld b, h
    add l
    sbc c
    and h
    nop
    ld c, d
    ld b, $c8

Jump_021_622d:
    db $fc
    add h
    ld a, h
    ld h, h
    jr jr_021_624b

jr_021_6233:
    ld [hl], l
    add hl, bc
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    inc sp
    inc sp
    and l
    db $d3
    dec b
    add e
    add e
    rst $28
    rst $28
    rst $38
    di
    daa
    rst $38
    add e

jr_021_624b:
    nop
    jr nz, jr_021_6251

    rst $38
    rst $20
    rst $38

jr_021_6251:
    sbc a
    inc h
    rst $38
    ld [bc], a
    cp $ff
    db $fd
    ld h, c
    ld bc, $e0e0
    and e
    xor l
    rlca

jr_021_625f:
    db $fc
    db $fc
    sbc $de
    adc $0e
    add $c6
    add hl, hl
    ld bc, $00c6
    inc [hl]
    ld b, e
    ld a, a
    rst $38
    inc b
    ccf
    rst $38
    inc e
    rst $38
    cp [hl]
    ld [hl+], a
    rst $38
    ld [bc], a
    cp a
    ld a, a
    ld c, b
    ld [hl+], a
    rst $38
    ld b, $cf
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    ld [hl+], a
    rst $38
    inc b
    rst $28
    rst $38
    adc a
    ret nz

    ret nz

    daa
    ldh [rNR43], a
    ret nz

    ld [bc], a
    ret nz

    add b
    add b
    adc c
    nop
    ld [bc], a
    add [hl]
    nop
    jp z, $2802

    ccf
    ccf
    inc h
    rst $38

jr_021_62a1:
    ld c, $df
    rst $38
    sbc $3f
    ld a, $3f
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $18
    add e
    cp a
    rlca
    cp $ee
    db $fc
    inc e
    add b
    add b
    jr nz, jr_021_62dc

    and e
    ld bc, $a504
    ld bc, $0106
    ld b, b
    ld b, b
    ld l, a
    add hl, bc
    rra
    rrca
    sbc a
    sub a
    cp a
    cp c
    cp $fe
    ld a, b
    ld a, b
    ld h, l
    inc hl
    cp $01
    rst $38
    rst $38
    inc hl
    rra
    inc bc
    ld a, [hl]
    ld a, [hl]

jr_021_62dc:
    inc a
    inc a
    ld [hl], l
    jp $c99c


    add b
    dec hl
    rst $38
    ld bc, $0000
    cpl
    rst $38
    rst $38
    nop
    nop
    nop
    ld h, e

jr_021_62ef:
    dec b
    ld bc, $0701
    rlca
    ld c, $0e
    inc hl
    jr @+$03

    ld sp, $6131
    dec b
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    add c
    add c
    ld h, c
    dec b
    inc a
    inc a
    cp $fe
    rst $00
    rst $00
    and a
    sbc a
    ld bc, $6060
    inc hl
    jr nc, jr_021_6318

    jr @+$1a

    inc sp
    inc sp
    ld h, e

jr_021_6318:
    ld h, e

jr_021_6319:
    daa
    ld h, [hl]
    jp $2388


    inc bc
    dec b
    rlca
    rlca
    ld e, $1e
    inc e
    inc e
    ld h, l
    daa
    jr jr_021_62ef

    xor d
    ld bc, $e3e3
    rst $08
    ret nc

    inc bc
    jp $ffc3


    rst $38
    set 3, b
    ld bc, $c3c3
    add e
    ei
    dec b
    inc a
    inc a
    ldh a, [$f0]
    ret nz

    ret nz

    ld l, c
    add e
    nop
    inc b
    ld bc, $1e1e
    add e
    push bc
    inc hl
    ld bc, $0361
    ldh a, [$f0]
    db $fc
    db $fc
    and e
    and c
    ld bc, $0101
    and e
    db $ed
    ld bc, $7070
    push bc
    call c, $8c23
    dec b
    ld sp, $6331
    ld h, e
    ld h, a
    ld h, a
    adc c
    nop
    ld [hl], $05
    ldh [$e0], a
    ldh a, [$f0]
    jr c, jr_021_63ab

    ret


    nop
    ld d, e
    xor a
    nop
    jr nc, jr_021_6319

    nop
    ld h, b
    xor a
    sbc a
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
    ld h, e
    dec b
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld b, e
    rra
    nop
    inc bc
    ccf
    nop
    inc a
    nop
    ld c, l
    rst $38
    nop
    xor a
    sbc a
    ld bc, $003f
    ld b, [hl]
    ld a, a
    nop
    nop
    nop

jr_021_63ab:
    ld d, l
    rst $38
    nop
    xor b
    sbc a
    or [hl]
    cp a
    ld bc, $0030
    ld c, h
    di
    nop
    sbc d
    rst $18
    nop
    ld a, a
    call nz, $4db5
    rst $30
    nop
    nop
    rra
    ldh a, [rNR43]
    rst $18
    ld c, e
    ldh a, [rP1]
    nop
    pop af
    ld h, [hl]
    ld [bc], a
    ld h, b
    nop
    ld [hl], b
    adc h
    rst $18
    inc b
    rra
    nop
    rlca
    nop
    ld bc, $97c6
    nop
    pop af
    add [hl]
    nop
    ld a, c
    ld [bc], a
    rst $30
    nop
    ld [hl], a
    sbc b
    rst $18
    ld b, e
    inc bc
    nop
    nop
    ld bc, $b183
    adc [hl]
    rst $18
    nop
    ldh a, [$ec]
    jr nz, @+$03

    ldh a, [rP1]
    ld b, e
    ld [hl], b
    nop
    ld b, e
    jr nc, jr_021_63fb

jr_021_63fb:
    inc b
    ld de, $1700
    nop
    rra
    and [hl]
    nop
    pop hl
    ld [bc], a
    ld e, $00
    ld a, [hl]
    add [hl]
    rst $18
    rst $38
    nop
    nop
    nop
    call Call_021_648e
    ld a, [$d84c]
    push af
    ld a, $01
    ld [$c2cd], a
    call $2ed3
    ld a, $01
    ld [$d4b5], a
    ld hl, $d84c
    set 6, [hl]
    ld a, $05
    ld hl, $4da0
    rst $08
    ld hl, $d95e
    ld a, [hl]
    cp $c8
    jr nc, jr_021_6436

    inc [hl]

jr_021_6436:
    ld a, $05
    ld hl, $4b85
    rst $08
    call Call_021_653f
    ld a, $05
    ld hl, $4b5f
    rst $08
    xor a
    ld [$c2cd], a
    call Call_021_64c3
    pop af
    ld b, a
    ld a, $42
    ld hl, $5847
    rst $08
    ret


    ld a, $00
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    ld a, $0a
    ld [$c2a7], a
    ld a, $23
    ld hl, $4084
    rst $08
    xor a
    ld [$d0ed], a
    ldh [$de], a
    ld a, $13
    ld hl, $68c2
    rst $08
    ld c, $08
    call $0468
    call $2ed3
    ld a, $02
    ld [$d4b5], a
    ld a, [$d84c]
    ld b, a
    ld a, $42
    ld hl, $5847
    rst $08
    ret


Call_021_648e:
    ld a, $00
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    ld a, $0a
    ld [$c2a7], a
    ld a, $23
    ld hl, $4084
    rst $08
    xor a
    ld [$d0ed], a
    ldh [$de], a
    ld a, $13
    ld hl, $6881
    rst $08
    ld c, $64
    jp $0468


Call_021_64b4:
    push de
    ld de, $0000
    call $3b97
    call $045a
    pop de
    call $3b97
    ret


Call_021_64c3:
    xor a
    ld [$cf63], a
    call Call_021_671c
    jr c, jr_021_64fb

    ld de, $0014
    call Call_021_64b4
    xor a
    ld [$cf64], a

jr_021_64d6:
    ld a, [$cf64]
    cp $06
    jr nc, jr_021_64fb

    ld hl, $c609
    ld bc, $0010
    call $30fe
    ld a, [hl]
    cp $ff
    jr z, jr_021_64fb

    push hl
    call Call_021_65b5
    pop hl
    call Call_021_650c
    jr c, jr_021_64fb

    ld hl, $cf64
    inc [hl]
    jr jr_021_64d6

jr_021_64fb:
    call Call_021_6810
    ld a, $04
    ld [$c2a7], a
    call $04b6
    ld c, $08
    call $0468
    ret


Call_021_650c:
    call Call_021_6748
    ld de, $652c
    ld hl, $c4c9
    call $1078
    call $31f6
    ld de, $c50a
    ld c, $06
    ld a, $49
    call $2d83
    ld c, $3c
    call $0468
    and a
    ret


    adc l
    and h
    or [hl]
    ld a, a
    add a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    add l
    and b
    xor h
    and h
    or c
    rst $20
    ld d, b

Call_021_653f:
    ld hl, $c800
    ld bc, $0062
    xor a
    call $3041
    ld a, [$d95e]
    ld de, $c800
    ld [de], a
    inc de
    ld hl, $dcd8
    ld c, $00

jr_021_6556:
    ld a, [hl+]
    cp $ff
    jr z, jr_021_65b1

    cp $fd
    jr nz, jr_021_6562

    inc c
    jr jr_021_6556

jr_021_6562:
    push hl
    push de
    push bc
    ld a, c
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    ld c, l
    ld b, h
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    ld [de], a
    inc de
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld hl, $0015
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld [de], a
    inc de
    pop bc
    push bc
    ld a, c
    ld hl, $de41
    ld bc, $000b
    call $30fe
    ld bc, $000a
    call $3026
    pop bc
    inc c
    pop de
    ld hl, $0010
    add hl, de
    ld e, l
    ld d, h
    pop hl
    jr jr_021_6556

jr_021_65b1:
    ld a, $ff
    ld [de], a
    ret


Call_021_65b5:
    push hl
    call $31f3
    ld a, $13
    ld hl, $6906
    rst $08
    pop hl
    ld a, [hl+]
    ld [$d10e], a
    ld [$d108], a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$d123], a
    ld a, [hl+]
    ld [$d124], a
    ld hl, $d123
    ld a, $2d
    call $2d83
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ld de, $9310
    ld a, $3d
    call $2d83
    ld a, $31
    ldh [$ad], a
    ld hl, $c51e
    ld bc, $0606
    ld a, $13
    call $2d83
    ld a, $d0
    ldh [$d0], a
    ld a, $90
    ldh [$cf], a
    call $31f6
    xor a
    ldh [$d4], a
    ld b, $1a
    call $3340
    call $32f9
    call Call_021_6635
    xor a
    ld [$c2c6], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ld hl, $c50a
    call $378b
    call $31f6
    xor a
    ldh [$d4], a
    ldh [$d0], a
    call Call_021_6643
    ret


Call_021_6635:
jr_021_6635:
    ldh a, [$cf]
    cp $70
    ret z

    add $04
    ldh [$cf], a
    call $045a
    jr jr_021_6635

Call_021_6643:
jr_021_6643:
    ldh a, [$cf]
    and a
    ret z

    dec a
    dec a
    ldh [$cf], a
    call $045a
    jr jr_021_6643

    call $0e58
    xor a
    ld [$cf63], a

jr_021_6657:
    call Call_021_671c
    ret c

    call Call_021_6665
    ret c

    ld hl, $cf63
    inc [hl]
    jr jr_021_6657

Call_021_6665:
    xor a
    ld [$cf64], a

jr_021_6669:
    call Call_021_6692
    jr c, jr_021_6690

jr_021_666e:
    call $0a57
    ld hl, $ffa9
    ld a, [hl]
    and $02
    jr nz, jr_021_668e

    ld a, [hl]
    and $01
    jr nz, jr_021_6688

    ld a, [hl]
    and $08
    jr nz, jr_021_6690

    call $045a
    jr jr_021_666e

jr_021_6688:
    ld hl, $cf64
    inc [hl]
    jr jr_021_6669

jr_021_668e:
    scf
    ret


jr_021_6690:
    and a
    ret


Call_021_6692:
    ld a, [$cf64]
    cp $06
    jr nc, jr_021_66a7

    ld hl, $c609
    ld bc, $0010
    call $30fe
    ld a, [hl]
    cp $ff
    jr nz, jr_021_66a9

jr_021_66a7:
    scf
    ret


jr_021_66a9:
    push hl
    call $31f3
    pop hl
    call Call_021_6748
    ld a, [$c608]
    cp $c9
    jr c, jr_021_66c6

    ld de, $66fc
    ld hl, $c4c9
    call $1078
    ld hl, $c4d5
    jr jr_021_66de

jr_021_66c6:
    ld de, $670c
    ld hl, $c4c9
    call $1078
    ld hl, $c4ca
    ld de, $c608
    ld bc, $0103
    call $3198
    ld hl, $c4d3

jr_021_66de:
    ld de, $66fb
    call $1078
    call $31f6
    ld b, $1a
    call $3340
    call $32f9
    ld de, $c50a
    ld c, $06
    ld a, $49
    call $2d83
    and a
    ret


    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add a
    adc [hl]
    add l
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    rst $20
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $e3
    sub e
    xor b
    xor h
    and h
    ld a, a
    add l
    and b
    xor h
    and h
    or c
    ld d, b

Call_021_671c:
    ld a, [$cf63]
    cp $1e
    jr nc, jr_021_6746

    ld hl, $b2c0
    ld bc, $0062
    call $30fe
    ld a, $01
    call $2fcb
    ld a, [hl]
    and a
    jr z, jr_021_6743

    ld de, $c608
    ld bc, $0062
    call $3026
    call $2fe1
    and a
    ret


jr_021_6743:
    call $2fe1

jr_021_6746:
    scf
    ret


Call_021_6748:
    xor a
    ldh [$d4], a
    ld a, [hl+]
    ld [$d10e], a
    ld a, [hl+]
    ld [$d114], a
    ld a, [hl+]
    ld [$d115], a
    ld a, [hl+]
    ld [$d123], a
    ld a, [hl+]
    ld [$d124], a
    ld a, [hl+]
    ld [$d12d], a
    ld de, $d086
    ld bc, $000a
    call $3026
    ld a, $50
    ld [$d090], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ld hl, $c4a0
    ld bc, $0312
    call $0fe8
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    ld a, [$d10e]
    ld [$d108], a
    ld [$d265], a
    ld hl, $d123
    ld a, $2d
    call $2d83
    xor a
    ld [$c2c6], a
    ld hl, $c50a
    call $378b
    ld a, [$d108]
    cp $fd
    jr z, jr_021_67f8

    ld hl, $c5a5
    ld a, $74
    ld [hl+], a
    ld [hl], $f2
    ld hl, $c5a7
    ld de, $d265
    ld bc, $8103
    call $3198
    call $3420
    ld hl, $c5ab
    call $1078
    ld a, $03
    ld [$cf5f], a
    ld a, $14
    ld hl, $4bdd
    rst $08
    ld a, $7f
    jr c, jr_021_67e2

    ld a, $ef
    jr nz, jr_021_67e2

    ld a, $f5

jr_021_67e2:
    ld hl, $c5b6
    ld [hl+], a
    ld hl, $c5c0
    ld a, $f3
    ld [hl+], a
    ld de, $d086
    call $1078
    ld hl, $c5e1
    call $382d

jr_021_67f8:
    ld hl, $c5e7
    ld a, $73
    ld [hl+], a
    ld a, $74
    ld [hl+], a
    ld [hl], $f3
    ld hl, $c5ea
    ld de, $d114
    ld bc, $8205
    call $3198
    ret


Call_021_6810:
    call $31f3
    ld hl, $9630
    ld de, $40d0
    ld bc, $3e01
    call $0eba
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ld a, $22
    ld hl, $4825
    rst $08
    ld a, $31
    ldh [$ad], a
    ld hl, $c51e
    ld bc, $0606
    ld a, $13
    call $2d83
    ld a, $d0
    ldh [$d0], a
    ld a, $90
    ldh [$cf], a
    call $31f6
    xor a
    ldh [$d4], a
    ld [$d108], a
    ld b, $1a
    call $3340
    call $32f9
    call Call_021_6635
    xor a
    ld [$c2c6], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ld a, $22
    ld hl, $4840
    rst $08
    xor a
    ldh [$ad], a
    ld hl, $c510
    ld bc, $0707
    ld a, $13
    call $2d83
    ld a, $c0
    ldh [$cf], a
    call $31f6
    xor a
    ldh [$d4], a
    ldh [$d0], a
    call Call_021_6643
    xor a
    ldh [$d4], a
    ld hl, $c4c8
    ld bc, $0809
    call $0fe8
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    ld hl, $c4f2
    ld de, $d47d
    call $1078
    ld hl, $c519
    ld a, $73
    ld [hl+], a
    ld a, $74
    ld [hl+], a
    ld [hl], $f3
    ld hl, $c51c
    ld de, $d47b
    ld bc, $8205
    call $3198
    ld hl, $c541
    ld de, $68ed
    call $1078
    ld hl, $c557
    ld de, $d4c4
    ld bc, $0203
    call $3198
    ld [hl], $63
    inc hl
    ld de, $d4c6
    ld bc, $8102
    call $3198
    call $31f6
    ld a, $09
    ld hl, $6601
    rst $08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_021_7500:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_021_7900:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_021_7c3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_021_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_021_7f0b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
