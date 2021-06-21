; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $054", ROMX[$4000], BANK[$54]

    ld [hl], d
    dec b
    ld bc, $0202
    inc b
    inc b
    nop
    ld [hl+], a
    ld [$0604], sp
    ld de, $1818
    nop

Call_054_4010:
    inc h
    jr nz, jr_054_4015

    nop
    ld b, b

jr_054_4015:
    nop
    ld [hl+], a
    ld b, b
    dec c
    ld e, e
    ld b, a
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld l, d
    ld b, b
    ld d, l
    ld b, b

Jump_054_4023:
    ld l, d
    ld b, b
    ld a, a
    ld b, b
    ld b, l
    ccf
    jr nz, jr_054_402e

    rra
    jr @+$21

jr_054_402e:
    rla
    ld b, e
    rrca
    ld [$0700], sp
    jp $00b2


    ld bc, $097b
    inc bc
    rlca
    ld [$2018], sp
    ld h, b
    cp a
    adc a
    ret nz

    ret nz

    ld h, a
    ld bc, $fefc
    add l
    or c
    inc de
    ld bc, $0200
    nop
    dec b
    nop
    ld [bc], a
    nop
    push hl
    ldh a, [rIF]
    rrca
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    cp a
    nop
    ld c, b
    rst $38
    nop
    ld [bc], a
    rlca
    rst $38
    ld hl, sp-$39
    add a
    dec c
    ld e, a
    nop
    rst $38
    ldh [$3f], a
    ld a, a
    rra
    inc e
    dec sp
    scf
    rla
    ld b, b
    ld l, e
    ld b, b
    add e
    ei
    ld bc, $0707
    xor b
    rlc b
    rst $38
    and a
    push hl
    ld de, $1818
    rlca
    ld b, $0f
    ld bc, $001f
    ccf
    nop
    ld a, a
    nop
    rst $38
    pop bc
    ld a, a
    ld [hl+], a
    rst $38
    inc d
    ld b, [hl]
    rst $38
    ld [$1043], sp
    rst $38
    ld [bc], a
    sub c
    rst $38
    ld [hl], c
    ld b, e
    rst $38
    ld de, $8da6
    inc b
    jr @+$01

    ld h, h
    rst $38
    add d
    ld b, [hl]
    rst $38
    ld bc, $0206
    rst $38
    inc b
    rst $38
    jr @+$01

    ldh [rLY], a
    rst $38
    nop
    ld [bc], a
    add e
    ld a, l
    cp $45
    rst $38
    nop
    nop
    rst $38
    xor c
    nop
    ld a, [bc]
    add hl, bc
    ret nz

    jr nc, jr_054_4100

    ld b, $16
    add hl, bc
    add hl, bc
    ld [$fe08], sp
    ld b, l
    inc b
    rst $38
    ld [$ff84], sp
    adc b
    rst $38
    ld a, b
    rst $38
    add [hl]
    rst $38
    ld bc, $ff44
    nop
    dec b
    jr c, @+$01

    ld b, h
    rst $38
    add d
    ld a, a
    add a
    rlc c
    ld bc, $4377
    adc c
    rst $38
    nop
    ld [hl], c
    ld b, h
    rst $38
    ld [bc], a
    inc b
    inc b
    rst $38
    sbc b
    rst $38
    ld l, b
    ld b, h
    rst $38
    inc b
    rrca
    dec b
    rst $38
    ld a, [bc]

jr_054_4100:
    rst $38
    inc c
    rst $38
    jr @+$01

    ld h, b
    cp a
    ret nz

    rst $38
    nop
    cp $00
    db $fc
    jp $00b7


    rrca

jr_054_4111:
    xor [hl]
    nop
    dec b
    and h
    nop
    inc de
    rlca
    sub b
    db $10
    ret c

    jr jr_054_4111

    inc d
    db $f4
    inc h
    ld b, e
    ld a, [$0e22]
    db $fd
    ld b, c
    db $fd
    add c
    cp $80
    cp $40
    rst $38
    ld b, c
    cp $26
    rst $38
    jr c, @+$01

    and a
    ei
    nop
    ld a, $48
    rst $38
    jr nz, jr_054_417e

    ld b, c
    rst $38
    nop
    ld b, d
    ld b, h
    rst $38
    add b
    ld a, [bc]
    ld bc, $01eb
    sub $02
    xor [hl]
    ld b, $5a
    ld c, $b1
    rra
    push bc
    nop
    dec a
    inc bc
    sub b
    rst $38
    inc c
    rst $38
    db $ec
    inc hl
    dec h
    add b
    nop
    nop
    jr z, jr_054_419e

    dec bc
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ld b, b
    add b
    add b
    ret nz

    ret nz

    ldh [$a0], a
    ld b, e
    ldh [rNR41], a
    nop
    ret nz

    add d
    adc l
    add l
    sbc a
    rlca
    ld b, d
    ld b, [hl]
    ld b, c
    ld c, c
    or c
    or e
    pop bc
    rst $20

jr_054_417d:
    ld b, e

jr_054_417e:
    ld [bc], a
    cp $05
    inc b
    db $fc
    jr jr_054_417d

    ldh [$e0], a
    rst $38
    ld a, a
    ldh [$2d], a
    inc c
    inc c
    ld [bc], a
    ld [de], a
    dec b
    ld hl, $200b
    dec [hl]
    jr nc, jr_054_41b1

    ld e, b
    ld d, a
    ld b, [hl]
    ld l, a
    ld b, c
    rst $38
    ldh [$bf], a

jr_054_419e:
    sbc b
    rst $18
    add [hl]
    ld a, a
    ld b, e
    ld a, h
    ld c, h
    ld [hl-], a
    ld sp, $4718
    ld h, b
    ld e, a
    jr nz, jr_054_41ec

    ld [hl], b
    ld e, a
    xor h
    sbc a

jr_054_41b1:
    jp Jump_054_60bf


    ld a, a
    inc e
    rra
    inc bc
    inc bc
    db $ec
    scf
    ldh [rNR44], a
    add b
    add b
    ret nz

    ld b, b
    ldh [$30], a
    ld hl, sp+$18
    and $1f
    pop de
    rst $28
    ldh a, [$3f]
    add b
    ld a, a
    pop hl
    rst $38
    rst $08
    ld a, $33
    pop af
    ld a, c
    rst $00
    ld h, b
    rst $18
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ret nz

    rst $38
    add e
    adc c
    dec c
    pop bc
    cp $8a
    push af
    ld d, l
    ld l, d
    ld a, [hl-]
    dec h

jr_054_41ec:
    rrca
    jr jr_054_41f1

    ld b, $00

jr_054_41f1:
    ld bc, $c9b4
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $6101
    rlca
    inc bc
    rrca
    dec bc
    ld [$0405], sp
    ld bc, $a503
    db $dd
    ld bc, $0101
    ld b, l
    inc bc
    ld [bc], a
    ld c, $07
    inc b
    rst $08
    add sp, $3e
    pop af
    ld a, l
    ld [c], a
    xor d
    push de
    ld d, h
    xor e
    and b
    ld e, a
    nop
    ld b, [hl]
    rst $38
    add b
    ld b, e
    ld b, b
    rst $38
    nop
    jr nz, jr_054_426b

    rst $38
    nop
    rrca
    and b
    ld e, a
    ld e, h
    and e
    cp a
    ld b, b
    rst $38
    ld bc, $001f
    rst $00
    ret nz

    sbc a
    ld hl, sp+$4f
    ld a, a
    or c
    rst $18
    add hl, de
    ldh a, [$31]
    ld e, $ee
    add e
    cp $61
    ld a, a
    pop af
    rst $38
    rst $38
    rra
    ld a, [$5d35]
    ld [c], a
    ld a, [$f485]
    dec bc
    ld a, [$d405]
    dec hl
    xor b
    ld d, a
    add e
    db $d3
    ld [$af50], sp
    and b
    ld e, a
    ld b, b
    cp a
    add e
    ld a, a
    nop
    ld d, b
    rst $38
    nop
    ld b, e
    ld bc, $11fe
    inc bc
    db $fc
    rlca

jr_054_426b:
    ld hl, sp+$1f
    ldh [rIE], a
    ldh a, [rIF]
    ld [$cec7], sp
    pop bc
    ld a, a
    pop af
    cpl
    ldh a, [$2f]
    sub e
    nop
    ld [hl], h
    ld bc, $4040
    ld b, h
    pop hl
    ld hl, $110a
    pop af
    sub c
    ld [hl], e
    ld a, [c]
    inc de
    ld a, [c]
    dec bc
    ld a, [$fe0f]
    ld b, h
    rra
    db $fc
    nop
    ld hl, sp+$43
    inc de
    db $fc
    ld a, [bc]
    daa
    ld hl, sp+$41
    cp $80
    rst $38
    ld bc, $03ff
    cp $05
    and h
    db $e3

Jump_054_42a5:
    rrca
    inc bc
    rst $38
    inc e
    cp $f8
    ld [c], a
    db $f4
    ld [bc], a
    ld [$f502], a
    dec b
    xor $06
    db $f4
    inc b
    ld b, e
    ld hl, sp+$08
    inc bc
    ldh a, [rNR10]
    ldh [rNR41], a
    and l
    nop
    jp nc, $8011

    add b
    ld h, b
    ldh [rNR23], a
    sbc b
    inc l
    sbc h
    ld b, [hl]
    sub d
    cp d
    sub d
    push de
    sub c
    ei
    sub c
    db $ed
    sub c
    ld b, e
    rst $38
    and c
    ldh [rNR44], a
    rst $18
    xor l
    rst $30
    ld d, l
    xor a
    ld d, l
    or $23
    ld [$de22], a
    ld [hl+], a
    cp $4a
    db $fc
    ld d, [hl]
    cp h
    ld d, [hl]
    cp $a2
    ld e, [hl]
    and d
    cp $42
    cp [hl]
    ld b, d
    ld a, h
    add h
    db $fc
    inc h
    ld hl, sp+$58
    add sp, -$68
    add sp, $18
    ld b, e
    ret nc

    jr nc, jr_054_4305

    and b
    ld h, b
    ret nz

    ret nz

jr_054_4305:
    nop
    inc h
    ld b, b
    ld bc, $8080
    rst $10
    nop
    add a
    rst $38
    db $ec
    and a
    inc hl
    ld bc, $0223
    rrca
    ld bc, $0701
    ld b, $1f
    jr jr_054_4354

    jr z, jr_054_4346

    ld sp, $151b
    rrca
    inc c
    inc bc
    inc bc
    ld l, l
    dec h
    ld bc, $0200
    ld [hl+], a
    inc bc
    dec b
    nop
    dec b
    rlca
    rlca
    inc bc
    rlca
    add l
    sub h
    ld c, $02
    rlca
    dec b
    dec c

Call_054_433b:
    dec bc

Call_054_433c:
    ld c, $0f
    inc e
    dec de
    inc e
    dec bc
    jr @+$07

    ld c, $00

jr_054_4346:
    inc h
    ld de, $050d
    ld c, $07
    inc b
    dec de
    ld a, [de]
    ld [hl+], a
    inc hl
    ld b, c
    ld h, c
    ld b, b

jr_054_4354:
    ld h, d
    ld b, b
    ld d, d
    ld b, e
    jr nz, jr_054_4384

    ld b, e
    jr z, jr_054_4386

    ld b, e
    ld c, b
    ld c, c
    ld bc, $4444
    ld b, e
    add h
    and h
    ld d, $08
    inc e
    ld [$080c], sp
    call c, $2a08
    ld [$d009], sp
    ld d, c
    ldh a, [$32]
    ld [hl], b
    sub d
    ldh [$ac], a
    ld h, b
    ld h, b
    sbc c
    sbc c
    ld h, $44

Jump_054_437f:
    ccf
    jr nz, jr_054_438a

    ld b, b
    ld l, a

Call_054_4384:
jr_054_4384:
    ld b, c
    ld d, a

jr_054_4386:
    add c
    xor a
    add l
    rst $18

jr_054_438a:
    adc d
    ld b, h
    cp $12
    ld b, e
    inc h
    db $fc
    ld b, $a8
    ld hl, sp+$70
    ldh a, [$e0]
    ldh a, [$80]
    and h
    nop
    cp a
    ldh [$2f], a
    ld [hl], b
    ld hl, sp-$44
    cp $7e
    rst $38
    ld a, a
    rst $38
    rst $20
    rra
    ei
    rlca
    rst $38
    inc bc
    db $db
    ccf
    add a
    ld b, [hl]
    rst $00
    add $c2
    ld b, l
    ld e, [hl]
    cp c
    ld a, a
    add e
    rst $38
    inc bc
    db $fd
    push hl
    sbc l
    ld [hl], l
    ld sp, hl
    adc c
    pop af
    pop af
    ld c, c

Jump_054_43c3:
    ld e, l
    ld l, c
    ld a, e
    ld c, c
    ld e, c
    ld b, l
    ld e, l
    dec h
    dec a
    inc h
    inc a
    ld b, [hl]
    inc h
    cp h
    add hl, bc
    ld a, h
    inc h
    inc a
    inc [hl]
    inc a
    add hl, sp
    ccf
    daa
    daa
    ld e, [hl]
    ld b, h
    ld a, a
    ld d, b
    dec c
    add b
    rst $38
    adc b
    rst $38
    inc e
    rst $38
    ld [hl+], a
    db $e3
    ld b, c
    pop bc
    pop af
    pop af
    adc a
    adc a
    db $ec
    inc h
    ld h, $80
    inc c
    ret nz

    ld b, b
    ld b, b
    ret nz

    ldh [$60], a
    sbc b
    sbc b
    ld b, $46
    ld bc, $0041
    ld b, e
    ld hl, $0200
    ld [hl+], a
    nop
    ld [hl+], a
    ld b, e
    inc b
    inc h
    dec b
    ld b, $26
    dec b
    dec h

jr_054_440f:
    inc b
    inc h
    ld b, h
    add h
    and h
    ld b, e
    call nz, Call_054_4384
    add h
    add b
    inc c
    add d
    add d
    adc [hl]
    add d
    jp nc, $d240

    ld b, c
    pop de
    ld b, c
    ret


    ld hl, $43e9
    jr nz, jr_054_440f

    ld b, e
    ld de, $03f1
    ld [de], a
    cp $8a
    cp $43
    adc c
    rst $38
    ld c, $43
    ld a, a
    ld l, [hl]
    ld a, a
    ld d, l
    ld a, a
    ld l, d
    ld a, a
    dec [hl]
    ccf
    ld a, [hl+]
    ccf
    dec [hl]
    ccf
    dec bc
    ld [hl+], a
    rra
    ld bc, $0703
    ldh a, [rNR42]
    ld bc, $00ab
    ld b, b
    ld b, e
    ld b, b
    nop
    db $10
    jr nz, jr_054_4467

    jr nc, @+$0a

    jr z, jr_054_445b

jr_054_445b:
    inc h
    inc b
    inc h
    add b
    jp nz, $9282

    ld bc, $4169

jr_054_4465:
    ld b, l
    ld [hl+], a

jr_054_4467:
    ld hl, $2514
    ld hl, $4121
    ld b, c
    ld b, d
    ld c, [hl]
    cpl
    ld sp, $417f
    cp [hl]
    add c
    rst $18
    and b
    ld a, e
    ld d, l
    cp [hl]
    or d
    adc h
    adc h
    sub h
    ld bc, $0abd
    add b
    ret nz

    ret nz

    add b
    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    ret nz

    ldh [$ec], a
    ld b, l
    ld bc, $8080
    ld hl, sp+$29
    add b
    rst $38
    ld l, c
    dec c
    ld b, $1e
    ld bc, $0311
    ld [$0403], sp
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $c501
    add b
    db $10
    ld [bc], a
    inc bc
    inc b
    rlca
    inc c
    rrca
    inc e
    scf
    inc b
    ld e, a
    inc a
    ccf
    inc c
    rrca
    inc b
    rlca
    ld [bc], a
    ld [hl+], a
    inc bc
    add e
    sbc l
    inc de
    rlca
    rlca
    ld [$1d1f], sp
    inc sp
    ld a, [hl-]
    ld h, $35
    ld c, h
    ld l, c
    ld e, b
    jr z, jr_054_4465

    ld sp, $f191
    sub e
    ret nc

    or c
    ld b, e
    sub b
    ldh a, [rSCX]
    ld c, b
    ld a, b
    add hl, bc
    inc h
    inc a
    inc hl
    ccf
    db $10

Jump_054_44df:
    rra
    inc c
    rrca
    inc bc
    inc bc
    ld l, e
    jr jr_054_44ea

    inc bc
    inc b
    rlca

jr_054_44ea:
    ld hl, sp-$01
    db $ed
    ld [hl-], a
    cp [hl]
    ld b, c
    cp l
    ld b, d
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    ld a, [$5405]
    xor e
    xor b
    ld d, a
    ld d, b
    xor a
    nop
    ld b, [hl]
    rst $38
    nop
    ldh [$35], a

Call_054_4504:
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    rst $38
    di
    dec de
    rst $20
    ld [hl], c
    rst $38
    rst $38
    adc a
    rst $38
    inc bc
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    ldh [$df], a
    ldh [$9f], a
    ret nz

    cpl
    sbc b
    ld d, $39
    scf
    ld a, c
    dec a
    ld [hl], e
    rra
    inc hl
    ld d, a
    inc bc
    xor l
    rrca
    pop af
    rst $38
    ld [bc], a
    cp $0c
    db $fc
    ldh a, [$f0]
    ld h, d
    ld [$1020], sp
    ld d, b
    ld a, a
    ld e, a
    ldh a, [$8f]
    ldh [$1f], a
    add l
    rst $00
    ld a, [bc]
    add b
    ld a, a
    nop
    rst $38
    add c
    ld a, a
    nop
    rst $38
    ld bc, $02ff
    add l
    rst $08
    xor b
    add c
    ld b, $ab
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    jr z, @+$01

    ld de, $bfdf
    rst $28
    rra
    rst $38
    nop
    rst $28
    ld [hl], b
    db $fd
    ldh a, [$ea]
    ldh [$f1], a
    ldh a, [$ef]
    rst $28
    ldh [$e0], a
    inc hl
    ret nz

    dec b
    add b
    ret nz

    add b
    add b
    nop
    add b
    ld l, d

jr_054_457e:
    dec bc
    inc b
    ld [bc], a
    ld a, [bc]
    db $ed
    di
    add hl, sp
    rst $20
    add hl, sp
    rst $00
    db $10
    rst $28
    nop
    add e
    db $d3
    ld bc, $aaff
    xor [hl]
    add c
    add e
    rst $10
    nop
    cp a
    dec hl
    rst $38
    ld [$fffe], sp
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$df]
    ldh [$c5], a
    nop
    pop de
    rlca
    ld a, a
    nop
    cp a
    nop
    ld a, a
    ld c, $f0
    pop af
    ld a, l
    inc c
    add b
    add b
    ld b, b
    pop bc
    dec a
    cp $8f
    ldh a, [$5f]
    ldh a, [$a6]
    ld sp, hl
    ld d, d
    add [hl]
    db $d3
    nop
    ld a, a
    ld [hl+], a
    rst $38
    ld b, $fd
    rst $38
    ld a, [$f4ff]
    rst $38
    ld hl, sp+$24
    rst $38
    rlca
    rst $20
    rst $38
    cp c
    rst $00
    ld a, [hl]
    add c

jr_054_45d4:
    rst $38
    nop
    ld b, h
    rst $38
    ld bc, $0212
    ei
    inc b
    rst $38
    inc b
    reti


    cpl
    ret nc

    jr nc, jr_054_45d4

    db $10
    or b
    db $10
    jr jr_054_45f1

    ret z

    ret z

    nop
    jr c, jr_054_4669

    add hl, bc
    inc e
    inc a

jr_054_45f1:
    db $f4
    call z, $18e8
    sub b
    ld [hl], b
    jr nz, @-$1e

    and l
    nop
    inc l
    jr z, jr_054_457e

    inc c
    ret nz

    ret nz

    ldh [rNR10], a
    ldh a, [$08]
    db $fc
    db $fc
    cp $fc
    db $fc
    ldh a, [$f0]
    add l
    sub a
    jp $1601


    rlca
    nop
    ld b, b
    ret nz

    ld b, b
    add b
    jr nz, @-$3e

    ldh [$7f], a
    rst $38
    ld [hl], c
    ld [$0707], sp
    rrca
    jr jr_054_462a

    jr nz, jr_054_464c

    jr nz, @+$49

    ld b, h
    ld b, b
    ld c, a

jr_054_462a:
    ld b, e
    rst $18
    add b
    dec d
    rst $38
    add b
    ei
    add a
    rst $38
    adc b
    ld l, a
    ld d, b
    ld a, a
    ld d, b
    ccf
    jr nz, jr_054_467a

    ld hl, $111f
    rrca
    ld a, [bc]
    rlca
    ld b, $03
    ld [bc], a
    ld b, e
    rlca
    inc b
    ld b, e
    rrca
    ld [$1d0b], sp

jr_054_464c:
    jr jr_054_4688

    jr nc, jr_054_46c5

    ld d, b
    ld [$7780], a
    ld h, b
    rra
    db $10
    ld b, e
    rrca
    ld [$070d], sp
    inc b
    rrca
    ld a, [bc]
    rra
    inc de
    ld e, $1c
    inc a
    jr nc, jr_054_46e4

    ld b, b
    rst $38
    add b

jr_054_4669:
    ld h, [hl]
    ld [bc], a
    ld [bc], a
    ld bc, $2305
    inc b
    nop
    add hl, bc
    ld b, h
    ld [$050d], sp
    adc a
    adc b
    rst $08
    ld c, b

jr_054_467a:
    rst $28
    jr z, jr_054_46c2

    rst $20
    inc h
    ld de, $74d7
    di
    ld [hl], d
    di
    ld d, d
    di
    inc de

jr_054_4688:
    di
    sub e
    db $e3
    ld [hl+], a
    di
    ld [hl], d
    rst $38
    ld c, $ff
    inc bc
    ld e, b
    rst $38
    nop
    ld de, $ff01
    ld b, $fe
    add hl, de
    db $e4
    daa
    jp $e342


    ld [hl+], a
    pop hl
    pop hl
    dec sp
    dec de
    rra
    inc b
    ccf
    xor c
    rst $18
    jp $02e4


    add b
    ret nz

    ld b, b
    xor c
    nop
    jr c, jr_054_46c1

    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$0b
    db $fc
    inc c
    ldh a, [rNR10]
    ld sp, hl
    nop
    ld a, a

jr_054_46c1:
    add b

jr_054_46c2:
    ld c, c
    rst $38
    nop

jr_054_46c5:
    dec c
    push af
    sbc a
    ldh a, [$60]
    add sp, $00
    ret nc

    nop
    add sp, $00
    pop de
    nop
    ld [$ca00], a
    adc l
    ld d, $00
    cp $81
    cp a
    ld [hl], b
    sbc a
    adc h
    cp a
    ld [bc], a
    ccf
    ld bc, $f1ff

jr_054_46e4:
    rst $08
    add hl, bc
    sbc $86
    db $fc
    ld b, h
    ld a, h
    inc h
    ld hl, sp+$28
    ld l, [hl]
    nop
    ld bc, $e5ab
    inc b
    rst $38
    ld hl, sp+$3f
    db $10
    ld a, a
    adc [hl]
    nop
    sbc e
    inc bc
    cp l
    jp $3c3f


    ld b, e
    rra
    nop
    ld b, $3f
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    xor l
    nop
    sbc a
    inc b
    ld b, b
    rst $38
    jr nz, @+$01

    ldh a, [$83]
    nop
    ld c, [hl]
    xor c
    nop
    ret nc

    ld h, [hl]
    inc bc
    jr nz, @+$42

    ld d, b
    db $10
    ld [hl+], a

jr_054_4722:
    sub b
    ld [bc], a
    jr c, jr_054_472e

    ld a, b
    ld b, h
    ld [$09f8], sp
    ldh a, [rNR10]
    ld a, [c]

jr_054_472e:
    inc de
    db $f4
    inc d
    db $ec
    jr z, jr_054_4722

    jr z, jr_054_4779

    rst $38
    jr nc, @+$45

    rst $18
    ld d, b
    inc c
    rst $38
    jr nc, @+$01

    inc sp
    rst $28
    inc l
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    ld bc, $46ff
    ld bc, $a2fd
    db $e3
    ld bc, $fe00
    xor e
    db $dd
    rlca
    rlca
    ld hl, sp+$18
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    and h
    ld bc, $012f
    and b
    nop
    ld [hl+], a
    jr nz, jr_054_4765

jr_054_4765:
    jr nz, jr_054_47dc

    rrca
    ld h, b
    ldh [$38], a
    jr @+$3e

    inc b
    ld a, [hl]
    ld [bc], a
    cp $02
    db $fc
    inc b
    ld hl, sp+$08
    ld a, [$440a]

jr_054_4779:
    rst $38

Jump_054_477a:
    dec c
    ld c, $89
    cp $02
    cp $22
    db $fc
    inc d
    db $fc
    sub h
    ld hl, sp+$18
    ldh a, [$30]
    ret nz

    ret nz

    ld h, c
    ld bc, $0080
    add h
    ret


    inc c
    ret nz

    ldh [$a0], a
    ldh a, [rNR10]
    sbc b
    ld [$08c8], sp
    db $f4
    add h
    ld a, b
    ld a, b
    ld l, a
    rst $38
    ld [hl], d
    nop
    jr nc, jr_054_47e8

    db $10
    jr z, jr_054_47af

    ld [$0814], sp
    ld d, $0c
    ld [de], a
    inc b

jr_054_47af:
    dec bc
    ld b, e
    ld b, $09
    dec b
    rlca
    ld [$3807], sp
    inc bc
    inc a
    ld b, h
    inc bc
    inc e
    ld d, $0c
    ld bc, $41ce
    and [hl]
    ld h, c
    sbc [hl]
    ld sp, $304e
    ld c, a
    jr @+$29

    dec e
    ld [hl+], a
    ld c, $31
    dec c
    sub d
    ld c, $d1
    rla
    add sp, $43
    rlca
    ld a, b
    dec d
    ld [bc], a
    dec a
    dec b

