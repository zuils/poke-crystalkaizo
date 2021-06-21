; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    ld hl, $c4a0
    ld de, $cdd9
    ld b, $12

jr_013_4008:
    push bc
    ld c, $14

jr_013_400b:
    ld a, [hl]
    push hl
    srl a
    jr c, jr_013_4021

    ld hl, $d1e6
    add [hl]
    ld l, a
    ld a, [$d1e7]
    adc $00
    ld h, a
    ld a, [hl]
    and $0f
    jr jr_013_4031

jr_013_4021:
    ld hl, $d1e6
    add [hl]
    ld l, a
    ld a, [$d1e7]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    and $0f

jr_013_4031:
    pop hl
    ld [de], a
    res 7, [hl]
    inc hl
    inc de
    dec c
    jr nz, jr_013_400b

    pop bc
    dec b
    jr nz, jr_013_4008

    ret


    ld hl, $cd20
    ld de, $cd48

jr_013_4045:
    ld a, [hl]
    push hl
    srl a
    jr c, jr_013_405b

    ld hl, $d1e6
    add [hl]
    ld l, a
    ld a, [$d1e7]
    adc $00
    ld h, a
    ld a, [hl]
    and $0f
    jr jr_013_406b

jr_013_405b:
    ld hl, $d1e6
    add [hl]
    ld l, a
    ld a, [$d1e7]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    and $0f

jr_013_406b:
    pop hl
    ld [de], a
    res 7, [hl]
    inc hl
    inc de
    dec c
    jr nz, jr_013_4045

    ret


    ld d, b
    dec d
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld b, h
    inc b
    dec b
    ld d, b
    ld d, [hl]
    ld h, e
    ld h, [hl]
    ld h, [hl]
    ld d, b
    dec b
    dec b
    nop
    nop
    ld h, l
    ld d, [hl]
    ld h, [hl]
    nop
    ld [hl+], a
    ld [bc], a
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, $00
    jr nz, jr_013_4097

    ld [hl+], a
    nop

jr_013_4097:
    nop
    ld d, l
    ld d, l
    ld d, b
    nop
    db $10
    ld [hl+], a
    ld h, d
    ld d, l
    ld d, l
    ld d, l
    ld d, b
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
    ret c

    sbc l
    db $ed
    xor $ee
    call z, $8d8c
    ret c

    sbc $eb
    xor $ee
    ret c

    adc l
    adc l
    adc b
    adc b
    db $ed
    sbc $ee
    adc b
    xor d
    adc d
    db $dd
    db $dd
    db $dd
    db $dd
    adc [hl]
    adc b
    xor b
    adc d
    xor d
    adc b
    adc b
    db $dd
    db $dd
    ret c

    adc b
    sbc b
    xor d
    ld [$dddd], a
    db $dd
    ret c

    adc b
    adc b
    ld d, b
    dec d
    ld [hl+], a
    db $10
    ld de, $6666
    ld h, [hl]
    ld h, [hl]
    ld h, $23
    ld d, l
    ld de, $2555
    ld [hl+], a
    ld d, l
    dec d
    ld d, c
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld [hl+], a
    ld d, l
    inc sp
    ld d, l
    ld b, l
    ld d, h
    ld d, l
    ld d, l
    ld [hl+], a
    ld d, c
    inc sp
    dec h
    ld d, l
    dec [hl]
    ld d, b
    ld d, l
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc bc
    nop
    ld d, l
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
    db $dd
    sbc l
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    db $dd
    db $dd
    db $dd
    adc l
    ret c

    db $dd
    adc l
    adc b
    adc b
    ret c

    adc l
    adc b
    adc b
    ret c

    adc l
    adc b
    adc b
    ret c

    adc l
    adc b
    adc b
    ret c

    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    ld d, b
    dec d
    ld [hl+], a
    ld h, b
    ld de, $6666
    ld h, [hl]
    ld h, [hl]
    ld h, $23
    ld d, l
    ld de, $0555
    ld [hl+], a
    nop
    dec d
    ld bc, $5554
    ld d, l
    ld d, l
    db $10
    ld d, b
    dec b
    dec b
    ld b, b
    ld d, h
    ld d, l
    ld d, l
    ld [hl+], a
    ld d, c
    nop
    ld d, l
    ld d, l
    dec [hl]
    ld d, b
    ld d, l
    nop
    ld d, b
    dec b
    dec b
    nop
    inc bc
    nop
    ld d, l
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
    ret c

    sbc l
    xor d
    add sp, -$67
    xor $ee
    xor $ee
    xor [hl]
    xor e
    db $ed
    xor $de
    adc l
    xor d
    adc b
    sbc l
    adc c
    call c, $dddd
    db $dd
    sbc b
    ret c

    adc l
    adc l
    ret z

    call c, $dddd
    xor d
    reti


    adc b
    db $dd
    db $dd
    cp l
    ret c

    db $dd
    adc b
    ret c

    adc l
    sbc c
    xor d
    db $ec
    xor $ee
    jp hl


    inc de
    ld de, $3351
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld d, l
    ld d, l
    ld de, $3351
    ld h, [hl]
    ld h, [hl]
    nop
    ld d, l
    nop
    ld d, l
    ld d, e
    ld d, l
    ld d, l
    inc h
    inc sp
    ld d, e
    ld d, l
    ld d, l
    ld d, e
    ld d, l
    ld d, l
    ld d, l
    dec [hl]
    ld d, e
    inc sp
    ld d, l
    inc sp
    ld d, l
    nop
    inc bc
    ld d, l
    dec [hl]
    ld de, $4255
    ld d, l
    nop
    nop
    ld d, l
    ld d, l
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
    sbc e
    sbc c
    reti


    cp e
    xor d
    xor d
    cp e
    db $dd
    db $dd
    sbc c
    reti


    cp e
    db $dd
    db $dd
    adc b
    db $dd
    adc b
    db $dd
    db $db
    db $dd
    db $dd
    xor h
    cp e
    db $db
    db $dd
    db $dd
    db $db
    db $dd
    db $dd
    db $dd
    cp l
    db $db
    adc b
    db $dd
    cp e
    db $dd
    adc b
    adc e
    db $dd
    cp l
    sbc c
    db $dd
    jp z, $88dd

    adc b
    db $dd
    db $dd
    ld d, b
    ld d, l
    ld hl, $5533
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, c
    inc sp
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    inc sp
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    nop
    ld d, l
    inc sp
    ld d, l
    dec b
    nop
    nop
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
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
    ret c

    db $dd
    xor c
    cp e
    db $dd
    adc b
    adc b
    db $dd
    db $dd
    db $dd
    reti


    cp e
    db $dd
    adc b
    db $dd
    db $dd
    adc b
    db $dd
    db $dd
    db $dd
    adc b
    adc b
    cp e
    db $dd
    adc b
    db $dd
    db $dd
    adc b
    adc b
    db $dd
    cp e
    db $dd
    adc l
    adc b
    adc b
    adc b
    adc b
    db $dd
    db $dd
    db $dd
    adc b
    adc b
    adc b
    adc b
    adc b
    db $dd
    db $dd
    db $dd
    db $10
    jr nc, jr_013_42db

    ld h, [hl]
    nop
    nop
    jr nc, jr_013_42e0

    db $10
    ld sp, $3333
    nop
    nop
    jr nz, @+$04

    nop
    ld de, $0033
    nop
    ld d, l
    nop
    nop
    nop
    ld de, $3330
    inc sp
    inc sp
    nop
    inc bc
    nop
    ld de, $3311
    ld b, h
    nop
    db $10
    ld bc, $1111
    ld de, $4400
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_42db:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_42e0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc b
    cp b
    cp e
    xor $88
    adc b
    cp b
    cp e
    sbc b
    cp c
    cp e
    cp e
    adc b
    adc b
    xor b
    adc d
    adc b
    sbc c
    cp e
    adc b
    adc b
    db $dd
    adc b
    adc b
    adc b
    sbc c
    cp b
    cp e
    cp e
    cp e
    adc b
    adc e
    adc b
    sbc c
    sbc c
    cp e
    call z, $9888
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    call z, $8888
    adc b
    nop
    inc sp
    ld hl, $2222
    nop
    nop
    ld [hl+], a
    inc bc
    inc sp
    ld d, c
    dec [hl]
    ld [hl+], a
    nop
    nop
    dec [hl]
    ld [hl+], a
    nop
    ld [hl+], a
    inc sp
    ld de, $2222
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr nc, jr_013_4364

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
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
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    xor d
    adc b
    adc b
    sbc [hl]
    adc b
    adc b
    adc b
    adc b

jr_013_4364:
    cp l
    add sp, -$77
    cp b
    adc b
    sbc c
    xor d
    xor d
    xor d
    adc b
    adc b
    cp c
    cp e
    xor d
    xor d
    xor d
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    cp e
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    cp e
    adc b
    jr nc, jr_013_438a

    db $10
    ld d, l
    ld d, l

jr_013_438a:
    nop
    ld de, $3651
    inc sp
    inc de
    ld d, l
    ld d, l
    ld [hl], $11
    nop
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, c
    ld h, [hl]
    ld b, $66
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
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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
    cp b
    adc e
    sbc b
    db $dd
    db $dd
    adc b
    sbc c
    reti


    cp [hl]
    cp e
    sbc e
    db $dd
    db $dd
    cp [hl]
    sbc c
    adc b
    db $dd
    db $ed
    xor $ee
    xor $ee
    jp hl


    xor $8e
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $30
    ld d, c
    ld d, l
    ld d, l
    inc sp
    nop
    nop
    nop
    jr nc, jr_013_4450

    ld d, l
    ld d, l
    inc sp
    nop
    nop
    nop
    inc sp
    inc sp
    ld d, [hl]
    ld d, l
    inc sp
    ld d, l
    dec h
    ld [hl+], a
    inc sp
    inc sp
    ld d, c
    dec b
    inc sp
    ld d, l

Call_013_4413:
    dec h
    ld [hl+], a
    ld h, [hl]
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld h, [hl]
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
    adc b
    adc b
    adc b
    cp b
    cp e
    cp e
    cp e
    cp e
    adc b
    adc b
    cp b
    cp e
    cp e
    cp e
    cp e
    cp e
    adc e
    adc b
    cp b
    cp e
    cp e
    cp e
    xor l
    xor d
    cp e
    cp e
    cp e

jr_013_4450:
    cp e
    sbc c
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    jr nc, jr_013_44bc

    ld d, l
    ld d, l
    ld d, l
    nop
    ld de, $6655
    ld d, l
    ld d, l
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld [hl-], a
    inc sp
    ld de, $5555
    ld [hl+], a
    ld d, l
    ld h, [hl]
    ld [hl+], a
    ld de, $1110
    ld d, l
    ld [hl+], a
    ld d, l
    ld d, l
    dec h
    ld [bc], a
    dec [hl]
    ld d, l
    ld d, b
    ld d, l
    dec b
    ld d, l
    ld d, l
    dec b
    ld h, l
    ld h, [hl]
    ld d, b
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
    cp b
    db $dd
    db $dd
    db $dd
    db $dd
    adc b
    sbc c
    db $dd
    xor $dd
    db $dd
    adc b
    xor $88
    xor $dd
    xor $ba
    cp e
    sbc c
    db $dd
    db $dd
    xor d

jr_013_44bc:
    db $dd
    xor $aa
    sbc c
    sbc b
    sbc c
    db $dd
    xor d
    db $dd
    db $dd
    xor l
    adc d
    cp l
    db $dd
    ret c

    db $dd
    adc l
    db $dd
    db $dd
    adc l
    db $ed
    xor $d8
    adc b
    adc b
    ld b, b
    nop
    nop
    nop
    ld [hl+], a
    inc de
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld d, l
    dec d
    ld h, [hl]
    ld b, b
    nop
    ld de, $3311
    inc sp
    nop
    nop
    nop
    nop
    ld de, $3311
    inc sp
    ld bc, $0000
    nop
    nop
    db $10
    ld de, $2202
    nop
    nop
    nop
    ld b, c
    ld b, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld de, $ff55
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
    adc b
    xor b
    xor d
    adc d
    xor b
    sbc d
    cp c
    db $eb
    adc b
    ret z

    call z, $888e
    adc e
    adc b
    call z, $8888
    sbc b
    sbc e
    adc c
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    reti


    db $dd
    db $dd
    adc l
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    xor d
    xor d
    adc b
    adc e
    sbc e
    db $dd
    ld d, b
    inc sp
    ld sp, $0000
    nop
    inc sp
    inc sp
    db $10
    inc sp
    inc sp
    nop
    nop
    nop
    inc sp
    inc sp
    nop
    ld d, l
    ld d, l
    nop
    ld hl, $5555
    ld [hl+], a
    nop
    ld d, l
    ld d, l
    ld d, l
    dec h
    ld d, l
    ld d, l
    ld [hl+], a
    nop
    nop
    jr nc, jr_013_45be

    dec h
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    ld [hl-], a
    ld d, l
    dec h
    ld d, l
    inc sp
    ld d, l
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
    adc h
    adc b
    adc b
    call z, $cccc
    sbc c
    cp e
    adc b
    adc b
    adc b
    ret z

    set 1, h
    xor d
    cp e
    adc b
    adc b
    adc b
    adc b
    sbc c
    ret z

    sbc c
    cp h
    adc b
    adc b
    adc b
    adc b
    call z, $99c8
    cp h
    adc b
    adc b
    cp b
    xor b
    call z, $bbcb
    call z, $aaaa
    xor d
    xor d
    call z, $cccc
    call z, $1500
    dec h
    ld [hl+], a
    ld [hl+], a
    nop
    ld de, $0052

jr_013_45be:
    db $10
    dec h
    nop
    jr nz, jr_013_45c3

jr_013_45c3:
    ld de, $5555
    ld de, $0055
    jr nz, jr_013_45dc

    ld [bc], a
    ld de, $0055
    nop
    ld d, l
    ld d, l
    ld de, $1152
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld h, b

jr_013_45dc:
    ld de, $0061
    nop
    nop
    nop
    jr nc, jr_013_464a

    inc sp
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
    sbc h
    sbc h
    xor d
    db $ed
    xor $ee
    xor $de
    sbc h
    sbc h
    xor d
    db $ed
    adc [hl]
    adc b
    sbc b
    xor $9c
    sbc h
    cp e
    sbc c
    sbc c
    sbc c
    adc d
    sbc c
    sbc c
    call z, $ddbb
    db $dd
    sbc c
    ld [$9999], a
    call z, $99ee
    adc b
    adc b
    add sp, -$67
    adc c
    adc b
    adc b
    sbc c
    adc b
    cp b
    xor $bb
    ld h, b
    ld de, $2661
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    jr nc, jr_013_4662

    ld h, c
    ld d, [hl]
    dec d
    jr nz, jr_013_4656

    ld [hl+], a
    ld de, $0300
    nop
    stop
    ld h, b
    ld d, d
    ld de, $0300
    nop
    ld sp, $0000
    ld de, $0000
    ld d, b
    ld d, l
    inc sp

jr_013_464a:
    inc sp
    inc sp
    ld h, [hl]
    inc hl
    ld d, d
    nop
    nop
    nop
    inc de
    inc sp
    ld h, [hl]
    rst $38

jr_013_4656:
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