jr_054_47dc:
    ld a, [hl-]
    inc bc
    dec e
    inc bc
    rra
    rlca
    rrca
    dec c
    rrca
    dec bc
    rra
    rla

jr_054_47e8:
    ccf
    dec hl
    ccf
    ld d, a
    ld a, a
    ld l, a
    ld a, a
    db $76
    ld c, e
    ld bc, $0100
    add e
    nop
    ld b, e
    jp $0c00


    db $e3
    add b
    ld [hl], e
    add b
    ld a, e
    ret z

    scf
    ret nc

    cpl
    jp hl


    ld d, $f0
    rrca
    add l
    add e
    inc d
    ld [hl], b
    adc a
    ld sp, hl
    ld b, $7c
    add e
    cp l
    ld b, d
    ld a, [hl]
    add c
    rst $38
    nop
    cp $01
    cp a
    ld b, b
    cp $a9
    ld d, l
    rst $38
    cp [hl]
    ld l, $ff
    or d
    reti


    ld b, e
    ret nz

    nop
    ldh [rNR41], a
    ldh [rP1], a
    ldh [$27], a
    rst $10
    rra
    rst $28
    cpl
    rst $18
    ld d, $ef
    dec l
    rst $10
    inc de
    rst $28
    dec hl
    rst $10
    rla
    db $eb
    add hl, bc
    rst $30
    dec d
    db $eb
    dec bc
    push af
    inc b
    ei
    ld a, [bc]
    push af
    add h
    ld a, e
    ld [bc], a
    db $fd
    add e
    add e
    inc bc
    add b
    ld a, a
    ld b, b
    cp a
    adc c
    add e
    ld a, [bc]
    ld b, c
    cp [hl]
    and c
    ld e, [hl]
    ld b, e
    cp h
    xor e
    db $fc
    call c, $feff
    sbc e
    rst $18
    ld h, [hl]
    inc hl
    rlca
    inc b
    rst $00
    rst $00
    sbc e
    rst $38
    ld a, a
    ld b, h
    rst $38
    rst $30
    dec b
    and $ff
    rst $20
    cp $c5
    cp $43
    jp $43fc


    add [hl]
    ld sp, hl
    ldh [$2b], a
    ld c, $f1
    inc c
    di
    inc e
    db $e3
    ld e, $e1
    inc a
    jp $c53a


    dec a
    jp nz, $847b

    ld [hl], l
    adc d
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ld [$df15], a
    jr nz, @+$81

    ret nc

    cp a
    add sp, -$22
    push af
    xor l
    ld a, [$fdd6]
    ld hl, sp-$01
    ld a, c
    dec b
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    add e
    ld bc, $0714
    ld a, a
    rst $38
    ld a, a
    cp $7f
    ldh a, [$7f]
    pop hl
    ld b, e
    ld a, a
    ret nz

    ld b, [hl]
    ld a, a
    add b
    ld [$e783], sp
    rra
    rst $10
    dec hl
    ld h, $da
    ld l, [hl]
    sub d
    ld b, e
    rst $08
    ld sp, $9f13
    ld h, b
    rra
    ldh [$a0], a
    ld e, a
    ld b, b
    cp a
    adc a
    ld [hl], b
    ld a, a
    add b
    cp $01
    db $fc

jr_054_48de:
    inc bc
    add sp, $17
    ret nc

    cpl
    add e
    adc a
    inc bc
    add b
    ld a, a
    nop
    db $fc
    db $ec
    ld hl, $801d
    ret nz

    ldh [$e0], a
    ldh a, [rSVBK]
    ld hl, sp+$18
    db $ec
    call z, $a6a4
    ld d, $36
    jp z, $f85a

    add hl, sp
    ld sp, hl
    ld bc, $81f9
    db $fd
    pop af
    rst $38
    db $fd
    ld d, $36
    ld [$8408], sp
    and c
    ld [$008e], sp
    db $fc
    nop
    ld hl, sp-$20
    db $10
    ret nz

    jr nz, jr_054_48de

    nop
    call nc, $fe05
    nop
    db $fc
    nop
    ldh a, [rP1]
    call nz, $9a01
    rst $38
    db $ec
    dec sp
    ld [$0101], sp
    inc bc
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$430f], sp
    db $10
    rra
    ld b, e
    jr nz, @+$41

    ld b, l
    ld b, b
    ld a, a
    ld [$7f80], sp
    add b
    cp $81
    rst $38
    add b
    cp $81
    ld b, e
    ld a, a
    ld b, b
    add l
    xor b
    nop
    nop
    ld [hl+], a
    ld [bc], a
    ld bc, $0203
    ret z

    xor [hl]
    ld [bc], a
    ld bc, $0101
    ld b, h
    inc bc
    ld [bc], a
    ld c, d
    inc b
    rlca
    nop
    ld [bc], a
    add [hl]
    sub b
    ldh [$2f], a
    dec b
    ld b, $0e
    add hl, bc
    rra
    db $10
    ld a, $21
    ld a, a
    ld b, b
    cp $81
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f405]
    dec bc
    add sp, $17
    ret nc

    cpl
    xor b
    ld d, a
    ret nc

    cpl
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    ld d, b
    cp a
    adc h
    ld a, a
    ld b, e
    cp a
    add b
    ld a, a
    ld h, e
    ld de, $c0c0
    ld [hl], b
    jr nc, jr_054_4a15

    inc c
    rst $38
    inc bc
    ccf
    ret nz

    rst $08
    ldh a, [rBGP]
    ld a, b
    rst $00
    ld hl, sp-$31
    jr nc, jr_054_49f4

    rst $38
    nop
    dec b
    cp $01
    dec c
    ld a, [c]
    ld [bc], a
    db $fd
    add l
    adc h
    add e
    cp e
    add e
    add e
    rlca
    ld bc, $80ff
    ld a, a
    ld bc, $83fe
    ld a, h
    ld b, e
    inc bc
    db $fc
    jp $009e


    ld bc, $ff46
    nop
    rrca
    ld bc, $00fe
    cp $03
    db $fc
    ld [bc], a
    db $fc
    dec b
    ld sp, hl
    dec bc
    pop af
    rst $38
    rst $38
    ccf
    ret nz

    xor e
    nop
    ld sp, $e005
    ld h, b
    ld hl, sp+$18
    cp $06
    adc b
    xor d
    inc b
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ld b, e
    ldh a, [rIF]
    ld bc, $5fa0
    and a
    db $dd

jr_054_49f4:
    dec c
    nop
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    ld h, c
    rst $38
    sub b
    sbc a
    adc a
    adc a
    ld h, b
    ldh [$a9], a
    nop
    ld b, d
    dec b
    cp $02
    ld a, [hl]
    add d
    sbc c
    rst $20
    ld b, e
    ret nz

    rst $38
    rrca
    and b
    cp a
    and l
    cp a

jr_054_4a15:
    sbc d
    sbc a
    sub l
    sbc a
    rra
    ld e, $ff
    ldh a, [$fc]
    inc bc
    ret nz

    ccf
    ld [hl], e
    ld [bc], a
    add c
    add b
    add c
    and h
    nop
    ld [hl], a
    dec h
    add b
    dec b
    ld h, c
    ldh [$50], a
    pop af
    ld [de], a
    pop af
    ld b, e
    ld a, [bc]
    ld sp, hl
    dec c
    add hl, bc
    ld hl, sp+$08
    ld sp, hl
    ld [de], a
    pop af
    inc d
    di
    db $eb
    db $e4
    add e
    adc h
    rla
    ld [$0743], sp
    jr jr_054_4a50

    rla
    ld [$0c03], sp
    ld [$0407], sp
    inc bc

jr_054_4a50:
    ld bc, $0084
    ld [hl], l
    rrca
    add e
    add d
    ld b, a
    call nz, $c84f
    ld a, $f1
    db $fc
    db $e3
    ld hl, sp-$79
    pop af
    rrca
    pop bc
    ccf
    jp nz, $00f4

    db $fc
    or [hl]

jr_054_4a6a:
    nop
    ld h, $0d
    nop
    ld d, b
    add b
    nop
    ret nc

    and b
    ld d, b
    add b
    ld [hl], b
    nop
    ldh a, [rNR10]
    ldh [rNR10], a
    ld b, h
    ldh [rNR30], a
    ld b, l
    inc a
    jp nz, Jump_054_7805

    add [hl]
    ld hl, sp+$06
    pop af
    ld c, $a5
    ld bc, $0d02
    ld b, c
    cp $a0
    cp $42
    db $fc
    ldh [$bc], a
    ld l, b
    or b
    ldh a, [rNR41]
    ldh [rNR41], a
    ld b, e
    and b
    ld h, b
    ld b, l
    ld b, b
    ret nz

    ld bc, $8080
    xor b
    nop
    ld l, h
    nop
    nop
    rst $38
    ld [hl], a
    inc hl
    ld bc, $0223
    ld [hl+], a
    inc b
    nop
    ld b, $43
    inc b
    rlca
    ld b, e
    ld [bc], a
    inc bc
    jp $0f92


    ld [$2618], sp
    ld h, $01
    daa
    db $10
    inc de
    ld [$0009], sp
    dec b
    inc b
    rlca
    ld [bc], a
    inc bc
    rst $00
    and [hl]
    rla
    jr nz, jr_054_4b30

    jr jr_054_4a6a

    add [hl]
    sbc [hl]
    ld b, c
    ld c, a
    jr nz, @+$31

    jr nz, @+$41

    db $10
    rra
    ld [$180f], sp
    rra
    dec b
    rla
    jr nz, jr_054_4b09

    ld b, b
    ld c, e
    ld l, b
    dec de
    ld h, b
    db $10
    sub b
    adc h
    adc h
    ld b, e
    ld b, e
    ld b, b
    ld [hl], d
    jr nz, jr_054_4b18

    ld b, b
    ld c, d
    add b
    sub l
    ld h, b
    ld l, a
    sub b
    sbc a
    adc h
    sbc a
    ld b, d
    ld c, a
    ld hl, $206f
    rst $38
    db $10
    ld b, h
    rst $38
    ld [$0410], sp

jr_054_4b09:
    rst $38
    ld [bc], a
    rst $38
    jp nz, $33ff

    ccf
    ld c, $0e
    call nz, $3cc4
    db $fd
    ld b, $fe

jr_054_4b18:
    ld bc, $ff44
    nop
    db $10
    ld bc, $82ff
    rst $38
    ld b, d
    ld a, a
    ld h, h
    ld a, a
    ld d, b
    ld e, a
    nop
    xor a
    add b
    sbc a
    add b
    xor a
    ld b, b
    and h
    and a

jr_054_4b30:
    ld [bc], a
    nop
    rst $38
    add b
    ld b, l
    rst $38
    nop
    nop
    rst $38
    ld l, e

jr_054_4b3a:
    ld a, [bc]
    ld [bc], a
    ld b, $81
    adc e
    ld c, c
    sra b
    ld l, a
    inc d
    or a
    inc c
    ld b, [hl]
    rst $38
    inc b
    ld [$ff0a], sp
    db $10
    rst $38
    pop bc
    rst $38
    ld hl, $11ff
    ld b, [hl]
    rst $38
    db $10
    ld b, e
    jr nz, @+$01

    ld b, $c0
    rst $38
    nop
    cp a
    nop
    ld e, a

jr_054_4b60:
    nop
    ld e, b
    rst $38
    nop
    ld [bc], a
    ld bc, $01ff
    ld b, h
    rst $38
    ld [bc], a
    nop
    inc b
    and e
    jp hl


    nop
    rst $38
    sub c
    nop
    ld [$8e0f], sp
    adc [hl]
    sub b
    sub b
    ld h, b
    pop hl
    jr nz, jr_054_4b60

    ld b, b
    rst $00
    ld b, b
    rst $08
    add b
    sbc a
    add c
    cp a
    ld b, e
    inc bc
    rst $38
    nop
    rlca
    ld b, h
    rst $38
    add a
    ld b, e
    ld b, e
    rst $38
    ld [bc], a
    ld hl, $18ff
    and e
    db $e3
    ld d, d
    rst $38
    nop
    ld [bc], a
    ld e, $ff
    ld h, c
    ld b, e
    rst $38
    add b
    dec c
    sbc a
    nop
    adc a
    nop
    add a
    nop
    ld b, a
    nop
    xor e
    ld bc, $06d7
    rst $38
    jr jr_054_4b3a

    rst $18
    inc e
    ld c, $0e
    ld de, $611f
    ld a, a
    add d
    xor [hl]
    inc b
    ld e, h
    inc c
    cp h
    inc c
    ld a, h
    inc c
    db $fc
    inc d
    db $fc
    inc [hl]
    db $fc
    ld [hl], h
    db $fc
    db $f4
    db $fc
    or $fe
    ld sp, hl
    rst $38
    ldh [rSCX], a
    db $fc
    ret nz

    nop
    cp $43
    add b
    rst $38
    rlca
    ld bc, $81ff
    rst $38
    add b
    cp $00
    cp $c9
    ld bc, $1112
    inc c
    rst $38
    ld e, $f3
    ccf
    pop hl
    rst $38
    ret nz

    cp $00
    push af
    ret nz

    dec sp
    pop af
    ld c, $fe
    inc b
    db $fc
    ld b, e
    ld [bc], a
    cp $07
    ld bc, $f9ff
    rst $38
    ld b, $fe
    ld [bc], a
    cp $ec
    dec h
    ld [bc], a
    add b
    add b
    nop
    ld [hl+], a
    ld b, b
    rlca
    inc a
    cp $a1
    ld sp, hl
    ld b, d
    ld a, [hl]
    ld d, h
    ld a, h
    ld b, e
    ld l, b
    ld a, b
    inc bc
    ld h, h
    ld a, h
    inc b
    db $fc
    add l
    ret


    nop
    ld b, $44
    cp $02
    dec b
    call nz, $f8fc
    jr c, jr_054_4c68

    ld b, b
    pop de
    and [hl]
    rst $38
    ld h, a
    ld bc, $0706
    inc hl
    rrca
    dec b
    rlca
    rrca
    rlca
    ld b, $07
    rlca
    inc hl
    inc bc
    inc hl
    ld bc, $3dec
    ldh [$2f], a
    ldh [$f0], a
    db $fc
    db $fc
    cp $7f
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $81ff
    db $fd
    add d
    ldh a, [$c8]
    ldh [$f0], a
    jr c, @+$22

    ld [hl], a
    ld c, b
    ld [hl], a
    ld d, h
    rst $38
    sbc h
    sbc a
    add sp, -$61
    pop hl
    ccf
    ld b, b
    ld a, a
    ld b, c
    cpl
    jr nc, jr_054_4c83

jr_054_4c68:
    inc e
    ld d, $6f
    sbc a
    add a
    ei
    add a
    ld l, a
    ld [hl], d
    ld b, e
    rra
    db $10
    dec bc
    rrca
    ld [$0c0f], sp
    jr jr_054_4c92

    cpl
    jr nz, jr_054_4ca5

    inc sp
    inc e
    inc e
    db $76
    inc h

jr_054_4c83:
    add b
    rlca
    ldh a, [$f9]
    rra
    rlca
    rrca
    nop
    rra
    nop
    ld b, l

jr_054_4c8e:
    rst $38
    nop
    rla
    ei

jr_054_4c92:
    ld b, $fb
    dec bc
    rst $38
    rrca
    rst $38
    ld b, $7e
    add c
    cp $01
    rst $38
    nop
    cp $01
    rst $00
    rst $38
    ld a, e
    db $fc

jr_054_4ca5:
    rst $38
    cp b
    rst $38
    ld de, $ff47
    nop
    dec b
    ld sp, hl
    cp $07
    inc b
    ld [bc], a
    ld [bc], a
    sub l
    nop
    ld a, [de]
    dec d
    inc bc
    rrca
    rra
    ccf
    ld a, a
    ld sp, hl
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ret nz

    cp a
    ld b, c
    rst $38
    ld bc, $11ef
    rst $38
    dec bc
    rst $38
    rrca
    ld b, l
    ld hl, sp+$08
    ld b, e
    ld [hl], b
    sub b
    ld de, $20e0
    ret nz

    ret nz

    ldh [$e0], a
    and b
    ld [hl], c
    di
    rla
    rst $38
    ccf
    ld a, l
    db $dd
    pop af
    ld de, $21e1
    ld [hl+], a
    pop bc
    ld b, $41
    ldh [rNR41], a
    jr nz, jr_054_4c8e

    ret nz

    ret nz

    sub l
    nop
    sbc l
    daa
    ret nz

    cp e
    nop
    inc d
    nop
    ret nz

    ld [hl+], a
    ldh [rP1], a
    ldh [$28], a
    ldh a, [rP1]
    add b
    adc [hl]
    ret


    dec bc
    ld bc, $0703
    rrca
    ld c, $1f
    dec e
    ld e, $0f
    ld c, $03
    inc bc
    add a
    nop
    ld d, [hl]
    ld a, [bc]
    ld a, $fe
    or $0f
    rst $38
    ld [bc], a
    ld hl, sp-$7c
    db $ec
    ldh a, [$3e]
    adc [hl]
    nop
    ld l, a
    dec c
    ccf
    jr nz, jr_054_4d46

    db $10
    dec c
    ld e, $0f
    daa
    cpl
    inc hl
    rra
    ld [de], a
    rrca
    inc c
    ld l, c
    add e
    nop
    or [hl]
    inc b
    ld c, $01
    rra
    nop
    ccf
    adc h
    nop
    cp a
    ld b, e
    cp $c1
    dec bc
    rst $38
    nop
    db $fc

jr_054_4d46:
    inc bc
    add a
    rst $38
    rst $38
    db $fc
    rst $30
    cp h
    rst $38
    inc de
    ld h, l
    inc de
    ld e, $3f
    ld a, a
    rst $38
    pop af
    rst $38
    sbc $e1
    rst $38
    add c
    db $fd
    inc bc
    cp e
    ld b, a
    rst $20
    ccf
    cp $1e
    ldh a, [$08]
    and l
    nop
    adc d
    add l
    ld bc, $091c
    ldh [$f1], a
    di
    ld d, a
    rst $38
    ld e, a
    db $fd
    sbc l
    pop af
    ld de, $0183
    jr nz, jr_054_4d7b

    ret nz

jr_054_4d7b:
    ld b, b
    sub c
    ld bc, $0136
    add b
    ret nz

    ld b, e
    ret nz

    ldh [$83], a
    ld bc, $0384
    ld b, $0e
    ld e, $3e
    inc hl
    cp $05
    ld hl, sp-$04
    ldh [$e0], a
    add b
    add b
    add e
    nop
    call z, $ef8b
    dec b
    ld a, a
    ld b, b
    ld l, a
    ld d, b
    rst $38
    sub h
    adc c
    nop
    db $76
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    add l
    nop
    jp z, Jump_054_6fff

    rrca
    inc c
    inc e
    ld h, $22
    ld h, a
    ld b, c
    ld a, a
    ld b, e
    ld a, c
    ld b, a
    inc a
    daa
    ld e, $1f
    ld bc, $6901
    dec d
    ld bc, $0201
    inc bc
    ld c, $0d
    dec e
    ld [de], a
    rra
    jr nz, jr_054_4ddc

    ld b, b
    ld h, e
    ld b, b
    ld c, b
    ld [hl], b
    ld hl, $183e
    rra
    ld b, $07
    add a
    and c
    rla
    inc e

jr_054_4ddc:
    inc a
    ld c, [hl]
    ld b, d
    rst $08
    add c
    db $fd
    add e
    ld sp, hl
    add a
    db $e3
    sbc a
    xor a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    ld e, h
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_054_4e32

    ld h, c
    add hl, bc
    db $10
    jr nc, @+$3a

    jr z, jr_054_4e36

    inc h
    ld e, $12
    rla
    add hl, de
    ld b, e
    dec bc
    inc c
    ld b, e
    dec b
    ld b, $01
    inc b
    rlca
    ld b, e
    ld [bc], a
    inc bc
    dec bc
    add $c7
    ld a, $fb
    ld c, $f1
    sbc a
    ldh [$7f], a
    ld b, b
    ld h, a
    ld b, b
    ld b, e
    jp $0580


    add a
    nop
    adc a
    nop
    rst $08
    nop
    ld c, e
    rst $38
    nop
    rlca
    rra
    ldh [rP1], a
    rst $38
    ldh [rIE], a
    rra
    rra
    push bc
    ldh [rNR12], a
    rrca

jr_054_4e32:
    ld [$111f], sp
    ccf

jr_054_4e36:
    ld hl, $233e
    db $fd
    jp $c7fa


    push af
    adc a
    ld h, a
    rst $18
    ld c, a
    rst $38
    ld l, a
    ld [hl+], a
    rst $38
    ld h, [hl]
    nop
    inc b
    ld b, e
    ld [$010a], sp
    adc [hl]
    adc d
    ld b, e
    sub $5a
    rlca
    ld a, [c]
    ld a, $e3
    ccf
    rst $38
    db $10
    ld a, a
    sub b
    ld b, e
    ld a, a
    add b
    ld bc, $c03f
    ld e, c
    rst $38
    nop
    inc bc
    db $fc
    inc bc
    ret nz

    ccf
    add e
    adc b
    ld b, $03
    rst $38
    call $faff
    rst $38
    push af
    and h
    add e
    ld [$ff5e], sp
    cp [hl]
    rst $38
    ld e, [hl]
    rst $38
    cp h
    rst $38
    ld a, h
    ld b, h
    rst $38
    db $fc
    inc bc
    ld hl, sp-$01
    ld hl, sp-$01
    add l
    nop
    ld h, $45
    inc bc
    ld [bc], a
    add l
    add a
    dec b
    rlca
    inc b
    adc a
    adc h
    rst $38
    ld a, c
    ld b, e
    rst $38
    ld hl, $cf07
    ld sp, $3fc6
    ldh [$1f], a
    ldh a, [rIF]
    sub c
    reti


    inc bc
    ldh a, [rIF]
    add b
    ld a, a
    add e
    reti


    inc b
    inc c
    db $fc
    ccf
    rst $38
    ldh a, [rLY]
    rst $38
    ret nz

    nop
    add b
    ld c, d
    rst $38
    nop
    xor h
    nop
    rst $18
    dec b
    nop
    ret nz

    ldh [$90], a
    db $10
    sbc b
    ld b, h
    ld [$03f8], sp
    ldh a, [rNR10]
    ldh [$60], a
    and e
    push hl
    and a
    nop
    ld b, b
    dec b
    add b
    add b
    ld [hl], b
    ldh a, [$7f]
    adc a
    ld b, a
    rst $38
    nop
    and e
    nop
    call c, $f803
    rlca

jr_054_4ee0:
    pop bc
    ccf
    and e
    nop
    ld e, h
    dec b
    jr jr_054_4ee0

    jr nz, @-$1e

    ret nz

    ret nz

    add a
    and e
    ld b, $fc
    inc c
    cp $06
    ld a, a
    sbc a
    ccf
    ld b, e
    rst $38
    ld a, a
    db $10
    cp $bf
    db $fc
    ld d, c
    cp $20
    rst $38
    jp $27ff


    rst $38
    rra
    rst $38
    ccf
    rst $38
    ei
    ei
    db $ec
    jr nz, jr_054_4f0e

jr_054_4f0e:
    ret nz

    xor c
    nop
    ld [hl], b
    inc bc
    add b
    add b
    add b
    add b
    ld a, c
    inc bc
    add b
    add b
    ret nz

    ret nz

    and e
    ld bc, $0d30
    ldh a, [rNR10]
    ld hl, sp+$08
    ld d, h
    db $fc
    and d
    cp $d2
    cp $e1
    rst $38
    pop bc
    rst $38
    rst $38
    db $ec
    dec h
    inc b
    inc bc
    rlca
    ld [$0018], sp
    ld [hl+], a
    jr nz, jr_054_4f3b

jr_054_4f3b:
    nop
    ld [hl+], a
    ld b, b
    rrca
    ld b, e
    ld b, e
    daa
    daa
    ccf
    daa
    dec e
    rla
    dec c
    rrca
    ld [bc], a
    inc bc
    dec b
    ld b, $09
    ld c, $43
    inc de
    inc e
    ld b, h
    inc hl
    inc a
    ld bc, $473f
    ld b, [hl]
    ld a, a
    ld c, a
    dec bc
    cpl
    ccf
    daa
    ccf
    jr nz, jr_054_4fa1

    db $10
    rra
    ld [$060f], sp
    rlca
    ld h, l
    inc bc
    ld bc, $0101
    ld bc, $236b
    ld bc, $0245
    inc bc
    ld b, l
    inc b
    rlca
    ld d, $84
    add a
    ld b, d
    ld b, e
    ld [hl+], a
    inc hl
    ld hl, $3121
    ld de, $1070
    ldh a, [rNR10]
    rst $20
    and a
    ret c

    rst $18
    xor $f1
    cp [hl]
    pop bc
    db $fd
    ld b, h
    inc bc
    rst $38
    ld b, e
    ei
    rlca
    ld b, e
    pop af
    rrca
    ld [bc], a
    pop bc
    cp a
    jp nz, $ff46

    jp $8400


jr_054_4fa1:
    ld b, [hl]
    db $fc
    inc b
    inc bc
    rlca
    rst $38
    inc b
    rst $38
    and [hl]
    nop
    jr nz, jr_054_4fc2

    ret nz

    ld [hl], b
    ldh a, [$f8]
    ld hl, sp+$7c
    ld a, h
    ld a, a
    ld a, a
    dec sp
    inc a
    ld l, a
    ld [hl], b
    sbc a
    ldh [rNR31], a
    rst $28
    dec d
    rst $38
    dec hl
    rst $38

jr_054_4fc2:
    scf
    ld b, h
    rst $38
    ccf
    nop
    ld e, $4c
    rst $38
    nop
    dec bc
    adc [hl]
    rst $38
    ld e, a
    ld a, a
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    inc [hl]
    rst $38
    rst $30
    cp $43
    rst $28
    rst $38
    nop
    rst $08
    ld b, h
    rst $38
    adc a
    ld [bc], a
    adc [hl]
    rst $38
    ld [$ff46], sp
    inc b
    ld b, e
    ld [bc], a
    rst $38
    dec bc
    add c
    rst $38
    ld b, c
    ld a, a
    ld h, b
    ld a, a
    ld hl, sp-$01
    rst $20
    rst $20
    ret nz

    ret nz

    ld l, l
    add hl, bc
    ldh a, [$f0]
    adc h
    ld a, h
    jp $c03f


    ccf
    add b
    ld a, a
    ld b, l
    add b
    rst $38
    nop
    add b
    ld c, h
    rst $38
    nop
    ld b, e
    ld bc, $09fe
    inc bc
    db $fc
    ld a, a
    ld hl, sp-$79
    rst $38
    ld a, b
    add a
    cp $01
    jp z, $0496

    nop
    ld a, [hl]
    add c
    inc e
    db $e3
    xor c
    adc [hl]
    nop
    ld bc, $9884
    dec b
    ld b, b
    rst $38
    and b
    cp a
    db $10
    rra
    ld h, e
    dec b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld e, b
    ld a, b
    inc hl
    inc a
    inc hl
    ld e, $a3
    nop
    call z, Call_054_7c19
    db $fc
    ld a, b
    ld hl, sp+$30
    ldh a, [$30]
    ld hl, sp+$28
    add sp, $18
    ld hl, sp+$18
    db $fc
    inc e
    db $fc
    ld l, h
    sbc h
    db $fc
    inc c
    ld sp, hl
    dec c
    ld a, [$fb0a]
    ld a, [bc]
    ld b, e
    rst $30
    inc d
    ld b, $e3
    and d
    ld h, c
    pop hl
    add hl, de
    ld sp, hl
    ld b, $83
    ld bc, $0211
    ld a, a
    add c
    ld a, a
    add a
    db $fd
    ld [bc], a
    ld [hl], b
    rst $38
    ld hl, sp+$43
    rst $38
    db $fc
    nop
    rst $38
    res 0, c
    ld bc, $ff01
    db $ec
    daa
    inc bc
    ld [hl], b
    ld [hl], b
    adc h
    adc h
    inc hl
    ld [bc], a
    rrca
    ld bc, $8101
    ld bc, $c1e3
    cp $e2
    ld a, [hl]
    ld [c], a
    ld a, h
    db $e4
    ret c

    ret c

    ret nz

    ret nz

    inc hl
    add b
    dec d
    ld e, b
    ret c

    ld h, h
    db $e4
    ld b, d
    jp nz, $e222

    ld hl, $23e1
    pop hl
    daa
    pop hl
    ld a, $e2
    ld a, [hl]
    jp nz, $c47c

    ld a, b
    ld hl, sp-$5b
    nop
    ld h, [hl]
    rst $38
    ld l, d
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    ld bc, $0101
    ld l, h
    dec bc
    inc bc
    inc c
    inc a
    rlca
    ld b, b
    ld e, a
    ld b, b
    ccf
    jr nc, @+$11

    inc c
    inc bc
    ret z

    adc e
    dec bc
    inc bc
    rrca
    ld bc, $2730
    jr nz, jr_054_50f1

    jr @+$09

    ld b, $01
    ld bc, $276f
    ld bc, $80d2
    inc d
    ldh [rNR23], a
    inc e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld e, a
    ld h, b
    rra
    jr nc, jr_054_50fa

    ld [$0407], sp
    inc bc
    ld [bc], a
    ld a, a

jr_054_50f1:
    rst $38
    ld b, a
    rst $38
    nop
    ldh [$36], a
    cp $01
    rst $38

jr_054_50fa:
    nop
    rst $38
    ret z

    ccf
    jr c, jr_054_511f

    db $10
    cp $e0
    ld a, l
    nop
    cp $00
    db $fd
    db $10
    cp $20
    db $fc
    daa
    db $fc
    ret c

    ld a, b
    ld h, b
    ld a, c
    ld b, b
    ld [hl], l
    ld b, b
    ld sp, hl
    add b
    pop af
    add b
    db $eb
    add b
    di
    add b
    db $eb
    add b

jr_054_511f:
    db $d3
    nop
    rst $20
    nop
    rst $10
    nop
    rst $00
    ld a, b
    rst $00
    add a
    rst $20
    nop
    rst $00
    nop
    and a
    adc b
    nop
    inc l
    dec c
    inc b
    inc b
    ld b, $04
    rlca
    inc b
    inc bc
    add d
    db $e3
    ld h, d
    ei
    ld a, [de]
    rst $38
    ld b, $44
    rst $38
    ld [bc], a
    jr @+$08

    rst $38
    dec c
    ld hl, sp+$10
    db $f4
    jr nz, @-$15

    nop
    db $d3
    nop
    ld h, e
    add b
    rst $10
    nop
    and a
    nop
    ld c, a
    nop
    sbc a
    nop
    rra
    nop
    sbc a
    nop
    ld b, e
    ccf
    nop
    ld b, h
    ld a, a
    nop
    ld b, $80
    rst $38
    ld [hl], b
    rst $38
    inc c
    rst $38
    inc bc
    ld d, [hl]
    rst $38
    nop
    inc b
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    ld h, c
    ld bc, $0606
    ld b, e
    rrca
    add hl, bc
    add hl, bc
    adc a
    adc b
    rrca
    ret z

    ld c, a
    ld c, b
    xor a
    jr z, @+$01

    db $10
    ld b, l
    rst $38
    nop
    rlca
    ldh a, [rIF]
    cp a
    ld [hl], b
    sbc a
    add b
    ld a, a
    ld bc, $fe45
    ld [bc], a
    ld b, e
    rst $38
    ld bc, $ff4e
    nop
    nop
    rlca
    ld b, h
    rst $38
    ld [$0408], sp
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ld b, b
    add e
    res 0, h
    adc a
    inc b
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld b, [hl]
    rst $38
    ld bc, $0001
    rst $38
    add h
    nop
    ld e, a
    dec d
    jr nc, jr_054_5230

    ld [$9888], sp
    add h
    call c, $ccc4
    ld b, d
    xor $42
    rst $28
    ld b, c
    rst $30
    ld hl, $20f7
    rst $38
    jr nz, jr_054_5202

    ldh a, [rLY]
    rst $38

jr_054_51d6:
    db $10
    ld a, [bc]
    sub b
    ld a, a
    ld [hl], b
    ld a, a
    db $10
    ld a, a
    ld [$047b], sp
    ld a, $03
    ld b, e
    cp a
    add b
    ld bc, $80ff
    ld b, [hl]
    rst $38
    ld b, b
    ld [bc], a
    sub b
    rst $38

jr_054_51ef:
    ldh [$4c], a
    rst $38
    nop
    add a
    sbc c
    db $10
    jr nz, jr_054_51ef

    jr z, @-$33

    dec [hl]
    or $2a
    xor $36
    call nz, $c87c

jr_054_5202:
    ld a, b
    sub b
    ldh a, [rNR41]
    ldh [$73], a
    inc hl
    add b
    ld b, e
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    ld b, l
    ldh a, [rNR10]
    ld b, a
    ld hl, sp+$08
    ld c, d
    db $fc
    inc b
    inc b
    inc [hl]
    db $fc
    jr c, jr_054_51d6

    ld a, b
    ld b, e
    ldh a, [rSVBK]
    dec b
    ldh [rSVBK], a
    ldh [$60], a
    and b
    ld h, b
    and e
    nop
    ld a, d
    ld bc, $40c0
    pop de

jr_054_5230:
    or [hl]
    rst $38
    db $ec
    add hl, sp
    add hl, de
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    inc bc
    inc b
    ld c, $09
    dec c
    ld [de], a
    ld e, $11
    dec e
    ld [de], a
    ld a, [hl-]
    dec h
    dec a
    ld [hl+], a
    ld a, [hl-]
    dec h
    ld c, a
    ld a, a
    ld a, c
    ld [hl], b
    ld b, e
    ld a, b
    ld d, a
    rlca
    ld l, b
    ld d, a
    ret c

    adc a
    reti


    adc a
    sub $8f
    ldh a, [rNR44]
    rst $00
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $04
    dec b
    ld b, $c5
    jp z, $0119

    ld bc, $0703
    rrca
    jr @+$3a

    ld h, b
    ldh a, [$80]
    pop af
    nop
    rst $38
    nop
    cp $01
    ret nc

    cpl
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    add e
    add e
    inc c
    nop

jr_054_5286:
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    ld b, l
    rst $38
    nop
    ld h, c
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    ld bc, $0203
    dec h
    ld bc, $0243
    inc bc
    ld b, e
    inc b
    rlca
    ld bc, $0303
    ld h, a
    ld de, $c0c0
    ld h, b
    jr nz, jr_054_5301

    ld sp, $7191
    inc de
    ld a, [c]
    inc hl
    ld [c], a
    ld b, a
    call nz, $f9fe
    rst $00
    ccf
    ld b, l
    ldh [$1f], a
    ld bc, $3fc0
    add d

jr_054_52c4:
    pop de
    ld d, d

jr_054_52c6:
    rst $38
    nop
    dec c
    add c
    rst $38
    ld [hl], c

jr_054_52cc:
    rst $38
    ld c, $ff
    ld a, [bc]
    rst $30
    ld b, $fb
    dec bc
    rst $30
    dec d
    db $eb
    and l
    nop
    jr c, jr_054_52ef

    pop bc
    ld b, c
    inc hl
    ld [c], a
    ld e, $fd
    inc e
    db $e3
    jr jr_054_52cc

    jr nz, jr_054_52c6

    nop
    rst $38
    jr nz, @+$01

    xor $ff
    dec h
    dec a

jr_054_52ef:
    inc h
    ld b, h
    ld e, h
    ld h, h
    dec bc

jr_054_52f4:
    inc h
    sbc h
    add h
    cp h
    call nz, $c8bc
    jr c, jr_054_5286

    ld a, c
    adc e
    ld a, d
    ld b, e

jr_054_5301:
    ld a, [bc]
    ei
    ld b, e
    ld de, $09f1
    jp nc, $12f3

    di
    inc c
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    ld b, e
    ld [bc], a
    cp $11
    ld de, $29ef
    rst $10
    dec d
    db $eb
    jr z, jr_054_52f4

jr_054_531d:
    inc d
    db $eb
    nop
    rst $38
    inc a
    rst $38
    jp $38ff


    rst $00
    ld b, e
    ld c, h
    add e
    ld bc, $c738
    add l
    db $ed
    add hl, bc
    jr nz, jr_054_5392

    jr nc, jr_054_52c4

    ret nc

    or b
    sub b
    ld [hl], b
    db $10
    ldh a, [rBGP]
    jr nz, jr_054_531d

    ld b, l
    db $10
    ldh a, [$03]
    sub b
    ldh a, [$60]
    ld h, b
    ld l, c
    add hl, de
    ldh [$e0], a
    jr nc, jr_054_535b

    jr z, jr_054_5365

    ret z

    jr c, @+$0a

    ld hl, sp+$11
    pop af
    ld h, b
    ld [c], a
    ld b, d
    jp nz, $8283

    add c
    add h

jr_054_535b:
    dec b
    inc b
    rlca
    inc b
    dec b
    ld b, $22
    inc bc
    nop
    ld [bc], a

jr_054_5365:
    ld b, e
    ld b, $04
    ld b, e
    add [hl]
    add h
    ld bc, $8481
    ld b, l
    adc l
    adc b
    dec bc
    ld c, d
    ret


    ld e, d
    pop de
    inc [hl]
    ei
    inc e
    rst $38
    ld e, $f3
    ld [hl+], a
    rst $38
    db $ec
    dec l
    dec c
    ld b, [hl]
    add $29
    add hl, hl
    ld d, c
    ld d, c
    ld a, d
    ld h, d
    ld a, $f2
    adc $3a
    call nz, Call_054_433c
    add h
    ld a, h

jr_054_5392:
    dec b
    ret z

    ld hl, sp+$30
    jr nc, @+$50

    ld a, $43
    add c
    ld a, a
    inc bc
    add d
    ld a, [hl]
    inc b
    db $fc
    ld b, e
    ld [$01f8], sp
    inc c
    db $fc

jr_054_53a7:
    ld b, e
    ld [de], a
    cp $03
    inc b
    db $fc
    jr jr_054_53a7

    and e
    nop
    adc d
    rst $38
    db $ec
    ld e, h
    inc b
    ld bc, $0200
    ld bc, $4902
    ld bc, $1f03
    dec bc
    rlca

jr_054_53c1:
    rrca
    rra
    rra
    ccf
    dec a
    ld a, [hl]
    db $f4
    ld a, b
    ld a, b
    ldh a, [$e0]
    pop af
    ldh a, [$e2]
    pop af
    db $e3
    ldh [$f1], a
    ld a, b
    ldh a, [$f4]
    ld a, b
    dec a
    ld a, [hl]
    rra
    ccf
    rrca
    rra
    dec bc
    rlca
    ld h, a
    nop
    ld bc, $8282
    call nc, $0cb9
    ldh [$f0], a
    ld a, h
    cp $7f
    rst $38
    rst $38
    adc a
    rst $38
    add e
    rst $08
    add b
    jp $cfaf


    ld bc, $c78f
    or d
    rst $08
    inc c
    inc bc
    inc bc
    rrca
    rrca
    rst $38
    cp a
    rra
    ld e, $ff
    ldh a, [$fc]
    nop
    ldh [$75], a
    ld c, $80
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp+$78
    db $fc
    inc a
    ld a, [hl]
    ld e, $3e
    ld c, $c3
    nop
    ld [hl], b
    ld bc, $0f0f
    ld c, b
    rlca
    add e
    dec d
    rrca
    rlca
    rlca
    rrca
    rra
    rrca
    ld c, $1f
    ld e, $3e
    inc a
    ld a, [hl]
    ld a, b
    db $fc
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    ldh [$80], a
    ret nz

    db $ec
    dec l
    nop
    add b
    ld h, c
    jr z, jr_054_53c1

    ld bc, $8000
    sbc $8d
    dec b
    ld bc, $0301
    rlca
    inc bc
    inc bc
    jr z, @+$09

    dec b
    inc bc
    rlca
    rlca
    inc bc
    ld bc, $8903
    nop
    sbc b
    ld bc, $0201
    add h
    sbc e
    ld b, e
    rrca
    ld c, $03
    ld e, $5e
    ccf
    ld a, a
    ld [hl+], a
    rst $38
    ld [bc], a
    db $ed
    di
    and c
    jp $0401


    ld [de], a
    adc h
    add h
    ld d, $8c
    ld e, $00
    adc h
    ret nz

    add b
    and c
    ret nz

    db $ed
    di
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, l
    ld a, $63
    add e
    nop
    or b
    dec b
    rrca
    rst $38
    inc bc
    rrca
    nop
    inc bc
    adc c
    nop
    cp $05
    ld a, b
    ldh a, [$f0]
    ld a, b
    inc a
    ld a, b
    ld b, e
    ld a, h
    jr c, jr_054_54a1

    inc a
    ld a, b
    ldh a, [$78]
    ld a, b

jr_054_54a1:
    ldh a, [$8a]
    ld bc, $0030
    inc bc
    add [hl]
    ld bc, $4810
    rlca
    inc bc
    add [hl]
    nop
    ld h, b
    ld b, h
    ld bc, $0100
    inc bc
    ld bc, $01a5
    inc b
    dec b
    dec a
    ld e, $1e
    inc a
    jr c, jr_054_54fc

    ld b, e
    inc a
    jr c, jr_054_54c9

    jr c, jr_054_5502

    ld e, $3c
    dec a

jr_054_54c9:
    ld e, $a6
    ld bc, $002e
    nop
    add a
    rst $28
    db $10
    adc a
    rst $38
    jp $c0cf


    db $e3
    ldh [$f0], a
    db $f4
    ld hl, sp-$04
    cp $fe
    rst $38
    ld l, a
    sbc a
    dec bc
    add e
    ld bc, $12a1
    ld h, e
    inc hl
    or c
    ld h, e
    pop af
    ld bc, $0763
    inc bc
    dec bc
    rlca
    ld l, a
    sbc a
    cp $ff
    db $fc
    cp $74
    ld hl, sp-$7a
    rst $28

jr_054_54fc:
    jp $cc00


    ld c, b
    rst $00
    db $e3

jr_054_5502:
    dec b
    adc a
    rst $00
    rst $00
    adc a
    rra
    adc a
    adc c
    ld bc, $1526
    rra
    ccf
    inc a
    ld a, a
    ei
    ld a, a
    ld [hl], h
    rst $38
    ld [$e8fd], a
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    ei
    ld a, a
    inc a
    ld a, a
    adc c
    nop
    add [hl]
    and l
    sbc a
    nop
    xor $44
    rst $38
    ld [hl], a
    nop
    rst $30
    or c
    sbc a
    nop
    inc bc
    rst $38
    db $ec
    ld h, $24
    ld bc, $81cd
    dec b
    rra
    rra
    dec a
    inc hl
    ld e, h
    ld h, e
    ld b, e
    ld b, b
    ld a, a
    nop
    ld h, c
    ld [hl+], a
    ld a, a
    dec c
    ccf
    ccf
    rra
    dec de
    ld e, $12
    inc a
    inc h
    jr c, @+$2a

    add hl, sp
    add hl, hl
    ld a, c
    ld c, c
    ld b, l
    ld [hl], c
    ld d, c
    ld b, e
    ld [hl], b
    ld d, b
    sub h
    rlc d
    inc bc
    rlca
    rlca
    ld b, e
    rlca
    rrca
    ld bc, $0301
    ld h, e
    ldh [$3d], a
    ld h, b
    ld h, b
    db $10
    ld [hl], b
    xor b
    ld hl, sp+$7e
    add $ff
    add c
    cp a
    nop
    rst $18
    ld bc, $818f
    add [hl]
    add c
    adc h
    add e
    ld e, [hl]
    ld b, d
    ld a, b
    ld b, h
    jr nc, @+$30

    and d
    cp [hl]
    call nc, $ebde
    cp $df
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$fd]
    jp Jump_054_477a


    push af
    adc a
    ld a, [$f58f]
    adc a
    ei
    adc a
    rst $30
    rst $08
    rst $38
    rst $00
    ei
    rst $00
    db $fc
    jp $c0ff


    rst $38
    add b
    adc e
    sub $08
    rlca
    rlca
    rra
    ccf
    ld a, h
    ld a, a
    ld hl, sp-$01
    ld hl, sp+$44
    rst $38
    ldh a, [rSCX]
    pop hl
    rst $38
    rra
    inc hl
    ccf
    dec hl
    ccf
    ld d, a
    ld a, a
    ld c, e
    ld a, a
    ld d, a
    ld a, a
    adc a
    rst $38
    sub l
    rst $38
    xor e
    rst $38
    dec d
    rst $38
    dec hl
    rst $38
    ld e, a
    rst $38
    ld d, a
    rrca
    ld l, $01
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    ld b, e
    rst $38
    nop
    inc c
    ei
    rlca
    push af
    rrca
    ei
    rrca
    ld [hl], a
    adc a
    cp e
    rst $00
    db $fd
    jp Jump_054_44df


    ldh [rIE], a
    dec bc
    rst $18
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    ld a, c
    add [hl]
    or $0f
    rst $38
    rrca
    ld h, l
    db $10
    ld h, b
    ld h, b
    sub b
    sub b
    cp a
    ccf
    set 7, a
    dec b
    rst $38
    ld a, [bc]
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    ld l, $ff
    nop
    cp $ae
    sub c
    inc bc
    or $f8
    db $fd
    nop
    and d
    pop hl
    push bc
    db $db
    ld [bc], a
    add b
    rst $38
    ret nz

    ld b, h
    rst $38
    ldh [rSC], a
    ret nz

    rst $38
    add b
    ld d, c
    rst $38
    nop
    adc c
    rst $18
    dec b
    ld c, b
    sbc b

jr_054_5633:
    ret z

    ld [$ccec], sp
    inc hl
    rst $38
    rrca
    adc a
    rst $38
    jp $f0ff


    rst $38
    cp $cf
    and a
    push de
    rst $20
    sub a
    and $86
    db $e3
    sub d
    ld b, l
    rst $38
    nop
    dec bc
    ei
    inc b
    db $fc
    add e
    rst $38
    pop bc
    cp $f2
    rst $38
    rst $38
    ld b, c
    add b
    ld h, c
    inc b
    inc bc
    nop
    adc a
    nop
    ld a, a
    adc e
    ret


    dec b
    ld bc, $06fe
    ld a, [$f81a]
    ld b, h
    ld bc, $03f9
    ld hl, sp+$00
    ldh a, [rP1]
    add l
    add e
    nop
    pop af
    jp nc, Jump_054_7300

    dec bc
    ret nz

    ret nz

jr_054_567c:
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    jr jr_054_567c

    ldh a, [$f0]
    and e
    nop
    ret z

    nop
    ld b, b
    ld b, e
    ld h, b
    ldh [rNR12], a
    jr nz, @-$1e

    jr nz, jr_054_5633

    ld h, b
    ld b, b
    ret nz

    adc h
    adc [hl]
    ld [hl], b
    ld a, [hl]
    ld a, e
    adc a
    ld a, a
    rlca
    cp $06
    cp $02
    ld b, e
    db $fc
    inc b
    add hl, bc
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    or a
    nop
    ld a, [de]
    rst $38
    db $ec
    dec hl
    rla
    ld bc, $0201
    inc bc
    ld [$200d], sp
    ld sp, $4241
    dec b
    ld b, d
    sbc l
    add d
    rst $38
    add e
    ld a, [hl]
    ld b, d
    inc a
    inc a
    ld [$1008], sp
    db $10
    inc hl
    jr nz, jr_054_56e9

    ld b, b
    ld d, b
    ld b, b
    ld c, c
    ld b, c
    ld b, [hl]
    ld b, a
    ld b, b
    ld c, a
    ld b, b
    cpl
    ld hl, $2f3f
    ld de, $2111
    jr nz, jr_054_5746

    ld b, b
    db $10
    add b
    adc a

jr_054_56e9:
    add b
    ld [hl], e
    ld c, $0e
    ld c, $13
    ld de, $120c
    db $10
    inc l
    jr z, jr_054_5726

    jr z, jr_054_5718

    inc h
    inc hl
    nop
    ld [hl+], a
    ld b, b
    nop
    nop
    inc h
    add b
    ldh [$33], a
    ld a, $80
    rst $38
    nop
    rst $38
    inc e
    ld h, e
    and [hl]
    and [hl]

jr_054_570c:
    ld l, e
    rst $20
    ld a, [hl+]
    rst $20
    ld [$2b07], a
    ld b, [hl]
    ld c, d
    ld c, a
    ld b, d
    ld c, [hl]

jr_054_5718:
    ld d, d
    ld c, a
    ld d, d
    ld c, [hl]
    ld d, d
    ld c, $53
    adc a
    sub d
    sbc a
    add d
    sbc a
    and d
    adc [hl]

jr_054_5726:
    or e
    rla
    xor d
    ld a, [bc]
    scf
    rla
    ld a, [hl+]
    ld a, [hl+]
    ld d, a
    dec [hl]
    ld c, e

jr_054_5731:
    dec hl
    ld d, h
    ld d, a
    xor b
    xor a
    ld d, b
    ld [hl], l
    add hl, de
    adc a
    sbc a
    nop
    ld [c], a
    nop
    inc c
    nop
    stop
    inc l
    ld b, b
    add d
    nop

jr_054_5746:
    ld bc, $0200
    nop
    inc b
    ld bc, $0a00
    db $10
    dec e
    jr nz, jr_054_5731

    jr nz, jr_054_5797

    cp a
    ld b, b
    rra
    ld a, a
    add b
    cp a

jr_054_575a:
    ld b, b
    rst $18
    jr nz, jr_054_570c

    ld d, b
    adc $b0
    ld b, h
    ld a, b
    and d
    inc a
    inc sp
    ld e, h
    ld [hl], c
    sbc [hl]
    pop af
    ld c, $f3
    rrca
    db $fc
    rrca
    cp $0f
    ld sp, hl
    add hl, bc
    ld [hl], b
    sub b
    or b
    ld d, b
    ld b, e
    jr nz, jr_054_575a

    ld bc, $c040
    and e
    nop
    inc l
    ld bc, $c040
    ld l, a
    ld a, [bc]
    jr c, jr_054_57bf

    ld h, h
    ld b, h
    add [hl]
    add d
    rrca
    ld bc, $000f
    rlca
    ld h, c
    dec bc
    ld bc, $000b
    rla
    nop

jr_054_5797:
    cpl
    nop

jr_054_5799:
    ld d, a
    nop
    xor e
    nop
    ld d, l
    call nz, $e081
    daa
    xor a
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $30
    ld [$09ff], sp
    ld a, [hl]
    add a
    ld e, a
    ld h, b
    rla
    jr jr_054_57ba

    ld b, $01
    rrca
    add c
    rra
    pop bc
    ccf

jr_054_57ba:
    jp nz, $8c3f

    rst $38
    ld [hl], l

jr_054_57bf:
    ld_long a, $ff03
    ld b, b
    cp a
    or e
    adc a
    cp h
    add h
    ld a, b
    ld a, b
    db $f4
    ld [hl+], a
    nop
    ld a, [bc]
    ldh [$29], a
    ret nz

    ldh a, [$30]
    add b
    inc c
    jr nz, jr_054_5799

    rst $00
    ld sp, $1cfb
    rst $38
    ld e, $eb
    dec de
    ld sp, hl
    add hl, bc
    rst $30
    rrca
    cp $01
    rst $38
    inc bc
    sbc $64
    cp $bc
    rst $10
    sub h
    ld l, e
    adc h
    ld a, c
    add [hl]
    rst $38
    nop
    db $fc
    nop
    pop af
    nop
    ldh [$1f], a
    nop
    ld b, [hl]
    rst $38
    nop
    add hl, bc
    pop bc