jr_013_4662:
    rst $38
    rst $38
    rst $38
    add sp, -$67
    jp hl


    xor [hl]
    adc d
    xor d
    xor d
    xor e
    cp b
    cp e
    jp hl


    sbc $9d
    xor b
    xor d
    xor d
    sbc c
    adc b
    adc e
    adc b
    sbc b
    adc b
    add sp, -$26
    sbc c
    adc b
    adc e
    adc b
    cp c
    adc b
    adc b
    sbc c
    adc b
    adc b
    ret c

    db $dd
    cp e
    cp e
    cp e
    xor $ab
    jp c, $8888

    adc b
    sbc e
    cp e
    xor $50
    inc sp
    ld bc, $5500
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc sp
    ld d, c
    nop
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    ld d, l
    ld d, l
    dec b
    ld d, b
    ld d, l
    ld d, l
    ld d, l
    nop
    ld d, l
    ld d, l
    ld bc, $5550
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [hl+], a
    ld d, d
    ld d, l
    ld d, l
    ld d, l
    inc sp
    ld d, l
    ld d, l
    ld [hl+], a
    ld d, d
    ld d, l
    ld d, l
    ld d, l
    ld d, e
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
    ret c

    cp e
    adc c
    adc b
    db $dd
    adc b
    db $dd
    db $dd
    db $dd
    cp e
    reti


    adc b
    db $dd
    adc b
    db $dd
    db $dd
    adc b
    db $dd
    db $dd
    adc l
    ret c

    db $dd
    db $dd
    db $dd
    adc b
    db $dd
    db $dd
    adc c
    ret c

    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    xor d
    jp c, $dddd

    db $dd
    cp e
    db $dd
    db $dd
    xor d
    jp c, $dddd

    db $dd
    db $db
    ld d, l
    ld d, l
    ld d, l
    dec d
    ld de, $5555
    ld d, l
    ld d, l
    nop
    ld d, l
    dec d
    ld de, $5555
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    ld de, $5500
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    ld de, $5500
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    db $dd
    db $dd
    db $dd
    sbc l
    sbc c
    db $dd
    db $dd
    db $dd
    db $dd
    adc b
    db $dd
    sbc l
    sbc c
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    adc b
    sbc c
    adc b
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    adc b
    sbc c
    adc b
    db $dd
    db $dd
    db $dd
    call z, $dddd
    db $dd
    call z, $dddc
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    call z, $dddc
    ld d, l
    nop
    ld d, d
    ld d, l
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    ld d, e
    ld d, l
    nop
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    nop
    ld d, l
    ld d, l
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $dd
    adc b
    jp c, $88dd

    db $dd
    db $dd
    db $dd
    db $dd
    adc b
    db $db
    db $dd
    adc b
    call z, $dddd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    adc b
    adc b
    db $dd
    db $dd
    db $dd
    adc b
    db $dd
    db $dd
    adc b
    adc b
    adc e
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    jr nz, jr_013_47fc

    ld d, d
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld de, $6301
    nop
    nop
    ld d, b
    ld [hl+], a
    ld [hl+], a
    ld de, $5551
    dec b
    nop
    ld d, b
    ld d, d

jr_013_47fc:
    dec h
    ld de, $5551
    ld d, l
    ld d, l
    ld [hl+], a
    ld d, d
    dec h
    dec d
    ld d, l
    nop
    ld d, b
    ld d, l
    ld [hl+], a
    nop
    db $10
    ld d, l
    ld d, l
    nop
    ld d, b
    ld d, l
    nop
    nop
    jr nc, @+$01

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
    cp e
    sbc b
    jp c, $8888

    adc b
    xor d
    xor d
    cp e
    adc c
    db $eb
    adc b
    adc b
    ret c

    xor d
    xor d
    sbc c
    reti


    db $dd
    adc l
    adc b
    ret c

    jp c, $99ad

    reti


    db $dd
    db $dd
    db $dd
    xor d
    jp c, $9dad

    db $dd
    adc b
    ret c

    db $dd
    xor d
    cp e
    sbc e
    db $dd
    db $dd
    adc b
    ret c

    db $dd
    adc b
    cp e
    adc e
    nop
    ld d, l
    ld d, l
    ld d, l
    inc sp
    inc sp
    ld b, h
    nop
    ld b, h
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    nop
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ld de, $0001
    ld b, h
    ld b, h
    ld d, l
    ld b, h
    ld b, h
    ld de, $0001
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $10
    ld sp, $0003
    nop
    nop
    nop
    nop
    inc sp
    ld sp, $0003
    nop
    nop
    nop
    nop
    ld h, [hl]
    nop
    dec b
    ld d, b
    ld h, l
    ld b, $11
    nop
    nop
    nop
    inc bc
    ld d, b
    dec b
    nop
    ld de, $0000
    ld d, l
    ld b, h
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    ld de, $0033
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
    call z, $cccc
    call z, $88cc
    adc b
    adc b
    adc b
    adc b
    ret


    sbc h
    sbc [hl]
    jp hl


    adc b
    adc b
    xor $88
    adc e
    ret c

    db $ed
    adc [hl]
    sbc c
    adc b
    adc b
    adc b
    adc e
    ret c

    adc l
    adc b
    sbc c
    adc b
    adc b
    db $dd
    adc b
    xor d
    xor d
    adc b
    adc b
    adc b
    sbc c
    cp e
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $2200
    nop
    nop
    nop
    nop
    nop
    ld bc, $0020
    nop
    nop
    inc b
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld b, h
    ld b, h
    inc sp
    inc sp
    ld d, l
    nop
    ld [hl+], a
    inc sp
    inc hl
    ld [hl-], a
    ld d, l
    dec h
    ld d, l
    nop
    ld [hl+], a
    inc sp
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
    cp e
    cp e
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    xor d
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    xor b
    adc b
    adc b
    adc b
    adc h
    adc b
    adc b
    adc b
    adc e
    adc b
    adc b
    adc b
    adc b
    adc b
    add sp, -$78
    call z, $bbcc
    cp e
    db $dd
    adc b
    xor d
    cp e
    xor e
    cp d
    db $dd
    xor l
    db $dd
    adc b
    xor d
    cp e
    nop
    ld sp, $1333
    ld bc, $3333
    nop
    db $10
    ld sp, $1333
    ld bc, $5555
    ld [hl+], a
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    ld d, b
    ld d, l
    dec b
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, l
    dec b
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
    adc b
    cp c
    cp e
    sbc e
    adc c
    cp e
    cp e
    adc b
    sbc b
    cp c
    cp e
    sbc e
    adc c
    db $dd
    db $dd
    xor d
    db $dd
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    xor d
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    db $dd
    adc b
    ret c

    call $888c
    adc b
    adc b
    adc b
    adc b
    ret c

    call $888c
    adc b
    adc b
    adc b
    jr nz, jr_013_4a39

    ld bc, $0000
    ld de, $0000
    nop
    ld [hl+], a
    ld bc, $0000
    ld de, $0000
    jr nz, jr_013_4a27

jr_013_4a27:
    nop
    nop
    nop
    jr nz, jr_013_4a6e

    ld de, $0000
    nop
    nop
    nop
    db $10
    ld de, $5511
    ld d, l
    ld d, l
    ld d, l

jr_013_4a39:
    dec b
    ld sp, $0063
    ld d, l
    ld d, l
    nop
    ld d, l
    nop
    ld sp, $0063
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
    cp e
    cp e
    cp e
    cp e
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc [hl]
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    cp e

jr_013_4a6e:
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    db $db
    db $dd
    db $dd
    db $dd
    cp l
    cp e
    cp e
    cp e
    sbc e
    adc b
    cp c
    cp e
    cp e
    cp e
    cp e
    adc e
    jr nc, jr_013_4aba

    dec [hl]
    inc de
    ld h, c
    ld d, [hl]
    ld d, $11
    ld [hl], $56
    ld [hl], $13
    ld h, c
    ld [hl], $16
    ld de, $5366
    ld sp, $0003
    ld d, b
    ld h, [hl]
    nop
    ld h, [hl]
    inc sp
    ld h, c
    dec b
    nop
    ld d, b
    ld h, l
    dec [hl]
    ld b, h
    ld h, [hl]
    ld d, l
    ld d, l
    ld de, $2200
    ld h, [hl]
    ld b, h
    ld h, [hl]
    ld h, [hl]
    nop
    ld de, $6622
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_4aba:
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
    db $dd
    adc [hl]
    ret c

    sbc l
    sbc c
    reti


    sbc c
    sbc c
    cp [hl]
    sbc $b9
    sbc e
    sbc c
    cp c
    sbc c
    sbc c
    xor $db
    cp c
    adc e
    adc b
    ret c

    jp hl


    adc b
    xor $bb
    sbc c
    adc l
    adc b
    ret c

    db $ed
    cp l
    sbc c
    xor $dd
    adc b
    sbc c
    adc b
    xor d
    xor $99
    xor $ee
    adc b
    sbc c
    xor d
    xor $88
    ld d, l
    dec b
    nop
    jr nz, jr_013_4b0c

    ld bc, $1110
    ld d, l
    dec b
    nop
    jr nz, jr_013_4b14

    ld bc, $1130
    ld d, l
    dec b
    nop
    jr nz, jr_013_4b6c

    ld b, $40

jr_013_4b0c:
    ld de, $0555
    nop
    jr nz, jr_013_4b74

    ld [hl], $23

jr_013_4b14:
    ld de, $0000
    ld d, l
    dec h
    ld b, d
    inc [hl]
    ld d, e
    ld b, h
    nop
    nop
    ld d, l
    dec h
    ld b, d
    inc b
    ld d, b
    ld b, h
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
    db $dd
    adc l
    adc b
    xor b
    sbc d
    adc c
    sbc b
    sbc c
    db $dd
    adc l
    adc b
    xor b
    sbc d
    adc c
    cp b
    sbc c
    db $dd
    adc l
    adc b
    xor b
    ld [$c88e], a
    sbc c
    db $dd
    adc l
    adc b
    xor b
    ld [$abbe], a
    sbc c
    adc b
    adc b
    db $dd
    xor l
    jp z, $dbbc

    call z, $8888
    db $dd
    xor l
    jp z, $d88c

    call z, Call_013_4413
    ld hl, $5552
    nop
    nop

jr_013_4b6c:
    nop
    nop
    ld b, h
    ld hl, $6552
    nop
    nop

jr_013_4b74:
    nop
    nop
    ld d, l
    ld d, b
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, b
    ld h, l
    ld b, $56
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld h, [hl]
    nop
    nop
    nop
    ld de, $0000
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
    sbc e
    call z, $daa9
    db $dd
    adc b
    adc b
    adc b
    adc b
    call z, $daa9
    db $ed
    adc b
    adc b
    adc b
    adc b
    db $dd
    ret c

    db $ed
    sbc $dd
    xor $ee
    xor $dd
    ret c

    db $ed
    adc [hl]
    sbc $ee
    adc b
    adc b
    adc b
    adc b
    xor $88
    adc b
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, l
    inc sp
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    inc sp
    ld h, e
    ld h, [hl]
    ld h, [hl]
    nop
    inc sp
    ld h, [hl]
    inc sp
    inc sp
    dec [hl]
    inc sp
    inc sp
    nop
    inc sp
    ld h, [hl]
    nop
    inc sp
    ld b, h
    ld b, h
    ld [bc], a
    jr nc, jr_013_4c2d

    inc sp
    inc sp
    inc sp
    ld d, l
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
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
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee

jr_013_4c2d:
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $aa
    xor $ee
    xor $ee
    xor $ee
    xor $aa
    xor $ee
    xor $ee
    ld d, b
    dec d
    inc h
    ld b, l
    ld d, h
    ld d, l
    ld [hl+], a
    ld [hl+], a
    ld d, l
    dec d
    ld d, e
    ld d, l
    ld d, l
    ld d, l
    ld [hl+], a
    ld [hl+], a
    ld d, l
    ld d, l
    ld d, l
    ld [hl+], a
    ld d, d
    ld d, l
    ld [hl+], a
    ld [hl+], a
    ld d, l
    ld d, l
    ld d, l
    ld [hl+], a
    ld [hl+], a
    ld d, d
    ld d, d
    dec h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    ret c

    sbc l
    xor h
    call $dddc
    xor d
    xor d
    db $dd
    sbc l
    db $db
    db $dd
    db $dd
    db $dd
    xor d
    xor d
    db $dd
    db $dd
    db $dd
    xor d
    jp c, $aadd

    xor d
    db $dd
    db $dd
    db $dd
    xor d
    xor d
    jp c, $adda

    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    jr nc, jr_013_4cea

    inc sp
    inc sp
    inc sp
    nop
    ld bc, $3133
    jr nc, jr_013_4cf3

    ld de, $0033
    jr nz, @+$04

    nop
    ld de, $3331
    ld de, $0055
    nop
    nop
    ld de, $3331
    nop
    nop
    nop
    inc bc
    nop
    inc sp
    inc sp
    ld sp, $3344
    db $10
    ld bc, $3311
    inc sp
    nop
    ld b, h
    inc sp
    nop
    ld b, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_4cea:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_4cf3:
    rst $38
    rst $38
    adc b
    cp b
    sbc c
    cp e
    cp e
    cp e
    cp e
    cp b
    adc b
    adc b
    sbc c
    cp e
    cp e
    cp e
    cp e
    cp e
    sbc c
    adc b
    sbc c
    cp e
    cp e
    cp e
    cp e
    xor d
    sbc e
    db $db
    cp e
    cp e
    cp e
    cp e
    cp e
    xor d
    adc b
    cp e
    cp e
    adc b
    cp e
    cp e
    cp e
    db $dd
    adc b
    cp e
    cp e
    adc b
    cp e
    cp e
    cp e
    db $dd
    db $10
    inc sp
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    ld d, l
    inc de
    inc sp
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    ld d, l
    inc de
    ld de, $0031
    inc sp
    nop
    ld d, l
    ld d, l
    inc de
    ld de, $3031
    nop
    dec d
    ld d, l
    ld d, l
    ld d, c
    ld d, c
    ld d, l
    ld de, $1333
    ld de, $4531
    ld d, c
    ld d, l
    ld de, $1113
    ld bc, $ff31
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
    cp b
    cp b
    cp e
    xor $cc
    adc b
    cp e
    sbc c
    sbc b
    cp c
    cp e
    cp e
    adc c
    adc b
    jp z, $8899

    sbc c
    cp e
    adc b
    call z, $bbcd
    sbc h
    adc b
    sbc c
    cp b
    cp e
    adc b
    call $9c99
    adc b
    sbc c
    sbc c
    cp e
    adc b
    call c, $d8bb
    sbc c
    sbc c
    sbc c
    adc b
    call z, $8888
    adc b
    ld d, b
    dec d
    ld [hl+], a
    db $10
    ld de, $6666
    ld h, [hl]
    ld h, [hl]
    ld h, $23
    ld d, l
    ld de, $2555
    ld [hl+], a
    ld d, l
    dec d
    ld d, c
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, d
    ld d, l
    inc sp
    ld d, l
    ld b, l
    ld d, h
    ld d, l
    ld d, l
    ld [hl+], a
    ld d, c
    inc sp
    dec h
    ld d, l
    dec [hl]
    ld d, b
    ld d, l
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc bc
    nop
    ld d, l
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
    cp c
    db $eb
    xor $ee
    sbc c
    jp hl


    cp c
    cp e
    cp e
    db $eb
    xor $ee
    xor $ee
    sbc [hl]
    sbc c
    jp hl


    xor $ee
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    ret


    call z, $999c
    cp e
    sbc e
    sbc c
    sbc [hl]
    jp hl


    sbc c
    jp hl


    sbc [hl]
    sbc c
    xor $99
    sbc c
    sbc h
    sbc d
    xor $ee
    xor $e9
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    rra
    nop
    nop
    rra
    nop
    nop
    nop
    nop
    rra
    nop
    nop
    rra
    nop
    nop
    ld bc, $1101
    nop
    ld de, $0101
    rrca
    ld bc, $1101
    nop
    ld de, $0101
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, $00
    call Call_013_4f34
    ld a, $01
    call Call_013_4f34
    ld a, $02
    call Call_013_4f34
    ld a, $03
    call Call_013_4f34
    ret


Call_013_4f34:
    call $2fcb
    ld hl, $a000
    ld bc, $2000
    xor a
    call $3041
    call $2fe1
    ret


    ldh a, [$e6]
    and a
    jp z, $31f6

    ldh a, [$d4]
    push af
    xor a
    ldh [$d4], a
    ldh a, [$de]
    push af
    xor a
    ldh [$de], a

jr_013_4f57:
    ldh a, [rLY]
    cp $60
    jr c, jr_013_4f57

    di
    ld a, $01
    ldh [rVBK], a
    ld hl, $cdd9
    call Call_013_4f80
    ld a, $00
    ldh [rVBK], a
    ld hl, $c4a0
    call Call_013_4f80

jr_013_4f72:
    ldh a, [rLY]
    cp $60
    jr c, jr_013_4f72

    ei
    pop af
    ldh [$de], a
    pop af
    ldh [$d4], a
    ret


Call_013_4f80:
    ld [$ffd9], sp
    ld sp, hl
    ldh a, [$d7]
    ld h, a
    ld l, $00
    ld a, $12
    ldh [$d3], a
    ld b, $02
    ld c, $41

jr_013_4f91:
    pop de

jr_013_4f92:
    ld a, [c]
    and b
    jr nz, jr_013_4f92

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_4f9b:
    ld a, [c]
    and b
    jr nz, jr_013_4f9b

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_4fa4:
    ld a, [c]
    and b
    jr nz, jr_013_4fa4

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_4fad:
    ld a, [c]
    and b
    jr nz, jr_013_4fad

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_4fb6:
    ld a, [c]
    and b
    jr nz, jr_013_4fb6

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_4fbf:
    ld a, [c]
    and b
    jr nz, jr_013_4fbf

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_4fc8:
    ld a, [c]
    and b
    jr nz, jr_013_4fc8

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_4fd1:
    ld a, [c]
    and b
    jr nz, jr_013_4fd1

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_4fda:
    ld a, [c]
    and b
    jr nz, jr_013_4fda

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_4fe3:
    ld a, [c]
    and b
    jr nz, jr_013_4fe3

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld de, $000c
    add hl, de
    ldh a, [$d3]
    dec a
    ldh [$d3], a
    jr nz, jr_013_4f91

    ldh a, [$d9]
    ld l, a
    ldh a, [$da]
    ld h, a
    ld sp, hl
    ret


    ld a, $01
    call $2fcb
    ld a, [$a008]
    ld b, a
    ld a, [$ad0f]
    ld c, a
    call $2fe1
    ld a, b
    cp $63
    jr nz, jr_013_501b

    ld a, c
    cp $7f
    jr nz, jr_013_501b

    ld c, $01
    ret


jr_013_501b:
    ld c, $00
    ret


    inc d
    ld bc, $d972
    inc d
    ld [bc], a
    ld [hl], e
    reti


    inc d
    inc bc
    ld [hl], h
    reti


    inc d
    inc b
    ld [hl], l
    reti


    rlca
    ld a, [bc]
    db $76
    reti


    rlca
    ld b, $77
    reti


    rlca
    db $10
    ld a, b
    reti


    rla
    rlca
    ld a, c
    reti


    rla
    dec c
    ld a, d
    reti


    add hl, de
    add hl, bc
    ld a, e
    reti


    dec d
    jr jr_013_50c5

    reti


    dec d
    ld a, [de]
    ld a, l
    reti


    db $10
    ld [bc], a
    ld a, [hl]
    reti


    db $10
    inc bc
    ld a, a
    reti


    db $10
    inc b
    add b
    reti


    db $10
    dec b
    add c
    reti


    db $10
    ld b, $82
    reti


    db $10
    rlca
    add e
    reti


    db $10
    ld [$d984], sp
    jr jr_013_506e

    add l
    reti


jr_013_506e:
    jr jr_013_5074

    add [hl]
    reti


    jr jr_013_5079

jr_013_5074:
    add a
    reti


    jr jr_013_507e

    adc b

jr_013_5079:
    reti


    jr jr_013_507f

    adc c
    reti


jr_013_507e:
    ld a, [de]

jr_013_507f:
    inc bc
    adc d
    reti


    ld a, [de]
    ld a, [bc]
    adc e
    reti


    ld a, [bc]
    ld bc, $d98c
    ld a, [bc]
    rrca
    adc l
    reti


    ld a, [bc]
    inc bc
    adc [hl]
    reti


    ld a, [bc]
    ld de, $d98f
    ld [$9007], sp
    reti


    dec bc
    inc bc
    sub c
    reti


    dec bc
    rlca
    sub d
    reti


    dec bc
    inc d
    sub e
    reti


    ld bc, $940e
    reti


    dec bc
    ld bc, $d995
    dec bc
    rla
    sub [hl]
    reti


    inc b
    ld bc, $d997
    inc b
    ld [bc], a
    sbc b
    reti


jr_013_50ba:
    inc b
    inc bc
    sbc c
    reti


    inc b
    rlca
    sbc d
    reti


    ld [bc], a
    rlca
    sbc e

jr_013_50c5:
    reti


    ld [bc], a
    dec b
    sbc h
    reti


    ld d, $03
    sbc l
    reti


jr_013_50ce:
    ld d, $0b
    sbc [hl]
    reti


    ld d, $0c
    sbc a
    reti


    ld d, $0d
    and b
    reti


    ld d, $0e
    and c
    reti


    ld d, $10
    and d
    reti


    add hl, bc
    inc b
    and e
    reti


    inc bc
    ld d, l
    and h
    reti


    inc bc
    inc bc
    and l
    reti


    inc bc
    inc b
    and [hl]
    reti


    inc bc
    dec c
    and a
    reti


    inc bc
    ld c, $a8
    reti


    inc bc
    dec d
    xor c
    reti


    inc bc
    ld d, $aa
    reti


    inc bc
    inc e
    xor e
    reti


    inc bc
    rla
    xor h
    reti


    inc bc
    jr jr_013_50ba

    reti


    inc bc
    add hl, de
    xor [hl]
    reti


    inc bc
    ld a, [de]
    xor a
    reti


    inc bc
    dec de
    or b
    reti


    inc bc
    jr nc, jr_013_50ce

    reti


    inc bc
    ld sp, $d9b2
    inc bc
    ld [hl-], a
    or e
    reti


    inc bc
    inc sp
    or h
    reti


    inc bc
    ld [hl], $b5
    reti


    inc bc
    ld c, h
    or [hl]
    reti


    inc bc
    ld e, e
    or a
    reti


    inc bc
    ld d, c
    cp b
    reti


    inc bc
    ld d, d
    cp c
    reti


    rrca
    ld bc, $d9ba
    rrca
    ld [bc], a
    cp e
    reti


    rrca
    inc bc
    cp h
    reti


    rrca
    rlca
    cp l
    reti


    rrca
    ld a, [bc]
    cp [hl]
    reti


    inc d
    dec b
    cp a
    reti


    inc d
    ld b, $c0
    reti


    rst $38
    ld hl, $c608
    ld a, [$d196]
    and a
    jr z, jr_013_5168

    ld bc, $0030
    add hl, bc

jr_013_5168:
    ld a, [$d197]
    and a
    jr z, jr_013_5170

    inc hl
    inc hl

jr_013_5170:
    ld de, $c4a0
    ld b, $12

jr_013_5175:
    ld c, $14

jr_013_5177:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_013_5177

    ld a, l
    add $04
    ld l, a
    jr nc, jr_013_5184

    inc h

jr_013_5184:
    dec b
    jr nz, jr_013_5175

    ret


    ldh a, [$e6]
    and a
    jp z, $31f6

    ld a, [$c2ce]
    cp $00
    jp z, $31f6

    ldh a, [$d4]
    push af
    xor a
    ldh [$d4], a
    ldh a, [$de]
    push af
    xor a
    ldh [$de], a

jr_013_51a2:
    ldh a, [rLY]
    cp $8f
    jr c, jr_013_51a2

    di
    ld a, $01
    ldh [rVBK], a
    ld hl, $cdd9
    call Call_013_51cb
    ld a, $00
    ldh [rVBK], a
    ld hl, $c4a0
    call Call_013_51cb

jr_013_51bd:
    ldh a, [rLY]
    cp $8f
    jr c, jr_013_51bd

    ei
    pop af
    ldh [$de], a
    pop af
    ldh [$d4], a
    ret


Call_013_51cb:
    ld [$ffd9], sp
    ld sp, hl
    ldh a, [$d7]
    ld h, a
    ld l, $00
    ld a, $12
    ldh [$d3], a
    ld b, $02
    ld c, $41

jr_013_51dc:
    pop de

jr_013_51dd:
    ld a, [c]
    and b
    jr nz, jr_013_51dd

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_51e6:
    ld a, [c]
    and b
    jr nz, jr_013_51e6

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_51ef:
    ld a, [c]
    and b
    jr nz, jr_013_51ef

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_51f8:
    ld a, [c]
    and b
    jr nz, jr_013_51f8

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_5201:
    ld a, [c]
    and b
    jr nz, jr_013_5201

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_520a:
    ld a, [c]
    and b
    jr nz, jr_013_520a

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_5213:
    ld a, [c]
    and b
    jr nz, jr_013_5213

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_521c:
    ld a, [c]
    and b
    jr nz, jr_013_521c

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_5225:
    ld a, [c]
    and b
    jr nz, jr_013_5225

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_013_522e:
    ld a, [c]
    and b
    jr nz, jr_013_522e

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld de, $000c
    add hl, de
    ldh a, [$d3]
    dec a
    ldh [$d3], a
    jr nz, jr_013_51dc

    ldh a, [$d9]
    ld l, a
    ldh a, [$da]
    ld h, a
    ld sp, hl
    ret


    db $ec
    and a
    inc hl
    ld bc, $0223
    ld bc, $0404
    inc hl
    ld [$0403], sp
    inc b
    inc bc
    inc bc
    db $ec
    inc sp
    dec b
    ld bc, $0601
    ld b, $08
    ld [$bfa3], sp
    ld bc, $2020
    inc h
    ld b, b
    call z, $0180
    ld d, $16
    add l
    sub l
    inc hl
    add b
    ld h, c
    inc hl
    db $10
    inc hl
    jr nc, jr_013_529d

    ld d, b
    ld bc, $9090
    inc hl
    jr nz, jr_013_52a4

    ld hl, $2201
    ld [hl+], a
    inc hl
    ld b, d
    inc hl
    ld b, h
    ld bc, $3838
    ld a, l
    dec b
    ldh [$e0], a
    jr @+$1a

    inc b
    inc b
    rst $08
    nop
    xor l
    rst $00
    adc d
    ld bc, $1a1a
    adc e
    sub l
    inc hl

jr_013_529d:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    daa

jr_013_52a4:
    ld [bc], a
    inc bc
    ld bc, $c101
    pop bc
    dec h
    ld hl, $1101
    ld de, $1023
    inc hl
    ld [$0701], sp
    rlca
    db $f4
    dec hl
    nop
    call nz, $8022
    ret nc

    add b
    xor c
    nop
    xor b
    and l
    nop
    or b
    ld bc, $0808
    and l
    pop hl
    ld bc, $7070
    adc e
    cp e
    rst $00
    or h
    db $ec
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    or e
    ld [hl+], a
    ld bc, $4ef8
    add b
    dec b
    inc bc
    inc bc
    inc c
    inc c
    db $10
    db $10
    inc hl
    jr nz, jr_013_5311

    ld b, b
    inc hl
    jr nz, jr_013_52f1

    jr nc, jr_013_5320

    ld c, h

jr_013_52f1:
    ld c, h
    inc hl
    add b
    inc hl
    db $10
    inc bc
    jr nc, @+$32

    ret nc

    ret nc

    inc hl
    jr nz, jr_013_5305

    ld sp, $2e31
    ld l, $22
    ld [hl+], a
    inc e

jr_013_5305:
    inc e
    db $ec
    dec a
    db $f4
    ld l, a
    rst $28
    ld a, l
    db $f4
    ld d, c
    nop
    or h
    db $ec

jr_013_5311:
    cp c
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$cfa9]
    dec a
    ld [$d109], a

jr_013_5320:
    call $3c9d
    ld a, $25
    call $2d83
    ld a, [$d109]
    inc a
    ld [$cfa9], a
    call $0fdb
    call $31f3
    call $3c97
    ld a, $0a
    ld hl, $4ef8
    rst $08
    ld a, $13
    ld hl, $5354
    rst $08
    ld a, $5b
    ld hl, $5673
    rst $08
    ld a, $0a
    ld hl, $4eff
    rst $08
    call $3200
    ret


    call $31f6
    call $3200
    ret


    ld h, d
    ld l, e
    push bc
    push hl
    call Call_013_537e
    pop hl
    pop bc
    ld de, $0939
    add hl, de
    inc b
    inc b
    inc c
    inc c
    ld a, $07

jr_013_536e:
    push bc
    push hl

jr_013_5370:
    ld [hl+], a
    dec c
    jr nz, jr_013_5370

    pop hl
    ld de, $0014
    add hl, de
    pop bc
    dec b
    jr nz, jr_013_536e

    ret


Call_013_537e:
    push hl
    ld a, $76
    ld [hl+], a
    inc a
    call Call_013_53ab
    inc a
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de

jr_013_538d:
    push hl
    ld a, $79
    ld [hl+], a
    ld a, $7f
    call Call_013_53ab
    ld [hl], $7a
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_013_538d

    ld a, $7b
    ld [hl+], a
    ld a, $7c
    call Call_013_53ab
    ld [hl], $7d
    ret


Call_013_53ab:
    ld d, c

jr_013_53ac:
    ld [hl+], a
    dec d
    jr nz, jr_013_53ac

    ret


    ld a, $02
    ld hl, $4000
    rst $08
    ld b, $08
    call $3340
    call $0e51
    call $0e5f
    ld de, $0054
    call $3b97
    ld hl, $5408
    call $1057
    ld hl, $540d
    call $1d3c
    call $1d81
    ret c

    ld a, [$cfa9]
    cp $01
    ret z

    call Call_013_541e
    jr c, jr_013_53f7

    ld a, $00
    call $2fcb
    ld a, $80
    ld [$ac60], a
    call $2fe1
    ld hl, $53fe
    call $1057
    ret


jr_013_53f7:
    ld hl, $5403
    call $1057
    ret


    ld d, $db
    ld d, l
    ld [hl], c
    ld d, b
    ld d, $0b
    ld d, [hl]
    ld [hl], c
    ld d, b
    ld d, $1c
    ld d, [hl]
    ld [hl], c
    ld d, b
    nop
    rlca
    ld c, $0b
    inc de
    dec d
    ld d, h
    ld bc, $02c0
    adc l
    adc [hl]
    ld d, b
    sbc b
    add h
    sub d
    ld d, b

Call_013_541e:
    call Call_013_550f
    push de
    ld hl, $d086
    ld bc, $0005
    xor a
    call $3041
    ld a, $04
    ld [$d08b], a
    ld hl, $5463
    call $1057

jr_013_5437:
    call Call_013_5468

jr_013_543a:
    call $0a57
    ldh a, [$a9]
    ld b, a
    and $01
    jr nz, jr_013_5453

    ld a, b
    and $f0
    jr z, jr_013_543a

    call Call_013_5490
    ld c, $03
    call $0468
    jr jr_013_5437

jr_013_5453:
    call Call_013_54e0
    pop de
    ld a, e
    cp l
    jr nz, jr_013_5461

    ld a, d
    cp h
    jr nz, jr_013_5461

    and a
    ret


jr_013_5461:
    scf
    ret


    ld d, $2e
    ld d, [hl]
    ld [hl], c
    ld d, b

Call_013_5468:
    ld hl, $c5da
    ld de, $d086
    ld c, $05

jr_013_5470:
    ld a, [de]
    add $f6
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_013_5470

    ld hl, $c5ee
    ld bc, $0005
    ld a, $7f
    call $3041
    ld hl, $c5ee
    ld a, [$d08b]
    ld e, a
    ld d, $00
    add hl, de
    ld [hl], $61
    ret


Call_013_5490:
    ld a, b
    and $20
    jr nz, jr_013_54a5

    ld a, b
    and $10
    jr nz, jr_013_54af

    ld a, b
    and $40
    jr nz, jr_013_54ba

    ld a, b
    and $80
    jr nz, jr_013_54c8

    ret