jr_054_57ff:
    ccf
    ld a, [c]
    ld c, $f2
    adc $22
    ld a, $1c
    inc e
    db $ec
    ld l, $23
    add b
    ldh [rNR43], a
    ld b, b
    ret nz

    ret nz

    ldh [$a0], a
    ld [hl], b
    or b
    ldh a, [rBCPS]
    or h
    and h
    ld b, b
    ld b, d
    ld [bc], a
    ld [bc], a
    add b
    inc bc
    add l
    inc bc
    dec bc
    dec b
    dec h
    dec de
    ld a, [bc]
    or $56
    xor d
    xor h
    ld d, h
    ld e, b
    xor b
    jr nc, jr_054_57ff

    ld h, b
    ldh [$d5], a
    and l
    rst $38
    ld a, l
    inc bc
    ld bc, $0403
    inc b
    ld [hl+], a
    ld [$1002], sp
    add hl, de
    db $10
    ld b, e
    ccf
    jr nz, jr_054_588a

    ld a, a
    ld b, b
    inc b
    ld b, c
    ld a, a
    add c
    cp $81
    ld c, [hl]
    cp $82
    and a
    adc a
    nop
    ld b, b
    ld b, l
    ccf
    jr nz, jr_054_5860

    rra
    db $10
    ld a, [de]
    dec d
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    inc b

jr_054_5860:
    rlca
    add h
    add $28
    ld bc, $0000
    call z, $09d0
    ld a, h
    db $fc
    rrca
    inc bc
    rlca
    nop
    rrca
    nop
    ccf
    nop
    ld b, e
    rst $38
    nop
    ld d, $f7
    jr c, @-$2b

    ld l, h
    xor a
    call nc, $a8d7
    xor e
    ld d, h
    ld d, a
    xor b
    rst $38
    jp $3d3c


    ld [bc], a
    ld [bc], a

jr_054_588a:
    inc b
    inc b
    nop
    ld [$2200], sp
    db $10
    add hl, bc
    jr nc, jr_054_58b4

    ld a, [hl-]
    jr nz, @+$77

    ld b, b
    ld a, d
    ld b, b
    rst $38
    ret nz

    ld b, h
    rst $38
    add b
    ld b, e
    ld b, b

jr_054_58a1:
    rst $38
    ld [de], a
    jr nz, @+$01

    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    jr c, @+$7a

    ld a, [hl]
    cp $ff
    rst $38
    rst $28
    pop af

jr_054_58b4:
    rst $18
    ldh [rLY], a
    rst $38
    ret nz

    ld [$ffe0], sp
    ldh [$7f], a
    ld [hl], b
    rra
    jr c, jr_054_58d5

    inc e
    ld b, a
    rra
    db $10
    ldh [$2b], a
    cp a
    cp b
    rst $08
    ld a, b
    rst $30
    ld [hl], h
    rst $28
    inc l
    ld a, [c]
    ccf
    cp $2e
    db $f4

jr_054_58d5:
    inc [hl]
    db $ec
    jr z, jr_054_58a1

    ld c, b
    ret nc

    ld d, b
    add c
    and b
    nop
    ld b, b
    add c
    add b
    ld [bc], a
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    cp a
    nop
    ld d, e
    rst $38
    nop
    add h
    nop
    ld h, c
    inc b
    add e
    adc a
    call c, $60e0
    and l
    nop
    ld l, [hl]
    inc b
    add c
    nop
    ld [$d500], a
    sub b
    and l
    ld bc, $c03f
    jp $8600


    nop
    ld e, a
    add h
    add e
    nop

jr_054_5916:
    cp a
    add h
    add e
    nop
    ld a, a
    add h
    add e
    ld [bc], a
    rst $38
    nop
    ld a, a
    sub b
    xor e
    inc bc
    rst $30
    ld c, $ff
    ld bc, $ff45
    nop
    inc bc
    db $fd
    ld [bc], a
    ld a, [$8305]
    sbc $13
    rst $30
    or $ef
    jr jr_054_5916

    ld hl, $017f
    ld a, a
    inc bc
    rst $38
    inc bc
    ld a, [hl]
    rlca
    cp $07
    db $fd
    ld b, $fb
    inc b
    ld d, c
    rst $38
    nop
    inc bc
    cp $01
    rst $38
    inc bc
    ld b, e
    db $ec
    inc d
    ld b, e
    ld hl, sp+$08
    inc bc
    db $fc
    inc b
    db $f4
    inc b
    ld b, e
    ld [c], a
    ld [bc], a
    inc b
    ld a, [c]
    ld [bc], a
    cp $02
    db $fc
    and h
    nop
    ld c, a
    ld bc, $04f8
    ld b, e
    ld hl, sp+$08
    ld bc, $08f0
    ld b, e
    ldh a, [rNR10]
    ldh [rNR42], a
    ret nc

    or b
    ret nc

    ld [hl], b
    ld h, b
    or b
    or b
    ld d, b
    ld c, b
    cp b
    adc b
    ld a, b
    ld a, h
    ld a, h
    cp $9e
    cp [hl]
    ld a, [hl]
    ld [hl], d
    cp $e4
    db $fc
    call nz, $88fc
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$e0], a
    ld h, b
    ld b, l
    ldh [rNR41], a
    dec d
    db $fc
    ld a, $dc
    ld hl, $0efe
    ldh a, [$30]
    cp b
    ld e, b
    cp h
    ld h, [hl]
    db $dd
    reti


    ld h, [hl]
    and $f0
    sbc b
    ld a, b
    ld h, h
    jr @+$1a

    db $ec
    dec l
    rst $38
    db $ec
    or e
    dec c
    ld bc, $0603
    ld c, $1a
    ld a, [de]
    add hl, de
    ld a, [hl-]
    cpl
    add hl, hl
    ld a, $27
    rra
    rra
    ld l, l
    ld [hl+], a
    ld bc, $0101
    ld bc, $3cf8
    and b
    add hl, bc
    ld bc, $0201
    inc bc
    nop
    ld [bc], a
    nop
    inc b
    ld b, $07
    ld [hl+], a
    ld [$2ce0], sp
    rrca
    ld sp, $c730
    ret nz

    sbc a
    add c
    rst $38
    pop bc
    cp $67
    ld hl, sp+$78
    ldh [$a0], a
    ret nz

    ld h, b
    add c
    add c
    inc bc
    inc bc
    inc b
    rlca
    db $10
    add hl, de
    jr nz, jr_054_5a27

    ld b, b
    ld e, h
    nop
    sbc a
    add b
    sbc e
    nop
    ld sp, $f100
    ld bc, $c2f9
    rst $38
    ld a, l
    ld a, a
    ld e, $1e
    ld l, a
    dec b
    ld [bc], a
    ld [bc], a
    dec c
    dec c
    inc d
    inc d
    ld b, e
    jr nz, jr_054_5a3c

    ldh [rHDMA3], a
    ld b, b
    ld b, b
    ld b, h

jr_054_5a19:
    ld c, [hl]
    ld d, [hl]
    ld [hl], c
    daa
    ld h, b
    ld h, a
    ld h, b
    ld [hl], a
    ld [hl], b
    ei
    cp h
    rst $28
    xor a
    ld a, l

jr_054_5a27:
    ld e, [hl]
    scf
    ld [hl-], a
    rla
    inc de
    jr c, jr_054_5a68

    ld h, $7d
    adc e
    sbc d
    adc c
    sbc c
    sub c
    cp e
    ld d, c
    rst $38
    ld d, e
    rst $38
    ld c, l
    rst $38

jr_054_5a3c:
    ld b, c
    ld a, a
    ld hl, $2523
    and a
    and l
    and a
    push hl
    db $ed
    jr jr_054_5a84

    db $10
    rra
    inc c
    rrca
    ld a, $3e
    adc $ce
    inc bc
    add a
    add c
    rst $08
    ld h, d
    rst $38
    ld [de], a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    or e
    rst $38
    cpl
    rst $38

jr_054_5a68:
    sbc [hl]
    sbc [hl]
    ld [hl], c
    rlca
    ld [hl], b
    ld [hl], b
    rla
    sub a
    ld [$0018], sp
    jr nz, jr_054_5a19

    ei
    ldh [rRP], a
    ldh [$f8], a
    dec e
    db $fc
    inc b
    cp $02
    rst $38
    inc bc
    cp a
    ld a, [hl]
    cp [hl]

jr_054_5a84:
    cp a
    cp $79
    rst $38
    ld [bc], a
    rst $08
    inc sp
    inc e
    inc d
    ld a, [de]
    xor $f9
    rra
    pop af
    rst $38
    or c
    ld a, a
    ld [c], a
    scf
    jp nz, $a577

    rst $38
    sbc c
    rst $38
    ld [bc], a
    rst $20
    ld e, $df
    ld hl, $21e3
    ld h, a
    and d
    rst $38
    sbc [hl]
    rst $38
    add c
    rst $38
    ld a, $3e
    ld [hl], c
    ld a, a
    ld bc, $0fff
    rst $38
    jr nc, @+$01

    ld b, b
    rst $00
    add b
    add h
    add b
    adc [hl]
    nop
    sbc a
    nop
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ccf
    ccf
    inc b
    rlca
    rrca
    rrca
    rlca
    rrca
    nop
    nop
    or e
    nop
    jp nz, Jump_054_4023

jr_054_5ad4:
    add e
    add l
    rst $00
    add h
    ld b, e
    ret nz

    ld b, b
    xor c
    nop
    call nc, $27e0
    ret nz

    ret nz

    jr nc, jr_054_5ad4

    ld c, b
    ld hl, sp-$78
    ld hl, sp+$04
    db $e4
    ld [bc], a
    jp nz, $ce02

    rrca
    sub c
    rra
    and b
    sbc d
    and h
    call nc, $b5d8
    cp c
    rrca
    dec bc
    ld b, $06
    rrca
    ld c, $0f
    dec bc
    add a
    add l
    add e
    add e
    ld b, b
    ret nz

    jr nz, @-$1e

    ld b, h
    jr nz, jr_054_5b6b

    ld bc, $40e0
    ld [hl+], a
    ret nz

    dec h
    ldh [$03], a
    and b
    ldh [$c0], a
    ret nz

    db $ec
    ld b, e
    ld bc, $40c0
    jp $04d8


    ldh a, [$f0]
    ld [hl], b
    jr nc, jr_054_5b9c

    ld b, e
    ld e, b
    ld hl, sp+$06
    sbc b
    ld hl, sp-$18
    ldh a, [$90]
    ld h, b
    ld h, b
    ld [hl], a
    rst $38
    db $ec
    ld a, h
    ld [hl+], a
    ld bc, $0202
    inc bc
    dec b
    ld [hl+], a
    rlca
    pop de
    add a
    ld [hl+], a
    ld bc, $031e
    inc b
    rlca
    ld [$010f], sp
    dec bc
    inc de
    rra
    dec de
    rra
    rrca
    rrca
    rlca
    rlca
    add hl, bc
    rrca
    inc bc
    rra
    rla
    rra
    ld b, $1e
    ld c, $0e
    ld b, $06
    inc b
    inc b
    nop
    inc b
    add a
    xor b
    rlca
    rlca
    rlca
    ld a, [bc]
    ld c, $14
    inc d
    jr jr_054_5b82

    ld [hl], a

jr_054_5b6b:
    ldh [$33], a
    ld bc, $0c03
    rra
    jr nc, jr_054_5bb2

    ld b, b
    ld a, a
    add b
    rst $38
    adc b
    rst $38
    ld [de], a
    cp [hl]
    sub d
    rst $30
    sub c
    rst $38
    cp c
    cp $7d

jr_054_5b82:
    or $ff
    ld hl, sp-$09
    db $e4
    ld [hl], a
    ld [hl], h
    dec e
    ld [de], a
    rrca
    ld [$0605], sp
    rrca
    rrca
    ld a, a
    ld a, a
    db $fc
    rst $38
    inc d
    rst $30
    ld h, a
    rst $20
    rst $08
    rst $08
    rst $18

jr_054_5b9c:
    rst $18
    cp a
    cp a
    and e
    cp a
    ld b, e
    ret nz

    rst $38
    inc bc
    ld [hl], b
    ld a, a
    rrca
    rrca
    ld [hl+], a
    inc bc
    dec d
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    dec c

jr_054_5bb2:
    dec c
    add hl, de
    add hl, de
    ld de, $6131
    ld h, c
    ret nz

    jp nz, $8282

    ld [bc], a
    ld [bc], a
    ld b, $04
    rlca
    ld b, l
    ld [$430f], sp
    db $10
    rra
    inc c
    ld de, $223e
    ld a, $32
    ld c, [hl]
    ld a, d
    add d
    cp [hl]
    adc h
    db $fc
    ld [hl], b

jr_054_5bd5:
    ld [hl], b
    ld h, e
    ldh [$29], a
    ldh [$e0], a
    jr jr_054_5bd5

    inc b
    db $fc
    ld [bc], a
    cp $02
    xor $61
    rst $38
    dec sp
    cp a
    rra
    rst $38
    rrca
    cp $ff
    db $fc
    db $eb
    inc h
    rst $20
    ld l, d
    rst $28
    inc sp
    ld a, [$fc06]
    inc b
    ld a, l
    rst $08
    cp $17
    cp $e7
    ld [hl], h
    rst $08
    add h
    or a
    adc b
    adc a
    add h
    cp [hl]
    dec c
    rra
    sub a
    sbc a
    ld c, a
    ld c, a
    rst $00
    rst $00
    ccf
    rst $38
    db $ec
    cp a
    call nz, $83ff
    ld b, e
    rst $38
    add b
    ld c, d

jr_054_5c18:
    rst $38
    nop
    dec b
    ld b, b
    rst $38
    ld a, a
    rra
    ld [hl], e
    ld [de], a
    ld b, e
    ld [c], a
    ld [hl+], a
    ld b, e
    call nz, $0344
    add l
    add h
    add e
    add b
    ld b, l
    inc bc
    ld [bc], a
    ld bc, $0605
    ld b, e
    inc b
    rlca
    ld bc, $0303
    or h
    nop
    adc $22
    add b
    ret


    add b
    rra
    add b
    add b
    ld [hl], b
    ldh a, [$0d]
    db $fd
    ld b, $ff
    adc [hl]
    rst $38
    adc h
    rst $38
    ld b, h
    rst $38
    ld [hl], c
    rst $38
    and $e6
    ldh [$e0], a
    ret nc

    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$d0], a
    ldh a, [rNR10]
    ldh a, [rKEY1]
    ld [$01f8], sp
    jr nc, @-$0e

    ld b, e
    ldh a, [rNR10]
    ld bc, $10e0
    ld b, a
    ldh [rNR41], a
    ld bc, $20c0
    ld b, [hl]
    ret nz

    ld b, b
    nop
    ret nz

    or l
    rst $28
    jr @+$03

    ld bc, $6262
    cp $9c
    rst $38
    adc c
    ld a, a
    ld b, d
    rra
    inc h
    ccf
    jr z, jr_054_5cc6

    ld a, [hl+]
    ccf
    inc h
    ld e, e
    ld [hl], e
    sbc h
    db $fc
    inc e
    db $fc
    jr jr_054_5c18

    rlc e
    ld b, b
    ret nz

    add b
    add b
    db $ec
    ld c, l
    ld [bc], a
    add b
    add b
    ld b, b
    call nz, $0680
    add b
    add b
    nop
    add b
    ret nz

    ld b, b
    add b
    ld hl, sp+$50
    adc h
    ld h, c
    rst $38
    ld a, c
    ld [hl+], a
    ld bc, $0202
    inc bc
    ld [bc], a
    ld b, h
    rlca
    inc b
    ld b, h
    ld [$0d0f], sp
    ld c, $09
    inc c
    dec bc
    inc b
    rlca
    ld b, $05
    ld [bc], a

jr_054_5cc6:
    inc bc
    inc bc
    ld [bc], a
    ld bc, $ec01
    daa
    rrca
    ld bc, $0703
    inc c
    jr @+$32

    ld [hl], b
    ld b, b
    add sp, -$80
    db $f4
    nop
    ld [$f500], a
    nop
    ld b, a
    rst $38
    nop
    dec b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rLYC], a
    rrca
    ldh a, [$0b]
    rra
    ldh [rIE], a

jr_054_5cef:
    nop
    ld sp, hl
    add [hl]
    ld [hl], b
    ld l, a
    add hl, de
    ld e, $07
    rlca
    ld a, a
    dec d
    ret nz

    ret nz

    ldh a, [$30]
    ld a, h
    inc c
    ld a, $02
    ccf
    ld bc, $0877
    jp hl


    ld d, $f4
    dec bc
    add sp, $17
    pop af
    ld c, $fb
    inc b
    ld b, e
    rst $38
    nop
    ld bc, $609f
    ld b, e
    rra
    ldh [rSB], a
    cp h
    ld b, e
    and e
    push de
    add hl, bc
    pop af
    ld c, $ff
    ld bc, $06fe
    ld hl, sp+$18
    ldh [$e0], a
    db $ec
    add hl, hl
    ld [bc], a
    add b
    add b
    ret nz

    and [hl]
    nop
    dec e
    ld c, c
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    ld bc, $40c0
    and e
    nop
    inc [hl]
    db $ec
    ld l, d
    inc bc
    ld bc, $0101
    ld bc, $0245
    inc bc
    sub $81
    dec c
    ld bc, $0403
    inc c
    jr jr_054_5d61

    jr nz, jr_054_5d73

    ld d, l
    ld b, b
    ld l, e
    add b
    rst $10
    add b
    ld b, e
    rst $38
    nop
    inc bc
    rst $18
    jr nz, jr_054_5cef

    ld [hl], b

jr_054_5d61:
    jp $d500


    dec b
    rlca
    ld hl, sp+$0f
    ldh a, [$9f]
    ld h, b
    jp $078f


    ld [hl], e
    ld c, h
    ld sp, $1b2e

jr_054_5d73:
    inc e
    inc bc
    rlca
    ld h, c
    dec c
    jr c, jr_054_5df2

    cp $86
    rra

jr_054_5d7d:
    ld bc, $003f
    ld a, a
    nop
    db $fd
    ld [bc], a
    ld a, [$a305]
    nop
    ld a, d
    ld [bc], a
    db $fc
    inc bc
    cp $a4
    or l
    ld bc, $30cf
    ld b, e
    adc a
    ld [hl], b
    ld bc, $609f
    and l
    nop
    ld a, d
    dec b
    di
    dec c
    cp $0e
    ldh a, [$f8]
    adc e
    ld bc, $0302
    ldh [rNR41], a
    ld h, b
    and b
    ld b, e
    jr nc, jr_054_5d7d

    ld bc, $8878
    ld c, c
    ld hl, sp+$08
    add [hl]
    ld bc, $001a
    ld h, b
    add e
    ld bc, $ae24
    ld bc, $8800
    nop
    ld hl, $0f00
    ld b, [hl]
    db $10
    rra
    dec b
    inc e
    inc de
    jr jr_054_5de2

    ld [$850f], sp
    nop
    inc l
    nop
    inc bc
    ret z

    and b
    add hl, bc
    ld e, $3e
    ld [hl], e
    pop bc
    pop hl
    nop
    ldh a, [rP1]
    add sp, $00
    adc l
    nop
    ld l, d

jr_054_5de2:
    and e
    nop
    db $76
    ld bc, $817e
    add e
    nop
    ld a, d
    and e
    ld bc, $07f2
    rst $38
    nop
    pop af

jr_054_5df2:
    adc [hl]
    ld [hl], e
    ld a, h
    rrca
    rra
    add a
    nop
    xor h
    dec c
    ld hl, sp+$08
    inc l
    ld d, h
    ld d, [hl]
    ld a, [hl+]
    and e
    ld e, l
    db $d3
    dec l
    db $e3
    inc e
    rst $28
    db $10
    ld b, e
    rst $38
    nop
    ld b, e
    ccf
    ret nz

    inc bc
    add hl, sp
    add $79
    add [hl]
    ld b, e
    pop af
    ld c, $09
    ei
    dec b
    cp $02
    db $fc
    inc b
    ld hl, sp+$18
    ret nz

    ldh [$a3], a
    nop
    jr jr_054_5e28

    add b
    add b

jr_054_5e28:
    ret nz

    cp b
    ld bc, $ff97
    ld a, e
    dec c
    jr nc, jr_054_5ea9

    rlca
    add a
    ld b, b
    ld b, b
    jr nz, @+$22

    nop
    jr nz, jr_054_5e4a

    stop
    db $10
    inc hl
    ld [$0008], sp
    ld [$0404], sp
    ld b, $04
    dec b
    inc b
    ld b, $44

jr_054_5e4a:
    inc b
    rlca
    ld bc, $0403
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0201
    inc hl
    ld bc, $8f75
    sub a
    ld [$7830], sp
    ld a, [hl]
    add a
    rst $38
    add b
    ccf
    ld b, b
    ld a, a
    ld b, e
    ld b, b
    ccf
    dec bc
    jr nz, jr_054_5ea9

    jr nz, jr_054_5e8b

    sub b
    ld c, d
    ld l, l
    dec e
    ld e, $04
    rlca
    inc bc
    add h
    xor b
    dec c
    ld bc, $0200
    nop
    ld bc, $0a00
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    nop
    ld c, [hl]
    rst $38
    nop
    rlca
    add b
    ld d, l

jr_054_5e8b:
    ld l, d
    ld a, [hl+]
    dec [hl]
    dec e
    ld a, [de]
    ld c, $44
    rrca
    ld [$0909], sp
    rrca
    dec b
    ld a, [de]
    ld a, [de]
    dec d
    ld [hl], l
    ld a, d
    ld a, [$b2f5]
    di
    ld [$e0c0], sp
    jr nc, @-$06

    inc c
    cp $02

jr_054_5ea9:
    rst $38
    ld bc, $bdc6
    ld [de], a
    and b
    ld a, [hl+]
    push de
    dec b
    ld a, [$fcc7]
    rst $30
    ld a, h
    ld c, a
    ld c, b
    rst $28
    jr z, jr_054_5f2d

    rra
    db $fc
    inc c
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    rlca
    rst $38
    inc bc
    rst $38
    ld [bc], a
    db $fd
    inc bc
    ei
    dec b
    add e
    add e

jr_054_5ecf:
    add hl, de
    push af
    dec bc
    xor c
    ld d, a
    ld d, e
    xor [hl]
    and d
    ld e, a
    ld bc, $57fe
    rst $38
    xor d
    ld hl, sp+$55
    ldh a, [$bf]
    ldh a, [$7f]
    ldh [$bc], a
    ld h, e
    jr c, jr_054_5ecf

    sbc b
    ld [hl], a
    ld a, d
    ld [$8502], sp
    adc l
    sub a
    sub b
    rst $38
    ld h, b
    rst $38
    ld bc, $e987
    rlca
    cp $01
    rst $38
    nop
    cp $e1
    rlca
    ld e, $85
    nop
    ld e, [hl]
    dec b
    add b
    ret nz

    ldh a, [$30]
    db $fc
    inc c
    add e
    db $e3
    nop
    cp $88
    sbc a
    add hl, bc
    ld a, l

jr_054_5f12:
    add d
    xor d
    ld d, l
    call nc, $e9ab
    ld d, a
    jp nz, Jump_054_437f

    ld [c], a
    ccf
    inc bc
    ld [hl], h
    sbc a
    ld a, [hl]
    sbc a
    adc l
    nop
    ld d, d
    inc bc
    rlca
    ld b, $0f
    ld [$00a5], sp

jr_054_5f2d:
    db $f4
    dec bc
    ld a, a
    ld b, b
    rst $38
    ret nz

    db $fd
    add d
    ld a, [$5485]
    xor e
    jr z, jr_054_5f12

    push bc
    jp c, $5f1b

    cp a
    and c
    ld e, a
    ld d, c
    xor a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    rst $18
    ld h, b
    ld a, a
    ld d, b
    rra
    xor b
    rrca

jr_054_5f50:
    ld d, h
    rlca
    and e
    inc bc

jr_054_5f54:
    ld b, e
    inc bc
    sub c
    ld bc, $81c1
    ld b, e
    ld b, b
    ret nz

    rlca

jr_054_5f5e:
    ld a, [hl+]
    ldh [$35], a
    pop hl
    dec hl
    pop hl
    ld d, $f2
    ld b, e
    inc e
    db $f4
    add hl, bc
    jr c, jr_054_5f54

    jr nc, jr_054_5f5e

    jr nz, jr_054_5f50

    inc e
    db $fc
    rra
    rst $38
    ld l, c
    dec b
    ld a, $3e
    rst $38
    pop bc
    rst $38
    ld bc, $fd43
    inc bc
    dec bc
    ld a, [$f206]
    ld c, $d2
    ld l, $a2
    ld e, [hl]
    ld b, h
    cp h
    add h
    ld a, h
    ld b, e
    ld [$03f8], sp
    db $10
    ldh a, [$60]
    ldh [$a7], a
    nop
    ld e, [hl]
    inc hl
    add b
    ld b, l
    ld b, b
    ret nz

    xor e
    nop
    ld b, h
    ld bc, $8080
    or l
    nop
    ld b, h
    ld bc, $8080
    rst $38
    db $ec
    ld h, $22
    ld bc, $0225
    inc hl
    ld bc, $0212
    inc bc
    ld b, $07
    ld a, $7b
    ld e, $83
    cp $83
    rst $38
    add a
    ld a, c
    ld a, c
    inc bc
    rlca
    inc c
    jr @+$13

    ld b, e
    jr nz, jr_054_6007

    ld [bc], a
    ld hl, $1e1e
    adc c
    xor a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, [hl]
    inc b
    rlca
    ld bc, $0203
    call $e0bb
    add hl, hl
    inc e
    inc a
    ld c, e
    rst $00
    ld sp, $6836
    ld h, [hl]
    jp nz, $80cc

    sbc h
    ld a, [hl+]
    inc d
    dec d
    ld [$d52a], a
    dec d
    ld [$f50a], a
    nop
    ldh a, [rNR41]
    ret nz

    ld e, a
    sbc a
    inc sp
    cp a
    dec a
    and e
    rst $38
    pop bc