jr_013_54a5:
    ld a, [$d08b]
    and a
    ret z

    dec a
    ld [$d08b], a
    ret


jr_013_54af:
    ld a, [$d08b]
    cp $04
    ret z

    inc a
    ld [$d08b], a
    ret


jr_013_54ba:
    call Call_013_54d5
    ld a, [hl]
    cp $09
    jr z, jr_013_54c5

    inc a
    ld [hl], a
    ret


jr_013_54c5:
    ld [hl], $00
    ret


jr_013_54c8:
    call Call_013_54d5
    ld a, [hl]
    and a
    jr z, jr_013_54d2

    dec a
    ld [hl], a
    ret


jr_013_54d2:
    ld [hl], $09
    ret


Call_013_54d5:
    ld a, [$d08b]
    ld e, a
    ld d, $00
    ld hl, $d086
    add hl, de
    ret


Call_013_54e0:
    ld hl, $0000
    ld de, $d08a
    ld bc, $0001
    call Call_013_5501
    ld bc, $000a
    call Call_013_5501
    ld bc, $0064
    call Call_013_5501
    ld bc, $03e8
    call Call_013_5501
    ld bc, $2710

Call_013_5501:
    ld a, [de]
    dec de
    push hl
    ld hl, $0000
    call $30fe
    ld c, l
    ld b, h
    pop hl
    add hl, bc
    ret


Call_013_550f:
    ld a, $01
    call $2fcb
    ld de, $0000
    ld hl, $a009
    ld c, $02
    call Call_013_5533
    ld hl, $a00b
    ld c, $05
    call Call_013_553e
    ld hl, $a3dc
    ld c, $03
    call Call_013_5533
    call $2fe1
    ret


Call_013_5533:
jr_013_5533:
    ld a, [hl+]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec c
    jr nz, jr_013_5533

    ret


Call_013_553e:
jr_013_553e:
    ld a, [hl+]
    cp $50
    ret z

    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec c
    jr nz, jr_013_553e

    ret


    ld a, $02
    ld hl, $4000
    rst $08
    ld b, $08
    call $3340
    call $0e51
    call $0e5f
    ld de, $0054
    call $3b97
    ld hl, $5580
    call $1057
    ld hl, $5585
    call $1d3c
    call $1d81
    ret c

    ld a, [$cfa9]
    cp $01
    ret z

    ld a, $13
    ld hl, $4f1f
    rst $08
    ret


    ld d, $4a
    ld d, [hl]
    ld [hl], c
    ld d, b
    nop
    rlca
    ld c, $0b
    inc de
    adc l
    ld d, l
    ld bc, $02c0
    adc l
    adc [hl]
    ld d, b
    sbc b
    add h
    sub d
    ld d, b
    ld b, $06
    ld d, b
    ld b, $0e
    ld e, h
    ld b, $0e
    ld h, h
    dec de
    ld b, b
    nop
    nop
    push hl
    ld b, b
    ld b, $06
    ld d, b
    ld b, $0e
    ld e, h
    ld b, $0e
    ld h, h
    and e
    ld b, b
    nop
    nop
    push hl
    ld b, b
    dec l
    ldh [$5e], a
    dec l
    add sp, $6a
    dec l
    add sp, $72
    dec de
    ld b, b
    nop
    nop
    ld d, l
    ld b, c
    ld b, $00
    ld b, b
    ld b, $06
    ld b, [hl]
    ld b, $06
    ld c, [hl]
    dec de
    ld b, b
    nop
    nop
    ld [hl], l
    ld b, b
    dec l
    ldh [$5e], a
    scf
    sub b
    ld l, [hl]
    scf
    sub b
    db $76
    rst $20
    ld b, d
    nop
    nop
    sub l
    ld c, l
    scf
    ld d, b
    ld d, c
    scf
    nop
    ld d, [hl]
    scf
    nop
    ld e, d
    rst $20
    ld b, d
    nop
    nop
    push bc
    ld b, c
    rlca
    ld c, h
    ld d, l
    rlca
    inc l
    ld e, c
    rlca
    inc l
    ld e, l
    rst $20
    ld b, d
    nop
    nop
    dec [hl]
    ld b, d
    rlca
    inc c
    ld b, e
    rlca
    inc a
    ld b, a
    rlca
    inc a
    ld c, e
    rst $20
    ld b, d
    nop
    nop
    and l
    ld b, d
    dec l
    ldh [rHDMA5], a
    dec l
    ldh [$59], a
    dec l
    ldh [$5d], a
    rst $20
    ld b, d
    nop
    nop
    dec d
    ld b, e
    rlca
    inc a
    ld c, h
    rlca
    ld c, h
    ld d, b
    rlca
    ld c, h
    ld d, h
    cpl
    ld b, c
    nop
    nop
    add l
    ld b, e
    ld [$4be1], sp
    ld [$53e1], sp
    ld [$57e1], sp
    rst $20
    ld b, d
    nop
    nop
    push af
    ld b, e
    scf
    ld [hl], b
    ld h, l
    scf
    sub b
    ld l, c
    scf
    sub b
    ld l, l
    rst $20
    ld b, d
    nop
    nop
    ld h, l
    ld b, h
    ld [$58e1], sp
    ld [$6031], sp
    ld [$6431], sp
    rst $20
    ld b, d
    nop
    nop
    push de
    ld b, h
    rlca
    inc l
    ld e, [hl]
    rlca
    adc h
    ld h, l
    rlca
    adc h
    ld l, c
    rst $20
    ld b, d
    nop
    nop
    ld b, l
    ld b, l
    ld [$6531], sp
    ld [$6af1], sp
    ld [$6ef1], sp
    rst $20
    ld b, d
    nop
    nop
    or l
    ld b, l
    inc c
    nop
    ld b, b
    inc c
    ldh [rLY], a
    inc c
    ldh [rOBP0], a
    ld e, a
    ld b, c
    nop
    nop
    dec h
    ld b, [hl]
    dec l
    add sp, $74
    dec l
    xor b
    ld a, c
    dec l
    xor b
    ld a, l
    rst $20
    ld b, d
    nop
    nop
    sub l
    ld b, [hl]
    ld [$6ff1], sp
    ld [$7391], sp
    ld [$7791], sp
    rst $20
    ld b, d
    nop
    nop
    dec [hl]
    ld c, c
    scf
    ret nc

    ld b, e
    scf
    ld d, b
    ld c, h
    scf
    ld d, b
    ld d, b
    rst $20
    ld b, d
    nop
    nop
    dec d
    ld c, d
    scf
    nop
    ld e, e
    scf
    ld [hl], b
    ld e, a
    scf
    ld [hl], b
    ld h, e
    rst $20
    ld b, d
    nop
    nop
    add l
    ld c, d
    ld b, $3e
    ld [hl], h
    ld b, $fe
    ld a, b
    ld b, $fe
    ld a, h
    rst $20
    ld b, d
    nop
    nop
    push af
    ld c, d
    dec l
    nop
    ld b, b
    dec l
    and b
    ld c, b
    dec l
    and b
    ld c, h
    rst $20
    ld b, d
    nop
    nop
    or l
    ld c, h
    dec l
    and b
    ld c, l
    dec l
    ldh [$50], a
    dec l
    ldh [rHDMA4], a
    rst $20
    ld b, d
    nop
    nop
    dec h
    ld c, l
    ld [$4181], sp
    ld [$46e1], sp
    ld [$4ae1], sp
    ld a, a
    ld b, d
    nop
    nop
    dec b
    ld b, a
    rlca
    adc h
    ld l, d
    rlca
    inc e
    ld l, [hl]
    rlca
    inc e
    ld [hl], d
    rst $20
    ld b, c
    nop
    nop
    ld [hl], l
    ld b, a
    inc c
    ldh [rOBP1], a
    inc c
    add b
    ld c, [hl]
    inc c
    add b
    ld d, d
    ld b, a
    ld b, b
    nop
    nop
    push hl
    ld b, a
    ld [hl], a
    and c
    ld b, l
    ld [hl], a
    xor c
    ld d, c
    ld [hl], a
    xor c
    ld d, l
    rst $20
    ld b, d
    nop
    nop
    ld d, l
    ld c, b
    inc c
    add b
    ld d, e
    inc c
    ldh [$58], a
    inc c
    ldh [$5c], a
    rst $20
    ld b, d
    nop
    nop
    push bc
    ld c, b
    inc c
    ldh [$5d], a
    inc c
    or b
    ld h, c
    inc c
    or b
    ld h, l
    rst $20
    ld b, d
    nop
    nop
    and l
    ld c, c
    ld b, $0e
    ld h, [hl]
    ld b, $3e
    ld l, a
    ld b, $3e
    ld [hl], e
    inc sp
    ld b, d
    nop
    nop
    push de
    ld c, e
    inc c
    or b
    ld h, [hl]
    rlca
    inc e
    ld l, [hl]
    rlca
    inc e
    ld [hl], d
    rst $20
    ld b, c
    nop
    nop
    ld [hl], l
    ld b, a
    scf
    nop
    ld b, b
    ld [$7891], sp
    scf
    ld [hl], b
    ld h, h
    ld [hl], e
    ld b, b
    nop
    nop
    ld b, l
    ld c, h
    ld [hl], a
    and c
    ld b, l
    scf
    sub b
    ld a, b
    scf
    sub b
    ld a, h
    rst $20
    ld b, d
    nop
    nop
    ld d, l
    ld c, b
    ld [hl], a
    and c
    ld b, l
    ld a, b
    nop
    ld b, b
    scf
    sub b
    ld a, h
    rst $20
    ld b, d
    nop
    nop
    ld d, l
    ld c, b
    ld [hl], a
    and c
    ld b, l
    ld a, b
    nop
    ld b, h
    scf
    sub b
    ld a, h
    rst $20
    ld b, d
    nop
    nop
    ld d, l
    ld c, b
    ld [hl], a
    and c
    ld b, l
    ld a, b
    nop
    ld c, b
    scf
    sub b
    ld a, h
    rst $20
    ld b, d
    nop
    nop
    ld d, l
    ld c, b
    ld [hl], a
    and c
    ld b, l
    ld a, b
    nop
    ld c, h
    scf
    sub b
    ld a, h
    rst $20
    ld b, d
    nop
    nop
    ld d, l
    ld c, b
    push hl
    push bc
    push bc
    srl c
    srl c
    srl c
    ld b, $00
    add hl, bc
    pop bc
    ld a, c
    and $07
    ld c, a
    ld a, $01
    jr z, jr_013_57da

jr_013_57d6:
    add a
    dec c
    jr nz, jr_013_57d6

jr_013_57da:
    ld c, a
    dec b
    jr z, jr_013_57e7

    dec b
    jr z, jr_013_57ec

    ld a, c
    cpl
    and [hl]
    ld [hl], a
    jr jr_013_57f9

jr_013_57e7:
    ld a, [hl]
    or c
    ld [hl], a
    jr jr_013_57f9

jr_013_57ec:
    ld a, d
    cp $00
    jr nz, jr_013_57f5

    ld a, [hl]
    and c
    jr jr_013_57f9

jr_013_57f5:
    call $304d
    and c

jr_013_57f9:
    pop bc
    pop hl
    ld c, a
    ret


    ld a, [$c702]
    ld hl, $c72f
    ld de, $9000
    push de
    push af
    ld a, $2d
    call $2d83
    pop af
    ld [$d108], a
    ld [$cf60], a
    call $3856
    pop de
    ld a, $3e
    call $2d83
    ret


    ld a, [$c702]
    call $3741
    ret c

    ld a, $0a
    ld hl, $5549
    rst $08
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
    ld a, $0a
    ld hl, $54c0
    rst $08
    ld a, [$c702]
    ld [$d108], a
    ld hl, $c4cf
    ld d, $00
    ld e, $03
    ld a, $47
    call $2d83
    ret


    ld a, [$dcd7]
    and a
    jr z, jr_013_5876

    ld b, a
    ld hl, $dcfb
    ld de, $0030

jr_013_586d:
    ld a, [hl]
    and $0f
    jr nz, jr_013_5878

    add hl, de
    dec b
    jr nz, jr_013_586d

jr_013_5876:
    and a
    ret


jr_013_5878:
    scf
    ret


    xor a
    ld [$c2dd], a
    ld [$d265], a
    ld a, [$dcd7]
    and a
    ret z

    ld d, a
    ld hl, $dce5
    ld bc, $dcd8

jr_013_588d:
    ld a, [bc]
    inc bc
    cp $fd
    call nz, Call_013_5939
    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    dec d
    jr nz, jr_013_588d

    ld a, $01
    call $2fcb
    ld a, [$ad10]
    and a
    jr z, jr_013_58c8

    ld d, a
    ld hl, $ad2c
    ld bc, $ad11

jr_013_58af:
    ld a, [bc]
    inc bc
    cp $fd
    jr z, jr_013_58bf

    call Call_013_5939
    jr nc, jr_013_58bf

    ld a, $01
    ld [$d265], a

jr_013_58bf:
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    dec d
    jr nz, jr_013_58af

jr_013_58c8:
    call $2fe1
    ld c, $00

jr_013_58cd:
    ld a, [$db72]
    and $0f
    cp c
    jr z, jr_013_590b

    ld hl, $599f
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    call $2fcb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_013_590b

    push bc
    ld b, h
    ld c, l
    inc bc
    ld de, $001c
    add hl, de
    ld d, a

jr_013_58f1:
    ld a, [bc]
    inc bc
    cp $fd
    jr z, jr_013_5901

    call Call_013_5939
    jr nc, jr_013_5901

    ld a, $01
    ld [$d265], a

jr_013_5901:
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    dec d
    jr nz, jr_013_58f1

    pop bc

jr_013_590b:
    inc c
    ld a, c
    cp $0e
    jr c, jr_013_58cd

    call $2fe1
    ld a, [$c2dd]
    and a
    ret z

    ld a, $41
    ld hl, $60cd
    rst $08
    ld a, [$d265]
    and a
    push af
    ld a, [$d108]
    ld [$d265], a
    call $343b
    ld hl, $59c9
    pop af
    jr z, jr_013_5936

    ld hl, $59ce

jr_013_5936:
    jp $1057


Call_013_5939:
    push bc
    push de
    push hl
    ld d, h
    ld e, l
    ld hl, $d1ea
    ld bc, $8205
    call $3198
    ld hl, $d002
    ld de, $dc9f
    ld bc, $8205
    call $3198
    ld b, $05
    ld c, $00
    ld hl, $d006
    ld de, $d1ee

jr_013_595d:
    ld a, [de]
    cp [hl]
    jr nz, jr_013_5967

    dec de
    dec hl
    inc c
    dec b
    jr nz, jr_013_595d

jr_013_5967:
    pop hl
    push hl
    ld de, $fffa
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    push af
    ld a, c
    ld b, $01
    cp $05
    jr z, jr_013_5984

    ld b, $02
    cp $03
    jr nc, jr_013_5984

    ld b, $03
    cp $02
    jr nz, jr_013_599b

jr_013_5984:
    inc b
    ld a, [$c2dd]
    and a
    jr z, jr_013_598e

    cp b
    jr c, jr_013_599b

jr_013_598e:
    dec b
    ld a, b
    ld [$c2dd], a
    pop bc
    ld a, b
    ld [$d108], a
    pop bc
    scf
    ret


jr_013_599b:
    pop bc
    pop bc
    and a
    ret


    ld [bc], a
    nop
    and b
    ld [bc], a
    ld d, b
    and h
    ld [bc], a
    and b
    xor b
    ld [bc], a
    ldh a, [$ac]
    ld [bc], a
    ld b, b
    or c
    ld [bc], a
    sub b
    or l
    ld [bc], a
    ldh [$b9], a
    inc bc
    nop
    and b
    inc bc
    ld d, b
    and h
    inc bc
    and b
    xor b
    inc bc
    ldh a, [$ac]
    inc bc
    ld b, b
    or c
    inc bc
    sub b
    or l
    inc bc
    ldh [$b9], a
    ld d, $61
    ld d, d
    ld [hl], b
    ld d, b
    ld d, $ae
    ld d, d
    ld [hl], b
    ld d, b
    ld hl, $d099
    ld de, $dc9f
    ld bc, $8205
    call $3198
    ld a, $50
    ld [$d09e], a
    ret


    ld a, [$df9c]
    and a
    jp z, Jump_013_5b35

    ld [$d108], a
    ld [$cf60], a
    call $3856
    ld hl, $dcd7
    ld a, [hl]
    cp $06
    jp nc, Jump_013_5aa3

    inc a
    ld [hl], a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$df9c]
    ld [hl+], a
    ld [$cf60], a
    ld a, $ff
    ld [hl], a
    ld hl, $dcdf
    ld a, [$dcd7]
    dec a
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    ld hl, $df9c
    ld bc, $0030
    call $3026
    ld a, [$dcd7]
    dec a
    ld hl, $ddff
    call $30f4
    ld d, h
    ld e, l
    ld hl, $d47d
    call $3026
    ld a, [$d108]
    ld [$d265], a
    call $343b
    ld hl, $d073
    ld de, $d050
    ld bc, $000b
    call $3026
    call Call_013_5b3b
    jr c, jr_013_5a66

    ld a, [$dcd7]
    dec a
    ld [$d109], a
    xor a
    ld [$cf5f], a
    ld de, $d050
    ld hl, $63de
    ld a, $03
    rst $08

jr_013_5a66:
    ld a, [$dcd7]
    dec a
    ld hl, $de41
    call $30f4
    ld d, h
    ld e, l
    ld hl, $d050
    call $3026
    ld a, [$dcd7]
    dec a
    ld hl, $dcfe
    call $3927
    ld a, [hl]
    ld [$d143], a
    call Call_013_5b49
    ld a, [$dcd7]
    dec a
    ld hl, $dcfd
    call $3927
    ld a, [hl]
    and $80
    ld b, $13
    or b
    ld [hl], a
    xor a
    ld [$df9c], a
    and a
    ld [$c2dd], a
    ret


Jump_013_5aa3:
    ld a, $01
    call $2fcb
    ld hl, $ad10
    ld a, [hl]
    cp $14
    call $2fe1
    jr nc, jr_013_5b08

    xor a
    ld [$d109], a
    ld hl, $df9c
    ld de, $d018
    ld bc, $0020
    call $3026
    ld hl, $d47d
    ld de, $d00d
    ld bc, $000b
    call $3026
    ld hl, $5322
    ld a, $14
    rst $08
    ld a, [$d108]
    ld [$d265], a
    call $343b
    call Call_013_5b3b
    ld hl, $d073
    jr c, jr_013_5af7

    ld a, $02
    ld [$cf5f], a
    ld de, $d050
    ld hl, $63de
    ld a, $03
    rst $08
    ld hl, $d050

jr_013_5af7:
    ld a, $01
    call $2fcb
    ld de, $b082
    ld bc, $000b
    call $3026
    call $2fe1

jr_013_5b08:
    ld a, $01
    call $2fcb
    ld a, [$ad45]
    ld [$d143], a
    call $2fe1
    call Call_013_5b83
    ld a, $01
    call $2fcb
    ld hl, $ad44
    ld a, [hl]
    and $80
    ld b, $13
    or b
    ld [hl], a
    call $2fe1
    xor a
    ld [$df9c], a
    ld a, $01
    ld [$c2dd], a
    ret


Jump_013_5b35:
    ld a, $02
    ld [$c2dd], a
    ret


Call_013_5b3b:
    ld hl, $5b44
    call $1057
    jp $1dcf


    ld d, $fc
    ld d, d
    ld [hl], b
    ld d, b

Call_013_5b49:
    ld a, [$dcd7]
    dec a
    ld hl, $dcfc
    call $3927

Call_013_5b53:
    ld a, [$d269]
    inc a
    rrca
    rrca
    ld b, a
    ld a, [$d143]
    or b
    ld [hl+], a
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    cp $01
    jr nz, jr_013_5b78

    ld a, b
    cp $14
    jr nz, jr_013_5b78

    ld a, [$dcad]
    ld b, a
    ld a, [$dcae]
    ld c, a

jr_013_5b78:
    call $2caf
    ld b, a
    ld a, [$d472]
    rrca
    or b
    ld [hl], a
    ret


Call_013_5b83:
    ld a, $01
    call $2fcb
    ld hl, $ad43
    call Call_013_5b53
    call $2fe1
    ret


    push bc
    ld a, $01
    call $2fcb
    ld hl, $ad43
    pop bc
    call Call_013_5baf
    call $2fe1
    ret


    ld a, [$dcd7]
    dec a
    ld hl, $dcfc
    push bc
    call $3927
    pop bc

Call_013_5baf:
    xor a
    ld [hl+], a
    ld a, $7e
    rrc b
    or b
    ld [hl], a
    ret


    ld a, [$d109]
    ld hl, $dcfc
    call $3927
    ld a, [$d143]
    push af
    ld a, $01
    ld [$d143], a
    call Call_013_5b53
    pop af
    ld [$d143], a
    ret


    ld hl, $dcfe
    call Call_013_5c31
    ret


    ld hl, $dcfa
    call Call_013_5c0a
    ret


    ld hl, $dcdf
    jp Jump_013_5c56


    ld hl, $dcdf
    call Call_013_5c56
    ret z

    ld a, c
    ld hl, $dce5
    ld bc, $0030
    call $30fe
    ld a, [$d47b]
    cp [hl]
    jr nz, jr_013_5c08

    inc hl
    ld a, [$d47c]
    cp [hl]
    jr nz, jr_013_5c08

    ld a, $01
    and a
    ret


jr_013_5c08:
    xor a
    ret


Call_013_5c0a:
    ld c, $00
    ld a, [$dcd7]
    ld d, a

jr_013_5c10:
    ld a, d
    dec a
    push hl
    push bc
    ld bc, $0030
    call $30fe
    pop bc
    ld a, b
    cp [hl]
    pop hl
    jr z, jr_013_5c22

    jr nc, jr_013_5c26

jr_013_5c22:
    ld a, c
    or $01
    ld c, a

jr_013_5c26:
    sla c
    dec d
    jr nz, jr_013_5c10

    call Call_013_5c67
    ld a, c
    and a
    ret


Call_013_5c31:
    ld c, $00
    ld a, [$dcd7]
    ld d, a

jr_013_5c37:
    ld a, d
    dec a
    push hl
    push bc
    ld bc, $0030
    call $30fe
    pop bc
    ld a, b
    cp [hl]
    pop hl
    jr c, jr_013_5c4b

    ld a, c
    or $01
    ld c, a

jr_013_5c4b:
    sla c
    dec d
    jr nz, jr_013_5c37

    call Call_013_5c67
    ld a, c
    and a
    ret


Call_013_5c56:
Jump_013_5c56:
    ld c, $ff
    ld hl, $dcd8

jr_013_5c5b:
    ld a, [hl+]
    cp $ff
    ret z

    inc c
    cp b
    jr nz, jr_013_5c5b

    ld a, $01
    and a
    ret


Call_013_5c67:
    ld e, $fe
    ld hl, $dcd8

jr_013_5c6c:
    ld a, [hl+]
    cp $ff
    ret z

    cp $fd
    jr nz, jr_013_5c77

    ld a, c
    and e
    ld c, a

jr_013_5c77:
    rlc e
    jr jr_013_5c6c

    ld a, [$c2dc]
    cp $04
    jr nz, jr_013_5c8a

    ld a, [$d22d]
    and a
    jr z, jr_013_5c8a

    jr jr_013_5c8f

jr_013_5c8a:
    ld hl, $5cd2
    jr jr_013_5c94

jr_013_5c8f:
    ld hl, $5cf7
    jr jr_013_5c94

jr_013_5c94:
    ldh a, [$de]
    push af
    xor a
    ldh [$de], a
    ld a, [$c2c6]
    push af
    ld a, [$cf63]
    ld b, a
    ld a, [$cf64]
    ld c, a
    push bc
    push hl
    call $31f3
    call $0fc8
    call $1ad2
    ld a, $3e
    ld hl, $753e
    rst $08
    pop hl
    call $2fec
    call $31f3
    call $0fc8
    pop bc
    ld a, b
    ld [$cf63], a
    ld a, c
    ld [$cf64], a
    pop af
    ld [$c2c6], a
    pop af
    ldh [$de], a
    ret


    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld a, [$cf64]
    and $fc
    or $01
    ld [$cf64], a

jr_013_5ce3:
    ld a, [$cf63]
    and $7f
    ld hl, $5d2a
    rst $28
    call Call_013_5d3a
    ld a, [$cf63]
    bit 7, a
    jr z, jr_013_5ce3

    ret


    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld a, [$cf64]
    and $fc
    or $01
    ld [$cf64], a

jr_013_5d08:
    ld a, $40
    ld hl, $4dd2
    rst $08
    ld a, [$cf63]
    and $7f
    ld hl, $5d2a
    rst $28
    call Call_013_5d3a
    ld a, $40
    ld hl, $4dfd
    rst $08
    jr c, jr_013_5d29

    ld a, [$cf63]
    bit 7, a
    jr z, jr_013_5d08

jr_013_5d29:
    ret


    ld [hl], d
    ld e, l
    and c
    ld e, l
    and $5d
    xor h
    ld e, l
    add $5d
    and $5d
    sub $5d
    ld l, h
    ld e, l

Call_013_5d3a:
    ld hl, $cf64
    bit 6, [hl]
    jr nz, jr_013_5d49

    bit 5, [hl]
    jr nz, jr_013_5d56

    call $045a
    ret


jr_013_5d49:
    ld a, $34
    ld hl, $40b4
    rst $08
    jr nc, jr_013_5d56

    ld hl, $cf64
    res 6, [hl]

jr_013_5d56:
    ld hl, $cf64
    res 5, [hl]
    ld a, $41
    ld hl, $402d
    rst $08
    ret


Call_013_5d62:
    ld a, [$cf63]
    and $80
    or h
    ld [$cf63], a
    ret


    ld hl, $cf63
    set 7, [hl]
    ret


    ld hl, $cf64
    res 6, [hl]
    call $31f3
    call $0fc8
    ld a, $41
    ld hl, $402d
    rst $08
    call Call_013_5df2
    ld a, [$d108]
    cp $fd
    jr z, jr_013_5d9b

    call Call_013_5eea
    ld hl, $cf64
    set 4, [hl]
    ld h, $04
    call Call_013_5d62
    ret


jr_013_5d9b:
    ld h, $01
    call Call_013_5d62
    ret


    call Call_013_633a
    ld a, [$cf63]
    inc a
    ld [$cf63], a
    ret


    call Call_013_5e2c
    jr nc, jr_013_5db7

    ld h, $00
    call Call_013_5d62
    ret


jr_013_5db7:
    bit 0, a
    jr nz, jr_013_5dc0

    and $c3
    jp Jump_013_5e54


jr_013_5dc0:
    ld h, $07
    call Call_013_5d62
    ret


    call Call_013_5fb6
    ld hl, $cf64
    res 4, [hl]
    ld a, [$cf63]
    inc a
    ld [$cf63], a
    ret


    call Call_013_5e2c
    jr nc, jr_013_5de1

    ld h, $00
    call Call_013_5d62
    ret


jr_013_5de1:
    and $f3
    jp Jump_013_5e54


    call $3c74
    ret nc

    ld a, [$cf63]
    inc a
    ld [$cf63], a
    ret


Call_013_5df2:
    ld a, [$cf5f]
    cp $03
    jr nz, jr_013_5e10

    ld a, [$d018]
    ld [$cf60], a
    call $3856
    ld hl, $d018
    ld de, $d10e
    ld bc, $0030
    call $3026
    jr jr_013_5e2a

jr_013_5e10:
    ld a, $14
    ld hl, $484a
    rst $08
    ld a, [$d108]
    cp $fd
    jr z, jr_013_5e2a

    ld a, [$cf5f]
    cp $02
    jr c, jr_013_5e2a

    ld a, $14
    ld hl, $4890
    rst $08

jr_013_5e2a:
    and a
    ret


Call_013_5e2c:
    call $0984
    ld a, [$cf5f]
    cp $03
    jr nz, jr_013_5e4e

    push hl
    push de
    push bc
    ld a, $38
    ld hl, $6f95
    rst $08
    pop bc
    pop de
    pop hl
    ld a, [$cf73]
    and $c0
    jr nz, jr_013_5e52

    ld a, [$cf73]
    jr jr_013_5e50

jr_013_5e4e:
    ldh a, [$a7]

jr_013_5e50:
    and a
    ret


jr_013_5e52:
    scf
    ret


Jump_013_5e54:
    push af
    ld a, [$cf64]
    and $03
    ld c, a
    pop af
    bit 1, a
    jp nz, Jump_013_5ee4

    bit 5, a
    jr nz, jr_013_5ec7

    bit 4, a
    jr nz, jr_013_5ebd

    bit 0, a
    jr nz, jr_013_5eb8

    bit 6, a
    jr nz, jr_013_5ea0

    bit 7, a
    jr nz, jr_013_5e77

    jr jr_013_5ece

jr_013_5e77:
    ld a, [$cf5f]
    cp $02
    jr nc, jr_013_5ece

    and a
    ld a, [$dcd7]
    jr z, jr_013_5e87

    ld a, [$d280]

jr_013_5e87:
    ld b, a
    ld a, [$d109]
    inc a
    cp b
    jr z, jr_013_5ece

    ld [$d109], a
    ld b, a
    ld a, [$cf5f]
    and a
    jr nz, jr_013_5ede

    ld a, b
    inc a
    ld [$d0d8], a
    jr jr_013_5ede

jr_013_5ea0:
    ld a, [$d109]
    and a
    jr z, jr_013_5ece

    dec a
    ld [$d109], a
    ld b, a
    ld a, [$cf5f]
    and a
    jr nz, jr_013_5ede

    ld a, b
    inc a
    ld [$d0d8], a
    jr jr_013_5ede

jr_013_5eb8:
    ld a, c
    cp $03
    jr z, jr_013_5ee4

jr_013_5ebd:
    inc c
    ld a, $03
    cp c
    jr nc, jr_013_5ecf

    ld c, $01
    jr jr_013_5ecf

jr_013_5ec7:
    dec c
    jr nz, jr_013_5ecf

    ld c, $03
    jr jr_013_5ecf

jr_013_5ece:
    ret


jr_013_5ecf:
    ld a, [$cf64]
    and $fc
    or c
    ld [$cf64], a
    ld h, $04
    call Call_013_5d62
    ret


jr_013_5ede:
    ld h, $00
    call Call_013_5d62
    ret


Jump_013_5ee4:
jr_013_5ee4:
    ld h, $07
    call Call_013_5d62
    ret


Call_013_5eea:
    call Call_013_5f45
    xor a
    ldh [$d4], a
    ld a, [$d236]
    ld [$d265], a
    ld [$cf60], a
    ld hl, $c4a8
    ld [hl], $74
    inc hl
    ld [hl], $e8
    inc hl
    ld hl, $c4aa
    ld bc, $8103
    ld de, $d265
    call $3198
    ld hl, $c4ae
    call $382d
    ld hl, $5f77
    call Call_013_6528
    call Call_013_6505
    ld hl, $c4d0
    call $1078
    ld hl, $c4b2
    call Call_013_5f66
    ld hl, $c4f9
    ld a, $f3
    ld [hl+], a
    ld a, [$d236]
    ld [$d265], a
    call $343b
    call $1078
    call Call_013_5f8f
    call Call_013_5f9b
    call Call_013_5fa6
    ret


Call_013_5f45:
    ld hl, $d130
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $d132
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ld a, $03
    ld hl, $4699
    rst $08
    ld hl, $cda1
    call $334e
    ld b, $03
    call $3340
    call $045a
    ret


Call_013_5f66:
    push hl
    ld a, $14
    ld hl, $4bdd
    rst $08
    pop hl
    ret c

    ld a, $ef
    jr nz, jr_013_5f75

    ld a, $f5