jr_054_5ffe:
    rst $38
    inc bc
    db $fc
    inc b
    ei
    dec de
    ldh [$e0], a
    adc b

jr_054_6007:
    or c
    ld [bc], a
    ld a, [hl]
    add c
    add c
    ld h, c
    inc bc
    ld b, l
    ld b, h
    rst $38
    ld b, h
    ld b, l
    rst $38
    nop
    inc bc
    rst $30
    ld hl, sp+$7f
    ld b, h
    ld b, e
    ccf
    jr nz, jr_054_5ffe

    add hl, hl
    rra
    db $10
    rla
    db $10
    inc de
    db $10
    ld a, e
    ldh a, [$af]
    ld d, b
    cp [hl]
    ld hl, $615f
    rst $18
    pop hl
    call Call_054_62f3
    ld a, [hl]
    inc e
    inc a
    ld b, b
    add b
    db $10
    ldh [$08], a
    pop af
    nop
    cp $40
    ld a, $20
    rra
    add c

jr_054_6042:
    sbc [hl]
    add b

jr_054_6044:
    sbc [hl]
    and b
    sbc [hl]
    ld bc, $a33e
    pop hl
    ld bc, $ffff
    xor e
    nop
    dec e
    ld bc, $40c0
    ld b, e
    ldh [rNR41], a
    ld b, a
    ldh a, [rNR10]
    and a
    nop
    ld e, h
    ld b, e
    ret nz

    ld b, b
    ldh [$29], a
    ld [hl], b
    ldh a, [$c8]
    adc h
    db $10
    ld [c], a
    nop
    ld a, c
    ld bc, $233d
    dec e
    ld hl, $401f
    ccf
    and b
    ld b, a
    nop
    jp $e304


    nop
    ld a, a
    ld [bc], a
    ld bc, $3c3c
    ld e, [hl]
    ld h, [hl]
    rst $38
    jp $c0ff


    ld a, a
    ld h, b
    cp a
    jr nc, jr_054_60f8

    db $ec
    add e
    add e
    db $ec
    inc sp
    and l
    nop
    jr z, @+$12

    jr nc, jr_054_6044

    ld a, $ae
    dec sp
    and c
    ld a, a
    pop bc
    ld a, a
    pop af
    ld c, [hl]
    adc $f0
    ldh a, [$38]
    ld [$a88c], sp
    nop
    ld b, a
    ld b, $01
    rra
    nop
    jr nz, jr_054_60ec

    ld b, b
    pop hl
    ld b, [hl]
    add b
    rst $38
    ld b, h
    ld a, a
    ld b, b
    inc b
    ldh [$bf], a
    ld h, b
    cp a
    jr nz, jr_054_6042

    nop
    ret z

    ld h, c
    inc bc

Jump_054_60bf:
    ret nz

    ret nz

    ld h, b
    jr nz, @-$75

    ld bc, $0700
    rlca
    ccf
    ld c, b
    rst $00
    cp h
    ld a, a
    rst $38
    ld b, d
    ld b, e
    rst $08
    add c
    inc bc
    rst $38
    add c
    ld a, [hl]
    ld b, d
    ld h, c
    nop
    ldh a, [$8c]
    ld bc, $0713
    ld sp, $6931
    ld c, c
    ld a, d
    ld c, e
    ld a, [hl]
    ld b, a
    ld b, e
    ld a, $23
    rlca
    rra
    rrca

jr_054_60ec:
    ld de, $1c11
    db $10
    rra
    db $10
    and h
    cp e
    nop
    ld b, $85
    nop

jr_054_60f8:
    ld h, h
    nop
    cp l
    adc [hl]
    nop
    sub c
    rlca
    adc h
    adc h
    ld d, [hl]
    ld d, d
    ld a, [hl]
    ld [hl], d
    ld a, $a2
    ld b, e
    inc a
    and h
    dec b
    ld a, b
    ld hl, sp+$6c
    call nz, $c4dc
    and l
    nop
    cp b
    inc bc
    ldh a, [$30]
    ret nz

    ret nz

    adc l
    nop
    sbc h
    dec b
    ld bc, $ff00
    add $ff
    nop
    rst $38
    db $ec
    dec a
    ldh [rNR42], a
    inc b
    ld [bc], a
    nop
    inc bc
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc d
    ld bc, $4052
    add hl, sp
    ld l, h
    sub e
    ld a, a
    add b
    ccf
    ld b, b
    rlca
    ld a, b
    ld [bc], a
    dec a
    inc h
    dec sp
    ld a, [hl-]
    dec h
    ld a, h
    ld b, e
    ld [hl], b
    ld c, a
    ld [hl], b
    inc b
    inc bc
    nop
    ld bc, $0300
    db $ec
    jr nz, @+$10

    inc bc
    nop
    add hl, hl
    nop
    dec sp
    ld [$0815], sp
    rla
    inc b
    bit 1, h
    or e
    call nz, Call_054_433b
    add b
    ld a, a
    ld [bc], a
    ret nz

    ccf
    nop
    ld b, e
    rst $38
    nop
    inc b
    db $fc
    nop
    ld hl, sp+$00
    ldh [$c4], a
    add c
    inc b
    db $fc
    nop
    ld hl, sp+$18
    ldh [rOCPS], a
    nop
    ld bc, HeaderCGBFlag
    ld [bc], a
    ld a, [bc]
    inc bc
    inc c
    rra
    ldh [$f3], a
    inc c
    nop
    rst $38
    nop
    rra
    nop
    jp $068f


    dec de
    rla
    jr z, jr_054_6194

jr_054_6194:
    rrca
    nop
    rlca
    adc b
    ld sp, hl
    add h
    add a
    db $10
    inc bc
    inc b
    ld bc, $000e
    adc a
    inc b
    bit 1, [hl]
    or c
    ld a, h
    add e
    jr c, @-$37

    ld bc, $03fe
    and e
    xor l
    ld b, $f8
    ld [$10f0], sp
    ldh [rP1], a
    add b
    adc d
    adc $03
    nop
    ld a, [bc]
    nop
    ld d, l
    ld l, c
    dec c
    ld a, b
    ld hl, sp+$06
    cp $01
    rst $38
    nop

jr_054_61c7:
    push af
    ld a, [bc]
    ld [$d115], a
    ld l, $e0
    jp $1edd


    rst $38
    ld h, b
    sbc a
    ld hl, sp+$07
    sbc h
    ld h, e
    nop
    rst $38
    nop
    db $e3
    nop
    rlca
    inc b
    db $db
    jp c, $3d25

    jp nz, $a758

    jr nz, jr_054_61c7

    ret nc

    cpl
    pop hl
    ld e, $c4
    jr c, jr_054_61f7

    ldh a, [$85]
    db $d3
    ld bc, $c020
    and e
    nop

jr_054_61f7:
    ret


    dec bc
    ld h, c
    ld h, b
    ld a, [de]
    db $10
    dec e
    nop
    ld a, [bc]
    nop
    rlca
    nop
    rlca
    ld [bc], a
    ld b, e
    rlca
    ld bc, $9ca3
    nop
    ld a, a
    add e
    nop
    xor h

jr_054_620f:
    ld h, a
    dec c
    ld a, [bc]
    ld [$1c16], sp
    ld [hl+], a
    jr jr_054_623c

    ld [$00f4], sp
    db $fc
    add b
    ld a, [hl]
    nop
    ld d, b
    rst $38
    nop
    ld [$ff0f], sp
    ld e, $f2
    sbc [hl]

jr_054_6228:
    ld h, b
    ld a, $e0
    ccf
    ld b, e
    ret nz

    ld a, a
    nop
    add b

jr_054_6231:
    ld b, a
    ccf
    nop
    add hl, de
    ld a, a
    inc b
    ld a, a
    ld [$08ff], sp
    ld a, a

jr_054_623c:
    db $10
    rst $38
    db $10
    ld [hl], a
    db $10
    db $e3
    jr nc, jr_054_62af

    jr z, jr_054_6231

    jr z, jr_054_620f

    ld b, h
    jp $c142


    ld b, c
    ret nz

    ld b, b
    inc hl
    add b
    ld b, l
    ret nz

    ld b, b
    ld l, h
    ld b, e
    and b
    ld b, b
    ld d, $b0
    jr nz, jr_054_62ac

    jr nc, jr_054_62a6

    jr nc, jr_054_6228

    ld a, b
    add h
    ld hl, sp+$04
    ld hl, sp+$06
    ld [hl], b
    adc [hl]
    ld a, [de]
    db $fc
    ld h, $e5
    call z, $0cc7
    rlca
    ld b, e
    jr jr_054_6282

    dec b
    jr c, jr_054_6284

    ld a, h
    ld d, $ec
    inc d
    ld b, e
    cp $02
    dec bc
    or $0a
    xor $1a

jr_054_6282:
    or $12

jr_054_6284:
    db $fc
    inc e
    db $f4
    inc e
    db $fc
    inc b
    ld b, l
    ld hl, sp+$08
    ld a, [bc]
    db $fc
    inc b
    db $f4
    inc c
    db $f4
    adc h
    ld hl, sp+$48
    ldh a, [$50]
    ldh [$8b], a
    nop
    cp a
    nop
    nop
    rst $38
    ld bc, $0101
    inc hl
    ld [bc], a
    inc c
    nop

jr_054_62a6:
    ld [bc], a
    ld bc, $0904
    inc c
    dec c

jr_054_62ac:
    ld [$3021], sp

jr_054_62af:
    ld b, e
    ld b, b
    cp a
    ld b, e
    add b
    rst $38
    inc d
    cp b
    or a
    rst $30
    ccf
    cp [hl]
    ccf
    ld a, a
    rra
    rra
    ld e, $1e
    cpl
    ld l, $37
    cpl
    rra

jr_054_62c6:
    jr @+$09

    ld c, $00
    ld bc, $23ec
    ld bc, $8080
    ld b, e
    ret nz

    ld b, b
    add hl, de
    or b
    ld [hl], b
    adc [hl]
    ld a, [hl]
    sbc a
    ld h, c
    rst $38
    nop
    rst $38
    jr jr_054_62c6

    inc h
    add l
    ld b, d
    jp nz, $d353

    ld d, d
    add e
    jp nz, Jump_054_42a5

    rst $20
    inc h
    cp $99
    ld b, e
    rst $38
    add b
    ld b, [hl]
    rst $38

Call_054_62f3:
    nop
    dec bc
    ret nz

    ccf
    jr nc, jr_054_6307

    dec c
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $f001
    ld hl, $06db
    ld a, h
    adc d

jr_054_6307:
    add e
    rst $30
    ld h, b
    ei
    db $10
    push bc
    or a
    ld [de], a
    rst $18
    ld h, b
    rst $18
    jr nz, @+$01

    db $10
    cp a
    ld a, [hl]
    ld bc, $e701
    add [hl]
    rst $38
    ld a, b
    rst $28
    jr @-$05

    ld b, $fe
    and h
    push de
    add hl, bc
    ccf
    ret nz

    ld c, a
    jr nc, @+$55

    dec e
    ld e, [hl]
    ld e, $30
    sub b
    ld b, e
    xor b
    adc b
    inc bc
    and h
    add h
    inc d
    add h
    ld b, e
    ld d, h
    ld b, h
    inc bc
    jr jr_054_6385

    db $10
    jr nc, jr_054_63b3

    ldh [$2c], a
    add c
    pop bc
    pop bc
    ld hl, $32f3
    ei
    ld l, d
    sbc a
    db $fc
    add [hl]
    db $fc
    and $7c
    ld hl, sp+$1e
    cp $06
    rst $38
    ld h, e
    sbc [hl]
    ld a, [$fe86]
    db $e4
    ld a, h
    db $fc
    inc e
    ld a, h

jr_054_635f:
    add h
    sbc b
    ld l, b
    ldh a, [rNR10]
    ret nc

    jr nc, jr_054_635f

    ld c, b
    or $87
    ld l, b
    add b
    ld d, h
    ld b, b
    inc hl
    ld [hl+], a
    jr nz, jr_054_6372

jr_054_6372:
    inc d
    ld b, h
    db $10
    ld [de], a
    nop
    add hl, bc
    ld [hl+], a
    ld [$0423], sp
    ld bc, $0202
    adc b
    nop
    add [hl]
    inc c
    ld c, $2d

jr_054_6385:
    ld sp, $4272
    db $e4
    add h
    call nz, $8804
    ld [$0880], sp
    dec h
    db $10
    inc bc
    nop
    stop
    db $10
    and e
    and e
    or e
    nop
    add [hl]
    ld a, [bc]
    add b
    add $02
    ld a, [hl-]
    ld [bc], a
    ld [bc], a
    jp nz, $3202

    ld [bc], a
    inc e
    inc h
    inc b
    ld [bc], a
    call nz, $3804
    add h
    or l
    inc bc
    sub b
    sub b

jr_054_63b3:
    ld h, b
    ld h, b
    adc e
    nop
    nop
    nop
    add hl, hl
    add [hl]
    nop
    rrca
    ld bc, $bcfb
    add l
    nop
    jr jr_054_63c7

    ccf
    ccf
    rra

jr_054_63c7:
    rra
    adc d
    nop
    ld e, $00
    rrca
    ld h, d
    nop
    nop
    adc c
    nop
    or b
    ld de, $1efd
    pop bc
    ld h, c
    inc bc
    ld [bc], a
    ld hl, sp+$48
    db $f4
    add h
    ld l, h
    add h
    ld d, [hl]
    ld b, d
    ld b, [hl]
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld b, e
    dec hl
    ld hl, $1543
    ld de, $0643
    ld [de], a
    dec b
    inc b
    inc h
    ld [$0028], sp
    db $10
    ld h, c
    add hl, bc
    db $fc
    ld c, a
    ldh a, [$80]
    ld l, e
    ld b, b
    jr nc, jr_054_6430

    ld c, $0e
    add [hl]
    ld bc, $053c
    add b
    ld b, b
    ld [hl], b
    ret nz

    ld [$223c], sp
    inc b
    ld bc, $829a
    add e
    or e
    inc bc
    inc d
    inc d
    ld [$6b08], sp
    rst $38
    ld a, l
    inc c
    inc bc
    inc bc
    nop
    inc b
    inc bc
    dec bc
    add hl, bc
    dec c
    dec bc
    dec bc
    inc b
    inc b
    inc bc
    ld b, [hl]
    rlca
    inc b
    add hl, bc
    nop
    rlca
    ld [bc], a

jr_054_6430:
    inc bc
    nop
    ld [bc], a
    ld bc, $0001
    ld bc, $2aec
    ldh [$36], a
    ld bc, $0f0d
    ld [hl-], a
    ld a, $42
    ld a, a
    add d
    rst $38
    pop bc
    rst $38
    ld e, [hl]
    ld a, a
    ld h, a
    pop hl
    ld c, a
    ret nz

    rst $38
    adc $7f
    call c, $e13f
    ld e, $9f
    inc c
    sbc h
    ld [$1138], sp
    inc sp
    scf

jr_054_645b:
    scf
    ld h, $36
    inc b
    ld d, $82
    add e
    ld b, c
    ld b, c
    db $10
    jr nc, @+$06

    inc c
    inc bc
    inc bc
    ld b, $0f
    nop
    rla
    db $10
    rra
    rrca
    rrca
    ld [hl], a
    ld e, $e0
    ldh a, [rNR23]
    inc e
    ld a, [bc]
    rst $08
    ld c, b
    ld l, a
    ret z

    rst $28
    db $10
    rst $18
    ld [c], a
    rst $38
    dec b
    rst $38
    adc d
    rst $38
    add l
    add a
    add b
    add c
    add b
    ret nz

    ld h, b
    ldh a, [rNR10]
    jr c, @+$0a

    jr jr_054_645b

    ld [hl+], a
    call z, $0813
    call c, $3810
    ldh [$f0], a
    pop bc
    db $e3
    rlca
    rrca
    ld e, $7f
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$30
    ldh a, [$e0]
    ldh [$cc], a
    nop
    ld b, [hl]
    ld [hl+], a
    ld [bc], a
    nop
    nop
    inc h
    inc b
    nop
    nop
    ld h, $08
    jr jr_054_64c2

    add hl, bc
    add b
    sub c
    ret nc

    pop de
    ld d, d
    di
    pop af
    di

jr_054_64c2:
    ld [hl], c
    rst $30
    or d
    cp $7a
    cp $bc
    db $fc
    ld a, c
    db $fd
    db $76
    ld a, [hl]
    inc a
    ld a, h
    inc a
    ld b, h
    ld a, h
    jr c, jr_054_64df

    ld a, h
    ld a, h
    ld a, [hl]
    cp $f1
    rst $38
    ld [c], a
    rst $38
    dec d
    rst $18

jr_054_64df:
    rrca
    xor l
    ret


    inc b
    nop
    jr nc, jr_054_6556

    ld [$c788], sp
    push bc
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld b, d
    ld bc, $c2c0
    ld b, e
    ld b, h
    call nz, Call_054_4010
    call nz, $8888
    add b
    adc b
    db $10

Call_054_64fc:
    stop
    db $10
    jr nz, @+$22

    nop
    jr nz, jr_054_6504

jr_054_6504:
    ld b, b
    add b
    or b
    nop
    dec sp
    ld bc, $8080
    ld [hl+], a
    ret nz

    ret nc

    add b
    inc b
    inc b
    ld c, $11
    ld de, $a500
    rst $08
    inc e
    ld c, b
    ld b, b
    ld c, h
    inc b
    ld b, h
    inc b
    ld b, [hl]
    jr nz, jr_054_6548

    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc hl
    inc bc
    inc hl
    inc de
    sub e
    sub d
    db $d3
    ld d, d
    di
    ld a, [c]
    ld a, [c]
    ld h, d
    or $a4
    or $74
    db $fc
    add l
    ld bc, $861a
    ret


    or d
    nop
    rst $30
    ld bc, $1010
    add h
    adc l
    ld bc, $4020
    ld b, h
    ld b, b

jr_054_6548:
    nop
    ld bc, $8080
    add l
    push hl
    add l
    ld bc, $0b20
    dec a
    ld a, a
    ld a, d
    ld a, a

jr_054_6556:
    ld [hl], h
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rlca
    rst $00
    and e
    nop
    ld d, e
    sbc c
    ld bc, $126c
    sbc $ff
    ld l, a
    ld h, c
    ld e, a
    ret nz

    cp a
    adc h
    cp a
    sbc [hl]
    rst $38
    sbc [hl]
    ld a, a
    call $931e
    nop
    rlca
    nop
    ld b, e
    add hl, bc
    ld [$0f02], sp
    inc b
    rlca
    add l
    nop
    ld a, [hl+]
    inc bc
    pop bc
    rst $38
    ld e, [hl]
    rst $38
    adc e
    nop
    ld [hl], h
    adc b
    nop
    or b
    ld [bc], a
    ld a, h
    ld a, [bc]
    ld a, a
    ld b, e
    ld [$ffff], sp
    ld h, c
    dec bc
    ld bc, $0003
    inc b
    ld bc, $0a08
    ld [$0405], sp
    nop
    inc b
    inc hl
    ld [bc], a
    ld bc, $0200
    inc hl
    ld bc, $27ec
    rlca
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$2308], sp
    db $10
    inc h
    jr nz, jr_054_65bc

    jr nc, jr_054_662c

jr_054_65bc:
    ld c, a

jr_054_65bd:
    ld b, a
    ld a, a
    ld b, b
    inc bc
    ld a, $21
    dec a
    ld [hl+], a
    and a
    and e
    rrca
    add b
    jr nz, jr_054_662b

    jr nz, jr_054_65bd

    db $10
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    ld a, a
    ld bc, $007f
    ld b, e
    cp a
    add b
    inc bc
    or c
    adc [hl]
    ld b, [hl]
    ld h, c
    ld b, e
    ld e, a
    ld b, b
    rlca
    ld a, $21
    add hl, sp
    ld b, [hl]
    daa
    ld e, b
    ld b, b
    ld b, e
    ld b, e
    ld b, c
    ld b, b
    dec d
    ld bc, $8180
    add b
    add l
    add b
    adc e
    add b
    push de
    add b
    xor d
    add c
    ld d, h
    ld b, e
    ld a, b
    ld a, a
    add $c7
    rlca
    ld bc, $0007
    ld b, l
    rrca
    nop
    inc de
    rra
    nop
    dec de
    inc b
    dec [hl]
    ld a, [bc]
    ld a, [hl+]
    dec d
    dec d
    ld [$b04f], a
    add a
    ld a, b
    ld b, e
    cp h
    add c
    ld a, [hl]
    nop
    rst $38
    or a
    nop
    ld a, [hl+]
    inc e
    add b
    add b
    ret nz

    ld b, b
    ld [hl], b
    cp e
    and d
    ld e, h
    ld d, l

jr_054_662b:
    and b

jr_054_662c:
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    di
    inc c
    ldh [rNR11], a
    add b
    ld h, b
    rlca
    add b
    sbc a
    nop
    ccf
    add b
    rst $38
    nop
    ld a, a
    add h
    add e
    ldh [rNR51], a
    rra
    ldh [$2f], a
    ret nc

    rla
    add sp, $0b
    db $f4
    push de
    ld [$3ffe], a
    xor a
    ld e, a
    ld d, l
    xor a
    xor $13
    rst $38
    ld bc, $03ff
    rst $38
    dec b
    cp $0b
    db $fc
    rlca
    ld a, [$fc0f]
    rlca
    ldh [$3f], a
    pop de
    ld a, a
    and d
    rst $38
    ld a, e
    dec e
    ld hl, sp-$08
    rst $00
    ccf
    rlca
    ld b, b
    rrca
    add b
    add b
    ld a, a
    db $fd
    dec b
    ld a, b
    add h
    ld a, [hl-]
    ld b, [hl]
    ret nc

    ld l, $e1
    rra
    db $fd
    rlca
    ld hl, sp+$00
    push af
    nop
    ld a, [$fd00]
    nop
    ld b, e
    rst $38
    nop
    ld [de], a
    cp $03
    db $fd
    rlca
    ld [$003f], a
    rst $38
    add c
    rst $38
    ld b, a
    rst $38
    cp h
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    rst $10
    ld [hl+], a
    rst $38

jr_054_66a2:
    ld bc, $f870
    ld b, e
    ld b, b
    ret nz

    nop
    ret nz

    add h
    add e
    ld a, l
    inc de
    ret nz

    ldh [$90], a
    db $10
    ldh [$08], a
    ld a, h
    add h
    adc e
    rst $30
    ld [hl], b
    ld a, a
    dec de
    inc e
    rra
    rra
    inc sp
    inc a
    cp a
    ret nz

    ld b, e
    ld a, a
    nop
    rla
    cp b
    rlca
    ld b, e
    ccf
    sbc h
    ld a, h
    and b
    ld h, b
    and b
    ldh [rLCDC], a
    ret nz

    ld h, b
    ldh [$58], a
    ld hl, sp-$22
    xor $1f
    rst $20
    dec a
    jp $c03f


    add e
    nop
    ld hl, sp+$03
    ldh a, [rIE]
    rlca
    rlca
    db $ec
    ld sp, $f013
    ldh a, [$2c]
    inc e
    jp nz, $e0e2

    ld [de], a
    pop af
    add hl, bc
    ld sp, hl
    rlca
    ld bc, $3aff
    cp $fc
    db $fc
    jr nc, @+$72

    adc l
    nop
    jp z, $c003

    ldh [rSVBK], a
    ldh a, [rSCX]
    ldh a, [rNR10]
    ld bc, $e020
    adc e
    ld bc, $ff7e
    ld h, l
    ld b, l
    ld bc, $6100
    ld b, $51
    nop
    jr z, jr_054_6719

jr_054_6719:
    ld d, b
    nop
    jr nz, jr_054_66a2

    sub e
    ld bc, $0001
    ld b, h
    ld [bc], a
    inc bc
    push bc
    add [hl]
    dec h
    ld bc, $0343
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    rlca
    inc b
    ld b, e
    rrca
    ld [$0e05], sp
    add hl, bc
    inc b
    rlca
    inc bc
    inc bc
    ld l, c
    db $10
    inc d
    nop
    ld a, [hl+]
    nop
    ld d, h
    nop
    dec hl
    nop
    ld d, a
    nop
    ld a, [hl]
    nop
    dec a
    nop
    ld a, $00
    inc e
    ld h, d
    ld [de], a
    ld a, [hl+]
    nop
    ld d, a
    nop
    xor d
    nop
    db $dd
    nop
    cp $00
    db $fd
    nop
    cp $00
    ld e, h
    nop
    xor d
    nop
    db $10
    ld h, c
    ld c, $01

jr_054_6767:
    inc bc
    ld b, $3d
    ld hl, sp+$72
    ld [$10ad], sp
    ld c, d
    jr nz, jr_054_6767

    nop
    rst $38
    nop
    ld b, e
    rst $38
    add b
    ld c, a
    rst $38
    nop
    dec b
    db $eb
    inc d
    ld d, l
    xor d
    add d
    ld a, l
    add l
    sbc h
    ld b, e
    ld b, b
    ld a, a
    ld b, e
    jr nz, jr_054_67c9

    db $10
    ld d, b
    ld a, a
    ld b, b
    ld a, a
    ld b, [hl]
    ld a, a
    and e
    ccf
    call c, $c01c
    nop
    ld b, h
    nop
    adc d
    nop
    inc b
    ld l, d
    dec bc
    add c
    ld bc, $0202
    add c
    inc b
    ld b, $04
    rra
    jr jr_054_6828

    ld l, b
    add d
    call $efa6
    ld b, h
    rst $38
    nop
    ld b, $30
    rst $38
    ld c, h

jr_054_67b5:
    di
    adc h
    pop af
    adc [hl]
    ld b, e
    pop bc
    ld a, [hl]
    ld bc, $1ce3
    ld b, a
    rst $38
    nop
    rlca
    cp $01
    ld d, l
    xor d
    xor d
    ld d, l

jr_054_67c9:
    ld d, h
    xor e
    adc e
    db $f4
    dec c
    jr z, @+$01

    ld d, h
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ld h, b
    ld a, a
    inc e
    rra
    ld [$8d0f], sp
    nop
    ld a, $10
    ret nz

    ret nz

    and b
    jr nz, jr_054_6855

    db $10
    adc b
    jr c, jr_054_67b5

    inc a
    jp $c53f


    ccf
    adc d
    ld a, a
    add l
    ld b, h
    ld a, a
    add b
    dec bc
    ret nc

    cpl
    xor b
    ld d, a
    call nc, $ea2b
    dec d
    db $f4
    dec bc
    cp $01
    add l
    push de
    inc d
    ld hl, sp+$07
    db $f4
    dec bc
    ld [$d415], a
    dec hl
    cp h
    ld b, e
    ld e, [hl]
    and c
    cp [hl]
    ld h, c
    ld e, h
    di
    ld l, $ff
    ld d, l
    rst $38
    ld a, [hl+]
    ld c, [hl]
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    ld e, h
    db $fc
    and l
    rst $18
    ld [hl], e
    inc de
    add b
    add b
    ld h, b

jr_054_6828:
    ldh [$98], a
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $41
    cp a
    dec e
    rst $38
    inc hl
    db $e3
    ld [bc], a
    jp nz, $c030

    add l
    or a
    rlca
    inc hl

jr_054_683d:
    rst $38
    jr @-$06

    inc e
    ld hl, sp+$0d
    db $fd
    push bc
    cp a
    jp nz, $449f

jr_054_6849:
    ld hl, sp+$01
    inc de
    inc b
    ld hl, sp+$02
    db $fc

jr_054_6850:
    ld d, b
    adc a
    ld b, b
    add a
    add hl, bc

jr_054_6855:
    ldh a, [rTIMA]
    ld sp, hl
    ld b, l
    add a
    sbc c
    rra
    ld h, d
    cp $9c
    sbc h
    db $ec
    add hl, hl

jr_054_6862:
    inc hl
    add b
    add hl, bc
    ld b, b
    ret nz

    jr nz, jr_054_6849

    ld [hl], b
    sub b
    jr nc, jr_054_683d

    ldh [$e0], a
    and e
    nop
    dec hl
    ld bc, $c0c0
    inc hl
    ldh [$0d], a
    db $10

jr_054_6879:
    ldh a, [$50]
    jr nc, @+$12

    db $10
    jr nc, jr_054_6850

    jr nz, jr_054_6862

    add b
    ld h, b
    ld b, b
    ld b, b
    reti


    and b
    rst $38
    db $ec
    dec hl
    ld bc, $0101
    ld b, l
    inc bc
    ld [bc], a
    ld bc, $0101
    db $ec
    ld e, a
    ld de, $0f0b
    inc a
    jr nc, jr_054_6879

    ld [c], a
    sbc $29
    sbc $25
    di
    rra
    rst $38
    jr nz, jr_054_68e5

    rst $08
    ldh a, [$f0]
    ldh a, [$27]
    nop
    ld b, $c3
    nop
    dec [hl]
    nop
    dec b
    ld b, h
    rlca
    inc b
    nop
    dec b
    ld [hl+], a
    rlca
    ld bc, $0303
    add [hl]
    sub h
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $83c4
    ld bc, $0202
    inc hl
    inc b
    inc hl
    ld [$0c01], sp
    inc c
    ld b, e
    ld d, $12
    add hl, de
    inc e
    db $10
    inc c
    ld a, [bc]
    rlca
    rlca
    add c
    pop bc
    add hl, sp
    add hl, sp
    cp h
    ld b, a
    cp h
    ld c, a
    cp [hl]
    ld a, a
    cp $9f

jr_054_68e5:
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    ld e, $3f
    add e
    pop bc
    ld b, a
    ld [bc], a
    inc bc
    add e
    adc e
    dec b
    add hl, bc
    rrca
    ld [de], a
    rra
    inc e
    rra
    ld b, e
    jr nz, jr_054_693d

    ld b, e
    ld b, b
    ld a, a
    dec d
    add b
    rst $38
    add d
    rst $38
    sub d

jr_054_6907:
    rst $38
    inc d
    rst $38
    dec h
    rst $38
    ld c, d
    cp $8c
    db $fc
    ld [$10f8], sp
    ldh a, [$d0]
    ldh a, [rNR41]
    and b
    and h
    rst $28
    ldh [$2b], a
    ld [$9808], sp
    sbc h
    call c, $fcdc
    rst $38
    rst $38
    cp $ff
    ld a, h
    sbc a
    rst $38
    rrca
    cp $0f
    ld a, l
    ld b, $7f
    nop
    rst $38
    ld b, b
    rst $30
    jr z, jr_054_698d

    ld e, b
    ld c, a
    ld b, c
    ld a, a
    ld bc, $007f

jr_054_693d:
    ld e, h
    inc hl
    ld a, a
    sbc h
    rst $38
    add e
    sbc $e6
    ld sp, hl
    rst $38
    ld c, c
    ld b, h
    rst $38
    ld a, l
    ld [$ff3d], sp
    ld bc, $00bd
    rst $38
    nop
    rst $38
    rst $38
    ld c, b
    rst $38
    nop
    nop
    cp $44
    rst $38
    add hl, bc
    ld b, e
    ld [$00ff], sp
    inc c
    and h
    add e
    add hl, bc
    inc l
    rst $28
    ld b, e
    rst $00
    ld b, d
    jp $8382


    add c
    add c
    ld [hl], a
    ld bc, $7070
    and e
    ld bc, $a31c
    nop
    inc l
    ld b, l
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld b, $e0
    ld h, b
    ldh [$a0], a
    ld h, b
    jr nz, jr_054_6907

    xor b
    nop
    ld sp, $00a5
    db $e4

jr_054_698d:
    ld bc, $c0c0
    ld b, e
    ret nz

    ldh [rNR44], a
    ldh a, [rNR22]
    ldh [$e0], a
    ldh a, [$d0]
    db $fd
    adc l
    rst $38
    add d
    db $fd
    jp nz, $bebd

    ld b, e
    jp $c141


    jp nz, $24c2

    db $e4
    inc d
    db $f4
    add hl, bc
    ld sp, hl
    ld b, e
    dec b
    db $fd
    dec d
    inc bc
    rst $38
    add d
    cp $45
    db $fd
    dec h
    rst $38
    and e
    rst $38
    and d
    cp $83
    rst $38
    ld b, c
    ld a, a
    ld e, a
    ld a, a
    inc a
    ld a, $0f
    rrca
    db $ec
    ccf
    db $10
    ld h, b
    ld [hl], b
    db $fc
    adc h
    cp $0a
    ld e, [hl]
    ld [$3cec], a
    sub b
    sbc b
    db $fc
    db $fc
    ld h, d
    ld [hl], d
    and b
    ld [hl+], a
    xor c
    nop
    jr nz, jr_054_6a03

    inc h
    inc de
    db $fc
    db $fc
    rlca
    rlca
    ld hl, sp-$06
    inc b
    ld b, $04
    db $fd
    db $fc
    db $fc
    ld bc, $fe03
    cp $00
    nop
    nop
    add b
    db $f4
    ld e, b
    nop
    inc [hl]
    ld bc, $0080
    add hl, hl
    add b
    sub b
    push hl
    rst $38

jr_054_6a03:
    db $ec
    sub h
    db $10
    ld b, $03
    add hl, bc
    rrca
    ld [$1407], sp
    daa
    ld [hl+], a
    dec e
    ld d, d
    ld a, a
    ld d, d
    dec hl
    ccf
    dec e
    dec e
    db $ec
    ld [hl+], a
    ld [hl+], a
    ld bc, $81c7
    dec bc
    ld bc, $0001
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld a, [bc]
    ld [$0709], sp
    rrca
    ld h, a
    inc de
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    ld [hl+], a
    ccf
    inc b
    ld a, a
    adc c
    rst $38
    sub c
    rst $38
    ld d, e
    ld a, a
    inc hl
    ccf
    daa
    ccf
    ld b, e
    rla
    rra
    inc bc
    rrca
    rrca
    dec b
    dec b
    add e
    sbc l
    jr @-$62

    sbc l
    add sp, -$08
    db $fc
    ld [hl], h
    cp [hl]
    ld a, d
    ld a, [hl]
    sbc d

jr_054_6a55:
    ld a, [$f69e]
    ld a, [hl]
    rst $38
    cp $22
    ld a, $15
    inc a
    ld e, $1f
    dec c
    ld [$2212], sp
    db $10
    ldh [$2b], a
    ld [$1608], sp
    ld e, $25
    ccf
    jr z, @+$41

    jr nc, jr_054_6ab1

    ld bc, $417f
    ld a, a
    ld b, d
    ld a, a
    dec b
    rst $38
    add [hl]
    rst $38
    adc l
    rst $38
    ld a, [bc]
    rst $38
    push de
    rst $38
    ld a, d
    rst $38
    ld a, h
    ld a, h
    cp b
    cp b
    sub b
    ret c

    ld [hl], b
    ldh a, [rNR10]
    db $10
    ldh [$e0], a
    jr nz, jr_054_6ab2

    ret nz

    ret nz

    ld h, e
    ld a, [bc]
    jr c, jr_054_6ad4

    call z, $1ffe
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    ld a, e
    ld b, h
    rst $38
    rst $30
    dec e
    and $ff
    or $ff
    db $db
    rst $28
    rst $38
    rst $00
    xor [hl]
    sbc $7a
    add [hl]

jr_054_6ab1:
    rst $38

jr_054_6ab2:
    nop
    rra
    jr nz, jr_054_6a55

    sbc b
    ld a, a
    db $e3
    inc sp
    ccf
    ld d, $9a
    rrca
    ld c, c
    rlca
    dec c
    dec bc
    cpl
    ld b, e
    ld [bc], a
    daa
    ld a, [de]
    dec b
    daa
    add l
    ld b, a
    ld b, d
    add a
    xor d
    rrca
    ld c, a
    rrca
    adc d
    ld a, [bc]
    ld a, [de]

jr_054_6ad4:
    dec de
    rla
    rla
    ld d, l
    ld [hl], l
    db $e4
    db $e4
    xor d
    xor $d9
    rst $38
    xor b
    rst $38
    ld e, b
    add h
    add e
    add hl, bc
    cp b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $28
    ld h, a
    rst $20
    ret nz

    ret nz

    ld [hl], a
    ld bc, $c0c0
    ld [hl+], a
    ldh [rNR44], a
    ldh a, [rNR50]
    ld hl, sp-$20
    add hl, hl
    ld a, b
    db $fc
    ld a, h
    db $fc
    db $f4
    db $fc
    ret nc

    ld a, b
    or b
    ld e, b
    and b
    ld d, b
    ld h, b
    and b
    ret nz

    ldh [$80], a
    ret nz

    ldh a, [$f0]
    inc c
    ld c, h
    ld [bc], a
    ld [hl+], a
    ld bc, $0121
    and c
    add c
    sub c
    add d
    sub d
    ld b, e
    jp nc, $d447

    xor a
    cp [hl]
    sbc c
    sbc c
    inc b
    inc b
    inc hl
    add d
    dec bc
    ld b, d
    jp nz, $c444

    xor b
    add sp, -$30
    ldh a, [$a8]
    ld hl, sp+$58
    ld hl, sp+$43
    inc h
    db $fc
    ld b, e
    ld [de], a
    cp $02
    ld [bc], a
    cp $16
    ld [hl+], a
    cp $0f
    ld a, $3e
    rra
    rra
    ld bc, $081d
    ld c, $08
    ld [$0909], sp
    rlca
    rrca
    ld bc, $ec01
    dec [hl]
    rrca
    add b
    add b
    ld [hl], b
    ld [hl], b
    rst $20
    ccf
    or $7c
    ld a, [$3ffd]
    ld a, c
    dec bc
    inc e
    rlca
    rlca
    ldh a, [rNR42]
    xor a
    rlca
    ld b, b
    ld h, b
    sub b
    sub b
    ld d, b
    ld d, b
    ldh [$f0], a
    db $ec
    dec sp
    inc bc
    add b
    add b
    ret nz

    ld b, b
    ld hl, sp+$31
    add b
    rst $38
    db $ec
    ld b, e
    add hl, bc
    ld bc, $0701
    ld b, $0f
    add hl, bc
    rlca
    ld b, $03
    ld [bc], a
    ld b, l
    ld b, $05
    ld bc, $0303
    db $ec
    ld l, $26
    ld bc, $0000
    inc l
    ld [bc], a
    inc hl
    ld bc, $1e06
    rra
    ld [hl+], a
    jr nz, jr_054_6bae

    inc d
    nop
    ld [hl+], a
    ld [$140d], sp
    inc d
    inc hl
    inc hl
    rla
    inc d
    rrca
    ld [$1033], sp
    ld b, [hl]

jr_054_6bae:
    ld b, c
    sbc [hl]
    ld [c], a
    ld b, e
    ld l, h
    sub h
    add hl, bc
    ld e, b
    cp b
    or b
    ld d, b
    ldh a, [$50]
    ldh [$60], a
    add b
    add b
    ldh a, [rNR51]
    db $e3
    dec b
    ld c, $1e
    ld hl, $4021
    ld b, b
    and e
    db $eb
    ld [hl+], a
    ld [bc], a
    dec h
    rlca
    nop
    inc b
    ld b, h
    rrca
    ld [$0608], sp
    dec c
    dec b
    dec c
    inc c
    rrca
    ld [$0407], sp
    ld b, e
    inc bc
    ld [bc], a
    ldh [rNR41], a
    rlca
    inc bc
    rlca
    ld b, $05
    ld b, $06
    dec b
    add e
    add e
    push de
    ld b, c
    db $eb
    ld hl, $23f7
    rst $08
    ld b, a
    add a
    add a
    ld d, c
    ld d, e
    ld a, [hl+]
    dec hl
    dec b
    rlca
    inc b
    rlca
    ld bc, $0807
    rrca
    add hl, bc
    add $ae
    ld a, [bc]
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0701
    rlca
    dec bc
    inc c
    dec de
    ld b, e
    inc e
    inc de
    nop
    ld e, $83
    sub a
    ld bc, $0707
    ld l, c
    dec c
    ret nz

    ret nz

    jr nc, jr_054_6c52

    ld [$8408], sp
    add h
    ld [bc], a
    add d
    nop
    ld b, c
    ld [$2249], sp
    add hl, de
    ld [$5c1d], sp
    ld e, h
    db $fc
    and h

jr_054_6c34:
    db $fc
    inc b

jr_054_6c36:
    db $fc
    inc c
    ld b, e
    db $f4
    inc d
    ld b, e
    ld hl, sp+$08
    add hl, de
    ret c

    jr z, jr_054_6c36

    call c, $3ce4
    jp z, $f5f8

    ld [hl], b
    or d
    ld d, b
    pop af
    db $10
    ld a, [$f8a8]
    ld e, b
    ld sp, hl

jr_054_6c52:
    ld sp, hl
    di
    ei
    ld a, [c]
    ld a, [c]
    db $e4
    db $fc
    inc hl
    ld hl, sp-$20
    dec h
    ld a, b
    ld hl, sp-$48
    ld hl, sp+$7c
    db $fc
    cp a
    rst $38
    rst $38
    cp $7f
    db $fd
    ccf
    cp $1f
    rst $30
    ld e, a
    xor h
    or e
    ld d, b
    pop hl
    and b
    ld hl, sp-$20
    rst $38
    jr c, @+$01

    ld b, $ff
    ld bc, $e0ff
    sbc a
    sbc h
    ld b, e
    jp $8080


    db $f4
    inc hl
    nop
    ld l, b
    rlca
    add b
    add b
    nop
    add b
    ld b, b
    ld b, b
    nop
    jr nz, jr_054_6c34

    nop
    and h
    inc de
    jr nz, @+$22

    ret nz

    ld b, b
    ld h, b
    ld h, b
    ret nc

    ld d, b
    ld [$bc08], sp
    cp [hl]
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rra
    ld l, e
    dec b
    ld hl, sp-$04
    rst $38
    and e
    rst $38
    ld b, b
    ld b, h
    rst $38
    add b
    ld [de], a
    ld h, b
    cp $11
    ld sp, hl
    rrca
    ld a, [hl]
    ld b, $3e
    ld [bc], a
    rst $18
    ld bc, $c1ff
    cp $02
    db $fc
    inc e
    ldh [$e0], a
    db $ec
    scf
    rrca
    ld c, $0e
    ld de, $1317
    rra
    pop af
    ldh a, [$df]
    ld l, $ff
    dec b
    cp $e6
    jr jr_054_6cf2

    adc l
    ld bc, $01ce
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    dec b
    add b
    ld b, b
    ld b, b
    ret nz

    add b
    add b
    db $ec
    ld c, e
    ld bc, $8080
    ldh a, [$33]
    rst $08

jr_054_6cf2:
    rst $38
    db $ec
    daa
    ld bc, $0707
    ld b, e
    rrca
    ld [$84c7], sp
    inc b
    ld bc, $0003
    inc b
    nop
    ld [hl+], a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $2502
    ld bc, $2115
    ld h, c
    dec de
    sbc d
    sbc a
    add h
    rst $38
    adc c
    ld a, h
    ld d, d
    ld a, h
    ld h, d
    inc a
    inc h
    ld a, l
    ld b, h
    ld a, a
    ld b, h
    cp $83
    rst $38
    add b
    ld a, e
    dec bc
    ld [hl], b
    ld [hl], b
    cp $8e
    ld a, a
    ld b, c
    ccf
    jr nc, jr_054_6d6f

    jr nz, @+$01

    ret nz

    ld b, l
    rst $38
    nop
    inc e
    xor [hl]
    ld d, c
    push de
    xor d
    ld l, d
    ld d, l
    ld d, l
    ld l, d
    ld a, [hl+]
    dec [hl]
    sub l
    sbc d
    ld l, [hl]
    ld l, l
    di
    inc de
    ld hl, sp+$08
    db $fd
    dec b
    rst $38
    ld b, $e2
    dec e
    push de
    ld l, d
    ld a, d
    add l
    cp $45
    ld bc, $02ff
    nop
    rst $38
    add b
    ld b, e
    rst $38
    ld b, b
    rlca
    cp b
    ld b, a
    ld [hl], b
    adc a
    ld hl, sp+$07
    db $fc
    inc bc
    ld [hl], e
    rrca
    ld bc, $0001
    ld bc, $6060

jr_054_6d6f:
    ldh a, [$90]
    db $fc
    adc h
    ld h, a
    ld d, e
    di
    ret nc

    db $fd
    ld [$ff43], sp
    inc b
    ldh [$2c], a
    rst $30
    ld a, [bc]
    db $eb
    ld d, $57
    xor [hl]
    xor a
    ld e, h
    ld e, a
    or h
    cp l
    ld h, d
    ld a, a
    and d
    rst $38
    ld b, d
    ld a, l
    add $8f
    ei
    push bc
    and [hl]
    ld b, $c5
    rst $00
    ld b, d
    ld c, $83
    adc a
    add d
    sbc $83

jr_054_6d9e:
    rst $38
    ld [bc], a
    ld_long a, $ff05
    ld [$30ef], sp
    cp [hl]
    pop bc
    rst $38
    ld bc, $44fd
    ld [bc], a
    rst $38
    inc b
    ld a, l
    add d
    ld a, [hl]
    add c
    cp $b2
    nop
    ld e, a
    inc e
    ld b, b
    ret nz

    ld h, b
    jr nz, jr_054_6ded

    db $10
    sbc b
    adc b
    ld e, h
    ld b, h
    ccf
    ld b, e
    ld a, a
    add b
    rst $38
    nop
    db $ed
    ld e, $de
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    db $e3
    ld a, a
    ld b, b
    ld b, a
    rst $38
    ret nz

    ld b, e
    ld a, a
    ldh [rNR14], a
    ccf
    ldh a, [$9f]
    ld a, [$7f4f]
    and b
    or a
    ld e, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b

jr_054_6deb:
    sbc a
    ld a, h

jr_054_6ded:
    rst $38

jr_054_6dee:
    ld b, e
    adc a
    add b
    ld b, e
    rlca
    nop
    dec bc
    sbc e
    rlca
    rst $28
    jr jr_054_6deb

    jr nz, jr_054_6d9e

    ld b, b
    or c
    ld b, b
    ld hl, sp+$40
    db $76
    ld bc, $2040
    ld b, e
    and b
    ldh [rSC], a

jr_054_6e09:
    jr nz, jr_054_6e6b

    sub b
    and h
    nop
    ld a, [hl+]
    ld a, [bc]
    db $10
    ld a, b
    adc b
    cp b
    ret z

    ld hl, sp-$38
    sub $ee
    db $fd
    push hl
    ld b, e
    ld a, h
    db $e4
    add hl, bc

jr_054_6e1f:
    inc a
    add sp, $36
    add sp, $3f
    ldh [$3f], a
    ret nz

jr_054_6e27:
    ld a, a
    add b
    ld c, e
    rst $38
    nop
    dec d
    cp $01
    db $fd
    inc bc
    cp $81
    rst $38
    ld b, b
    rst $38
    jr nz, jr_054_6e1f

    jr c, jr_054_6e09

    rst $38
    ld [hl], b
    jr nc, jr_054_6dee

    db $10
    ld a, b
    ld [$06ba], sp
    db $ec
    cpl
    and e
    nop
    call nc, $00a3
    ld a, $08
    ret nc

    jr nc, jr_054_6e27

    inc l
    db $e4
    ld [bc], a
    ld [c], a
    ld [bc], a
    di
    ld b, [hl]
    ld bc, $0cff
    cp $01
    cp $f2
    ld a, h
    ld c, h
    jr c, jr_054_6ea9

    ld [hl], b
    sub b
    ldh [rNR41], a
    ret nz

    xor d
    nop
    cp a
    rst $38
    ld a, l

jr_054_6e6b:
    inc bc
    ld bc, $0201
    inc bc
    ld b, e
    inc b
    rlca
    rlca
    ld [$090f], sp
    rrca
    ld [de], a
    rra
    ld de, $851f
    add e
    inc de
    add hl, bc
    rrca
    dec de
    ld e, $24
    jr nz, jr_054_6ea8

    jr nz, jr_054_6ecd

    ld b, b
    ld c, d
    ld b, b
    sbc a
    add b
    cp [hl]
    add b
    rst $38
    cp b
    ld h, a
    ld h, [hl]
    push bc
    xor b
    ld de, $0303
    rlca
    inc b
    rrca
    ld [$131f], sp
    dec e
    dec d
    ccf
    ld h, $3f
    jr c, jr_054_6f24

    ld h, e
    db $fc
    add h

jr_054_6ea8:
    ld [hl], l

jr_054_6ea9:
    db $10
    rrca
    rrca
    ld sp, $423f
    ld a, [hl]
    add h
    call z, $8404
    dec c
    ld [$080a], sp
    dec e
    sbc b
    ld a, [hl]
    ld b, e
    ldh a, [rIE]
    ld a, [bc]
    ldh [rIE], a
    ldh [$ef], a
    ret nz

    ld b, a
    ret nz

    rst $00
    add b
    add a
    nop
    ld b, e
    rlca
    nop

jr_054_6ecd:
    ld b, $2f
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    add h
    add e
    add hl, de
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    ccf
    rst $38
    call c, $8cff
    db $fd
    inc c
    push af
    inc [hl]
    ret


    ret z

    add hl, bc
    ld [$080b], sp
    sub c
    reti


    dec b
    jr nc, jr_054_6f27

    ld b, b
    ld b, b
    add c
    add c
    add l
    nop
    jr nz, jr_054_6f0e

    inc b
    ld b, $58
    ld c, $a8
    ld c, $59
    rrca
    cp c
    rrca
    ld sp, hl
    rrca
    db $fd
    rlca
    db $fc

jr_054_6f0e:
    rlca
    ld b, e
    cp $03
    ld bc, $01ff
    ld d, [hl]
    rst $38
    nop
    ld b, $03
    rst $38
    ccf
    rst $38
    sbc $ff
    ld e, $44
    rst $38
    ld c, $02

jr_054_6f24:
    rrca
    rst $38
    rrca

jr_054_6f27:
    ld b, e
    cp $12
    ld bc, $24fc
    ld l, a
    dec c
    ret nz

    ret nz

    jr nc, jr_054_6f63

    ld a, [hl]
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    ld c, $8f
    rlca
    rlca
    dec h
    inc bc
    dec b
    rlca
    rlca
    adc a
    adc a
    ld sp, hl
    ld sp, hl
    inc hl
    ldh a, [rDIV]
    ld sp, hl
    ld sp, hl
    ld a, d
    rst $38
    dec [hl]
    add e
    nop
    xor d
    inc b
    ld a, a
    ldh a, [$3f]
    db $fc
    rrca
    call z, $02cf
    ld a, b
    rst $38
    rst $38
    ld b, h
    rst $38
    rst $30
    ld c, $f3
    rst $38