jr_013_5f75:
    ld [hl], a
    ret


    ld b, c
    sbc $ea
    db $d3
    add d
    or b
    ld [bc], a
    ret nc

    ld hl, $c4a7
    ld bc, $0014
    ld d, $12

jr_013_5f87:
    ld a, $31
    ld [hl], a
    add hl, bc
    dec d
    jr nz, jr_013_5f87

    ret


Call_013_5f8f:
    ld hl, $c52c
    ld b, $14
    ld a, $62

jr_013_5f96:
    ld [hl+], a
    dec b
    jr nz, jr_013_5f96

    ret


Call_013_5f9b:
    ld hl, $c524
    ld [hl], $71
    ld hl, $c52b
    ld [hl], $ed
    ret


Call_013_5fa6:
    ld bc, $d123
    ld a, $02
    ld hl, $4a68
    rst $08
    ret nc

    ld hl, $c4b3
    ld [hl], $3f
    ret


Call_013_5fb6:
    ld a, [$d236]
    ld [$d265], a
    ld [$cf60], a
    xor a
    ldh [$d4], a
    call Call_013_5fda
    call Call_013_6002
    call Call_013_5fed
    ld hl, $cf64
    bit 4, [hl]
    jr nz, jr_013_5fd6

    call $32f9
    ret


jr_013_5fd6:
    call Call_013_6226
    ret


Call_013_5fda:
    ld a, [$cf64]
    and $03
    ld c, a
    call Call_013_64cd
    ld hl, $c540
    ld bc, $0a14
    call $0fb6
    ret


Call_013_5fed:
    ld a, [$cf64]
    and $03
    ld c, a
    ld a, $02
    ld hl, $4c8a
    rst $08
    call $045a
    ld hl, $cf64
    set 5, [hl]
    ret


Call_013_6002:
    ld a, [$cf64]
    and $03
    dec a
    ld hl, $600d
    rst $28
    ret


    inc de
    ld h, b
    ld b, a
    ld h, c
    xor [hl]
    ld h, c
    ld hl, $c554
    ld b, $00
    ld a, $26
    call $2d83
    ld hl, $c55c
    ld [hl], $41
    ld de, $6119
    ld hl, $c590
    call $1078
    ld a, [$d12a]
    ld b, a
    and $0f
    jr nz, jr_013_6055

    ld a, b
    and $f0
    jr z, jr_013_603d

    ld hl, $c548
    ld [hl], $e8

jr_013_603d:
    ld a, [$cf5f]
    cp $02
    jr z, jr_013_6060

    ld hl, $c5aa
    push hl
    ld de, $d12e
    ld a, $45
    call $2d83
    pop hl
    jr nz, jr_013_6066

    jr jr_013_6060

jr_013_6055:
    ld de, $6142
    ld hl, $c5a5
    call $1078
    jr jr_013_6066

jr_013_6060:
    ld de, $6127
    call $1078

jr_013_6066:
    ld hl, $c5cd
    ld a, $2c
    call $2d83
    ld hl, $c549
    ld de, $0014
    ld b, $0a
    ld a, $31

jr_013_6078:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_013_6078

    ld de, $612b
    ld hl, $c55e
    call $1078
    ld hl, $c5c9
    call Call_013_60d3
    ld hl, $c575
    ld bc, $0307
    ld de, $d116
    call $3198
    call Call_013_60e7
    ld hl, $c5b1
    ld bc, $0307
    ld de, $d1ea
    call $3198
    ld de, $6136
    ld hl, $c59a
    call $1078
    ld de, $613f
    ld hl, $c5c6
    call $1078
    ld hl, $c5eb
    ld a, [$d12d]
    ld b, a
    ld de, $d118
    ld a, $17
    call $2d83
    ld hl, $c5ea
    ld [hl], $40
    ld hl, $c5f3
    ld [hl], $41
    ret


Call_013_60d3:
    ld a, [$d12d]
    push af
    cp $64
    jr z, jr_013_60df

    inc a
    ld [$d12d], a

jr_013_60df:
    call $382d
    pop af
    ld [$d12d], a
    ret


Call_013_60e7:
    ld a, [$d12d]
    cp $64
    jr z, jr_013_6111

    inc a
    ld d, a
    ld a, $14
    ld hl, $4e47
    rst $08
    ld hl, $d118
    ld hl, $d118
    ldh a, [$b6]
    sub [hl]
    dec hl
    ld [$d1ec], a
    ldh a, [$b5]
    sbc [hl]
    dec hl
    ld [$d1eb], a
    ldh a, [$b4]
    sbc [hl]
    ld [$d1ea], a
    ret


jr_013_6111:
    ld hl, $d1ea
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    sub d
    sub e
    add b
    sub e
    sub h
    sub d
    di
    ld c, [hl]
    sub e
    sbc b
    adc a
    add h
    di
    ld d, b
    adc [hl]
    adc d
    ld a, a
    ld d, b
    add h
    sub a
    adc a
    ld a, a
    adc a
    adc [hl]
    adc b
    adc l
    sub e
    sub d
    ld d, b
    adc e
    add h
    sub l
    add h
    adc e
    ld a, a
    sub h
    adc a
    ld d, b
    sub e
    adc [hl]
    ld d, b
    ld d, h
    sub c
    sub h
    sub d
    ld d, b
    ld de, $61a0
    ld hl, $c540
    call $1078
    call Call_013_6189
    ld hl, $c548
    call $1078
    ld de, $61a9
    ld hl, $c568
    call $1078
    ld hl, $d110
    ld de, $d25e
    ld bc, $0004
    call $3026
    ld hl, $c570
    ld a, $28
    ld [$d1ea], a
    ld a, $20
    call $2d83
    ld hl, $c588
    ld a, $28
    ld [$d1ea], a
    ld a, $23
    call $2d83
    ret


Call_013_6189:
    ld de, $61a5
    ld a, [$d10f]
    and a
    ret z

    ld b, a
    ld a, $0a
    ld hl, $4771
    rst $08
    ld a, b
    ld [$d265], a
    call $3468
    ret


    adc b
    sub e
    add h
    adc h
    ld d, b
    db $e3
    db $e3
    db $e3
    ld d, b
    adc h
    adc [hl]
    sub l
    add h
    ld d, b
    call Call_013_61cc
    ld hl, $c54a
    ld de, $0014
    ld b, $0a
    ld a, $31

jr_013_61bb:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_013_61bb

    ld hl, $c54b
    ld bc, $0006
    ld a, $28
    call $2d83
    ret


Call_013_61cc:
    ld de, $621e
    ld hl, $c554
    call $1078
    ld de, $6222
    ld hl, $c590
    call $1078
    ld hl, $c56a
    ld bc, $8205
    ld de, $d114
    call $3198
    ld hl, $6216
    call Call_013_6528
    call Call_013_6505
    ld a, $01
    ld hl, $669f
    rst $08
    ld hl, $c5a6
    call $1078
    ld a, [$d12c]
    and a
    jr z, jr_013_6215

    cp $7f
    jr z, jr_013_6215

    and $80
    ld a, $ef
    jr z, jr_013_6211

    ld a, $f5

jr_013_6211:
    ld hl, $c5ad
    ld [hl], a

jr_013_6215:
    ret


    rst $38
    db $dd
    xor b
    db $d3
    and [hl]
    xor a
    dec c
    ret nc

    ld [hl], e
    ld [hl], h
    add sp, $50
    adc [hl]
    sub e
    di
    ld d, b

Call_013_6226:
    ld hl, $d123
    ld a, $2d
    call $2d83
    call Call_013_62ad
    jr c, jr_013_6238

    and a
    jr z, jr_013_623f

    jr jr_013_6246

jr_013_6238:
    call Call_013_6271
    call $32f9
    ret


jr_013_623f:
    call Call_013_6253
    call $32f9
    ret


jr_013_6246:
    call $32f9
    call Call_013_6253
    ld a, [$d108]
    call $37d5
    ret


Call_013_6253:
    ld hl, $cf64
    set 5, [hl]
    ld a, [$d108]
    cp $c9
    jr z, jr_013_6266

    ld hl, $c4a0
    call $3786
    ret


jr_013_6266:
    xor a
    ld [$c2c6], a
    ld hl, $c4a0
    call $378b
    ret


Call_013_6271:
    ld a, [$d108]
    cp $c9
    jr z, jr_013_6281

    ld a, $01
    ld [$c2c6], a
    call Call_013_6289
    ret


jr_013_6281:
    xor a
    ld [$c2c6], a
    call Call_013_6289
    ret


Call_013_6289:
    ld a, [$d108]
    call $3741
    ret c

    call Call_013_6307
    ld de, $9000
    ld a, $3e
    call $2d83
    ld hl, $c4a0
    ld d, $00
    ld e, $02
    ld a, $46
    call $2d83
    ld hl, $cf64
    set 6, [hl]
    ret


Call_013_62ad:
    ld a, [$cf5f]
    ld hl, $62b5
    rst $28
    ret


    cp a
    ld h, d
    rst $08
    ld h, d
    pop de
    ld h, d
    db $ed
    ld h, d
    ld bc, $fa63
    add hl, bc
    pop de
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    ld b, h
    ld c, l
    jr jr_013_62f2

    xor a
    ret


    ld hl, $ad26
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    ld b, h
    ld c, l
    ld a, $01
    call $2fcb
    call Call_013_62f2
    push af
    call $2fe1
    pop af
    ret


    ld bc, $d10e
    jr jr_013_62f2

Call_013_62f2:
jr_013_62f2:
    ld a, [$d108]
    cp $fd
    jr z, jr_013_62fe

    call Call_013_653f
    jr c, jr_013_6305

jr_013_62fe:
    xor a
    scf
    ret


    ld a, $01
    and a
    ret


jr_013_6305:
    xor a
    ret


Call_013_6307:
    nop
    push hl
    push de
    push bc
    push af
    call $045a
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld de, $5204
    ld bc, $3e01
    ld hl, $97f0
    call $0f82
    pop af
    ldh [rVBK], a
    pop af
    pop bc
    pop de
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

Call_013_633a:
    xor a
    ldh [$d4], a
    ld hl, $cda1
    call $334e
    ld b, $03
    call $3340
    call Call_013_5f8f
    ld de, $63c0
    ld hl, $c4bc
    call $1078
    ld de, $621e
    ld hl, $c4e4
    call $1078
    ld de, $6222
    ld hl, $c50c
    call $1078
    ld de, $63c4
    ld hl, $c4e7
    call $1078
    ld de, $63c4
    ld hl, $c50f
    call $1078
    ld a, [$d129]
    ld de, $63ca
    cp $06
    jr c, jr_013_6393

    ld de, $63fd
    cp $0b
    jr c, jr_013_6393

    ld de, $643d
    cp $29
    jr c, jr_013_6393

    ld de, $646e

jr_013_6393:
    ld hl, $c555
    call $1078
    ld hl, $cf64
    set 5, [hl]
    call $32f9
    call $045a
    ld hl, $c4a0
    call $3786
    ld a, $41
    ld hl, $402d
    rst $08
    call Call_013_6497
    ld a, [$d129]
    cp $06
    ret nc

    ld de, $00bb
    call $3c23
    ret


    add h
    add [hl]
    add [hl]
    ld d, b
    and $e6
    and $e6
    and $50
    adc b
    or e
    call nc, $ac7f
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    or d
    ld c, [hl]
    xor b
    xor l
    or d
    xor b
    and e
    and h
    add sp, $7f
    adc b
    or e
    call nc, $a67f
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or e
    and d
    and a
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    rst $20
    ld d, b
    adc b
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    add sp, $4e
    adc b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    sub [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    call nc, $a84e
    xor l
    or d
    xor b
    and e
    and h
    and $7f
    adc b
    or e
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld c, [hl]
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $50
    sub e
    and a
    xor b
    or d
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    and b
    ld c, [hl]
    xor e
    xor [hl]
    or e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and a
    and b
    or e
    and d
    and a
    add sp, $50

Call_013_6497:
    call Call_013_62ad
    ret nc

    ld a, [$d129]
    ld e, $07
    cp $06
    jr c, jr_013_64ab

    ld e, $08
    cp $0b
    jr c, jr_013_64ab

    ret


jr_013_64ab:
    push de
    ld a, $01
    ld [$c2c6], a
    call Call_013_6307
    ld de, $9000
    ld a, $3e
    call $2d83
    pop de
    ld hl, $c4a0
    ld d, $00
    ld a, $46
    call $2d83
    ld hl, $cf64
    set 6, [hl]
    ret


Call_013_64cd:
    ld hl, $c511
    ld a, $36
    call Call_013_64f7
    ld hl, $c513
    ld a, $36
    call Call_013_64f7
    ld hl, $c515
    ld a, $36
    call Call_013_64f7
    ld a, c
    cp $02
    ld a, $3a
    ld hl, $c511
    jr c, jr_013_64f7

    ld hl, $c513
    jr z, jr_013_64f7

    ld hl, $c515

Call_013_64f7:
jr_013_64f7:
    push bc
    ld [hl+], a
    inc a
    ld [hl-], a
    ld bc, $0014
    add hl, bc
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    pop bc
    ret


Call_013_6505:
    ld de, $d073
    ld bc, $000b
    jr jr_013_650d

jr_013_650d:
    ld a, [$cf5f]
    cp $02
    jr nz, jr_013_6522

    ld a, $01
    call $2fcb
    push de
    call $3026
    pop de
    call $2fe1
    ret


jr_013_6522:
    push de
    call $3026
    pop de
    ret


Call_013_6528:
    ld a, [$cf5f]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf5f]
    cp $03
    ret z

    ld a, [$d109]
    jp $30f4


Call_013_653f:
    ld hl, $0022
    add hl, bc
    ld a, [hl+]
    or [hl]
    jr z, jr_013_6552

    ld hl, $0020
    add hl, bc
    ld a, [hl]
    and $27
    jr nz, jr_013_6552

    and a
    ret


jr_013_6552:
    scf
    ret


    ld a, [$d230]
    dec a
    ld c, a
    ld hl, $6564
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, d
    ld h, l
    ld l, d
    ld h, l
    ld l, d
    ld h, l
    ld hl, $d47d
    ld de, $d488
    ld bc, $000b
    call $3026
    ld hl, $65da
    ld de, $d47d
    ld bc, $000b
    call $3026
    call Call_013_65b7
    xor a
    ldh [$a8], a
    ldh [$a7], a
    ld a, [$cfcc]
    push af
    and $f8
    add $03
    ld [$cfcc], a
    ld hl, $65df
    ld a, $13
    call $09ee
    ld hl, $74c1
    ld a, $0f
    rst $08
    call $0a0a
    pop af
    ld [$cfcc], a
    ld hl, $d488
    ld de, $d47d
    ld bc, $000b
    call $3026
    ret


Call_013_65b7:
    ld hl, $d288
    ld [hl], $01
    inc hl
    ld [hl], $12
    inc hl
    ld [hl], $01
    inc hl
    ld [hl], $ff
    ld hl, $d292
    ld [hl], $00
    inc hl
    ld [hl], $ff
    ld hl, $d2a6
    ld a, $01
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld [hl+], a
    ld [hl], $ff
    ret


    add e
    sub h
    add e
    add h
    ld d, b
    nop
    rst $38
    push hl
    push de
    push bc
    ld a, [$cf60]
    push af
    ldh a, [rOBP0]
    push af
    ld a, [$d236]
    push af
    call Call_013_6607
    pop af
    ld [$d236], a
    pop af
    ldh [rOBP0], a
    pop af
    ld [$cf60], a
    pop bc
    pop de
    pop hl
    ld a, [$d1ed]
    and a
    ret z

    scf
    ret


Call_013_6607:
    ld a, $e4
    ldh [rOBP0], a
    ld de, $0000
    call $3b97
    ld a, $23
    ld hl, $4f53
    rst $08
    ld de, $6831
    ld hl, $8000
    ld bc, $1308
    call $0eba
    xor a
    ld [$c2a6], a
    call $31f6
    xor a
    ldh [$d4], a
    ld a, [$d1ea]
    ld [$cd99], a
    ld c, $00
    call Call_013_6703
    ld a, [$d1ea]
    ld [$d108], a
    ld [$cf60], a
    call Call_013_6708
    ld de, $9000
    ld hl, $9310
    ld bc, $0031
    call $0eba
    ld a, $31
    ld [$d1ec], a
    call Call_013_6755
    ld a, [$d1eb]
    ld [$d108], a
    ld [$cf60], a
    call Call_013_6711
    ld a, [$d1ea]
    ld [$d108], a
    ld [$cf60], a
    ld a, $01
    ldh [$d4], a
    call Call_013_6794
    jr c, jr_013_667c

    ld a, [$d1ea]
    call $37ce

jr_013_667c:
    ld de, $0022
    call $3b97
    ld c, $50
    call $0468
    ld c, $01
    call Call_013_6703
    call Call_013_6726
    jr c, jr_013_66df

    ld a, $cf
    ld [$d1ec], a
    call Call_013_6755
    xor a
    ld [$d1ed], a
    ld a, [$d1eb]
    ld [$cd99], a
    ld c, $00
    call Call_013_6703
    call Call_013_67a6
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_013_6794
    jr c, jr_013_66de

    ld a, [$c2c6]
    push af
    ld a, $01
    ld [$c2c6], a
    ld a, [$d108]
    push af
    ld a, [$cd99]
    ld [$d108], a
    ld hl, $c4cf
    ld d, $00
    ld e, $04
    ld a, $47
    call $2d83
    pop af
    ld [$d108], a
    pop af
    ld [$c2c6], a
    ret


jr_013_66de:
    ret


jr_013_66df:
    ld a, $01
    ld [$d1ed], a
    ld a, [$d1ea]
    ld [$cd99], a
    ld c, $00
    call Call_013_6703
    call Call_013_67a6
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_013_6794
    ret c

    ld a, [$cd99]
    call $37ce
    ret


Call_013_6703:
    ld b, $0b
    jp $3340


Call_013_6708:
    call $3856
    ld hl, $c4cf
    jp $3786


Call_013_6711:
    call $3856
    ld a, $01
    ld [$c2c6], a
    ld de, $9000
    ld a, $3e
    call $2d83
    xor a
    ld [$c2c6], a
    ret


Call_013_6726:
    call $092f
    ld bc, $010e

jr_013_672c:
    push bc
    call Call_013_6779
    pop bc
    jr c, jr_013_673f

    push bc
    call Call_013_6741
    pop bc
    inc b
    dec c
    dec c
    jr nz, jr_013_672c

    and a
    ret


jr_013_673f:
    scf
    ret


Call_013_6741:
jr_013_6741:
    ld a, $cf
    ld [$d1ec], a
    call Call_013_6755
    ld a, $31
    ld [$d1ec], a
    call Call_013_6755
    dec b
    jr nz, jr_013_6741

    ret


Call_013_6755:
    push bc
    xor a
    ldh [$d4], a
    ld hl, $c4cf
    ld bc, $0707
    ld de, $000d

jr_013_6762:
    push bc

jr_013_6763:
    ld a, [$d1ec]
    add [hl]
    ld [hl+], a
    dec c
    jr nz, jr_013_6763

    pop bc
    add hl, de
    dec b
    jr nz, jr_013_6762

    ld a, $01
    ldh [$d4], a
    call $31f6
    pop bc
    ret


Call_013_6779:
jr_013_6779:
    call $045a
    push bc
    call $0a57
    ldh a, [$a8]
    pop bc
    and $02
    jr nz, jr_013_678c

jr_013_6787:
    dec c
    jr nz, jr_013_6779

    and a
    ret


jr_013_678c:
    ld a, [$d1e9]
    and a
    jr nz, jr_013_6787

    scf
    ret


Call_013_6794:
    ld a, [$d109]
    ld hl, $dcdf
    call $3927
    ld b, h
    ld c, l
    ld a, $13
    ld hl, $653f
    rst $08
    ret


Call_013_67a6:
    ld a, [$d1ed]
    and a
    ret nz

    ld de, $00a4
    call $3c23
    ld hl, $cf63
    ld a, [hl]
    push af
    ld [hl], $00

jr_013_67b8:
    call Call_013_67cf
    jr nc, jr_013_67c2

    call Call_013_680c
    jr jr_013_67b8

jr_013_67c2:
    ld c, $20

jr_013_67c4:
    call Call_013_680c
    dec c
    jr nz, jr_013_67c4

    pop af
    ld [$cf63], a
    ret


Call_013_67cf:
    ld hl, $cf63
    ld a, [hl]
    cp $20
    ret nc

    ld d, a
    inc [hl]
    and $01
    jr nz, jr_013_67e6

    ld e, $00
    call Call_013_67e8
    ld e, $10
    call Call_013_67e8

jr_013_67e6:
    scf
    ret


Call_013_67e8:
    push de
    ld de, $4858
    ld a, $13
    call $3b2a
    ld hl, $000b
    add hl, bc
    ld a, [$cf63]
    and $0e
    sla a
    pop de
    add e
    ld [hl], a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ld hl, $000c
    add hl, bc
    ld [hl], $10
    ret


Call_013_680c:
    push bc
    ld hl, $4f69
    ld a, $23
    rst $08
    ldh a, [$9b]
    and $0e
    srl a
    inc a
    inc a
    and $07
    ld b, a
    ld hl, $c403
    ld c, $28

jr_013_6823:
    ld a, [hl]
    or b
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_013_6823

    pop bc
    call $045a
    ret


    nop
    inc bc
    inc bc
    inc c
    inc bc

jr_013_6836:
    jr nc, jr_013_683b

    jr nz, jr_013_6841

    ld b, b

jr_013_683b:
    rrca
    ld b, b
    ld a, a
    add b
    ld a, a
    add b

jr_013_6841:
    nop
    ret nz

    ret nz

    jr nc, jr_013_6836

    inc c
    ld hl, sp+$04
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    jr nz, jr_013_685c

jr_013_685c:
    ccf
    nop
    rrca
    nop
    inc bc
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [rNR34], a
    ret nz

    ld a, $00
    db $fc
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    inc a
    inc e
    ld b, d
    inc e
    add e
    ld a, h
    add e
    ld a, b
    add a
    ld [hl], b
    adc a
    nop
    ld a, [hl]
    nop
    inc a
    call $31f3
    call $0fc8
    call $300b
    call $0568
    call $0e51
    call $0e58
    ld hl, $9800
    ld bc, $0400
    ld a, $7f
    call $3041
    ld hl, $cdd9
    ld bc, $0168
    xor a
    call $3041
    xor a
    ldh [$d0], a
    ldh [$cf], a
    call $058a
    ld hl, $68bd
    call $1057
    call $3200
    call $32f9
    ret


    ld d, $9e
    ld d, e
    ld l, a
    ld d, b
    call $31f3
    call $0fc8
    call $300b
    call $0568
    call $0e51
    call $0e58
    ld hl, $9800
    ld bc, $0400
    ld a, $7f
    call $3041
    ld hl, $cdd9
    ld bc, $0168
    xor a
    call $3041
    ld hl, $d000
    ld c, $40

jr_013_68ee:
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl+], a
    dec c
    jr nz, jr_013_68ee

    xor a
    ldh [$d0], a
    ldh [$cf], a
    call $058a
    call $3200
    call $32f9
    ret


    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $0400
    ld a, $7f
    call $3041
    ld hl, $9800
    ld de, $d000
    ld b, $00
    ld c, $40
    call $0eba
    pop af
    ldh [rSVBK], a
    ret


    ld h, b
    ld l, c
    call Call_013_6930
    ld c, a
    ret


Call_013_6930:
    ld a, [hl+]
    xor [hl]
    ld c, a
    jr z, jr_013_6941

    srl c
    srl c

jr_013_6939:
    srl c
    ld a, c
    cp $18
    jr nc, jr_013_6939

    inc c

jr_013_6941:
    ld a, [de]
    cp $01
    ld hl, $695d
    jr nz, jr_013_6958

    ld hl, $6976
    ld a, c
    and a
    jr z, jr_013_6958

jr_013_6950:
    srl c
    ld a, c
    cp $09
    jr nc, jr_013_6950

    inc c

jr_013_6958:
    ld b, $00
    add hl, bc
    ld a, [hl]
    ret


    cpl
    ld d, $17
    jr jr_013_6980

    jr nz, @+$26

    dec h
    ld h, $28
    add hl, hl
    dec hl
    inc l
    jr nc, @+$34

    inc [hl]
    ld [hl], $1b
    ld a, [hl-]
    ld sp, $413b
    jr c, @+$2f

    inc d
    add hl, sp
    add hl, de
    dec e
    ld hl, $2722
    dec [hl]
    inc a
    ld a, $1c

jr_013_6980:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    call Call_013_6998
    ld a, $43
    ldh [$c6], a
    call Call_013_69ab
    xor a
    ldh [$c6], a
    pop af
    ldh [rSVBK], a
    ret


Call_013_6998:
    call Call_013_69e5
    ld a, $90
    ldh [$cf], a
    ld a, $e4
    call $0c9f
    ld de, $e4e4
    call $0ccb
    ret


Call_013_69ab:
    ld d, $90
    ld e, $72
    ld a, $48
    inc a

jr_013_69b2:
    push af

jr_013_69b3:
    ldh a, [rLY]
    cp $60
    jr c, jr_013_69b3

    ld a, d
    ldh [$cf], a
    call Call_013_69f1
    inc e
    inc e
    dec d
    dec d
    pop af
    push af
    cp $01
    jr z, jr_013_69ce

    push de
    call Call_013_69d6
    pop de

jr_013_69ce:
    call $045a
    pop af
    dec a
    jr nz, jr_013_69b2

    ret


Call_013_69d6:
    ld hl, $c401
    ld c, $12
    ld de, $0004

jr_013_69de:
    dec [hl]
    dec [hl]
    add hl, de
    dec c
    jr nz, jr_013_69de

    ret


Call_013_69e5:
    ld hl, $d100
    ld a, $90
    ld bc, $0090
    call $3041
    ret


Call_013_69f1:
    ld hl, $d100
    ld a, d
    ld c, $3e

jr_013_69f7:
    ld [hl+], a
    dec c
    jr nz, jr_013_69f7

    ld a, e
    ld c, $22

jr_013_69fe:
    ld [hl+], a
    dec c
    jr nz, jr_013_69fe

    xor a
    ld c, $30

jr_013_6a05:
    ld [hl+], a
    dec c
    jr nz, jr_013_6a05

    ret


    ld a, c
    push af
    call $103e
    call $3ab2
    pop af
    dec a
    ld bc, $000c
    ld hl, $dc1a
    call $30fe
    ld de, $cd53
    ld bc, $000c
    ld a, $05
    call $306b
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld bc, $cd53
    ld de, $c5b9
    ld a, $47
    ld hl, $40c6
    rst $08
    pop af
    ldh [rSVBK], a
    ld c, $b4
    call $0468
    ret


    ld a, $00
    ld hl, $c2dc
    call $307b
    cp $04
    jr z, jr_013_6a59

    ld a, [$cfcc]
    bit 7, a
    jr nz, jr_013_6a80

    and a
    ret


jr_013_6a59:
    ld a, [$cd2f]
    and a
    jr nz, jr_013_6a72

    ld a, $04
    call $2fcb
    ld a, [$a60c]
    ld c, a
    call $2fe1
    ld a, c
    bit 0, c
    jr z, jr_013_6a80

    and a
    ret


jr_013_6a72:
    ld a, $05
    ld hl, $dc00
    call $307b
    bit 0, a
    jr z, jr_013_6a80

    and a
    ret


jr_013_6a80:
    scf
    ret


    ldh a, [$e6]
    and a
    ret nz

    ld de, $0000
    call $3b97
    call $0fc8
    ld hl, $6b76
    ld de, $d000
    ldh a, [rSVBK]
    push af
    ld a, $00
    ldh [rSVBK], a
    call $0b50
    pop af
    ldh [rSVBK], a
    ld de, $d000
    ld hl, $9000
    ld bc, $1354
    call $0f82
    ld de, $4200
    ld hl, $8800
    ld bc, $3e80
    call $0f9d
    call Call_013_6ac5
    call $31f6

jr_013_6ac0:
    call $045a
    jr jr_013_6ac0

Call_013_6ac5:
    call Call_013_6aea
    ld hl, $c4cb
    ld b, $0e
    ld c, $04
    ld a, $08
    call Call_013_6b27
    ld hl, $c51d
    ld b, $0a
    ld c, $02
    ld a, $40
    call Call_013_6b27
    ld de, $6b38
    ld hl, $c569
    call $1078
    ret


Call_013_6aea:
    ld hl, $c4a0
    ld [hl], $00
    inc hl
    ld a, $01
    call Call_013_6b15
    ld [hl], $02
    ld hl, $c4b4
    ld a, $03
    call Call_013_6b1c
    ld hl, $c4c7
    ld a, $04
    call Call_013_6b1c
    ld hl, $c5f4
    ld [hl], $05
    inc hl
    ld a, $06
    call Call_013_6b15
    ld [hl], $07
    ret


Call_013_6b15:
    ld c, $12

jr_013_6b17:
    ld [hl+], a
    dec c
    jr nz, jr_013_6b17

    ret


Call_013_6b1c:
    ld de, $0014
    ld c, $10

jr_013_6b21:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_013_6b21

    ret


Call_013_6b27:
    ld de, $0014

jr_013_6b2a:
    push bc
    push hl

jr_013_6b2c:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_013_6b2c

    pop hl
    add hl, de
    pop bc
    dec c
    jr nz, jr_013_6b2a

    ret


    sub e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    adc a
    and b
    xor d
    ld a, a
    xor b
    or d
    ld c, [hl]
    and e
    and h
    or d
    xor b
    and [hl]
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld c, [hl]
    or h
    or d
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld a, a
    add d
    xor [hl]
    xor e
    xor [hl]
    or c
    add sp, $50
    db $e3
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rrca
    db $10
    ld [$0b13], sp
    inc d
    ld a, [bc]
    inc d
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
    ld l, l
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
    ld hl, sp-$10
    ld [$c810], sp
    ret nc

    jr z, jr_013_6bf7

    jr z, jr_013_6bb3

    db $10
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld a, [bc]
    db $10
    ld a, [bc]
    inc d
    ld a, [bc]

jr_013_6bb3:
    inc d
    ld a, [bc]
    db $10
    ld a, [bc]
    inc d
    ld d, b
    ld [$2850], sp
    ld d, b
    jr z, jr_013_6c0f

    ld [$2850], sp
    ld d, b
    jr z, jr_013_6c15

    ld [$2850], sp
    ld a, [bc]
    inc d
    dec bc
    inc d
    ld [$0f13], sp
    stop
    rra
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
    nop
    ld l, l
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    jr z, @-$2e

    jr z, jr_013_6bfd

    ret z

    ldh a, [$08]
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop

jr_013_6bf7:
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6bfd:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6c0f:
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_013_6c15:
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
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ccf
    ccf
    db $fc
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
    nop
    add $c6
    rst $08
    rst $08
    db $db
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8101
    add c
    add b
    add b
    inc c
    inc c
    ld e, $1e
    inc sp
    inc sp
    ld l, l
    ld h, c
    db $db
    jp $8faf


    ldh a, [$f0]
    cp $fe
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6cb5:
    nop
    rra
    rra
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld a, b
    ld a, b
    rst $20
    ldh [$ef], a
    ldh [rPCM34], a
    ld [hl], b
    dec sp
    jr c, jr_013_6d00

    jr jr_013_6cf3

    dec c
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38

jr_013_6cf3:
    ld bc, $00ff
    xor d
    ld d, l
    rrca
    rrca
    di
    inc bc
    db $fc
    nop
    cp $00