jr_054_6f63:
    ld h, c
    rst $38
    ld h, h
    rst $38
    dec sp
    rst $30
    inc d
    ei
    adc d
    ld a, a
    ld b, [hl]
    ccf
    ld sp, $00b7
    ld [$6007], sp
    ldh [rNR10], a
    ldh a, [$88]
    ld hl, sp-$3c
    db $fc
    ld b, e
    ld [c], a
    cp $0e
    pop hl
    rst $38
    pop de
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld b, b
    add $00
    or $03
    rrca
    db $fc
    rst $38
    ldh a, [$8b]
    ld bc, $0100
    db $fc
    inc c
    ld [hl+], a
    ldh a, [rNR10]
    ret nc

    db $fc
    call z, $83ff
    rst $38
    ld h, b
    rst $38
    rra
    rst $38
    jp $30ff


    rst $38
    inc e
    di
    sub e
    db $ec
    daa
    inc hl
    add b
    ld b, l
    ld b, b
    ret nz

    ld b, e
    ldh [$a0], a
    inc de
    ret nc

    db $10
    add sp, $08
    call nz, $a400
    inc b
    jp nc, $a200

    ld [bc], a
    pop de
    ld bc, $01e9
    or $e2
    inc e
    inc e
    ld h, a
    dec c
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $c2
    cp $f2
    rst $38
    add hl, de
    rst $38
    add l
    rst $38
    db $ec
    dec [hl]
    dec d
    ld bc, $0601
    ld b, $08
    ld [$1012], sp
    inc b
    ld [$1010], sp
    nop
    jr nz, jr_054_7017

    jr nz, jr_054_7045

    ld c, b
    jr c, jr_054_7028

    db $10
    db $10
    inc hl
    jr nz, jr_054_7004

    jr z, jr_054_7027

Jump_054_6fff:
    rla
    jr jr_054_7009

    dec b
    inc bc

jr_054_7004:
    inc bc
    db $ec
    add hl, sp
    dec b
    rrca

jr_054_7009:
    rrca
    ld [hl], b
    ld [hl], b
    add b
    add b
    adc $b2
    ld [$0700], sp
    nop
    ld e, $01
    ccf

jr_054_7017:
    ld [bc], a
    ld a, a
    inc b
    ld b, h
    rst $38
    ld [$100a], sp
    rst $38
    ld h, b
    rst $38
    add b
    ld a, a
    ld h, b
    ld e, a
    ld a, b

jr_054_7027:
    ld b, a

jr_054_7028:
    ld a, a
    ld h, c
    inc bc
    ld [bc], a
    ld b, $05
    dec b
    inc hl
    ld [bc], a
    dec bc
    ld bc, $0301
    inc bc
    inc b
    inc b
    ld b, $06
    ld [$2018], sp
    ld h, b
    and e
    nop
    ld [hl], $0f
    ccf
    jr c, jr_054_70c4

jr_054_7045:
    ld c, [hl]
    ld a, l
    ld b, a
    rst $38
    adc d
    adc a
    ld sp, hl
    ld c, a
    ld [hl], b
    ld a, $31
    inc e
    inc de
    ld b, e
    jr nz, @+$41

    ld b, e
    db $10
    rra
    add hl, bc
    ld [$cd0f], sp
    rst $08
    ld a, $3f
    rrca
    ld [$0706], sp
    jp $a5ae


    jp hl


    add hl, bc
    add c
    nop
    add e

jr_054_706b:
    nop
    jp $c700


    nop
    rst $28
    nop
    ld b, h
    rst $38
    nop
    ld a, [bc]
    ld bc, $01ff
    cp $03
    db $fc
    rlca
    cp $19
    rst $38
    ldh [$a5], a
    nop
    ld sp, $4000
    and [hl]
    push de
    nop
    add c
    add h
    nop
    sub a
    db $10
    ld bc, $0700
    nop
    rra
    ld bc, $077e
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$bf], a
    ld b, b
    ld c, [hl]
    rst $38
    nop
    ld e, $40

jr_054_70a4:
    rst $38
    or b
    rst $38
    ld e, h
    rst $38
    rst $38
    rlca
    ld e, l
    di
    xor [hl]
    rst $38
    rst $38
    ccf
    di
    adc a
    ret nc

    rst $38
    xor $7f
    rst $18
    ld a, a
    rst $00
    ld a, a
    pop bc
    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    ld c, l
    rst $38

jr_054_70c4:
    nop
    jr jr_054_70c7

jr_054_70c7:
    ld b, b
    ld b, b
    jr nz, jr_054_706b

    or b
    sub b
    cp b
    adc b
    sbc b
    adc b
    sbc h
    add h
    sbc h
    inc b
    sbc $02
    cp $02
    db $fc
    inc b
    rst $20
    ld a, a
    adc [hl]
    ld sp, hl
    ld b, h
    rra
    ldh a, [rSC]
    ldh [rTAC], a
    ld hl, sp-$7b
    and a
    inc b
    ld [$04ff], sp
    rst $38
    inc bc
    ld c, [hl]
    rst $38
    nop
    inc c
    ret nz

    rst $38
    ld h, c
    rst $38
    ld sp, $d1ff
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    add b
    ld b, h
    rst $38
    ret nz

jr_054_7102:
    nop

jr_054_7103:
    add b
    add [hl]
    xor c
    add hl, bc
    inc d
    rst $28
    inc l
    rst $10
    ld d, h
    xor a
    add hl, hl
    rst $18
    ld e, c
    xor a
    cp c
    nop
    ld e, $07
    ldh [$60], a
    ret nc

    jr nc, jr_054_7102

    jr jr_054_70a4

    ld a, b
    and e
    nop
    ldh a, [rTAC]
    jr nz, jr_054_7103

    ld d, b
    ldh a, [$88]
    add sp, $18
    ld hl, sp-$5b
    nop
    xor $83
    adc a
    ld b, $20
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    ld [hl+], a
    ld b, b
    inc de
    jr nz, jr_054_715b

    nop
    db $10
    sub b
    sub b
    adc b
    adc b
    ld b, h
    call nz, $c848
    ld h, h
    call nz, $d464
    ld a, h
    call nc, $98e8
    ld b, e
    ldh a, [$90]
    dec b
    ldh [$a0], a
    ldh [rNR41], a
    ret nz

    ld b, b
    rst $38
    db $ec
    add [hl]
    add hl, bc

jr_054_715b:
    ld bc, $0301
    ld [bc], a
    dec bc
    dec c
    rrca
    ld c, $0f
    cpl
    ld [hl+], a
    ccf
    ld de, $3d1f
    ld e, $19
    rrca
    jr jr_054_717e

    ld [$0c07], sp
    rrca
    ld c, $07
    ld b, $05
    dec b
    inc bc
    ld [bc], a
    ld b, e
    dec b
    rlca
    nop

jr_054_717e:
    ld [$0f22], sp
    dec d
    ld e, $14
    ld a, $34
    ccf
    ld a, d
    ld a, a
    ld a, c
    ld l, a
    db $dd
    rst $10
    xor a
    xor a
    call nc, $abd7
    ld l, a
    ld d, h
    scf
    dec sp
    inc c
    inc c
    db $ec
    cpl
    ld [$8d05], sp
    sbc l
    cp a
    rst $38
    rst $38
    xor a
    rst $38
    ld e, a
    inc h
    rst $38
    rrca
    rst $28
    di
    cp a
    pop bc
    cp $01
    rst $38
    nop
    cp l
    ld b, $9f
    ld c, $bf
    ld e, h
    xor c
    ld a, d
    ld b, l
    rst $38
    nop
    dec de
    ld l, [hl]
    pop af
    db $fd
    adc e
    ld a, a
    rst $00
    rst $38
    rst $38
    db $fd
    ld h, l
    db $f4
    inc e
    cp $82
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    jp $3dfd


    jp nz, Jump_054_43c3

    inc b
    rlca
    ld hl, sp+$2f
    nop
    adc d
    nop
    ldh [rLY], a
    ldh [$c0], a
    ldh [$2d], a
    ld hl, sp-$04
    ld sp, hl
    ld sp, hl
    cp $ff
    db $f4
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    cp b
    rst $18
    ld e, a
    xor a
    ret c

    cpl
    ldh a, [$1f]
    pop af
    ld a, a
    ld [c], a
    rst $38

Call_054_71ff:
    db $e4
    rst $38
    call nz, $c8ff
    rst $38
    adc b
    rst $38
    push bc
    rst $38
    inc a
    ccf
    rrca
    rrca
    cp a
    cp a
    ld [$f5f5], a
    ld a, [$80c3]
    rrca
    ld a, d
    db $fd
    rlca
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc b
    rst $38
    di
    rst $38
    inc a
    inc a
    ld hl, sp+$23
    jp nc, $021e

    inc bc
    inc c
    ld c, $10
    dec d
    jr nz, jr_054_726c

    ld b, b
    ld [hl], a
    add b
    rst $28
    nop
    rst $38
    rlca
    rst $38
    ld e, $ff
    ld a, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    cp $ff
    sub b
    ldh a, [$88]
    ld hl, sp-$7c
    ld b, h
    db $fc
    inc b
    ldh [$27], a
    ld a, [bc]
    cp $12
    cp $27
    rst $38
    ld c, a
    rst $38
    sub a
    rst $38
    rlca
    rst $38
    adc [hl]
    rst $38
    call $f0ff
    rst $38
    ld [hl], b
    rst $38
    ldh [$7f], a
    ld h, b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

jr_054_726c:
    ldh a, [rIE]
    ld hl, sp-$01
    ld l, b
    rst $28
    add h
    add a
    inc bc
    inc bc
    ld a, l
    inc b
    inc e
    inc e
    ld h, [hl]

jr_054_727b:
    ld a, [hl]
    add c
    ld b, l
    rst $38
    nop
    nop
    ld a, a
    add e
    add l
    ld bc, $ff1f
    inc hl
    ld hl, sp+$45
    db $10
    ldh a, [rSCX]
    ld [$01f8], sp
    ldh a, [$f0]
    xor a
    ld bc, $01c6
    ld b, b
    ret nz

    ld b, e
    jr nz, jr_054_727b

    inc c
    sub b
    ldh a, [$50]
    ldh a, [rOBP0]
    ld hl, sp+$28
    ld hl, sp+$38
    ld hl, sp+$28
    ld hl, sp+$24
    ld b, e
    db $fc
    inc d
    ld b, l
    db $fc
    inc c
    db $10
    cp $1e
    cp $fe
    rst $38
    ccf
    ccf
    add hl, de
    dec a
    ld de, $0111
    ld de, $0909
    ld b, $06
    or a
    ld bc, $01bc
    add b
    add b
    add e
    res 4, e
    ld bc, $ec38
    ld c, a
    rst $38
    db $ec
    scf
    rla
    inc bc
    inc bc
    inc b
    inc b
    ld [$1108], sp
    db $10
    inc hl
    jr nz, jr_054_7304

    ld hl, $427f
    ld a, a
    ld b, b
    rst $38
    add h
    rst $38
    add b
    rst $38
    adc b
    rst $38
    add b
    ld b, e
    rst $38
    and b
    ld bc, $617f
    ld b, e
    ld a, a
    ld h, d
    ld b, l
    ld a, a
    ld b, h
    ld l, e
    inc bc
    ld bc, $0201
    ld [bc], a
    inc hl
    dec b
    inc hl
    ld a, [bc]

Jump_054_7300:
    ld bc, $1415
    dec h

jr_054_7304:
    dec d
    add hl, bc
    dec bc
    dec bc
    rlca
    dec b
    rlca
    inc b
    dec bc
    nop
    add hl, bc
    nop
    dec h
    ld [$0423], sp
    ld de, $3c3c
    db $fc
    call nz, $04fd
    ld sp, hl
    ld [$30f1], sp
    jp $8743


    add h
    sbc h
    ld [$10f8], sp
    ld b, h
    ldh a, [rNR41]
    inc d
    nop
    add sp, $00
    push af
    ld b, b
    ld [$f540], a
    add c
    rst $38
    add d
    cp $85
    db $fc
    add e
    ld hl, sp-$75
    ld hl, sp-$2a
    ld hl, sp+$56
    ld h, l
    dec e
    rlca
    rlca
    jr c, jr_054_737e

    db $e3
    pop hl
    ld c, h
    ld c, h
    sub b
    sub b
    jr nz, jr_054_736e

    ld b, b
    ld b, b
    add b
    nop
    add e
    add e
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    nop
    cp a
    and b
    rst $38
    ld b, b
    ld b, a
    rst $38
    nop
    ld b, $7f
    nop
    ccf
    nop
    ld e, a
    nop
    cp a
    add h
    add e
    rlca

jr_054_736e:
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld h, b
    rst $00
    nop
    push bc
    nop
    ld l, h
    add hl, de
    ld bc, $0200
    nop

jr_054_737e:
    dec b
    nop
    ld a, [hl+]
    nop
    ld e, a
    ld e, $ff
    ld b, b
    add a
    jr jr_054_73cf

    add hl, sp
    adc d
    ld sp, $3344
    inc c
    ld [hl], e
    inc b
    ld h, e
    inc c
    ld h, e
    and a
    rst $18
    ld bc, $78f8
    rst $00
    ld [c], a
    ld h, c
    inc bc
    rst $38
    ld a, [hl]
    rst $38
    ld bc, $ff57
    nop
    ld bc, $0ff6
    adc b
    sbc e
    ld b, $c0
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    inc bc
    jp $02e9


    ld a, a
    nop
    cp a
    rst $00
    ei
    ld c, $c0
    rst $38
    db $10
    ld a, a
    adc b
    ld a, a
    add h
    ld a, a
    add l
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    xor a
    nop
    inc l
    add hl, de
    ld d, b
    db $10

jr_054_73cf:
    xor b
    ld [$0858], sp
    db $ec
    call nz, $34fc

jr_054_73d7:
    db $fc
    inc c
    db $f4
    inc b
    ld a, [$caf2]
    ld c, d
    rst $00
    ld c, l
    rst $00
    dec c
    di
    dec a
    cp $0c
    ld b, e
    db $fc
    nop
    rla
    rst $38
    nop
    ld a, a
    add b
    rst $28
    ldh a, [rIE]
    ld a, h
    rst $38
    rra
    rst $38
    rlca
    cp $02
    db $fc
    inc c
    ldh a, [$30]
    ret nz

    ld b, b
    add b
    add b
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    add hl, bc
    ldh a, [rNR10]
    pop af
    ld de, $1cfe
    rst $38
    jr nc, jr_054_73d7

    ld b, b
    ld b, e
    jp $0680


    pop hl
    ld bc, $00e2
    push af
    nop
    ld a, [$28ec]
    nop
    add b
    call nz, $d400
    dec bc
    jr nz, jr_054_7446

    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    or e
    nop
    ld h, $03
    ld a, b
    jr c, @-$02

    inc d
    ld b, h
    cp $0a
    ld [$fc72], sp
    add h
    cp $02
    ld a, [hl]
    ld [bc], a
    cp $02
    rst $38

jr_054_7446:
    ld h, l
    add hl, bc
    ccf
    ccf
    ld a, d
    ld a, a
    dec c
    rra
    inc bc
    inc bc
    nop
    ld bc, $1173
    inc bc
    inc bc
    rrca
    rrca
    ld e, $1f
    jr jr_054_7494

    jr nc, jr_054_7496

    ld [hl-], a
    ld [hl-], a
    ld sp, $1b31
    dec de
    ld c, $0e
    add $a0
    inc h
    ld bc, $0247
    inc bc
    inc b
    inc bc
    rlca
    dec b
    rlca
    ld b, $43
    rlca
    dec b
    inc b
    ld b, $0a
    dec c
    dec c
    ld a, [bc]
    add e
    add e
    inc bc
    ld [de], a
    dec e
    rra
    rra
    ld h, a
    ld a, [bc]
    ldh a, [$f0]
    ld e, [hl]
    cp $ab
    rst $38
    push de
    rst $38
    db $eb
    rst $38
    ld a, a
    ld b, e
    ld a, a
    ccf
    ld b, h

jr_054_7494:
    ccf
    rra

jr_054_7496:
    inc hl
    ccf
    ldh [rNR41], a
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    db $dd
    sbc $0b
    inc c
    rra
    db $10
    rra
    jr nz, jr_054_74e8

    jr nz, jr_054_750a

    ld h, b
    ld d, l
    ld l, d
    ld a, [hl+]
    ld d, l
    push de
    xor d
    xor d
    push de
    call nc, $a8ab
    ld d, a
    ld d, b
    xor a
    nop
    ld c, b
    rst $38
    nop
    dec c
    ldh [rIE], a
    ld e, a
    rst $38
    xor e
    rst $38
    push af
    rst $38
    ld e, a
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    add e
    add e
    dec b
    add b
    ld a, a
    ldh [rIE], a
    ld a, h
    ld a, h
    ld [hl+], a
    ccf
    ld [bc], a
    cpl
    dec de
    rla
    jp $07f2


    add e
    add d
    ld [c], a
    db $e3
    pop af
    pop af
    ld hl, sp-$08
    and e

jr_054_74e8:
    push de
    daa
    rst $38
    dec b
    ldh a, [rIE]
    add b
    rst $38
    ld a, b
    add a
    ld b, e
    db $fc
    inc bc
    ld [$07f8], sp
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $ff48
    inc bc
    nop
    ld bc, $ff4e
    nop
    ld bc, $ffc0

jr_054_750a:
    add l
    or [hl]
    nop
    ccf
    adc e
    sbc c
    ld h, c
    ld [de], a
    add b
    ret nz

    ldh [$f0], a
    ld hl, sp-$04
    db $fc
    cp a
    ld a, a
    ld e, a
    xor a
    xor a
    ld d, a
    ld d, a
    xor e
    cp a
    pop bc
    cp $81
    ld b, e
    ld a, a
    ld b, b
    inc bc
    ccf
    jr nz, @+$01

    ldh [rOBP1], a
    rra
    ldh a, [rSCX]
    ccf
    ldh [$0a], a
    ld a, a
    pop bc
    rst $38
    add a
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    rst $38
    db $10
    ld b, h
    rst $38
    ld [$9802], sp
    rst $38
    ldh a, [$50]
    rst $38
    nop
    ld b, $c0
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$75
    rst $18
    ld l, b
    ld bc, $8080
    ld [hl+], a
    ret nz

    nop
    ldh [rNR43], a
    ldh a, [rSC]
    ld hl, sp-$08
    db $fc
    ld b, h
    db $fc
    ld a, h
    inc b
    ld a, $fe
    ld a, $de
    ld a, $44
    cp $1e
    dec b
    ld a, $fd

jr_054_7570:
    ccf
    ld hl, sp+$7f
    ldh a, [$aa]
    ld bc, $4515
    ld bc, $8dfe
    db $db
    dec b
    ld b, $ff
    dec b
    ei
    ld a, [bc]
    push af
    and h
    nop
    sbc h
    adc b
    rst $18
    db $ec
    add hl, hl
    and l
    nop
    ld b, b
    rla
    jr nz, jr_054_7570

    ld [hl], b
    sub b
    ret nc

    db $10
    and b
    ld [$08d8], sp
    xor b
    ld [$08d8], sp
    ld hl, sp+$08
    ldh a, [$08]
    ld [hl], b
    sub b
    db $10
    ldh a, [rNR41]
    ldh [rSCX], a
    ld b, b
    ret nz

    add e
    ld bc, $028c
    cp h
    ld a, [hl]
    ld a, [de]
    ld b, h
    rst $38
    rrca
    rlca
    ld b, $ff
    ld b, $fe
    inc c
    db $fc
    jr nc, @-$0e

    rst $38
    ld [hl], d
    inc b
    ld bc, $0201
    inc bc
    ld [bc], a
    ld b, l
    inc b
    rlca
    ld a, [bc]
    ld [$090f], sp
    rrca
    rrca
    ld c, $0f
    inc c
    rrca
    ld [$430f], sp
    db $10
    rra
    ld b, l
    jr nz, @+$41

    ld b, l
    ld b, b
    ld a, a
    ld b, [hl]
    add b
    rst $38
    add hl, bc
    cp d
    push bc
    push de
    xor d
    xor d
    push de
    sub l
    ld [$f58a], a
    ld b, a
    ld b, b
    ld a, a
    ld b, e
    jr nz, jr_054_762f

    inc b
    dec [hl]
    ccf
    ld a, [de]
    rra
    dec e
    inc h
    rra
    ld l, l
    inc bc
    ld e, $3e
    ld a, c
    rst $00
    ld b, e
    ld hl, sp+$07
    ld de, $0ff0
    ret nz

    ccf
    rrca
    db $fc
    ccf
    ldh a, [rIE]
    ret nz

    cp $01
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    add e
    add e
    ld bc, $05fa
    add e
    add e
    ld d, $f5
    ld a, [bc]
    ld a, [$f405]
    dec bc
    ld [$f415], a
    dec bc
    xor b
    ld d, a
    ld d, h
    xor e
    and b
    ld e, a
    ld d, b
    xor a
    and b

jr_054_762f:
    ld e, a
    ld b, b
    cp a
    nop
    ld b, h
    rst $38
    nop
    inc c
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld e, a
    inc h
    rst $38
    ld [hl], c
    inc bc
    jp $3dc3


    cp $43
    dec bc
    db $fc
    rlca
    rla
    ld hl, sp-$61
    ld [hl], b
    inc [hl]
    db $eb
    add sp, $57
    add l
    cp a
    ld bc, $7f80
    add e
    add e
    jp $0dea


    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$3e]
    pop hl
    inc l
    di
    ld b, b
    rst $38
    ld b, c
    cp $43
    ld b, e
    db $fc
    ld c, $45
    ld a, [$f946]
    ld b, l
    ld_long a, $ff60
    and b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld a, h
    daa
    rst $38
    sub h
    rst $18
    inc c
    ld [hl], b
    ldh a, [$ec]
    inc e
    ld a, [c]
    ld c, $f1
    rrca
    pop hl
    rra
    ret nz

    ccf
    nop
    ld c, h
    rst $38
    nop
    ld b, e
    ld bc, $1eff
    nop
    cp $82
    ld a, [hl]
    jp z, $d23a

    ld [hl-], a
    sub d
    ld [hl], d
    ld [hl+], a
    ld [c], a
    ld h, b
    ld [c], a
    ldh [$a2], a
    ldh [rNR42], a
    pop hl
    ld hl, $10fa
    ld d, l
    or b
    xor e
    ld e, b
    ld c, a
    cp b
    rlca
    db $fc
    inc bc
    add [hl]
    and a
    ld bc, $fe0f
    ld b, e
    rst $30
    ld hl, sp+$05

jr_054_76c4:
    ei
    db $fc
    ld a, [$fdfc]
    cp $79
    dec h
    add b
    ld a, [bc]
    ld b, b
    ret nz

    inc hl
    rst $28
    jr nc, jr_054_76c4

    ld b, b
    ret nz

    add b
    add b
    ld bc, $0083
    ld [de], a
    ld [bc], a
    ld b, $00
    ld [$0088], sp
    dec bc
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    add e
    add l
    ld [bc], a
    xor d
    add b
    push af
    and e
    nop
    xor [hl]
    ld d, $30
    rst $38
    rrca
    ld a, [$fe06]
    ld a, [$e23e]
    db $fc
    call nz, $04ec
    ret c

    ld [$08a8], sp
    ld d, b
    db $10
    and b
    jr nz, jr_054_7747

    ld b, b
    db $ec
    ld hl, $c00f

jr_054_770c:
    ldh [$f0], a
    jr jr_054_770c

    inc b
    db $fc
    ld b, $fe
    dec b
    rst $38
    push af
    ld a, a
    dec c
    ccf
    dec b
    ld b, l
    ld a, $02
    db $10
    db $76
    ld c, $fe
    ld a, [c]
    ld a, $02
    inc a
    ld [bc], a
    ld a, h
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    sub $a6
    rst $38
    db $ec
    ld c, l
    ld bc, $0101
    ld hl, sp+$4f
    add b
    ld l, l
    dec d
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$300b], sp
    ccf

jr_054_7747:
    ld b, b
    ld a, a
    add b
    rst $38
    and [hl]
    rst $38
    ld c, c
    reti


    ld [hl], b
    ldh a, [$c0]
    ret nz

    db $ec
    ld b, b
    ld bc, $0001
    inc h
    ld bc, $008b
    ld c, [hl]
    dec c
    rra
    rra
    nop
    ld l, a
    nop
    sbc a
    nop
    ccf
    rrca
    ld a, a
    db $10
    ldh a, [$60]
    ldh [rNR51], a
    add b
    ld bc, $c040
    ldh a, [$2d]
    db $eb
    rlca
    inc bc
    inc bc
    inc b
    dec b
    rlca
    rlca
    inc b
    rlca
    and l
    or l
    ldh [$29], a
    rrca
    rrca
    scf
    jr nc, jr_054_77f1

    ld b, b
    ld d, a
    add b
    xor e
    add b
    ld d, a
    nop
    ccf
    rra
    ld h, b
    ld a, a
    add c
    cp a
    inc bc
    ld a, $6f
    ld a, [hl]
    ld sp, hl
    sbc a
    ldh a, [$9e]
    ld l, b
    ld l, a
    ret z

    rst $08
    ld hl, $1667
    rst $38
    ld [$06fc], sp
    rst $38
    pop hl
    rst $38
    inc e
    rra
    adc a
    nop
    ld d, b
    inc bc
    ld bc, $0601
    ld b, $22
    ld [$0902], sp
    ld [$870f], sp
    res 4, e
    ld bc, $012a
    ld [bc], a
    inc bc
    adc l
    and a
    dec d
    db $fc
    db $fc
    ld [bc], a
    ld a, [hl]
    pop hl
    rst $38
    inc e
    rst $38
    nop
    rst $38
    add $fe
    sbc b
    ld sp, hl
    ld h, b
    ld h, b
    add b
    add b
    ldh a, [rSVBK]
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    ldh [rNR51], a
    cp $02
    cp $e2
    ld e, $fa
    adc [hl]
    cp $f9
    ld a, a
    push bc
    ld a, a
    add l
    rst $38
    inc bc
    ld a, a
    dec c
    rst $38

jr_054_77f1:
    ld c, c
    rst $38
    sub d
    rst $38
    ld [de], a
    rst $38
    inc h
    rst $38
    ld d, b
    ld a, a
    add b
    rst $38
    nop
    ccf
    nop
    rra
    pop bc
    rst $00
    inc a
    ccf

Jump_054_7805:
    and e
    ld bc, $1522
    inc bc
    ld [bc], a
    rrca
    inc c
    ld sp, $8177
    sbc a
    nop
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    inc a
    db $fc
    ld [$04f8], sp
    db $fc
    call nz, $c3fc
    cp h
    dec b
    ld [hl-], a
    cp $4c
    call c, $f0f0
    ld l, a
    ld [bc], a
    ldh a, [$f0]
    rrca
    ld b, e
    rst $38
    nop
    ld b, $3f
    ret nz

    rst $08
    db $10
    ccf
    inc c
    rrca
    ld b, l
    ld [$430b], sp
    db $10
    rra
    inc c
    jr nz, jr_054_7880

    ld b, c
    ld e, a
    add c
    sbc a
    add d
    cp [hl]
    ld a, [bc]
    ld a, $12

jr_054_784a:
    ld a, [hl]
    inc d

jr_054_784c:
    ld b, h
    db $fc
    inc h
    inc bc
    jr z, jr_054_784a

    jr z, jr_054_784c

    and l
    sbc c
    ldh [$29], a
    inc h
    db $fc
    ld b, h
    cp $c2
    cp $22
    cp $27
    rst $38
    ccf
    pop af
    rst $38
    adc $f0
    rla
    ldh [rTAC], a
    ldh [$27], a
    ldh [$a7], a
    ld h, b
    rst $28
    pop bc
    rst $28
    ld b, c
    ld c, a
    ld b, c
    ld e, a
    ld bc, $825f
    rst $18
    add d
    rst $38
    add c
    rst $38
    ld b, [hl]
    ld a, a

jr_054_7880:
    add hl, sp
    add hl, sp
    cp b
    ld bc, $4646
    ldh [rNR41], a
    ld b, l
    ld b, b
    ret nz

    ld bc, $8080
    db $f4
    add hl, hl
    nop
    ld c, [hl]
    dec hl
    add b
    ld h, c
    inc bc
    ld h, b
    ld h, b
    sub b
    ldh a, [rSCX]
    ld [$07f8], sp
    ld c, b
    ld hl, sp-$78
    ld hl, sp+$50
    ldh a, [$e0]
    ldh [$63], a
    rst $38
    db $ec
    dec l
    inc hl
    ld bc, $024b
    inc bc
    pop de
    adc h
    ld de, $0303
    rlca
    inc c
    dec e
    ld [de], a
    scf
    dec hl
    jr z, jr_054_78f3

    ld [de], a
    dec e
    db $10
    rra
    ld [$060f], sp
    rlca

jr_054_78c4:
    add e
    and c
    ldh [rNR44], a
    ld bc, $0901
    dec bc
    rlca
    rla
    dec bc
    rla
    ld e, $12
    rra
    db $10
    dec hl
    inc [hl]
    ld [hl], e

jr_054_78d7:
    ld a, h
    ld a, [$9bfc]
    call c, $d89e
    rst $38
    ld hl, sp+$7f
    ldh a, [$1f]
    db $ec
    ccf
    ld a, [c]
    ccf
    jp nz, $817f

    ld a, a
    add b
    ld b, e
    rst $38
    nop
    dec c
    rst $28
    db $10
    rst $08

jr_054_78f3:
    jr nc, jr_054_78c4

    or b
    add a
    ld hl, sp+$47
    ld a, b
    inc sp
    inc a
    dec c
    ld c, $c3
    jp z, $800c

    add b
    ldh [$60], a
    jr nc, jr_054_78d7

    adc b
    ld a, b
    db $e4
    call c, $fc24
    ld [de], a
    ld b, h
    cp $0a
    ldh [$3b], a
    jp $3dff


    ccf
    ld a, [bc]
    ld c, $9a
    cp [hl]
    push af
    db $fd
    ld [hl], a
    ccf
    rst $38
    dec sp
    rst $38
    inc de
    cp [hl]
    inc bc
    ld a, a
    nop
    cp l
    ld [bc], a
    ld d, c
    ld c, $be
    rra
    ld a, a
    ccf
    di
    dec sp
    or e
    ld a, e
    cp a
    ld a, a
    sbc a
    ld a, [hl]
    ld bc, $03fe
    db $fc
    ld d, e
    xor h
    inc hl
    call c, $a857
    daa
    ret c

    sub a
    ld l, b
    add e
    ld a, h
    add e
    ld a, l
    add $3e
    ld hl, sp+$38
    ret nz

    ret nz

    ld l, l
    dec de
    rrca
    rrca
    jr nc, jr_054_7994

    pop bc
    cp $38
    rst $38
    ld b, $ff
    add c
    rst $38
    ld b, h
    ld a, e
    ld hl, $98be
    sbc a
    jp $d8c7


    cp b
    db $fc

jr_054_7968:
    inc [hl]
    ld hl, sp+$28
    ld hl, sp+$08
    ld b, e
    ld [hl], b
    sub b
    ld b, e
    ld h, b
    and b
    ld bc, $20e0
    ld b, a
    ldh a, [rNR10]
    ld b, l
    ldh [rNR41], a
    ld b, e
    ret nz

    ld b, b
    ld bc, $8080
    ld [hl], a
    inc de
    ret nz

    ret nz

    jr nz, jr_054_7968

    jr nc, @-$2e

jr_054_798a:
    ld e, b
    xor b
    adc b
    ld hl, sp-$2c
    ld l, h
    inc h
    db $fc
    ld d, h
    xor h

jr_054_7994:
    ld [$70f8], sp
    ldh a, [$ec]
    dec l
    add hl, bc
    rra
    db $ec
    ccf
    cp $2f
    sbc $7f
    adc a
    ld [hl], l
    adc [hl]
    add l
    nop
    adc d
    rrca
    inc bc
    inc bc
    dec c
    ld c, $1b
    rla
    inc h
    dec sp
    ld de, $081e
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    add e
    nop
    ld b, b
    adc e
    nop
    ld h, h
    dec bc
    ret nz

    ret nz

    and b
    ld h, b
    ld e, b
    cp b
    call nz, Call_054_64fc
    cp h
    sub d
    ld a, [hl]
    ld b, e
    ld a, [bc]
    cp $05

jr_054_79d0:
    add [hl]
    cp $67
    ld a, a
    dec e
    rra
    adc c
    nop
    or [hl]
    adc h
    db $db
    db $10
    rra
    ld h, b
    ld a, a
    add b
    rst $38
    inc a
    rst $38
    inc bc
    rst $38
    jp nz, $20fd

    ccf
    jr jr_054_798a

    add e
    add a
    adc l
    nop
    db $ec
    add e
    nop
    and b
    rrca
    ld d, b
    or b
    jr z, jr_054_79d0

    ld [$ccf8], sp
    db $f4
    and h
    ld a, h
    inc a
    call nc, $fc04
    ld l, b
    ld hl, sp-$79
    nop
    ld [hl], b
    inc bc
    ei
    db $fc
    cp $f8
    add e
    nop
    ld a, h
    adc l
    nop
    ret nz

    inc bc
    rst $38
    ccf
    cp a
    ld a, a
    adc l
    nop
    jp nc, Jump_054_7eff

    ld [bc], a
    ld bc, $0201
    rst $00
    add c
    ldh [$31], a
    ld bc, $1001
    jr @+$06

    ld h, $07
    ld hl, $1003
    add hl, bc
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    ld hl, $4d31
    ld c, l

jr_054_7a38:
    cpl
    inc hl
    rla
    db $10
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    ccf
    ld a, h
    rrca
    add b
    ld a, a
    ld h, b
    rra
    jr @+$09

    inc b
    inc sp
    inc a
    ld a, [hl]
    ld b, c
    ccf
    jr nz, @+$40

    add hl, sp
    inc a
    inc hl
    ld b, e
    ld a, h
    ld b, e
    ld [hl], l
    ldh [rLYC], a
    inc bc
    rlca
    nop
    ld [$0607], sp
    ld bc, $c001
    ret nz

    ld hl, sp+$38
    rst $30
    adc a
    ld b, c
    ld [hl], b
    cpl
    inc a
    jp $00ff


    rst $38
    and $ff
    ld e, $1b
    adc a
    adc c
    rst $08
    ld c, c
    rst $20
    inc h
    rst $30
    inc d
    rst $38
    inc c
    db $fd
    ld b, $fd
    ld [bc], a
    rst $38
    add b
    cp a
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$10eb], sp
    pop de
    jr nz, jr_054_7a38

    ld b, b
    call nc, $2a01
    add c
    rst $10
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld b, e
    rra
    ldh [$b7], a
    nop
    ld [$2be0], sp
    ld h, b
    ld [hl], b
    inc c
    inc c
    db $e3

jr_054_7aaf:
    inc bc
    ld hl, sp-$80
    rst $38
    add b
    ld a, h
    sbc a
    ld a, a
    sbc a
    rst $28
    rra
    cp $0f
    db $fd
    rst $08
    jr c, jr_054_7aaf

    jr c, @-$17

    inc e
    rst $30
    inc a
    rst $30
    call c, $affb
    ei
    rst $18
    ld a, b
    rst $38
    inc a
    di
    rra
    di
    inc c
    rst $08
    jr nc, jr_054_7b14

    ret nz

    ld b, a
    rst $38
    nop
    inc de
    sbc a
    ld h, b
    rrca
    ldh a, [rIF]
    pop af
    ld e, $e6
    ld sp, $f0d8
    jr nz, @-$04

    ld b, c
    db $fd
    ld b, e
    sbc d
    rst $20
    add h
    rst $38
    ld a, l
    db $10
    ret nz

    ret nz

    ldh [$30], a
    ld hl, sp+$0c
    sbc $e3
    rst $38
    ld hl, sp-$51

jr_054_7afb:
    cp $55
    rst $38
    ld a, [bc]
    rst $38
    dec b
    ld c, b
    rst $38
    nop
    ld c, $e0
    rst $38
    ld sp, hl
    rra
    cp $07

jr_054_7b0b:
    rst $38
    pop hl
    rst $30
    jr jr_054_7b0b

    inc b
    rst $38
    nop
    rst $18

jr_054_7b14:
    ld b, e
    jr nz, @+$01

    inc d
    ld b, b
    rst $38
    ld b, b
    cp a
    ld h, e
    sbc l
    rst $38
    ldh [$7f], a
    ld [hl], b
    rra
    cp h
    ld a, a

jr_054_7b25:
    rst $08
    jp $0087


    pop hl
    jr jr_054_7b8c

    sbc h
    db $ec
    ld h, $06
    add b
    ret nz

    ld h, b
    ldh a, [rNR10]
    ldh a, [$90]
    ld b, e
    ld a, b
    ret z

    inc c
    jr c, jr_054_7b25

    inc a
    db $e4
    ld e, $f6
    rst $18
    ld [hl], l
    rst $38
    inc h
    cp $81
    rst $38
    jp $9f00


    ld de, $fc03
    nop
    ld hl, sp+$04
    ld hl, sp+$06
    cp $01
    rst $38
    nop
    cp a
    ret nz

    ccf
    jr nz, jr_054_7afb

    inc a
    and e
    and e
    nop
    sbc h
    ld b, $ff
    add $fe
    ld hl, sp+$38
    ld a, h
    inc c
    db $ec
    jr c, jr_054_7b77

    add b
    ldh a, [rSVBK]
    db $fc
    ld c, [hl]
    ld a, c
    and c
    ld e, [hl]
    and [hl]
    sbc b
    ld a, b

jr_054_7b77:
    or b
    ld b, h
    ret nc

    ldh a, [rIF]
    ld [hl], b
    ld c, b
    cp b
    ld c, b
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    inc b
    ld hl, sp-$38
    or b
    or b

jr_054_7b8c:
    ld h, l
    rst $38
    db $ec
    ld [hl], a
    inc hl
    ld bc, $0247
    inc bc
    jp nc, $c38a

    sbc h
    ld bc, $0302
    ld b, h
    inc bc
    ld [bc], a
    ld [$0704], sp
    dec b
    rlca
    ld b, $07
    inc b
    rlca
    ld b, $22
    rlca
    add hl, bc
    dec bc
    dec bc
    dec c
    ld [$080a], sp
    dec c
    ld [$0700], sp
    db $ec
    add hl, hl
    ldh [$32], a
    ld h, a
    ld l, a
    ld d, b
    ld a, a
    xor b
    rst $38
    rla
    rst $38
    inc de
    cp [hl]
    add hl, sp
    rrca
    dec a
    rlca
    inc a
    inc bc
    ld a, a
    jp $30be


    cp a
    and b
    sbc a
    add b
    adc [hl]
    pop de
    ld c, l
    ld c, [hl]
    cpl
    jr nc, jr_054_7bf7

    add hl, de
    daa
    daa
    ld b, d
    ld a, [c]
    add hl, bc
    rrca
    jr @+$21

    ld a, c
    ld a, a
    db $fc
    cp $fe
    rst $38
    ld a, a
    rst $38
    ld a, c
    db $fd
    ldh a, [rSCX]
    ld sp, hl
    ld bc, $f11d
    ld [hl], b
    pop af
    ldh a, [$f1]
    or c

jr_054_7bf7:
    push de
    ld b, a
    rrca
    xor e
    rra
    ld e, l
    rra
    cp l
    rra
    ld e, $ff
    ld e, $1f
    rla
    rra
    dec de
    rra
    rla
    ccf
    dec hl
    ccf
    scf
    ccf
    cpl
    add h
    add e
    inc b
    ccf
    ld a, a
    ld l, a
    ld a, a
    ld e, a
    add h
    add e

Call_054_7c19:
    add hl, bc
    ld a, a

jr_054_7c1b:
    ld a, a
    add e
    db $e3
    add c
    pop bc
    ld b, [hl]
    ld a, d
    inc a
    inc a
    ld h, c
    ldh [$29], a
    add b
    ret nz

    jr nc, jr_054_7c1b

    ret z

    ld hl, sp+$04
    db $fc
    call nz, $c47c
    inc a
    db $e4

jr_054_7c34:
    inc e
    db $ec
    call c, $92be
    cp a
    add e
    cp [hl]
    ld b, e
    db $ec
    rla
    ld sp, hl
    rra
    sub $36
    ldh [$63], a
    db $fc
    db $fc
    jr jr_054_7c62

    daa
    ccf
    rlca
    ld a, a
    rlca
    rst $38
    ld c, a
    ld a, a
    inc hl
    ccf
    inc e
    rst $28
    adc $df
    ccf
    ei
    inc bc
    rst $20
    rra
    rst $38
    inc bc
    rst $38
    adc a
    rst $38
    rst $38

jr_054_7c62:
    rst $28
    rst $38
    rst $20
    rst $38
    rst $10
    rst $38
    db $db
    rst $38
    cp d
    rst $38
    cp [hl]
    rst $38
    db $fd
    rst $38
    ld a, a
    inc h
    rst $38
    ld bc, $fffe
    inc hl
    cp $01
    db $fc

jr_054_7c7a:
    cp $2b
    db $fc
    rlca
    ld a, [c]
    ld a, [c]
    add c
    pop hl
    pop bc
    rst $38
    ld a, $3e
    ld [hl], e
    rlca
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$60]
    ldh [$a4], a
    nop
    add h
    ldh [rNR51], a
    ret nz

    rra
    ccf
    ld [$d5ff], a
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    ld a, h
    rst $38
    ldh [$f8], a
    and b
    ld [$0450], sp
    xor b
    inc b

jr_054_7caa:
    ld d, b
    inc b
    xor b
    ld [bc], a
    ld d, h
    ld [bc], a
    jr z, jr_054_7c34

    ld d, b

jr_054_7cb3:
    add h
    and b
    sbc b
    add b
    ldh [rP1], a
    add b
    nop
    ld h, $80
    ld bc, $8000

jr_054_7cc0:
    db $ec
    cpl
    add e
    nop
    ld a, d
    ld b, $06

jr_054_7cc7:
    dec b
    rlca
    rlca
    inc b
    inc b
    ld [bc], a
    call nz, $0f88
    ld a, [de]
    ld a, [hl-]
    rst $00
    push bc
    ret nz

    rst $00
    db $e3
    db $e4
    db $e3
    ld [c], a
    db $e3
    db $eb
    jr nz, jr_054_7cc0

    inc e
    inc e
    db $ec
    ld c, a
    ld a, [bc]
    ret nz

    ret nz

    jr nz, jr_054_7cc7

    ret nc

    ldh a, [rSVBK]
    ld [hl], b
    ret nc

    ret nc

    jr nz, jr_054_7cb3

    adc b
    inc bc
    ret nz

    ret nz

    and b
    jr nz, jr_054_7c7a

    sub e
    inc b
    jr nc, jr_054_7caa

    ret nc

    ld h, b
    ld h, b
    db $ec
    ld b, e
    rst $38
    db $ec
    ld e, a
    inc hl
    ld bc, $0201
    ld [bc], a
    add $80
    ret c

    adc h
    ld bc, $0101
    ld hl, sp+$35
    and h
    inc h
    ld bc, $0210
    ld b, $0d
    rla
    db $10
    ccf
    jr nc, jr_054_7d6b

    ld a, b
    ld [hl], a
    ld a, l
    adc d
    cp [hl]
    ld a, [bc]
    sbc [hl]
    inc b
    ld e, h
    ld b, e
    ld c, b
    ld a, b
    rlca
    ld d, b
    ld [hl], b
    db $10
    jr nc, @-$5e

    or b
    ld h, b
    ldh [$8b], a
    xor e
    ld bc, $0302
    ld b, e
    inc b
    rlca
    dec b
    jr z, jr_054_7d69

    ret c

    rst $18
    ld c, h
    ld a, a
    ld b, e
    ld c, $fe
    dec bc
    rst $18
    rst $38
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    sub c
    reti


    dec bc
    inc b
    rlca
    ld [$100f], sp
    rra
    nop
    rra
    jr nz, jr_054_7d9c

    inc a
    ccf
    ld b, e
    ld e, a
    ld a, a
    ld de, $fe3e
    cp h
    db $fc
    ld a, h
    db $fc

jr_054_7d69:
    ld sp, hl
    ld sp, hl

jr_054_7d6b:
    ld hl, sp+$39
    ld [hl], d
    sub e
    ldh a, [rNR13]
    db $ed

jr_054_7d72:
    cpl
    add [hl]
    add $79
    ldh [rHDMA1], a
    ld e, $1e
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    jr nc, jr_054_7d72

    inc bc
    rst $00
    rrca
    sbc a
    ld a, $3e
    ld [hl], a
    ld [hl], a
    ld a, a
    rst $38
    ei
    ld hl, sp-$35
    ret z

    jp $8f48


    ld b, b
    add $21
    ld a, [$e7f9]
    rst $20
    ret z

    rst $38

jr_054_7d9c:
    ld [hl], b
    ld a, a
    ld d, e
    ld a, a
    sub b
    rst $38
    adc b
    rst $38
    adc a
    rst $38
    adc b
    cp $50
    ld a, [hl]
    ld a, b
    db $fc
    inc e
    db $fc
    rlca
    rst $38
    inc bc
    ei
    ld bc, $03f1
    di
    dec b
    rst $20
    adc $ef
    cp a
    rst $38
    adc a
    rst $18
    add a
    sbc a
    ld a, [de]
    cp [hl]
    inc de
    cp $27
    db $fc
    ld a, a
    ld hl, sp-$79
    add a
    db $f4
    ld hl, $9e00
    dec bc
    ldh [$e0], a
    ldh a, [$f0]
    jr c, jr_054_7e4d

    sbc h
    sbc h
    db $ec
    db $ec
    cp [hl]
    cp [hl]
    ld [hl+], a
    rst $38
    dec d
    rst $18
    rst $18
    ld e, a
    sbc [hl]
    ld e, [hl]
    cp $0e
    cp h
    ld e, h
    ld hl, sp-$48
    ldh a, [rSVBK]
    add b
    add b
    ld b, b
    ldh a, [$30]
    ldh a, [$0b]
    ei
    db $fc
    ld b, h
    rst $38
    nop
    rrca
    call c, Call_054_71ff
    ld a, a
    adc [hl]
    cp $83
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    jr jr_054_7e25

    rlca
    rlca
    and l
    nop
    add sp, $07
    add b
    ldh [$b0], a
    ret nc

    ld d, b
    ld [hl], b
    ld [$4318], sp
    ld hl, sp+$08
    inc bc
    ldh [rNR10], a
    ldh [$e0], a
    ldh a, [$2f]
    nop
    sub b
    nop
    nop
    ld [hl+], a
    ld [bc], a
    nop

jr_054_7e25:
    nop
    add $00
    db $ec
    rra
    dec b
    rlca
    rra
    dec a
    ld [hl], l
    ld a, [hl]
    adc $ff
    ld l, a

jr_054_7e33:
    cp $3f
    rst $38
    jr c, jr_054_7e33

    ld h, b
    ldh [$88], a
    sbc b
    ld e, a
    ld h, a
    cp $ec
    rst $38
    rst $38
    rst $30
    ld sp, hl
    ld sp, hl
    rst $38
    cp $f2
    inc c
    inc c
    db $ec
    ccf
    dec c

jr_054_7e4d:
    ld h, b
    ldh a, [$88]
    ld hl, sp+$60
    ld [hl], h
    ld d, h
    ld e, h
    inc [hl]
    inc a
    ld [$6008], sp
    ldh a, [$84]
    ld bc, $0ac4
    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    and b
    jr nz, @-$3e

    ldh [$80], a
    add b
    and l
    nop
    cp b
    db $f4
    dec [hl]
    nop
    adc b
    rst $38
    ld l, l
    add hl, bc
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$0800], sp
    ld [$83a3], sp
    dec b
    jr nz, jr_054_7e83

jr_054_7e83:
    jr nz, jr_054_7ea5

    nop
    jr nz, jr_054_7ecc

    ld b, b
    ld d, b
    inc e
    ld c, b
    ld b, b
    ld b, h
    ld b, e
    ld b, e
    ld b, b
    ld b, e
    ld b, $47
    inc hl
    daa
    ld hl, $0127
    daa
    db $10
    inc de
    nop
    inc de
    ld [$000b], sp
    rrca
    inc b
    rlca
    ld [bc], a

jr_054_7ea5:
    inc bc
    ld bc, $7101
    rlca
    ld bc, $0e00
    ld b, $30
    db $10
    ret nz

    ld b, b
    xor c
    adc a
    and e
    rst $10
    inc bc
    jr nz, jr_054_7ed9

    db $10

jr_054_7eba:
    db $10
    inc hl
    ld [$1405], sp
    inc d
    ld d, $16
    inc d
    db $10
    ld h, c
    dec e
    ret nz

    ret nz

    jr nc, jr_054_7eba

    rlca
    rst $38

jr_054_7ecc:
    ret nz

    rst $38
    ldh a, [$3f]
    cp $87
    adc a
    add b
    ld bc, $20c0
    ldh [rNR10], a

jr_054_7ed9:
    ldh a, [rDIV]
    db $fc
    ld bc, $c0ff
    rst $38
    jr nc, jr_054_7f21

    ld c, $0f
    adc e
    rst $10
    inc bc
    cp $7e
    ld bc, $7901
    dec b
    ld hl, $2700
    daa
    jr c, jr_054_7f23

    dec h
    ld [$1961], sp
    ld [hl], b
    ldh a, [rTAC]
    rst $38
    nop
    rst $38
    ldh [rIE], a

Jump_054_7eff:
    rst $38
    rrca
    rra
    nop
    ld b, h
    nop
    ld b, h
    ld b, h
    push bc
    push bc
    ld a, $ff
    nop
    rst $38

jr_054_7f0d:
    ld bc, $feff
    cp $6b
    dec bc
    ret nz

    ret nz

    jr nc, @+$32

    inc c
    ld [$0002], sp
    ld bc, $0e01
    nop
    ld b, l
    rra

jr_054_7f21:
    nop
    ld c, b

jr_054_7f23:
    ccf
    nop
    nop
    ld e, $c3
    cp d
    ld [bc], a
    ld a, $00
    ccf
    add h
    add e
    add hl, de
    ccf
    nop
    ld a, $0f
    ldh [$fd], a

jr_054_7f36:
    nop
    cp $40
    db $fd
    ret nz

    ld a, [$7dc0]
    ret nz

    ld a, d
    pop bc
    ld a, l
    add d
    cp $0c
    db $fc
    jr nc, @-$0e

    ret nz

    ret nz

    ld [hl], a
    dec b
    add b
    add b
    ret nz

    nop
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    ld b, l
    ldh a, [rNR10]
    ld b, $f8
    ld [$08b8], sp
    ld e, b
    ld [$84a8], sp
    add e
    rrca
    ld l, b
    jr jr_054_7f36

    ldh a, [rNR10]
    or b
    db $10
    ld d, b
    jr nz, jr_054_7f0d

    jr nz, jr_054_7fcf

    ld b, b
    ret nz

    ld b, b
    ld b, b
    or c
    nop
    xor b
    add l
    nop
    add b
    inc bc
    rst $38
    add a
    ld c, a
    ret nz

    add l
    nop
    adc d
    inc b
    ld [$06f8], sp
    db $fc
    jp $008e


    sub l
    add hl, bc
    ld hl, $2f00
    inc hl
    ccf
    inc a
    ccf
    jr c, jr_054_7f9a

    ld b, $61
    add a
    nop
    ret nc

    inc bc

jr_054_7f9a:
    rst $38
    ld a, a
    rst $38
    nop
    add l
    nop
    call c, Call_054_4504
    ld b, h
    ld b, a
    ld bc, $88fe
    nop
    rst $20
    ld [bc], a
    ccf
    nop
    ld a, a
    add h
    ld bc, $0413
    cp $00
    rst $38
    nop
    ld a, [hl]
    adc d
    ld bc, $021d
    ldh [$fd], a
    ret nz

    jp $2f01


    nop
    ld a, d
    add [hl]
    nop
    ld a, [c]
    add [hl]
    nop
    ld l, c
    add l
    nop
    ld l, [hl]
    ld bc, $101c

jr_054_7fcf:
    add e
    nop
    ld [hl], h
    add l
    nop
    ld a, d
    adc b
    rst $28
    ld [bc], a
    inc l
    rra
    rra
    adc a
    rst $08
    inc bc
    cp $c0
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