jr_013_6d00:
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    cp d
    ld e, h
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ld h, b
    ld h, a
    ld h, a
    ld a, h
    ld a, h
    or $f1
    ld [c], a
    ldh [$ee], a
    ldh [$f7], a
    ldh a, [$37]

jr_013_6d1f:
    jr nc, jr_013_6d38

    db $10
    rst $38
    ld hl, sp+$3b
    jr c, jr_013_6cb5

    ld c, l
    ld hl, sp-$08
    or $f0
    ld l, a
    ld h, b
    ld e, a
    ld b, b
    cp [hl]
    nop
    ld sp, hl
    ld bc, $07f7
    and a
    ld b, a

jr_013_6d38:
    rst $20
    rst $20
    ld a, [hl]
    ld a, [hl]
    add hl, sp
    jr c, jr_013_6db6

    ld [hl], b
    rst $28
    pop hl
    rst $28
    pop hl

jr_013_6d44:
    ld l, a
    ld h, c

jr_013_6d46:
    ld h, l
    ld l, d
    rst $00
    rst $00
    add hl, sp
    ld bc, $78fe
    cp $f8
    db $fd
    sub c
    ei
    inc bc
    xor $0e
    ld e, l
    sbc h
    sbc h
    sbc h
    db $dd
    call c, Call_013_787b
    ei
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$09
    ldh a, [$75]
    ld [hl], d
    dec de
    jr jr_013_6d46

    jr jr_013_6d44

    db $10
    rst $10
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    xor d
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    and b
    jr nz, jr_013_6d1f

    jr nz, @-$4b

    inc sp
    cp a
    ccf
    cp c
    jr c, jr_013_6dfa

    or l
    rra
    rra
    jr jr_013_6da4

    dec c
    inc c
    dec c
    inc c
    db $fd
    db $fc
    rrca
    ld c, $f3
    add e
    xor e
    ld d, e
    db $fc
    db $fc
    ld a, l
    ld a, l
    adc l
    dec c
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca

jr_013_6da4:
    rst $30
    rlca
    ld d, [hl]
    and [hl]
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    sbc a
    sbc a
    ld h, [hl]
    ld b, $76
    ld b, $74
    inc b

jr_013_6db6:
    ld c, h
    xor h
    ld b, $06
    inc bc
    inc bc
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
    ld d, l

jr_013_6dc9:
    xor d
    ld a, [hl+]
    ld d, l
    sub l
    xor d
    ret nz

    rst $18
    ld h, b
    ld l, a
    ld [hl], b
    ld [hl], a
    jr nc, jr_013_6e0d

    jr jr_013_6df3

    ld d, h
    cp d
    xor c
    ld d, l
    ld d, e
    xor e
    rlca
    rst $30
    rrca
    rst $28
    dec de
    db $db
    dec de
    db $db
    add hl, de
    reti


    rst $10
    adc $ae
    sbc a
    ld e, a
    cpl
    rrca
    ld a, a
    inc bc
    ld a, a
    nop

jr_013_6df3:
    ld a, a
    nop
    ccf
    add b
    sbc a
    ld c, l
    xor [hl]

jr_013_6dfa:
    and [hl]
    ld [hl], a
    rst $30
    and $c6
    rst $30
    ld b, $f7
    inc c
    db $ed
    inc c
    call $3d3c
    ld d, c
    xor c
    xor d
    ld d, h
    dec b

jr_013_6e0d:
    add d
    jr c, jr_013_6dc9

    ld a, $be
    scf
    or a
    ld sp, $30b1
    or b
    ld a, [c]
    push af
    ld [hl], l
    ld [hl], d
    jr c, @-$45

    ld c, $fe
    rlca
    ccf
    ret nz

    rst $08
    ldh a, [$f1]
    ld a, $3e
    and d
    ld b, c
    ld d, l
    xor d
    nop
    ld hl, sp+$07

jr_013_6e2f:
    rlca
    rst $38

jr_013_6e31:
    rst $38
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    or d
    dec [hl]
    ld [hl], h
    ld [hl], d
    ld [$e0e4], a
    xor $60
    ld h, [hl]

jr_013_6e42:
    ld a, b
    ld a, b

jr_013_6e44:
    ld a, a
    ld a, a
    rlca
    rlca
    ld a, [hl+]
    ld d, l
    sub h
    xor b
    jp z, $e6d2

    and $fe
    cp $be
    cp [hl]
    sbc [hl]
    sbc [hl]
    add [hl]
    add [hl]
    rst $20
    ld l, e
    set 2, a
    push de
    set 0, b
    rst $18
    ldh [$ef], a
    ld h, b
    rst $20
    ld [hl], b
    ldh a, [$3f]
    rst $38

jr_013_6e68:
    db $dd
    xor c
    ld sp, hl
    push af
    push af
    ld sp, hl
    inc bc
    ei
    inc bc
    ei
    ld b, $f7
    inc c
    rrca
    ld hl, sp-$01
    and [hl]
    ld d, [hl]
    ld d, c
    xor b
    adc d
    ld d, l
    jr nz, jr_013_6e2f

    jr nz, jr_013_6e31

    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    xor h
    ld c, h
    ld e, b
    sbc b
    sbc b
    ld e, b
    jr jr_013_6e68

    jr nc, jr_013_6e42

    jr nc, jr_013_6e44

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop

jr_013_6e9a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1d

    inc c
    dec c
    inc c
    dec c
    inc b
    dec b
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    dec c
    db $ed
    ld b, $f6
    rlca
    rst $30
    inc bc
    di
    rlca
    rst $00
    inc a
    inc a
    ldh a, [$f0]
    ret nz

    ret nz

    ldh [$e0], a
    ld a, a
    ld a, a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fd
    call z, $0fcc
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_013_6e9a

    jr nc, jr_013_6f1c

    ldh a, [$f0]
    nop
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
    rrca
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
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6f1c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6f25:
    nop
    nop
    nop
    ld b, $06
    rlca
    rlca
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
    nop
    nop
    rra
    rra
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f6]
    jr jr_013_6f64

    rra
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ef], a
    ldh [$ee], a
    ldh [$ee], a
    pop hl
    db $ed
    ld h, c
    ld h, c
    ld a, a
    ld a, a

jr_013_6f64:
    rrca
    rrca
    nop
    nop
    ld b, b

jr_013_6f69:
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld [hl], l
    ld [hl], a
    daa
    daa
    dec h
    dec h
    pop hl
    ccf
    nop
    nop
    ld a, [bc]
    rlca
    cpl
    rra
    ld [hl], b
    jr c, jr_013_6f25

    ld h, a
    ld c, a
    rst $28
    ret z

    ret c

    jp c, $00da

    nop
    add b
    nop
    add b
    ret nz

    ld b, b
    ldh [rNR42], a
    ld sp, $b199
    sub c
    reti


    ld d, b
    reti


    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ret c

    ld hl, sp-$74
    adc h
    inc h
    xor h
    adc b
    adc h
    call c, $00fe
    nop
    ld b, b
    ld h, b
    ld [hl], l
    jr nz, jr_013_6fe6

    rra
    ld a, [bc]
    rra
    ld de, $2431
    dec [hl]
    ld de, $0031
    nop
    ld b, b
    ret nz

    jp $8781


    ld [bc], a
    rlca
    rlca
    ld bc, $8283
    add [hl]
    inc b
    add [hl]
    nop
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ld bc, $8000
    pop bc
    ld b, b
    ldh [rNR41], a
    jr nc, jr_013_6f69

    or b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld hl, sp-$08
    db $fc
    jr nz, jr_013_7056

jr_013_6fe6:
    jr nz, jr_013_7058

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ld [$081c], sp
    ld [$361c], sp
    ld a, $22
    ld h, e
    ld c, c
    ld l, e
    ld [hl+], a
    ld h, e
    nop
    nop
    jr nz, jr_013_702e

    rla
    ccf
    dec c
    rra
    jr jr_013_701c

    ld [de], a
    ld a, [de]
    ld [$0d18], sp
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    add b
    add b
    ld c, b
    ret c

jr_013_701c:
    call $226f
    ld [hl], a
    ld d, b
    jr c, @+$0f

    ld e, $02
    rlca
    inc bc
    inc bc
    nop
    nop
    ret c

    pop de
    and b
    pop af

jr_013_702e:
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    and [hl]
    rst $30
    add e
    add d
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    dec de
    rra
    inc b
    ld c, $04
    inc b
    inc b
    inc b
    dec de
    ld c, $1b
    dec de

jr_013_7056:
    nop
    nop

jr_013_7058:
    nop
    nop
    ld [bc], a
    ld b, $01
    inc bc
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    jr nz, jr_013_709c

    ld b, c
    pop hl
    pop af
    pop af
    ld [hl], c
    ld hl, $c0e0
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    ld hl, sp-$74
    adc h
    inc h
    xor h
    adc h
    adc h
    ret c

    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    nop
    nop
    ld [hl], $3e
    inc e
    inc e
    inc d
    ld [hl], $36
    ld a, $3e
    ld l, e
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    rlca
    rlca

jr_013_709c:
    ld [bc], a
    ld b, $02
    ld b, $02
    rlca
    inc bc
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
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, $00
    call Call_013_726d
    call $0a36
    ld b, $06
    ld a, $14
    ld hl, $4000
    rst $08
    jr c, jr_013_70e1

    ld a, [$d108]
    cp $fd
    jr z, jr_013_70e8

    call $3741
    jr c, jr_013_70e7

    call Call_013_7134
    call Call_013_70ee
    ret


jr_013_70e1:
    ld a, $05
    call Call_013_726d
    ret


jr_013_70e7:
    ret


jr_013_70e8:
    ld a, $06
    call Call_013_726d
    ret


Call_013_70ee:
    ld a, [$d002]
    ld hl, $70f6
    rst $28
    ret


    nop
    ld [hl], c
    ld c, $71
    rra
    ld [hl], c
    dec h
    ld [hl], c
    dec hl
    ld [hl], c
    ld a, $02
    call Call_013_726d
    ld a, $03
    call Call_013_726d
    call Call_013_72b4
    ret


    call Call_013_7242
    ld a, $04
    call Call_013_726d
    ld a, $03
    call Call_013_726d
    call Call_013_72b4
    ret


    ld a, $01
    call Call_013_726d
    ret


    ld a, $01
    call Call_013_726d
    ret


    ld a, $07
    call Call_013_726d
    call Call_013_72b4
    ret


Call_013_7134:
    ld a, $1d
    call $3917
    ld a, [hl+]
    ld [$d03b], a
    ld a, [hl-]
    ld [$d03c], a
    or [hl]
    jr z, jr_013_7170

    ld a, $01
    ld [$d002], a
    ld a, $06
    call $3917
    ld a, [$d47b]
    cp [hl]
    jr nz, jr_013_715f

    inc hl
    ld a, [$d47c]
    jr nz, jr_013_715f

    ld a, $00
    ld [$d002], a

jr_013_715f:
    call Call_013_718c
    call Call_013_7242
    call Call_013_7176
    call Call_013_71c5
    call Call_013_720a
    and a
    ret


jr_013_7170:
    ld a, $02
    ld [$d002], a
    ret


Call_013_7176:
    ld a, [$d109]
    ld hl, $de41
    ld bc, $000b
    call $30fe
    ld de, $d003
    ld bc, $000b
    call $3026
    ret


Call_013_718c:
    ld a, $50
    ld hl, $d036
    ld bc, $0004
    call $3041
    ld a, [$d03b]
    and $3f
    jr z, jr_013_71b4

    cp $01
    jr nz, jr_013_71a4

    ld a, $05

jr_013_71a4:
    ld [$d03a], a
    ld hl, $d036
    ld de, $d03a
    ld bc, $4103
    call $3198
    ret


jr_013_71b4:
    ld de, $d036
    ld hl, $71c1
    ld bc, $0004
    call $3026
    ret


    and $e6
    and $50

Call_013_71c5:
    ld a, [$d03b]
    and $c0
    jr z, jr_013_71df

    rlca
    rlca
    dec a
    ld hl, $71e6
    call $3411
    ld d, h
    ld e, l
    ld hl, $d01f
    call $30d9
    and a
    ret


jr_013_71df:
    ld de, $d01f
    call Call_013_71f8
    ret


    adc h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld d, b
    add e
    and b
    cp b
    ld d, b
    adc l
    xor b
    and [hl]
    and a
    or e
    ld d, b

Call_013_71f8:
Jump_013_71f8:
    ld hl, $7202
    ld bc, $000b
    call $3026
    ret


    sub h
    xor l
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld d, b

Call_013_720a:
    ld a, [$d03c]
    and $7f
    jr z, jr_013_722e

    cp $7f
    jr z, jr_013_7234

    cp $7e
    jr z, jr_013_723b

    ld e, a
    ld a, $72
    ld hl, $68a5
    rst $08
    ld hl, $d073
    ld de, $d00e
    ld bc, $0011
    call $3026
    and a
    ret


jr_013_722e:
    ld de, $d00e
    jp Jump_013_71f8


jr_013_7234:
    ld a, $04
    ld [$d002], a
    scf
    ret


jr_013_723b:
    ld a, $03
    ld [$d002], a
    scf
    ret


Call_013_7242:
    ld a, [$d109]
    ld hl, $ddff
    ld bc, $000b
    call $30fe
    ld de, $d02a
    ld bc, $000b
    call $3026
    ld hl, $726b
    ld a, [$d03c]
    bit 7, a
    jr z, jr_013_7264

    ld hl, $726c

jr_013_7264:
    ld de, $d035
    ld a, $50
    ld [de], a
    ret


    ld d, b
    ld d, b

Call_013_726d:
    ld e, a
    ld d, $00
    ld hl, $727c
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $1057
    ret


    adc h
    ld [hl], d
    sub c
    ld [hl], d
    sub [hl]
    ld [hl], d
    sbc e
    ld [hl], d
    and b
    ld [hl], d
    xor a
    ld [hl], d
    xor d
    ld [hl], d
    and l
    ld [hl], d
    ld d, $5f
    ld b, a
    ld [hl], c
    ld d, b
    ld d, $97
    ld b, a
    ld [hl], c
    ld d, b
    ld d, $d4
    ld b, a
    ld [hl], c
    ld d, b
    ld d, $fa
    ld b, a
    ld [hl], c
    ld d, b
    ld d, $37
    ld c, b
    ld [hl], c
    ld d, b
    ld d, $7f
    ld c, b
    ld [hl], c
    ld d, b
    ld d, $1d
    ld c, c
    ld [hl], c
    ld d, b
    ld d, $55
    ld c, c
    ld [hl], c
    ld d, b

Call_013_72b4:
    ld a, $1f
    call $3917
    ld a, [$d03a]
    ld c, a
    ld a, [hl]
    sub c
    ld c, a
    ld hl, $72d6
    ld de, $0003

jr_013_72c6:
    cp [hl]
    jr c, jr_013_72ce

    jr z, jr_013_72ce

    add hl, de
    jr jr_013_72c6

jr_013_72ce:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $1057
    ret


    add hl, bc
    add sp, $72
    dec e
    db $ed
    ld [hl], d
    dec sp
    ld a, [c]
    ld [hl], d
    ld e, c
    rst $30
    ld [hl], d
    ld h, h
    db $fc
    ld [hl], d
    rst $38
    add sp, $72
    ld d, $7a
    ld c, c
    ld [hl], c
    ld d, b
    ld d, $c6
    ld c, c
    ld [hl], c
    ld d, b
    ld d, $21
    ld c, d
    ld [hl], c
    ld d, b
    ld d, $5b
    ld c, d
    ld [hl], c
    ld d, b
    ld d, $e5
    ld c, d
    ld [hl], c
    ld d, b
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    and $7f
    jr z, jr_013_7319

    cp $7f
    jr z, jr_013_7319

    ld a, [hl]
    and $80
    jr nz, jr_013_7316

    ld c, $01
    ret


jr_013_7316:
    ld c, $02
    ret


jr_013_7319:
    ld c, $00
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

Call_013_787b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
