; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    cpl
    rst $38
    add hl, bc
    nop
    add c
    cp $01
    ld a, [hl]
    ld bc, $ff00
    stop
    ld b, e
    rst $20
    stop
    nop
    ld d, b
    rst $38
    nop
    inc b
    db $e3
    nop
    pop hl
    nop
    ret nz

    ld h, h
    inc b
    inc bc
    nop
    add a
    nop
    rst $00
    ld h, e
    ld [bc], a
    rst $38
    rst $38
    nop
    adc c
    sbc a
    rrca
    rst $38
    nop
    add b
    nop
    or h
    nop
    xor c
    nop
    sub e

jr_00c_4033:
    nop
    and a
    nop
    adc [hl]
    nop
    sbc l
    nop
    and e
    adc a
    ldh [$2b], a
    jp hl


    ld [bc], a
    pop de
    ld [bc], a
    and c
    ld [bc], a
    ld b, c
    ld [bc], a
    add c
    ld [bc], a
    dec b
    ld [bc], a
    ld a, a
    ccf
    db $db
    ld h, a
    call nc, $eaa3
    or l
    ret nz

    cp a
    ld [$ddbf], a
    cp a
    rst $38
    cp a
    adc [hl]
    db $fc
    xor e
    ld b, $51
    add l
    rst $38
    dec b
    ld d, e
    xor l
    daa
    db $fd
    ld e, e
    db $fd
    rst $38
    db $fd
    ld c, a
    rst $38
    nop
    ldh [$3f], a
    xor b
    add b
    push af
    ldh [$fa], a
    ld hl, sp-$04
    db $fc
    ld a, [hl]
    db $fc
    dec a
    cp $fa
    ld hl, sp-$0c
    ldh [$a8], a
    nop
    ld d, a
    inc hl
    xor a
    inc c
    dec d
    jr jr_00c_4033

    ld sp, $316e
    ld a, e
    ld [hl], h
    ld e, l
    ld l, d
    cp $7e
    db $fd
    add e
    ld [$7315], a
    rst $38
    ld [hl], h
    adc a
    xor b
    rla
    rst $30
    rrca
    ld e, a
    cp b
    xor b
    nop
    push bc
    ret nz

    ld [hl+], a
    add sp, -$6c
    ld [hl], b
    cp d
    ld hl, sp+$65
    sbc $72
    adc [hl]
    ld [$4f96], a
    rst $38
    nop
    rlca
    ld a, [hl]
    ld a, [hl]
    cp l
    cp l
    db $db
    db $db
    rst $20
    rst $20
    rst $00
    add b
    inc c
    ld a, l
    rst $38
    add e
    ld a, l
    ld a, l
    ld bc, $8315
    ld bc, $83ff
    rst $38
    ld a, a
    ld [hl+], a
    rst $38
    ld b, l
    cp $01
    ld bc, $ff00
    ld b, l
    rst $28
    db $10
    ld [$ff00], sp
    cp [hl]
    rst $38
    push af
    rst $38
    rst $18
    rst $38
    ei
    jr z, @+$01

    ld bc, $01fe
    ld b, e
    ld bc, $00ff
    rst $38
    ld b, h
    rst $38
    db $10
    inc bc
    cp d
    rst $38
    ld d, l
    rst $38
    adc e
    nop
    ld b, [hl]
    jp $4800


    dec de
    cp d
    nop
    or h
    nop
    xor b
    nop
    sub b
    nop
    and b
    nop
    add c
    nop
    add b
    ld a, a
    rst $38
    nop
    dec c
    ld [bc], a
    add hl, de
    ld [bc], a
    ld sp, $6502
    ld [bc], a
    ret


    ld [bc], a
    sub l
    ld [bc], a
    and e
    adc a
    rra
    sbc a
    cp a
    rst $18
    add c
    pop bc
    cp a
    pop bc
    rst $38
    rst $38
    cp a
    rst $38
    adc b
    ld c, h
    ei
    cp a
    ld a, a
    ld sp, hl
    db $fd
    ld sp, hl
    inc bc
    add c
    ld a, a
    add e
    ld a, a

jr_00c_4130:
    db $fd
    rst $38
    pop de
    ccf
    ld [de], a
    rst $38
    db $fd
    cp $4f
    ld b, b
    cp a
    inc bc
    rst $38
    nop
    ld b, d
    add c
    jp $01d9


    rst $30
    db $10
    push bc
    db $dd
    ldh [$2f], a
    xor [hl]
    pop bc
    or l
    set 3, d
    and l
    or b
    rst $18
    jp c, Jump_00c_6f7f

    ld a, a
    ld e, $1f
    rla
    rlca
    sbc d
    ld [hl], b
    ld e, l
    ldh [$97], a
    add sp, $2d
    ld a, [c]
    add c
    rst $38
    ret nc

    rst $38
    push hl
    rst $38
    jp nc, $95ff

    ld l, a
    jp $953f


    ld a, a
    ld a, a
    cp a
    ld a, [de]
    cp $f7
    cp $7a
    ld hl, sp-$0c
    ldh [$62], a
    ldh [rNR43], a
    ld b, h
    nop
    xor d
    ld l, h
    sub d
    jr z, jr_00c_41d7

    db $10
    ld l, h
    add $38
    ld l, h
    db $10
    xor b
    nop
    ld d, l
    jr nz, jr_00c_4130

    ld [$0014], sp
    xor d
    nop
    ld d, l
    ld [bc], a
    ld a, [bc]
    nop
    inc d
    nop
    ld a, a
    ld a, a
    call z, $91cf
    sbc [hl]
    ld b, e
    and d
    cp h
    dec b
    pop bc
    cp $c0
    rst $38
    ldh [rIE], a
    xor a
    adc a
    nop
    add b
    ld b, [hl]
    add b
    sbc a
    add hl, bc
    sub b
    adc a
    sub a
    adc b
    sub h
    res 2, a
    cp b
    ld bc, $4503
    ld sp, hl
    rlca
    ld [de], a
    add hl, bc
    rst $20
    jp hl


    rlca
    dec hl
    rst $00
    db $ed
    rrca
    pop bc
    ld a, [bc]
    and d
    dec d
    ld a, a
    nop
    cp $00
    rst $38
    nop
    ei
    add h
    ld bc, $0544
    dec h

jr_00c_41d7:
    ret nz

    ld l, a
    add b
    ld h, e
    adc b
    ld c, c
    ld l, a
    add b
    dec b
    ld a, [bc]
    rlca
    ld sp, hl
    rlca
    pop hl
    rla
    ld c, c
    ld sp, hl
    rlca
    add e
    ld bc, HeaderOldLicenseeCode
    di
    ld [$ff49], sp
    nop
    rrca
    ld a, l
    ld [bc], a
    cp $01
    ccf
    ret nz

    rst $30
    nop
    db $eb
    inc b
    rst $10
    ld [$10ef], sp
    cp $00
    or b
    ld bc, $0590
    rst $38
    add b
    add b
    cp a
    add b
    and b
    ld c, b
    add b
    xor a
    rlca
    rst $38
    rst $38
    inc bc
    ld bc, $03fd
    dec c
    inc bc
    ld b, a
    push af
    dec bc
    rrca
    ld hl, sp-$07
    adc [hl]
    adc c
    adc a
    adc a
    ld hl, sp-$08
    ret z

    adc b
    rst $08
    adc a
    call z, $fc88
    ld hl, sp-$3b
    nop
    ld d, $e0
    add hl, sp
    add b
    rst $38
    ld hl, sp-$08
    adc a
    adc b
    adc a
    adc a
    rst $38
    ld sp, hl
    xor c
    ld bc, $2757
    cp a
    rra
    ccf
    ccf
    cp a
    ld a, $7e
    dec a

jr_00c_4248:
    rra
    rra
    rla
    rlca
    rst $38
    rst $38
    ld l, a
    rst $38
    xor b
    ld a, a
    add b
    ld a, a
    ld [$61ff], sp
    rst $18
    call z, $ffbf
    rst $38
    reti


    rst $18
    adc $ce
    ld [c], a
    ld [c], a
    or c
    or c
    cp h
    cp h
    cp a
    cp a
    sbc a
    sbc a
    add b
    add b
    xor a
    adc a
    rlca
    sub l
    jp z, $b897

    sub h
    adc e
    sub a
    adc b
    jp $2802


    inc bc
    ld e, a
    ret nz

    ccf
    rst $38
    add e
    ld [bc], a
    inc a
    inc bc
    xor c
    ld b, a
    jp hl


    rlca
    jp $3802


    dec bc
    ld a, [$fc07]
    rst $38
    nop
    rst $38
    ld c, $81
    ld d, c
    adc a
    ld h, c
    sbc a
    ld b, e
    ld b, c
    cp a
    dec b
    ccf
    rst $38
    add b
    ld a, a
    ld l, a
    add b
    add l
    ld [bc], a
    ld d, d
    ld [$8f50], sp
    jr nz, jr_00c_4248

    ld b, b
    cp a
    ld a, a
    rst $38
    ld sp, hl
    add [hl]
    ld [bc], a
    ld h, c
    ld bc, $fb05
    add l
    ld bc, $0032
    rst $38
    add h
    ld [bc], a
    ld [hl], c
    add a
    nop
    ld b, h
    add e
    adc [hl]
    inc c
    add b
    ld a, a
    add hl, de
    rst $20
    inc h
    jp $e718


    ld b, d
    rst $38
    dec a
    cp $72
    adc d
    ld bc, $c32f
    ld bc, $013e
    rst $38
    rst $38
    ld b, e
    xor a
    add b
    rlca
    or b
    adc a
    and b
    sbc a
    cp a
    add b
    ret nz

    cp a
    and e
    sub a
    ld b, e
    push af
    dec bc
    ld b, e
    dec b
    ei
    ld bc, $03fd
    add l
    and a
    ld bc, $888c
    add e
    ld [bc], a
    call nz, $8803
    ld hl, sp-$71
    rst $38
    and l
    adc a
    ld [$89ef], sp
    rst $28
    adc a
    jp hl


    adc a
    ld sp, hl
    rst $38
    adc c
    ld [hl+], a
    adc a
    nop
    ld sp, hl
    and e
    ld bc, $0e2d
    ccf
    ret nz

    ld b, b
    sbc a
    cp a
    or e
    cp a
    and c
    or e
    and l
    or e
    or e
    cp a
    xor a
    cp a
    and e
    adc a
    ldh [rNR43], a
    sbc c
    db $fd
    dec c
    sbc l
    dec h
    sbc l
    add c
    push hl
    ret


    ld h, l
    push hl
    db $fd
    ld e, $e1
    ld hl, sp-$01
    adc c
    rst $38
    cp a
    rst $08
    cp b
    rst $08
    ei
    db $fc
    adc e
    db $fc
    cp a
    rst $08
    and c
    ld e, a
    xor a
    rst $38
    ld d, a
    rst $38
    cp a
    and h
    ld bc, $0525
    adc a
    rst $38
    sbc a
    rst $28
    cp b
    rst $08
    ld b, l
    cp e
    call z, $fb0e
    db $fc
    sbc e
    db $ec
    adc a
    rst $38
    adc b
    rst $38
    sbc c
    rst $28
    ld sp, hl
    rst $38
    adc c
    rst $38
    sbc a
    ld b, [hl]
    rst $28
    sbc c
    ldh [$3c], a
    adc c
    rst $38
    ld a, a
    ld a, a
    ret nc

    ret nc

    ldh [$60], a
    ret nz

    ret nz

    add c
    add b
    adc d
    add b
    push de
    add b
    db $f4
    adc e
    cp $f6
    dec sp
    dec bc
    ld d, a
    ld b, $bb
    rlca
    ld d, a
    dec bc
    xor a
    dec d
    ld e, a
    xor e
    cp a
    ld b, l
    db $eb
    sub h
    rst $38
    jp nc, $edff

    rst $38
    jp c, $fff7

    dec a
    rst $38
    rst $28
    ld a, a
    db $d3
    cp [hl]
    ld a, a
    sbc e
    ei
    xor a
    push af
    ld e, a
    rst $28
    cp a
    ld d, a
    rst $38
    db $fc
    and e
    adc a
    dec bc
    dec a
    rst $38
    rst $38
    or h
    sbc b
    db $fc
    xor a
    rst $30
    ret c

    xor a
    ldh a, [$ef]
    ld b, h
    or b
    xor a
    and e
    adc a
    inc bc
    scf
    db $fd
    db $eb
    rra
    and a
    adc a
    call nz, $0a91
    or b
    xor a
    ldh a, [$d7]
    ld hl, sp-$54
    rst $38
    call nc, $ffb8
    rst $38
    xor a
    adc a
    add e
    ld bc, $0a4c
    db $f4
    inc bc
    ld a, [$dd74]
    db $76
    db $fc
    ld [hl], a
    add e
    ld a, a
    nop
    call nz, $9503
    ldh [rSCX], a
    rlca
    ld sp, hl
    dec bc
    dec b
    db $fd
    rlca
    dec b
    rst $38
    ld sp, hl
    rst $38
    ld bc, $c3ff
    jp $acbc


    ld a, a
    ld e, d
    ld d, h
    di
    dec a
    dec [hl]
    rst $30
    cpl
    rst $08
    ld a, a
    xor a
    rst $38
    jp $3fc3


    dec [hl]
    rst $38
    ld e, d
    ld a, [de]
    rst $28
    xor h
    cp h
    db $ed
    or $f2
    rst $38
    push af
    rst $38
    rlc b
    add b
    rla
    ld bc, $022e
    ld e, h
    add h
    jr c, jr_00c_4423

    ld [hl], c
    sub b
    ld h, d
    and b
    ld b, l
    rst $38
    nop
    add c

jr_00c_4423:
    ld a, [hl]
    and l
    ld e, d
    add c
    ld a, [hl]
    add l
    add l
    jp $4300


    dec b
    ld a, [hl]
    nop
    ld e, d
    nop
    ld a, [hl]
    nop
    rst $00
    add c
    add e
    ld bc, $045c
    rst $38
    nop
    ld a, a
    nop
    ld bc, $f5c5
    inc b
    rst $38
    ld a, a
    add b
    ld b, d
    add b
    push bc
    adc [hl]
    ld bc, $807f
    add l
    sub c
    dec c
    and b
    ret nz

    db $dd
    add b
    cp c
    add h
    or c
    adc b
    and [hl]
    add b
    sbc [hl]
    add c
    or l
    adc h
    and h
    adc a
    inc de
    ld b, l
    cp l
    ld b, e
    adc l
    inc de
    ld h, l
    add e
    ld a, c
    add e
    xor l
    ld [hl], e
    xor l
    sbc h
    or l
    adc h
    cp c
    add h
    cp a
    add b
    rst $38
    add [hl]
    inc bc
    xor c
    add hl, bc
    or l
    ld a, e
    xor l
    ld [hl], e
    sbc l
    ld h, e
    db $fd
    inc bc

Call_00c_4480:
    ld sp, hl
    rlca
    add a
    inc bc
    ld l, d
    nop
    cp a
    add l
    reti


    ld bc, $ff00
    add d
    add a
    rlc c
    ld c, e
    ld [bc], a
    cp $00
    db $fd
    add h
    sub e
    rlca
    ld bc, $80fe
    ld a, a
    ld [de], a
    db $ed
    inc l
    rst $38
    add l
    ld [bc], a
    ld [hl], l
    nop
    rst $30
    adc d
    sbc a
    ld b, e
    ld sp, hl
    nop
    ld [bc], a
    rst $20
    nop
    rst $20
    and e
    ld [bc], a
    ld c, c
    ld bc, $7f00
    add [hl]
    sub l
    rrca
    cp l
    cp a
    or [hl]
    cp l
    db $dd
    ld d, h
    ld a, $f7
    inc de
    ccf
    db $eb
    dec de
    xor $14
    inc bc
    rst $38
    and e
    adc a
    dec bc
    cp d
    dec hl
    ld a, h
    rst $28
    ret


    cp $db
    call c, $3867
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    ld d, h
    ld e, c
    ld d, e
    ld d, e
    ld d, h
    ld e, c
    ld d, e
    ld d, e
    ld d, h
    ld e, c
    ld d, e
    ld d, e
    ld d, h
    ld e, c
    ld d, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    ld a, $3f
    rlca
    ld [$1817], sp
    rla
    jr jr_00c_4530

    ld [$0303], sp
    rla
    jr @+$05

    inc bc

jr_00c_4530:
    rlca
    ld [$3f3e], sp
    rla
    jr jr_00c_454e

    jr jr_00c_453c

    inc bc
    inc bc
    inc bc

jr_00c_453c:
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld [$3f3e], sp
    rla
    jr @+$19

    jr @+$05

    inc bc
    rlca
    ld [$0303], sp

jr_00c_454e:
    rla
    jr @+$09

    ld [$0807], sp
    rla
    jr @+$19

    jr jr_00c_4597

    ccf
    ld a, $3f
    rla
    jr jr_00c_4576

    jr jr_00c_459f

    ccf
    inc bc
    inc bc
    rla
    jr jr_00c_456a

    inc bc
    ld a, $3f

jr_00c_456a:
    inc bc
    inc bc
    rla
    jr @+$05

    inc bc
    ld bc, $0101
    ld bc, $0101

jr_00c_4576:
    ld bc, $1301
    inc de
    ld bc, $1201
    ld [de], a
    ld bc, $0301
    inc bc
    ld a, $3f
    inc bc
    inc bc
    rla
    jr jr_00c_458c

    inc bc
    ld a, $3f

jr_00c_458c:
    inc bc
    inc bc
    rla
    jr jr_00c_4594

    inc bc
    inc bc
    inc bc

jr_00c_4594:
    inc bc
    inc bc
    inc bc

jr_00c_4597:
    inc bc
    rlca
    ld [$0303], sp
    rla
    jr @+$05

jr_00c_459f:
    inc bc
    rlca
    ld [$0303], sp
    rla
    jr jr_00c_45aa

    inc bc
    ld a, $3f

jr_00c_45aa:
    rlca
    ld [$1817], sp
    rla
    jr jr_00c_45b4

    inc bc
    inc bc
    inc bc

jr_00c_45b4:
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, $3f
    rlca
    ld [$1817], sp
    rla
    jr @+$05

    inc bc
    rlca
    ld [$0303], sp
    rla
    jr @+$09

    ld [$3f3e], sp
    rla
    jr jr_00c_45e6

    jr jr_00c_45d8

    ld [$0303], sp
    rla
    jr jr_00c_45da

    inc bc

jr_00c_45d8:
    inc bc
    inc bc

jr_00c_45da:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [hl+]
    dec hl
    ld bc, $3a01
    dec sp

jr_00c_45e6:
    ld bc, $2a01
    dec hl
    ld bc, $3a01
    dec sp
    ld bc, $0301
    inc bc
    rlca
    ld [$0303], sp
    rla
    jr jr_00c_45fc

    inc bc
    inc bc
    inc bc

jr_00c_45fc:
    inc bc
    inc bc
    inc bc
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, $1f
    ld e, $1f
    rra
    rra
    rra
    rra
    ld e, $1e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld [$0303], sp
    rla
    jr @+$29

    ld h, $25
    daa
    scf
    ld [hl], $35
    scf
    dec h
    daa
    daa
    ld h, $35
    scf
    scf
    ld [hl], $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $0101
    ld bc, $1101
    ld de, $1111
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $3901
    add hl, sp
    add hl, sp
    add hl, sp
    ld [bc], a
    ld e, e
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $1301
    inc de
    inc de
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld bc, $2a01
    dec hl
    ld bc, $3a01
    dec sp
    ld bc, $2a01
    dec hl
    ld bc, $3a01
    dec sp
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    jr c, @+$03

    ld bc, $0202
    add hl, sp
    add hl, sp
    ld e, e
    ld [bc], a
    ld [bc], a
    ld e, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    jr nz, jr_00c_46d3

    ld bc, $3001
    ld sp, $0101
    ld [hl+], a
    inc hl
    ld bc, $3201
    inc sp
    ld bc, $0101
    ld bc, $2120
    ld bc, $3001
    ld sp, $0101
    ld [hl+], a
    inc hl
    ld bc, $3201
    inc sp
    inc de
    inc de
    inc de

jr_00c_46d3:
    inc de
    inc de
    inc de
    inc de
    inc de
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc h
    inc h
    inc h
    inc h
    ld e, e
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $3801
    ld [bc], a
    ld bc, $0b01
    inc c
    dec c
    rra
    dec de
    inc e
    dec e
    rra
    ld l, $2f
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld de, $1111
    ld de, $0101
    ld bc, $2a01
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    ld e, l
    ld c, $0e
    ld c, $5a
    ld e, h
    ld c, $5c
    ld c, $5d
    ld e, d
    ld c, $0e
    ld e, d
    ld c, $03
    inc bc
    jr nz, jr_00c_4755

    inc bc
    inc bc
    jr nc, jr_00c_4769

    inc bc
    inc bc
    ld [hl+], a
    inc hl
    inc bc
    inc bc
    ld [hl-], a
    inc sp
    jr nz, jr_00c_4763

    inc bc
    inc bc
    jr nc, @+$33

    inc bc
    inc bc
    ld [hl+], a
    inc hl
    inc bc
    inc bc
    ld [hl-], a
    inc sp
    inc bc
    inc bc
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc h

jr_00c_4755:
    inc h
    inc h
    inc h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld bc, $0101

jr_00c_4763:
    ld bc, $0101
    ld bc, $0101

jr_00c_4769:
    ld bc, $4140
    ld bc, $4201
    ld b, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2d2c
    ld bc, $3c01
    dec a
    dec h
    daa
    daa
    ld h, $35
    scf
    scf
    ld [hl], $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    jr c, jr_00c_4796

    jr c, jr_00c_4798

jr_00c_4796:
    ld e, e
    ld [bc], a

jr_00c_4798:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, e
    ld [bc], a
    ld [bc], a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, e
    ld [bc], a
    jr c, @+$04

    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0605
    dec b
    ld b, $15
    ld d, $15
    ld d, $05
    ld b, $28
    jr z, jr_00c_47e2

    ld d, $28
    jr z, @+$07

    ld b, $05
    ld b, $15
    ld d, $15
    ld d, $28
    jr z, @+$07

    ld b, $28
    jr z, @+$17

    ld d, $4e
    ld c, a

jr_00c_47e2:
    ld bc, $5e01
    ld e, a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2828
    dec b
    ld b, $28
    jr z, @+$17

    ld d, $05
    ld b, $05
    ld b, $15
    ld d, $15
    ld d, $05
    ld b, $28
    jr z, @+$17

    ld d, $28
    jr z, @+$07

    ld b, $05
    ld b, $15
    ld d, $15
    ld d, $55
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $3901
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    dec b
    ld b, $2a
    dec hl
    dec d
    ld d, $3a
    dec sp
    dec b
    ld b, $2a
    dec hl
    dec d
    ld d, $3a
    dec sp
    ld a, [hl+]
    dec hl
    dec b
    ld b, $3a
    dec sp
    dec d
    ld d, $2a
    dec hl
    dec b
    ld b, $3a
    dec sp
    dec d
    ld d, $25
    daa
    daa
    ld h, $35
    scf
    scf
    ld [hl], $4c
    ld c, l
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    dec b
    ld b, $05
    ld b, $15
    ld d, $15
    ld d, $05
    ld b, $05
    ld b, $15
    ld d, $15
    ld d, $02
    ld [bc], a
    ld bc, $0201
    jr c, @+$03

    ld bc, $4544
    add hl, sp
    add hl, sp
    ld b, [hl]
    ld b, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, e
    ld bc, $0201
    ld [bc], a
    ld bc, $4401
    ld b, l
    ld bc, $4601
    ld b, a
    ld bc, $4801
    ld c, c
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld de, $1111
    ld de, $0101
    ld bc, $2501
    ld h, $01
    ld bc, $3635
    ld bc, $2501
    ld h, $01
    ld bc, $3635
    ld bc, $2501
    daa
    daa
    ld h, $35
    scf
    scf
    ld [hl], $1a
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec h
    daa
    daa
    ld h, $35
    scf
    scf
    ld [hl], $25
    ld h, $10
    db $10
    dec [hl]
    ld [hl], $10
    db $10
    rlca
    rlca
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
    nop
    nop
    ld [hl], b
    ld [hl], b
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    nop
    ld h, b
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
    rlca
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
    nop
    ld [hl], d
    ld [hl], d
    nop
    nop
    rlca
    rlca
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
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    nop
    rlca
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
    nop
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
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    ld [hl], d
    rlca

jr_00c_4989:
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
    nop
    nop
    inc hl
    inc hl
    inc hl
    nop
    inc hl
    inc hl
    nop
    inc hl
    rlca
    nop
    nop
    nop
    nop
    inc hl
    inc hl
    inc hl
    inc hl
    nop
    inc hl
    inc hl
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc hl
    rlca
    inc hl
    rlca
    rlca
    inc hl
    rlca
    inc hl
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc hl
    inc hl
    inc hl
    inc hl
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca

jr_00c_49d9:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld l, a
    ld c, $a8
    nop
    ld d, l
    jr nz, jr_00c_4989

    ld [$0014], sp
    xor d
    nop
    ld d, l
    ld [bc], a
    ld a, [bc]
    nop
    inc d
    ld h, d
    ld [bc], a

jr_00c_49f3:
    ld b, c
    nop
    ld [$0262], sp
    add b
    nop
    ld bc, $1162
    ld b, b
    nop
    and d
    inc c
    ld c, l
    ld [de], a
    sub d
    dec l
    ld [de], a
    ld l, l
    ld c, h
    or d
    ld b, c
    cp h
    or d
    ld c, b
    ld b, l
    jr nc, @+$64

    ld c, $44
    nop
    xor d
    ld l, h
    sub d
    jr z, jr_00c_4a6c

    db $10
    ld l, h
    add $38
    ld l, h
    db $10
    ld a, [hl]
    ld a, [hl]
    ld b, a
    ld a, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld e, [hl]
    inc c
    ld a, [hl]
    ld a, [hl]
    inc b
    nop
    ld a, [bc]
    nop
    ld de, $2a00
    nop
    ld b, h
    nop
    jr z, jr_00c_49d9

    rst $00
    inc bc
    rst $38
    rst $38
    add b
    add b
    adc c
    add e
    ld bc, $7848
    jp $898e


    add e
    ld bc, $3c24
    adc c
    adc e
    nop
    rrca
    add [hl]
    adc a
    ld bc, HeaderManufacturerCode
    ld [hl+], a
    rst $38
    add [hl]
    add e
    ld bc, $1e12
    adc a
    nop
    db $10
    ldh [rSCX], a
    xor c
    ld bc, $2257
    xor l

jr_00c_4a61:
    ld c, $16
    jr c, jr_00c_4a61

    ld l, c
    xor [hl]
    ret nc

    ld d, a
    ld l, b
    ld l, d
    ld [hl], l

jr_00c_4a6c:
    cp c
    cp e
    ld [hl], a
    adc $55
    jr nz, jr_00c_49f3

    nop
    ld a, [bc]
    ld b, b
    inc d
    and c
    ld a, [$bf00]
    ld b, b
    cp e
    cp e
    ld e, [hl]
    call $08b7
    ld e, a
    nop
    cp l
    ld [bc], a
    ld c, $51
    ld e, a
    and b
    ld a, [$a805]
    nop
    push de
    ret nz

    ld a, [hl-]
    ldh a, [$ac]
    ld e, h

jr_00c_4a94:
    ld e, [hl]
    or h
    and e
    ld e, [hl]
    pop bc
    ccf
    and [hl]
    ld e, [hl]
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld c, e
    db $dd
    jp nz, $fb83

    ld c, e
    db $dd
    ld [hl+], a
    inc bc
    cp $fe
    rlca
    inc bc
    ld c, e
    db $db
    daa
    dec b
    ld h, a
    ld b, a
    ld a, b
    ld b, b
    ld a, a
    ld b, b
    ld b, e

jr_00c_4ab8:
    ccf
    jr nz, jr_00c_4abe

    rra
    jr jr_00c_4ac5

jr_00c_4abe:
    rlca
    ld h, d
    inc bc
    cp $00
    ei
    nop

jr_00c_4ac5:
    ld b, e
    rst $38
    nop
    ld [bc], a
    rst $28
    nop
    rst $38
    and h
    adc c
    ld c, h
    ld bc, $017e
    nop
    rst $38
    or c
    nop
    ld h, b
    adc e
    nop
    ld [hl], d
    ld bc, $8087
    add l
    nop
    sub h
    dec b
    rlca
    nop
    rst $38
    rst $38
    ld a, a
    nop
    ld [hl+], a
    rst $38
    add a
    add a
    adc e
    add e
    nop
    ld bc, $838b
    ldh [rVBK], a
    ld c, d
    nop
    sub h
    ld [$0008], sp
    ld b, d
    nop
    db $10
    db $10
    ld l, b
    jr c, jr_00c_4ab8

    jr z, jr_00c_4b2e

    jr z, jr_00c_4a94

    rst $28
    ld c, d
    ld a, a
    dec [hl]
    ccf
    ld b, b
    ld a, a
    jp hl


    ld a, a
    ld a, e
    ccf
    rra
    rra
    rlca
    rrca
    ld e, l
    and d
    xor d
    ld d, l
    ld b, c
    cp [hl]
    dec b
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    ld [hl], d
    rst $38
    rst $30
    rst $38
    ld d, l

jr_00c_4b24:
    xor d
    xor d
    ld d, l
    ld [de], a
    rst $28
    ld b, c
    rst $38
    add b
    rst $38
    inc b

jr_00c_4b2e:
    rst $38
    ld l, $ff
    ld e, a
    rst $38
    ld b, d
    cp [hl]
    add hl, bc
    rst $38
    and c
    rst $38
    ld b, d
    cp $12
    cp $5d
    cp $7a
    ld hl, sp-$1c
    ldh a, [$50]
    db $dd
    jp nz, $224e

    db $dd
    ld c, a
    db $db
    daa
    rrca
    inc bc
    inc bc
    inc c
    inc c
    dec de
    inc de
    inc [hl]
    inc h
    xor d
    jr z, jr_00c_4bc5

    xor d
    xor d

jr_00c_4b5a:
    jr z, jr_00c_4b94

    jr z, @-$5b

    adc a
    dec bc
    ret z

    ret c

    inc [hl]
    inc l
    cp [hl]
    inc d
    ld e, l
    inc d
    ld e, $14
    sub h
    inc a
    ld h, c
    dec c
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    rst $38
    add e
    call z, $dbbc
    or e
    ld [hl], h
    rst $20
    xor a
    jr z, jr_00c_4b24

    adc a
    rlca
    ld sp, $c93f
    rst $18
    ld [hl], $ef
    cp $14
    inc hl
    rst $38
    ld b, e
    ld c, b
    ld e, a
    ld bc, $7c78
    ld h, l
    ld [bc], a
    rst $38
    rst $38
    rst $38

jr_00c_4b94:
    ld b, e
    rst $38
    nop
    nop
    rst $38
    ld h, c
    sbc c
    adc a
    ld b, e
    ld [de], a
    or $a7
    xor a
    add [hl]
    rst $08
    nop
    add c
    ld b, e
    pop bc
    cp a
    jp $0588


    xor c
    inc bc
    ld d, l
    jr nz, jr_00c_4b5a

    nop
    add l
    nop
    or [hl]
    ldh [rNR51], a
    dec bc
    inc bc
    rra

jr_00c_4bb9:
    rrca
    rst $38
    rst $38
    cp a
    rst $38
    db $db
    cp a
    ld l, d
    ld e, a
    ld [hl], b
    ld a, a
    ld h, c

jr_00c_4bc5:
    ld a, a
    push hl
    ei
    push hl
    db $db
    ei
    rst $38
    rst $30
    ei
    ld [hl], $fe
    ld e, $fe
    sub $fe
    jp nc, Jump_00c_537e

    rst $38
    ld b, e
    rst $38
    xor b
    ret nz

    add e
    xor a
    nop
    db $10
    add h
    xor a
    ld [bc], a
    jp z, $f4c0

    adc b
    ld bc, $07ff
    ldh [$df], a
    rst $38
    rst $38
    ret nz

    cp a
    rst $38
    rst $38
    ld b, a
    db $dd
    ld [hl+], a
    add a
    ld bc, $889b
    ld [bc], a
    jr z, jr_00c_4c1e

    rst $38
    add e
    add e
    ld bc, $1825
    adc l
    rst $38
    ld bc, $0854
    adc c
    adc a
    ld bc, $7f7f
    ld h, c
    inc e
    ld l, l
    jr z, jr_00c_4bb9

    jr z, jr_00c_4c4b

    ld a, [hl+]
    ld hl, $0a18
    inc b
    ld b, d
    ld bc, $40a8
    ld b, b
    nop

jr_00c_4c1e:
    ld e, l
    inc d
    inc e
    inc d
    sub h
    inc a
    ld d, h
    ld [$0402], sp
    add [hl]
    nop
    ld hl, sp+$64
    dec c
    ld a, a
    ld a, a
    sbc $c1
    cp a
    sbc a
    rst $38
    cp a
    push af
    cp a
    ld [$f5b5], a
    xor b
    add e
    ld [bc], a
    sbc [hl]
    ld [bc], a
    ld a, [hl]
    ld bc, $227f
    rst $38
    nop
    ld d, l
    and e
    ld bc, $a5df
    sbc a

jr_00c_4c4b:
    ld a, [bc]
    inc bc
    ld a, l
    ld sp, hl
    rst $38
    db $fd
    ld d, a
    db $fd
    xor a
    ld d, l
    ld d, a
    dec b
    ld l, b
    ld b, $22
    ld b, d
    ld de, $1922
    ld [hl-], a
    dec c
    ld h, a
    inc c
    jr nz, jr_00c_4c68

    ld [hl+], a
    ld [$1864], sp

jr_00c_4c68:
    ld l, h
    sub b
    cp a
    rra
    ld a, a
    ccf
    cp a
    ld [hl+], a
    ccf
    ld c, $bf
    rra
    ld e, a
    rrca
    dec bc
    inc bc
    dec d
    nop
    add sp, -$21

jr_00c_4c7c:
    ret z

    cp a
    or e
    ld a, l
    and $26
    rst $38
    dec bc
    ccf
    ccf
    db $d3
    rst $28
    dec de
    db $ed
    dec c
    or $67
    cp a
    ccf
    rst $18
    and l
    adc a
    inc b
    ld hl, sp-$08
    db $fd
    db $fc
    cp $22
    db $fc
    rlca
    ld a, [$f5f8]
    ld a, [c]
    jp z, $14c0

    nop
    ld c, a
    ld [hl], b
    ld [de], a
    ld [bc], a
    nop
    nop
    cp $c4
    ld bc, $4342
    rst $28
    nop
    ld h, c
    nop
    ld a, [hl]
    or b
    sbc a
    ld de, $2cb8
    ld a, b
    inc l
    xor c
    inc a
    ld l, d
    inc a
    or c
    inc e
    ld l, h
    jr c, jr_00c_4c7c

    jr z, jr_00c_4cf1

    jr z, jr_00c_4cff

    jr c, jr_00c_4ced

    ld b, h
    inc bc
    ld a, h
    rst $00
    rst $38
    inc e
    add h
    ld [bc], a
    sbc [hl]
    ld h, c
    inc bc
    ccf
    ld a, a
    nop
    add b
    ld [hl+], a
    cp a
    ld b, $a0
    and b
    xor l
    and b
    and l
    and b
    and b
    xor d
    adc a
    inc d
    dec d
    dec b
    ld d, l
    dec b
    dec b
    add sp, -$50
    push af

jr_00c_4ced:
    and b
    ld [c], a
    cp b
    db $f4

jr_00c_4cf1:
    and b
    ld [$f5b0], a
    and d
    ld [$f4b0], a
    and b
    adc a
    nop
    or b
    ldh [$2b], a

jr_00c_4cff:
    xor a
    dec b
    ld d, a
    dec h
    and a
    dec c
    rla
    dec b
    xor a
    dec b
    ld d, a
    dec b
    rrca
    dec b
    rla
    dec b
    ld [de], a
    call Call_00c_651a
    adc c
    ld [hl], $49
    ld d, $64
    dec de
    ld sp, $7c0e
    inc bc
    rra
    nop
    ld c, b
    or e
    ld c, b
    or [hl]
    ld de, $52ec
    xor b
    and [hl]
    ld e, b
    ld c, h
    or b
    and e
    adc a
    ld h, c
    inc e
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    rlca
    inc c
    rrca
    inc c
    dec b
    ld e, $1c
    rla
    ld a, [hl]
    ld a, [hl]
    sbc a
    add c
    rst $38
    inc a
    rst $08
    ld e, d
    db $eb
    rst $00
    ld h, [hl]
    rst $38
    cp l
    ld a, [hl]
    ld a, a
    and h
    sbc a
    ld [bc], a
    ret nz

    ld b, b
    ldh [$a6], a
    sbc a
    ld de, $f82c
    db $dd
    ld [hl+], a
    xor d
    ld d, l
    ld [hl], l
    adc d
    xor e
    ld d, h
    push de
    ld a, [hl+]
    xor [hl]
    ld d, c
    ld d, l
    xor d
    cp e
    ld b, h
    ld b, e
    ld [hl], b
    ld [de], a
    inc c
    ld a, b
    ld [de], a
    ld a, l
    ld [de], a
    ld a, h
    inc de
    ld l, h
    dec de
    ld [hl], a
    rrca
    ld a, a
    nop
    xor d
    add $02
    sbc h
    rst $00
    ld [bc], a
    sub [hl]
    xor a
    sbc a
    rrca
    ld a, b
    inc l
    cp c
    inc l
    ld l, d
    inc a
    add hl, hl
    inc a
    inc [hl]
    jr @-$79

    jr @+$1a

    nop
    ld b, d
    nop
    ld b, a
    ld [hl], h
    ld c, h
    rlca
    jr c, @+$6e

    nop
    ld a, $00
    rst $38
    nop
    rrca
    ld b, e
    and b
    cp a
    add hl, bc
    ldh [$a0], a
    rst $38
    cp a
    ldh [$a0], a
    ldh [$bf], a
    ld b, b
    rst $38
    ld h, c
    xor a
    adc a
    rrca
    cp a
    sbc a
    sbc a
    ret nz

    add c
    rst $38
    pop bc
    rst $38
    rst $38
    cp a
    cp a
    ret nc

jr_00c_4dbb:
    ret c

    rst $30
    rst $38
    ld a, a
    add e
    ld bc, $4390
    add c
    ld a, a
    ld [hl+], a
    rst $38
    ld de, $1810
    rst $30
    rst $38
    rst $38
    db $fd
    ld sp, hl
    ld a, c
    inc bc
    add c
    ld a, a
    add e
    ld a, a
    db $fd
    rst $38
    ld sp, hl
    rla
    inc de
    and d
    sbc h
    call nz, $3f01
    ld a, [bc]
    jr jr_00c_4e09

    jr nz, jr_00c_4dec

    daa
    ld d, b
    ld c, a
    ld d, e
    ld c, a
    ld h, a
    ld c, a
    ld h, c

jr_00c_4dec:
    add h
    ld [bc], a
    ld b, b
    ld d, $08
    jr nz, jr_00c_4dbb

    inc d
    db $e4
    sub h
    db $e4
    call nz, $1eec
    rla
    ld d, $1b
    rla
    add hl, de
    dec bc
    inc c
    ld [$040e], sp
    rlca
    inc bc
    inc bc
    ld h, c
    dec bc

jr_00c_4e09:
    inc h
    jp $ff00


    add c
    rst $38
    cp h
    ld a, a

jr_00c_4e11:
    rst $38
    nop
    ld b, d
    add c
    add e
    dec b
    ld a, [de]
    ld c, $6c
    ld hl, sp+$4e
    ld hl, sp-$72
    ld hl, sp-$22

jr_00c_4e20:
    jr nc, jr_00c_4e40

    ld [hl], b
    inc a
    ldh [$f8], a
    ret nz

    ldh [$c6], a
    ld [bc], a
    sbc c
    ld [$ff00], sp
    ld b, h
    cp e
    nop
    rst $38
    add d
    ld a, l
    db $10
    ld c, b
    rst $38
    nop
    rlca
    inc bc
    rst $38
    inc e
    rst $38
    scf
    ld hl, sp+$29

jr_00c_4e40:
    ldh a, [$ab]
    adc a
    ld de, $3fcc
    db $e4
    rra
    add $cc
    daa
    inc e
    rst $20
    inc e
    rst $28
    jr jr_00c_4e20

    jr c, jr_00c_4e11

    ld [hl], b
    ld hl, sp-$40
    db $ec
    pop de
    ld de, $e05f
    ld a, b
    rst $00
    ld b, b
    rst $38
    ldh [$7f], a
    cp d
    ld a, h
    ld e, a
    cp a
    scf
    rst $08
    rrca
    ldh a, [$82]
    ld a, a
    ld b, e
    ld [bc], a
    rst $38
    ld bc, $ee17
    and a
    adc a
    rst $28
    rst $38
    db $ec
    rst $18
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    inc e
    dec e
    ld e, $1f
    inc l
    dec l
    ld l, $2f
    inc a
    dec a
    ld a, $3f
    nop
    ld d, $00
    ld d, $06
    nop
    ld b, $00
    nop
    ld d, $00
    ld d, $06
    nop
    ld b, $00
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0303
    ld bc, $0103
    ld bc, $0101
    ld bc, $0d0c
    ld c, $0f
    inc e
    dec e
    ld e, $1f
    inc l
    dec l
    ld l, $2f
    inc a
    dec a
    ld a, $3f
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    dec d
    dec d
    dec d
    dec d
    dec d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    dec d
    dec d
    dec d
    nop
    inc d
    inc d
    dec d
    dec d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    dec d
    nop
    ld d, $00
    ld d, $06
    nop
    ld b, $00
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    nop
    ld d, $4f
    ld c, a
    ld b, $00
    ld c, a
    ld c, a
    nop
    ld d, $4f
    ld c, a
    ld b, $00
    ld c, a
    ld c, a
    dec d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    dec d
    dec d
    inc d
    inc d
    nop
    dec d
    dec d
    dec d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    nop
    rlca
    ld [$0a09], sp
    rla
    jr jr_00c_4f80

    ld a, [de]
    daa
    jr z, @+$2b

    ld a, [hl+]
    ld b, $00
    ld b, $00
    ld e, d
    ld e, e
    nop
    ld d, $13
    add d
    ld b, $00
    nop
    ld d, $00
    ld d, $06
    nop
    ld b, $00

jr_00c_4f80:
    dec b
    dec hl
    dec h
    ld h, $05
    dec de
    dec [hl]
    ld [hl], $05
    ld b, e
    ld bc, $0501
    ld d, e
    ld bc, $2501
    ld h, $25
    ld h, $35
    ld [hl], $35
    ld [hl], $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $2625
    dec hl
    dec b
    dec [hl]
    ld [hl], $1b
    dec b
    ld bc, $4301
    dec b
    ld bc, $5301
    dec b
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    dec b
    dec de
    ld bc, $0501
    ld b, e
    ld bc, $0501
    ld b, e
    ld bc, $0501
    ld d, e
    ld bc, $4501
    ld b, [hl]
    nop
    ld d, $55
    ld d, [hl]
    ld b, $00
    nop
    ld d, $00
    ld d, $06
    nop
    ld b, $00
    ld bc, $1b01
    dec b
    ld bc, $4301
    dec b
    ld bc, $4301
    dec b
    ld bc, $5301
    dec b
    nop
    ld d, $00
    ld d, $06
    nop
    ld b, $00
    nop
    ld d, $45
    ld b, [hl]
    ld b, $00
    ld d, l
    ld d, [hl]
    dec b
    dec de
    ld bc, $0501
    ld b, e
    ld bc, $0501
    ld d, e
    inc hl
    inc h
    dec b
    dec hl
    inc sp
    inc [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $2301
    inc h
    inc hl
    inc h
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    ld bc, $1b01
    dec b
    ld bc, $4301
    dec b
    inc hl
    inc h
    ld d, e
    dec b
    inc sp
    inc [hl]
    dec hl
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $2301
    inc h
    ld bc, $3301
    inc [hl]
    dec hl
    dec hl
    scf
    jr c, @+$3a

    jr c, @+$49

    inc bc
    ld bc, $4703
    inc bc
    inc bc
    ld bc, $0347
    inc bc
    inc bc
    jr c, jr_00c_508a

    jr c, @+$3a

    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0103
    ld bc, $0303
    inc bc
    jr c, jr_00c_509a

    jr c, @+$3b

    ld bc, $0303
    ld c, c
    inc bc
    ld bc, $4903
    inc bc
    inc bc
    ld bc, $2b49
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, a
    ld bc, $0103
    ld b, a
    inc bc
    ld bc, $4703
    inc bc

jr_00c_508a:
    inc bc
    ld bc, $0347
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc

jr_00c_509a:
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, c
    ld bc, $0303
    ld c, c
    inc bc
    inc bc
    inc bc
    ld c, c
    ld bc, $0303
    ld c, c
    ld bc, $0101
    dec hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, a
    ld bc, $0103
    ld b, a
    inc bc
    ld bc, $4703
    inc bc
    inc bc
    inc bc
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $0303
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc bc
    inc bc
    inc bc
    ld c, c
    ld bc, $0103
    ld c, c
    inc bc
    ld bc, $4903
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec hl
    db $10
    ld de, $1111
    jr nz, jr_00c_5127

    ld hl, $2021
    ld hl, $2121
    jr nz, jr_00c_512f

    ld hl, $1121
    ld de, $1111
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld de, $1111
    ld [de], a
    ld hl, $2121

jr_00c_5127:
    ld [hl+], a
    ld hl, $2121
    ld [hl+], a
    ld hl, $2121

jr_00c_512f:
    ld [hl+], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec hl
    ld bc, $0101
    jr nz, jr_00c_5163

    ld hl, $3021
    ld sp, $3131
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3131
    ld sp, $4131
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121

jr_00c_5163:
    ld [hl+], a
    ld sp, $3131
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    ld b, $5c
    ld e, l
    ld e, [hl]
    nop
    ld d, $00
    ld d, $06
    nop
    ld b, $00
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ld e, a
    inc d
    inc d
    inc d
    add c
    ld e, a
    inc d
    inc d
    sub c
    ld e, a
    inc d
    inc d
    ld e, a
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    dec d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    inc d
    inc d
    inc d
    dec d
    inc d
    inc d
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    scf
    jr c, jr_00c_527b

    jr c, jr_00c_528c

    inc bc
    ld bc, $4703
    inc bc
    inc bc
    inc bc
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    jr c, jr_00c_528a

    jr c, jr_00c_528c

    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0303
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    jr c, jr_00c_529a

    jr c, @+$3b

    ld bc, $0303
    ld c, c
    inc bc
    ld bc, $4903
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    inc d
    inc d
    inc d
    ld e, a
    inc d
    inc d
    ld e, a
    add b
    inc d
    inc d
    ld e, a

jr_00c_527b:
    sub b
    inc d
    inc d
    inc d
    ld e, a
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_528a:
    nop
    nop

jr_00c_528c:
    jr jr_00c_52a6

    jr jr_00c_52a8

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

jr_00c_529a:
    rlca
    rlca
    ld hl, $2121
    ld hl, $0707
    rlca
    rlca
    rlca
    rlca

jr_00c_52a6:
    rlca
    rlca

jr_00c_52a8:
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    ld a, [hl]
    nop
    ld a, [hl]
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
    rlca
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
    rlca
    inc d
    inc d
    inc d
    inc d
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
    rlca
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
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    nop
    rlca
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
    nop
    nop
    nop
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
    inc d
    inc d
    inc d
    inc d
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
    inc d
    inc d

Jump_00c_537e:
    inc d
    inc d
    ld l, a
    rlca
    jp $8100


    nop
    jr jr_00c_5388

jr_00c_5388:
    inc h
    nop
    ret z

    add c
    ld bc, $ffff
    ld h, c
    inc bc
    rst $38
    nop
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    add hl, bc
    rst $38
    nop
    xor d
    ld d, l
    rst $38
    ld a, a
    ld b, b
    ret nz

    ret z

    ld d, e
    ld b, e
    ret nz

    ld b, b
    ld bc, $ce51
    add h
    adc a
    dec c
    cp $03
    ld [bc], a
    inc de
    ld c, d
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld e, d
    rst $38
    rst $38
    add b
    ld c, h
    add b
    cp a
    ld [bc], a
    rst $38
    rst $38
    dec b
    ld c, h
    inc bc
    db $fd
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld c, e
    rst $38
    nop
    ld c, a
    cp a
    add b
    ld c, a
    db $fd
    inc bc
    rlca
    ret nz

    add b
    rst $38
    cp a
    db $e4
    cp a
    or $ad
    ld b, e
    db $ed
    and h
    inc bc
    rst $38
    cp a
    rst $38
    rst $38
    and e
    adc a
    rlca
    add a
    db $fd
    rst $38
    add l
    cp a
    add l
    adc a
    add l
    and e
    adc a
    inc bc
    rst $38
    rst $38
    push de
    xor d
    call nz, Call_00c_4480
    add b
    db $fc
    inc hl
    rst $38
    ld b, $51
    cp a
    or c
    ld e, a
    ld sp, hl
    rst $38
    ld sp, hl
    ld b, h
    rrca
    add hl, bc
    nop
    db $fd
    jr z, @+$01

    ld [bc], a
    ld a, [$f5ff]
    ld [hl+], a
    rst $38
    nop
    ldh [$28], a
    rst $38
    ld [bc], a
    xor e
    rst $38
    ld d, l
    and e
    or h
    add h
    nop
    cpl
    xor c
    add e
    nop
    nop
    adc [hl]
    adc a
    ld [bc], a
    ld d, l
    xor d
    nop
    jp z, $2f00

    add e
    sbc a
    and e
    nop
    ld c, h
    dec b
    ret nz

    ld b, b
    ld b, b
    ret nz

    rst $38
    ld a, a
    add l
    xor a
    add hl, bc
    inc bc
    ld [bc], a
    ld a, [hl-]
    cp e
    dec sp
    ld a, [hl-]
    inc bc
    ld [bc], a
    rst $38
    cp $85
    adc a
    ld bc, $8080
    add e
    add d
    ld b, e
    rst $38
    ld a, a
    nop
    add b
    and h
    sbc $00
    inc bc
    xor [hl]
    adc a
    add $00
    daa
    dec b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    add a
    nop
    jr nz, jr_00c_54a8

    rst $38
    add c
    dec b
    ld b, d
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    nop
    inc b
    ret nz

    cp a
    rst $38
    cp a
    ld a, [$aa45]
    rst $38
    nop
    cp a
    add e
    adc e
    and e
    add e
    nop
    sub a
    ld b, l
    sub l
    rst $38
    and h
    adc a
    ld b, l
    ld hl, sp-$80
    ld bc, $ffff
    ld b, l
    ldh a, [$80]
    ld bc, $ffff
    ld b, l
    dec b
    rlca
    ld bc, $ffff
    dec h
    inc bc
    add [hl]
    nop
    db $ec
    ld b, e
    ret nz

    rst $38
    nop
    rst $38
    inc hl
    add b
    ld bc, $80ff
    and h

jr_00c_54a8:
    nop
    call $0102
    rst $38
    ld bc, $8fa7
    ld e, $9e
    ldh [$9c], a
    ldh [$98], a
    ldh [$91], a
    ldh [$82], a
    ldh [$85], a
    ret nz

    res 0, b
    rst $10
    add b
    dec l
    inc bc
    ld e, a
    ld bc, $01bb
    ld [hl], e
    ld bc, $03e1
    rst $00
    ld bc, $0389
    dec d
    call nz, $6001
    ld bc, $f7b8
    add l
    add e
    ld bc, $ff80
    add l
    cp h
    ld bc, $fb1d
    add l
    add e
    add e
    rrc b
    sbc $ff
    pop hl
    and c
    xor l
    xor l
    and c
    cp a
    xor e
    ld [hl+], a
    and c
    ld bc, $e1bf
    jp $e08d


    dec l
    add c
    add c
    cp l
    add d
    cp e
    add a
    or a
    adc a
    or a
    sub a
    add e
    and a
    and l
    xor e
    rst $38

jr_00c_5506:
    rst $38
    adc b
    jr jr_00c_5521

    inc l
    cpl
    ld d, h
    rst $10
    xor b
    rst $28
    ret c

    or a
    cp b
    rra
    ld d, b
    ld [$ff08], sp
    dec bc
    db $fc
    rrca
    rst $30
    ld hl, sp+$0e
    ld sp, $20ff

jr_00c_5521:
    rst $20
    jr nc, jr_00c_5506

    db $fc
    add e
    ld bc, $a42d
    adc a
    ldh [rNR50], a
    inc c
    rst $38
    inc b
    rst $30
    inc c
    ld b, a
    ccf
    adc $a0
    sbc h
    ret nz

    ret c

    and b
    add b
    pop af
    sbc l

jr_00c_553c:
    ld [c], a
    rst $38
    rst $38
    sbc c
    ldh [rIE], a
    rst $38
    dec l
    inc bc

jr_00c_5545:
    ld e, l
    inc bc
    cp c
    inc bc
    ld bc, $1d73
    db $e3
    rst $38
    rst $38
    ld a, c
    rlca
    ld sp, $0fff
    jp $8300


    inc bc
    inc e
    rrca
    scf
    jr jr_00c_556b

    ld sp, $203f
    and a
    jr nc, jr_00c_5545

    inc a
    and l
    adc a
    ldh [$2b], a
    add sp, $18
    ld [hl], b

jr_00c_556b:
    inc c
    db $fc
    inc b
    push af
    inc c
    ld b, a
    inc a
    rst $18
    ccf
    and b
    ld h, b
    ldh [rNR41], a
    ld h, b
    and b
    rst $38
    jr nz, jr_00c_553c

    ld l, a
    ld sp, hl
    db $eb
    cp a
    xor a
    ei
    db $fc
    ld b, $05
    rlca
    inc b
    dec b
    ld b, $ff
    inc b
    cp $f5
    rst $38
    rst $30
    db $fd
    push af
    rst $38
    rst $38
    daa
    add b
    ld bc, $80ff
    add e
    ld [bc], a
    inc l
    xor a
    adc a
    ld b, $de
    db $e3
    rst $18
    db $e3
    cp $ff
    rst $38
    add [hl]
    ld [bc], a
    dec hl
    rlca
    rst $38
    rst $38
    rst $18
    ld a, a
    rst $38
    di
    ld [hl], e
    sbc a
    xor c
    adc a
    ldh [$3b], a
    rst $38
    ldh a, [$0e]
    dec c
    ld a, e
    ld a, d
    cp l
    or l
    adc a
    add l
    ld a, l
    ld a, c
    inc bc
    inc bc
    dec c
    rrca
    adc d
    or l
    or l
    sbc e
    or a
    adc [hl]
    xor a
    ldh a, [$8d]
    db $d3
    xor l
    di
    xor [hl]
    pop de
    xor a
    ldh a, [$bf]
    and b
    rst $38
    ldh [rIE], a
    ld h, b
    ld [hl], a
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [rIE]
    nop
    db $10
    rra
    db $ec
    rra
    rst $38
    rrca
    cp $fb
    dec bc
    add hl, bc
    db $fc
    inc b
    and e
    ld bc, $a3e6

jr_00c_55f6:
    adc a
    add hl, bc
    rst $28
    ldh a, [$7f]
    rst $18
    sbc b
    ld hl, sp-$51
    ld a, b
    rst $08
    ld hl, sp+$31
    rst $38
    ld a, [bc]
    sbc a
    rst $38
    ldh [$ea], a
    or b
    xor a
    and b
    xor d
    cp a
    and b
    cp a
    add e
    inc bc
    daa
    ld a, [bc]
    ld a, a
    ld sp, hl
    rst $38
    rlca
    and a
    dec b
    rst $30
    dec b
    rla
    db $fd
    rlca
    and l
    adc a
    rrca
    ret nc

    rra
    adc h
    rra
    rra
    rlca
    ld l, $0b
    dec hl
    add hl, bc
    inc e
    inc b
    add a
    inc bc
    jp $a700


    adc a
    inc bc
    sub h
    ldh a, [$b8]
    ld h, b
    and e
    adc a
    ld b, h
    cp a
    xor a
    ld [bc], a
    and b
    and b
    cp a
    add e
    add e
    inc bc
    sbc a
    sbc a
    add b
    add b
    ld b, h
    rst $38
    push af
    rlca
    dec b
    rst $30
    db $fd
    rst $38
    dec b
    rlca
    db $fd
    db $fd
    and e
    adc a
    ld bc, $abff
    xor d
    add c
    nop
    rst $38
    add e
    ld [bc], a
    ld c, a
    ld c, b
    add c
    rst $38
    jp $0089


    add hl, bc
    ld b, h
    ld [$02fb], sp
    rst $38
    rst $38
    jr z, jr_00c_55f6

    nop
    ld a, [hl+]
    nop
    ld b, b
    add [hl]
    add a
    nop
    ld [$0845], sp
    rst $38
    ldh [rSCX], a
    rst $38
    ld a, [$e13f]
    ld a, a
    add b
    rst $38
    ld e, h
    ld h, e
    sbc a
    ldh [$8a], a
    push af
    call nz, $e07b
    rst $38
    xor a
    db $fc
    ld e, a
    rst $38
    ld a, [bc]
    or $3d
    jp $0af6


    xor l
    ld d, a
    ld l, e
    cp a
    ld d, a
    cp $0f
    rrca
    scf
    ld a, b

jr_00c_56a2:
    rst $18
    ldh [$1f], a
    ld h, b
    jp z, $05f5

    ld a, d
    ret nz

    rst $38
    ld h, l
    rst $38
    ldh a, [$f0]
    db $ec
    dec e
    ld a, [$f506]
    dec bc
    ld a, [$d506]
    cpl
    ld a, [bc]
    cp $56
    cp $3a
    ccf
    ld h, c
    adc b
    cp a
    inc b
    ld b, h
    ld a, e
    ldh [rIE], a
    xor h
    adc h
    cp a
    ldh [$29], a
    ld d, [hl]
    rst $38
    rst $30
    rst $18
    xor d
    cp a
    sub a
    sbc a
    add c
    add b
    ld c, a
    ld b, b
    cpl
    ld h, b
    sbc a
    ccf
    rst $08
    rra
    rst $38
    rst $38
    cp l
    rst $38
    ld sp, hl
    rst $38
    ld [hl], c
    rrca
    ld a, [c]
    ld c, $f4
    rrca
    ld hl, sp-$01
    pop af
    cp $9f
    rst $38
    and e
    call c, $dfa0
    cp a
    rst $18
    add e
    add l
    ld bc, $dfe0
    add e
    inc bc
    xor [hl]
    ld bc, $fb65
    and e
    adc a
    ld bc, $fb65
    and l
    adc a
    ld b, e
    cp b
    add b
    ldh [$2b], a
    cp c
    add b
    cp d
    add b
    cp h
    add b
    cp b
    add c
    or b
    add d
    and b
    add b
    inc bc
    nop
    inc bc
    jr c, jr_00c_56a2

    nop
    ld b, e
    jr jr_00c_5746

    nop
    inc de
    nop
    dec bc
    ld b, b
    rlca
    sub b
    rst $28
    ld c, a
    ld hl, sp+$30
    rst $08
    rrca
    dec de
    dec de
    dec h
    dec h
    ccf
    dec a
    adc d
    dec bc
    rst $08
    inc c
    and l
    adc a
    rrca
    ld hl, sp-$28
    db $f4
    and h
    db $fc
    cp h
    ld [hl], c
    ret nc

    di

jr_00c_5746:
    jr nc, @+$01

    rrca
    or b
    ld [hl], b
    ret nz

    ld b, b
    dec h
    add b
    inc bc
    ret nz

    ret nz

    or b
    or b
    add e
    inc bc
    ld b, b
    xor e
    adc a
    nop
    ld a, a
    add [hl]
    ld bc, $02e9
    rst $38
    cp [hl]
    ei
    add e
    inc bc
    dec bc
    nop
    sbc h
    add l
    inc bc
    ld a, [bc]
    inc b
    rst $30
    adc b
    rst $38
    add b
    db $e3
    add h
    ld [bc], a
    ld a, [hl+]
    inc bc
    cp a
    ld a, a
    ld b, b
    ret nz

jr_00c_5778:
    add [hl]
    and c
    inc b
    sbc a
    db $f4
    sbc a
    rst $38
    sbc a
    xor e
    adc a
    inc b
    ld c, a
    ld sp, hl
    rst $38
    ld sp, hl
    ldh a, [rSCX]
    sbc a
    rst $38
    jp $ea01


    rlca
    ld [$d4c3], a
    rst $38
    ret nz

    cp a
    rst $38
    ld l, a
    and a
    adc a
    ld [bc], a
    di
    inc bc
    dec bc
    and d
    adc a
    call nz, Call_00c_7701
    dec b
    ld a, e
    db $fc
    add l
    add [hl]
    add a
    or [hl]
    ld b, e
    add a
    add [hl]
    inc bc
    ld a, a
    cp $ff
    rst $38
    dec h
    add c
    rlca
    rst $38
    add c
    rst $38
    cp l
    rst $38
    add c
    db $e3
    sub l
    ld b, e
    rst $38
    add c
    add hl, bc
    db $db
    cp l
    rst $20
    rst $38
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    and a
    sbc c
    ld sp, $08ff
    and b
    adc c
    or b
    add d
    cp b
    add b
    cp h
    add c
    cp [hl]
    ld b, [hl]
    add b
    cp a
    inc de
    inc bc
    jr nz, jr_00c_57de

    ld c, b

jr_00c_57de:
    ld bc, $0390
    nop
    rlca
    ld b, b
    rrca
    nop
    sbc a
    nop
    rst $38
    nop
    rst $08
    rrca
    or a
    jr c, jr_00c_5778

    inc b
    ld h, h
    ld bc, $7fe5
    and e
    adc a
    add a
    inc b
    ld [hl], h
    inc bc
    dec bc
    cp $57
    cp $9f
    inc b
    ld b, b
    add l
    sbc a
    ld a, [bc]
    ld e, a
    ld l, a
    or a
    ld hl, sp-$21
    ldh [$9f], a
    ld h, b
    jp z, $adf5

    add h
    sbc a
    inc bc
    db $fd
    di
    xor $1e
    add e
    push bc
    ld [bc], a
    ei
    ld b, $85
    add e
    inc b
    ld l, e
    nop
    ld a, a
    add l
    inc b
    add b
    inc bc
    call c, $9f63
    ldh [$83], a
    push de
    ld bc, $fe56
    add a
    inc b
    sub b
    dec b
    rst $30
    ld a, [bc]
    adc a
    rst $38
    rst $30
    ld a, b
    adc e
    rst $38
    inc bc
    db $fd
    rst $30
    rst $28
    rra
    adc e
    rst $38
    ld bc, $ffff
    dec sp
    add c
    nop
    rst $38
    ld b, h
    add c
    pop bc
    db $10
    rst $38
    rst $38
    db $db
    cp l
    jp $ffbd


    add c
    sbc c
    rst $38
    rst $20
    rst $20
    rst $08
    rrca
    or b
    jr nc, jr_00c_589d

    adc d
    dec b
    dec h
    xor a
    adc a
    ld l, a
    adc c
    inc bc
    nop
    nop
    add b
    add h
    ld [bc], a
    ld a, [hl+]
    res 1, [hl]
    inc bc
    rst $08
    db $10
    rst $38
    rst $18
    adc e
    adc a
    ld bc, $02f9
    and e
    adc a
    ld c, c
    inc bc
    ld bc, $fd01
    inc bc
    add h
    nop
    ld d, b
    inc b
    cp a
    or e
    and d
    cp a
    xor [hl]
    ld b, e
    cp a
    and b
    add e
    dec b
    ld d, c
    rlca
    ld [hl], b
    ld [hl], b
    ld d, a
    ld d, a
    ld d, [hl]
    ld d, h
    ld d, a
    ld d, l
    ld b, e
    ld d, a
    ld d, h
    inc bc
    ld d, b
    ld d, b

jr_00c_589d:
    rst $18
    rst $18
    and h
    adc a
    ld [bc], a
    ld c, d
    ld [$43ca], a
    ld [$a30a], a
    adc a
    and h
    xor a
    ld [bc], a
    adc c
    db $fd
    cp c
    ld b, e
    db $fd
    add c
    ld bc, $0101
    ldh a, [rSTAT]
    cp a
    nop
    cp a
    ld c, d
    sub b
    cp b
    nop
    cp a
    jp $a003


    ld bc, $3870
    call z, $1a07
    ld [bc], a
    rst $38
    ld c, $07
    adc h
    adc a
    nop
    ei
    ld c, d
    add hl, bc
    dec bc
    inc bc
    ei
    ld sp, hl
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1111
    inc bc
    inc b
    db $10
    db $10
    inc de
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $1101
    ld de, $0d0c
    db $10
    db $10
    inc e
    dec e
    ld bc, $0101
    ld bc, $0101
    ld bc, $1101
    ld de, $1111
    db $10
    db $10
    db $10
    db $10
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0605
    rlca
    rlca
    ld [$1709], sp
    rla
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    ld b, $17
    rla
    rla
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec b
    rlca
    ld e, d
    inc h
    dec d
    rla
    rla
    adc h
    inc l
    dec l
    ld bc, $3c01
    dec a
    ld bc, $0801
    add hl, bc
    ld bc, $0801
    add hl, bc
    ld bc, $0801
    add hl, bc
    ld bc, $1501
    ld d, $01
    ld bc, $3130
    jr nc, jr_00c_59b5

    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    inc c
    dec c
    ld de, $1c11
    dec e
    db $10
    db $10
    ld bc, $0101
    ld bc, $0101
    ld bc, $1101
    ld de, $0f0e
    db $10

jr_00c_59b5:
    db $10
    ld e, $1f
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    rlca
    ld bc, $1501
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0624
    ld bc, $4c01
    ld c, l
    ld bc, $0101
    ld bc, $0908
    ld bc, $1501
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $1111
    ld de, $5211
    ld d, e
    ld d, d
    inc [hl]
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $1111
    ld de, $2e11
    cpl
    db $10
    db $10
    ld a, $3f
    ld bc, $3a01
    dec sp
    ld bc, $4c01
    ld c, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2c01
    dec l
    ld bc, $3c01
    dec a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    jr nc, jr_00c_5a6b

    jr nc, @+$33

    jr nz, @+$23

    jr nz, jr_00c_5a61

    ld de, $1111
    ld de, $5411
    ld d, [hl]
    ld d, a
    dec b
    ld d, l
    ld e, b
    ld e, c
    dec d
    rla
    rla
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0605
    ld bc, $0801
    add hl, bc
    ld bc, $0101

jr_00c_5a61:
    ld bc, $2120
    ld bc, $2901
    ld a, [hl+]
    ld bc, $0101

jr_00c_5a6b:
    ld bc, $0101
    ld bc, $2201
    inc hl
    jr nz, jr_00c_5a95

    ld [hl-], a
    inc sp
    dec h
    ld h, $32
    inc sp
    dec [hl]
    ld [hl], $42
    ld b, e
    ld [$2019], sp
    ld hl, $0908
    add hl, hl
    ld a, [hl+]
    ld [$0109], sp
    ld bc, $0908
    ld bc, $3001
    ld sp, $0908
    ld bc, $1501

jr_00c_5a95:
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld d, [hl]
    ld d, a
    ld bc, $5801
    ld e, c
    ld bc, $4c01
    ld c, l
    ld c, $0f
    ld de, $1e11
    rra
    db $10
    db $10
    ld bc, $0101
    ld bc, $0101
    ld bc, $2001
    ld hl, $2120
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    adc b
    adc c
    ld bc, $8201
    add e
    ld bc, $4401
    ld b, l
    ld bc, $4a01
    ld c, e
    ld bc, $0101
    ld bc, $8a01
    ld bc, $0101
    adc e
    ld bc, $0101
    adc d
    ld bc, $0101
    adc e
    dec b
    ld b, $01
    ld bc, $0908
    ld bc, $0801
    add hl, bc
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    inc h
    rla
    rla
    rla
    ld d, $39
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld de, $3011
    ld sp, $5352
    ld a, [de]
    dec de
    ld d, b
    ld d, c
    ld a, [de]
    dec de
    ld bc, $0a01
    dec bc
    ld c, [hl]
    ld c, a
    inc l
    dec l
    ld e, [hl]
    ld e, a
    inc a
    dec a
    ld [$0109], sp
    ld bc, $1615
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rla
    rla
    rla
    rla
    ld bc, $2c01
    dec l
    ld bc, $3c01
    dec a
    ld bc, $0101
    ld bc, $0101
    ld bc, $1101
    ld de, $1111
    db $10
    ld e, e
    jr nc, @+$33

    ld bc, $305c
    ld sp, $0101
    jr nc, jr_00c_5ba1

    ld bc, $3001
    ld sp, $0101
    jr nc, jr_00c_5ba9

    ld bc, $3001
    ld sp, $0101
    jr nc, @+$33

    ld de, $1111
    ld de, $5b10
    db $10
    db $10
    ld bc, $015c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    ld d, [hl]
    ld d, a
    rla
    rla
    ld e, b
    ld e, c
    inc l

jr_00c_5ba1:
    dec l
    ld c, h
    ld c, l
    inc a
    dec a
    ld bc, $0101

jr_00c_5ba9:
    ld bc, $0101
    ld bc, $0101
    ld bc, $2d2c
    ld [$3c09], sp
    dec a
    ld [$0109], sp
    ld bc, $0908
    ld bc, $1501
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $2407
    dec b
    ld b, $17
    rla
    ld [$8009], sp
    add c
    add b
    add c
    add d
    add e
    add d
    add e
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    add b
    add c
    ld bc, $8201
    add e
    ld bc, $8401
    add l
    ld bc, $8601
    add a
    ld bc, $1101
    ld de, $4746
    db $10
    db $10
    ld c, b
    ld c, c
    ld bc, $4401
    ld b, l
    ld bc, $4a01
    ld c, e
    daa
    jr z, @+$50

    ld c, a
    scf
    jr c, @+$60

    ld e, a
    ld b, d
    ld b, e
    dec d
    jr jr_00c_5c4f

    ld b, e
    ld b, d
    ld b, e
    jr nz, jr_00c_5c33

    jr nz, jr_00c_5c35

    rlca
    ld b, $29
    ld a, [hl+]
    add hl, de
    add hl, bc
    daa
    jr z, jr_00c_5c36

    add hl, bc
    scf
    jr c, jr_00c_5c3a

    add hl, bc
    daa
    jr z, jr_00c_5c3e

    add hl, bc
    scf
    jr c, jr_00c_5c41

    ld d, $42
    ld b, e
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld b, d

jr_00c_5c33:
    ld b, e
    ld b, d

jr_00c_5c35:
    ld b, e

jr_00c_5c36:
    ld b, d
    ld b, e
    ld b, d
    ld b, e

jr_00c_5c3a:
    ld b, d
    ld b, e
    ld b, d
    ld b, e

jr_00c_5c3e:
    ld b, d
    ld b, e
    ld b, c

jr_00c_5c41:
    ld hl, $2120
    ld b, b
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    ld b, b
    ld b, e
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    ld b, d

jr_00c_5c4f:
    ld b, e
    ld bc, $8001
    add c
    ld bc, $8201
    add e
    ld bc, $4401
    ld b, l
    ld bc, $4a01
    ld c, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $5a01
    rlca
    inc h
    ld b, $17
    rla
    rla
    ld d, $2c
    dec l
    adc l
    adc [hl]
    inc a
    dec a
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $2c01
    dec l
    ld bc, $3c01
    dec a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $9190
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    add b
    add c
    ld bc, $8201
    add e
    ld bc, $4401
    ld b, l
    ld bc, $4a01
    ld c, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $018a
    ld bc, $8b01
    ld b, d
    ld b, e
    ld b, d
    adc d
    ld b, d
    ld b, e
    ld b, d
    adc e
    ld b, d
    ld b, e
    ld b, d
    adc d
    ld b, d
    ld b, e
    ld b, d
    adc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld a, d
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    sub b
    nop
    nop
    sub b
    sub b
    nop
    nop
    ld [hl], b
    ld [hl], b
    sub b
    sub b
    nop
    nop
    sub b
    nop
    sub b
    nop
    rlca
    rlca
    sub c
    sub c
    rlca
    rlca
    rlca
    rlca
    ld a, d
    rlca
    nop
    nop
    rlca
    ld a, d
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    nop
    sub b
    nop
    nop
    sub b
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    sub e
    nop
    nop
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
    nop
    nop
    sub b
    nop
    nop
    rlca
    nop
    nop
    rlca
    rlca
    nop
    sub b
    rlca
    sub b
    nop
    sub b
    sub b
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    ld a, d
    rlca
    nop
    nop
    rlca
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
    rlca
    sub b
    nop
    sub b
    nop
    nop
    nop
    sub b
    sub b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    sub c
    sub b
    nop
    sub b
    nop
    nop
    nop
    sub b
    sub b
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    sub b
    sub b
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    sub b
    nop
    nop
    sub b
    sub b
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
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
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    sub b
    sub b
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
    rlca
    rlca
    nop
    rlca
    nop
    nop
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
    ld l, a
    jr nc, @+$01

    ld h, c
    jp $0092


    rst $38
    ld b, e
    ld h, [hl]
    sbc c
    call nz, $0280
    rst $38
    add b
    add b
    ld c, d
    rst $38
    cp a
    ld bc, $ff80
    call $009d
    nop
    or d
    sbc a
    add e
    jp $ff48


    nop
    ldh [rNR44], a

jr_00c_5e04:
    xor e
    rst $38
    ld a, [hl]
    or [hl]
    ld a, [$71ce]
    xor a
    call nc, Call_00c_62bf
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
    sbc a
    ret nz

    adc a
    and b
    ld [hl+], a
    sbc a
    ld bc, $9780
    ld b, e
    adc a
    sbc b
    inc c
    adc h
    sub a
    rst $08
    rst $38
    rst $38
    nop
    ret nz

    inc b
    pop de
    nop
    push de
    nop
    ret nz

    add a
    add sp, $07
    ld bc, $0107
    rla
    ld d, c
    add a
    ld bc, $c407
    push hl
    nop
    rst $38
    cpl
    cp a
    ld d, b
    rst $38
    db $fd
    ld bc, $81ff
    inc h
    rst $38
    ld bc, $ffc3
    ld b, e
    ld h, d
    rst $18
    ld bc, $ff3c
    ret


    nop
    ld d, c
    ld a, [de]
    db $e3
    inc e
    pop bc
    ld a, $80
    ld a, a
    cp $00
    ld a, h
    nop
    jr c, jr_00c_5e70

jr_00c_5e70:
    stop
    ld [$1c00], sp
    nop
    ld a, $00
    ld a, a
    nop
    add d
    nop
    ld b, h
    nop
    jr z, jr_00c_5e04

    adc a
    dec b
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $8700
    nop
    jr z, jr_00c_5e8e

    nop
    rst $38

jr_00c_5e8e:
    nop
    push bc
    nop
    ld h, [hl]
    ld c, b
    rst $38
    add b
    and d
    rst $38
    add e
    nop
    ld c, d
    ld c, b
    rst $38
    nop
    add l
    nop
    xor d
    xor a
    sbc a
    add l
    sbc e
    ld bc, $aa55
    add $80
    ld de, $abff
    sbc e
    call nc, $337c
    rst $38
    ld d, b
    ld hl, sp-$28
    cp b
    db $ec
    cp h
    db $e3
    xor e
    db $fc
    sbc a
    db $d3
    xor [hl]
    adc a
    ld [$03ff], sp
    db $fd
    rlca
    ld sp, hl
    rst $38
    ld sp, hl
    rlca
    jp hl


    ld b, e
    rst $30
    add hl, de
    ld [de], a
    rla
    db $eb
    rst $30
    ret nz

    cp a
    cp a
    rst $38
    xor a
    ld a, [$eaba]
    xor d
    ld [$efaf], a
    cp a
    rst $38
    ret nz

    cp a
    and e
    adc a
    ld b, e
    sbc l
    rst $30
    inc bc
    push af
    sub a
    sbc l
    sbc a
    and e
    adc a
    ld b, $ff
    rst $38
    xor [hl]
    pop af
    xor a
    ldh a, [$bf]
    add h
    add l
    and e
    nop
    sbc $02
    rst $38
    rst $38
    push af
    and h
    adc a
    nop
    push af
    and [hl]
    adc a
    ldh [rNR44], a
    cp $38
    ld d, [hl]
    ld d, [hl]
    ld [hl], l
    ld h, l
    cp e
    add l

jr_00c_5f0c:
    pop af
    rst $28
    ld h, a
    ld e, a
    ld a, c
    ld a, a
    push hl
    db $e3
    cp $1c
    ld l, e
    ld l, e
    xor l
    and e
    ld c, e
    or a
    adc a
    pop af
    sub $ee
    cp $fc
    ld d, a
    and $ff
    rst $38
    ret nz

    cp a
    ld b, h
    ret nz

    and b
    nop
    cp a
    add l
    add e
    xor a
    adc a
    rrca
    nop
    rst $38
    ld b, b
    add b
    nop
    cp a
    nop
    cp [hl]
    nop
    cp h
    nop
    cp b
    nop
    or c
    nop
    and e
    xor a
    adc a
    ld a, [bc]
    call c, Call_00c_6e3f
    rra
    scf
    rrca
    rla
    inc bc
    dec bc
    ld bc, $841d
    ld bc, $0a0b
    ld a, [hl-]
    db $fc
    ld [hl], h
    ld hl, sp-$18
    ldh a, [$f0]
    ret nz

    ret z

    add b
    sbc h
    add h
    adc a
    add e
    ld bc, $0c3c
    or b
    rst $28
    cp a
    rst $38
    or a
    add sp, -$5d
    db $fc
    pop hl
    cp $80
    ld a, a
    nop
    add [hl]
    nop
    rst $28
    ld bc, $08f7
    adc l
    nop
    ld a, [$1f07]
    rra
    jr nz, @+$22

    cpl
    jr nz, jr_00c_5ff2

    jr nz, jr_00c_5f0c

    adc a
    and e
    adc a
    inc bc
    or $04
    rst $30
    inc b
    add e
    adc a
    dec b
    ccf
    rlca
    inc d
    inc b
    db $fc
    db $fc
    inc hl
    add h
    rlca
    adc l
    add h
    rst $38
    ccf
    ld h, c
    ld hl, $e1e1
    inc hl
    ld hl, $6100
    ld b, h
    ld hl, $08e1
    ld a, a
    add b
    add b
    rst $38
    push de
    rst $38
    xor d
    rst $38
    rst $10
    inc hl
    rst $38
    rlca
    db $fc
    rst $38
    db $fc
    cp $01
    xor a
    rst $38
    ld a, a
    ld [hl+], a
    rst $38
    inc h
    pop hl
    ldh [rNR44], a
    ld hl, $21e1
    ld [hl], a
    ld c, b
    ld l, a
    ld h, d
    or c
    adc a
    db $eb
    rst $18
    sbc a
    cp e
    ld a, [hl]
    ld h, a
    ld a, $06
    ld a, a
    ld a, [bc]
    sub c
    ld sp, hl
    xor e
    rst $18
    xor l
    pop de
    db $db
    rst $30
    push af
    reti


    ld a, [hl]
    ld a, [$66fe]
    ld e, a
    ldh a, [$9f]
    add h
    nop
    sub e
    add hl, bc
    sbc a
    ret nz

    sbc a
    and b
    ld e, a
    rst $18
    dec h

jr_00c_5ff2:
    ld h, b
    ld e, a
    ccf
    add l
    ld bc, $0992
    ei
    rlca
    db $fd
    rlca
    ld a, [$f4ff]
    ld c, $fd
    ld a, [$02cb]
    jr nc, jr_00c_600a

    ld b, b
    add b
    nop

jr_00c_600a:
    rst $38
    xor a
    adc a
    rlca
    ld bc, $83fe
    ld a, h
    rst $00
    jr c, @-$0f

    db $10
    add a
    ld [bc], a
    ld a, b
    nop
    nop
    add [hl]
    ld bc, $882a
    add a
    ld [hl+], a
    rst $38
    dec bc
    inc l
    ei
    db $ec
    ld a, [$3bec]
    rst $38
    cpl
    ld hl, sp+$3f
    add b
    ld a, a
    add e
    ld bc, $105c
    dec b
    rst $38
    push hl
    ccf
    dec b
    rst $38
    rst $38
    db $fd
    rlca
    rst $38
    add b
    ld a, a
    rst $28
    jr nz, jr_00c_60b1

    jr nz, jr_00c_6064

    ld b, e
    jr nz, @+$41

    add hl, bc
    cpl
    dec sp
    inc l
    add hl, sp
    ld l, $78
    ccf
    or $04
    db $f4
    and [hl]
    adc a
    ld [$14fc], sp
    sbc $34
    sbc a
    ld a, h
    sbc a
    add h
    cp a
    ld b, e
    add h
    rst $38
    ld b, e
    add a
    db $fc

jr_00c_6064:
    ld b, h
    rst $38
    add b
    ld [bc], a
    pop hl
    ld hl, $43ff
    ccf
    pop hl
    ld c, b
    rst $38
    ld bc, $874d
    db $fc
    ld bc, $ffff
    ld c, l
    pop hl
    ld hl, $24e0
    rst $38
    rst $38
    db $f4
    ld d, $76
    rla
    dec sp
    rla
    inc d
    jr jr_00c_609f

    rla
    ld e, $11
    ld a, $09
    ld a, a
    rlca
    xor [hl]
    ld a, b
    ld l, h
    ld hl, sp-$18
    ret c

    ret z

    jr c, jr_00c_609f

    ld hl, sp+$0c
    ld hl, sp+$1e
    ldh a, [rIE]
    ldh [rIE], a

jr_00c_609f:
    rst $38
    add b
    ld c, h
    add b
    cp a
    adc h
    nop
    ld h, e
    ld [bc], a
    nop
    rst $38
    nop
    or b
    sbc a
    inc bc
    ld a, a
    rst $38
    add b

jr_00c_60b1:
    ret nz

    ld b, [hl]
    add b
    rst $18
    ld [bc], a
    ldh [$9f], a
    rst $38
    and h
    adc a
    ld bc, $0107
    ld b, l
    ei
    dec b
    ld [de], a
    inc bc
    db $fd
    rst $38
    ld bc, $fff3
    ld sp, $5f23
    ldh a, [$87]
    ei
    db $db
    db $fc
    sbc h
    ld a, a
    db $ec
    rst $38
    reti


    ld [hl+], a
    rst $38
    ld d, $db
    cp c
    pop de
    ld [hl], $3c
    rst $30
    inc sp
    rst $38
    ld a, a
    sbc e
    ld l, c
    rst $38
    ld [hl], a
    xor l
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    inc h
    rst $38
    jr @+$01

    add $81
    ldh a, [$3f]
    adc a
    add e

jr_00c_60f5:
    ld bc, $0010
    cpl
    adc d
    ld [bc], a
    and l
    nop

jr_00c_60fd:
    cp a
    adc [hl]
    ld [bc], a
    or c
    rra
    rst $38
    rst $38
    add hl, bc
    rrca
    cp $11
    rst $28
    jr nz, @-$1b

    jr nz, jr_00c_60f5

    jr c, jr_00c_60fd

    ld a, $ef
    ccf
    rst $38
    rst $38
    add c
    add c
    ld a, a
    pop hl
    sbc a
    ld a, c
    rst $20
    dec e
    rst $30
    dec c
    daa
    dec e
    and a
    sbc l
    ld c, a
    cp a
    add b
    ld c, a
    rst $38
    nop
    ld c, a
    db $fd
    ld bc, $800f
    rst $38
    sbc b
    rst $38
    adc [hl]
    rst $20
    add e
    ld sp, hl
    add [hl]
    cp $9a
    ld sp, hl
    adc b
    rst $20
    rst $38
    ld a, a
    and e
    adc a
    ldh [$2b], a
    ld l, c
    rst $20
    and c
    sbc a
    pop hl
    ld a, a
    add hl, sp
    sbc a
    add hl, bc
    rst $20
    rst $38
    cp $ed
    sbc [hl]
    sub [hl]
    db $fc
    push af
    db $fc
    db $fc
    db $fd
    jp z, $effd

    sbc c
    or l
    sub e
    cp [hl]
    adc a
    ret


    rst $00
    and l
    ld b, e
    and l
    jp $c7bb


    rst $00
    rst $38
    di
    rst $38
    rst $30
    rst $08
    dec a
    rst $38
    ldh a, [rVBK]
    inc b
    ld [hl], b
    adc a
    inc bc
    ld d, b
    ld a, [de]
    ei
    rlca
    rst $38
    inc c
    di
    ld [de], a
    di
    dec l
    rst $20
    ld hl, $33e5
    rst $38
    ld e, $ff
    nop
    db $ec
    ld a, $e6
    cp a
    and c
    ld a, a
    ld hl, sp+$1f
    cp $07
    rst $38
    and h
    dec b
    rrca
    ld b, e
    and a
    sbc l
    rlca
    xor a
    sbc c
    ccf
    sub c
    ld a, a
    and c
    rst $38
    pop bc
    ld b, e
    rst $38
    ld bc, $ffef
    db $ed
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
    ld bc, $1001
    db $10
    ld a, [hl+]
    dec hl
    db $10
    db $10
    ld a, [hl-]
    dec sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc l
    dec l
    db $10
    db $10
    inc a
    dec a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, l
    ld b, [hl]
    inc b
    inc b
    ld d, l
    ld d, [hl]
    inc d
    inc d
    add hl, bc
    add hl, de
    db $10
    db $10
    jr nc, jr_00c_622f

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    inc [hl]
    inc [hl]
    inc c
    dec c
    inc [hl]
    inc [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld bc, $0101

jr_00c_622f:
    ld bc, $0503
    inc bc
    inc b
    inc c
    dec c
    inc de
    inc d
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc b
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    dec b
    inc bc
    dec b
    inc d
    dec d
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl+], a
    inc hl
    db $10
    db $10
    ld [hl-], a
    inc sp
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc bc
    dec b
    inc b
    inc b
    inc de
    dec d
    inc d

Call_00c_62bf:
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    inc b
    inc b
    inc bc
    dec b
    inc d
    inc d
    inc de
    dec d
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    inc b
    inc b
    inc c
    dec c
    inc d
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    inc b
    inc bc
    dec b
    inc d
    inc d
    inc c
    dec c
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc bc
    dec b
    inc b
    inc b
    inc c
    dec c
    inc d
    inc d
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    inc b
    inc b
    inc bc
    dec b
    inc d
    inc d
    inc c
    dec c
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    inc bc
    dec b
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    inc de
    dec d
    inc c
    dec c
    db $10
    db $10
    inc c
    dec c
    db $10
    db $10
    inc bc
    dec b
    db $10
    db $10
    inc de
    dec d
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    db $10
    db $10
    inc de
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    dec b
    db $10
    db $10
    inc d
    dec d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    dec b
    inc b
    inc b
    inc de
    dec d
    inc d
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    inc b
    inc bc
    dec b
    inc d
    inc d
    inc de
    dec d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    db $10
    db $10
    inc de
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    dec b
    db $10
    db $10
    inc d
    dec d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    dec b
    db $10
    db $10
    ld a, [bc]
    dec bc
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    ld [de], a
    ld [de], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [de], a
    ld [de], a
    inc de
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    db $10
    db $10
    ld d, c
    ld d, c
    db $10
    db $10
    ld d, c
    ld d, c
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    db $10
    db $10
    ld d, c
    ld d, c
    db $10
    db $10
    ld d, c
    ld d, c
    db $10
    db $10
    ld [de], a
    ld [de], a
    db $10
    db $10
    db $10
    db $10
    ld e, $1f
    db $10
    db $10
    ld l, $2f
    db $10
    db $10
    ld a, $3f
    db $10
    db $10
    db $10
    db $10
    ld e, $1f
    db $10
    db $10
    ld l, $2f
    db $10
    db $10
    ld a, $3f
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    inc b
    inc b
    inc b
    ld b, b
    ld b, c
    ld c, [hl]
    ld c, a
    ld d, b
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, $27
    ld [hl], $37
    inc bc
    dec b
    inc b
    inc b
    inc de
    dec d
    inc d
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc bc
    dec b
    inc d
    inc d
    inc de
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0503
    ld bc, $0c01
    dec c
    ld bc, $0c01
    dec c
    ld bc, $0c01
    dec c
    inc bc
    dec b
    ld bc, $0c01
    dec c
    ld bc, $0c01
    dec c
    ld bc, $0c01
    dec c
    ld bc, $0101
    ld bc, $0503
    ld bc, $1301
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    dec b
    ld bc, $1301
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0504
    inc bc
    dec b
    inc d
    dec d
    inc c
    dec c
    ld bc, $0c01
    dec c
    ld bc, $0c01
    dec c
    inc bc
    dec b
    inc bc
    inc b
    inc c
    dec c
    inc de
    inc d
    inc c
    dec c
    ld bc, $0c01
    dec c
    ld bc, $0701
    ld [$1010], sp
    rla
    jr jr_00c_6527

    db $10
    add hl, bc
    add hl, de

Call_00c_651a:
    db $10
    db $10
    jr nc, jr_00c_654f

    db $10
    db $10
    db $10
    db $10
    rlca
    ld [$1010], sp
    rla

jr_00c_6527:
    jr jr_00c_6539

    db $10
    add hl, bc
    add hl, de
    db $10
    db $10
    jr nc, jr_00c_6561

    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, b

jr_00c_6539:
    ld d, c
    ld d, c
    ld d, c
    ld c, $0f
    rrca
    rrca
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    rrca
    rrca
    rrca

jr_00c_654f:
    ld c, $40
    ld b, c
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b

jr_00c_6561:
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld c, $0f
    rrca
    ld c, $40
    ld b, d
    ld b, b
    ld b, d
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    inc e
    dec e
    inc e
    dec e
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr z, jr_00c_65c5

    db $10
    db $10
    jr c, jr_00c_65d9

    jr z, jr_00c_65cb

    db $10
    db $10
    jr c, jr_00c_65df

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [hl], d
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop

jr_00c_65c5:
    nop
    nop
    nop
    rlca
    nop
    rlca

jr_00c_65cb:
    nop
    nop
    nop
    ld h, b
    ld h, b
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca

jr_00c_65d9:
    rlca
    nop
    rlca
    rlca
    rlca
    rlca

jr_00c_65df:
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
    rlca
    nop
    rlca
    nop
    nop
    nop
    ld a, h
    rlca
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
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
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
    rlca
    nop
    nop
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
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
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    ld a, b
    nop
    nop
    ld a, b
    rlca
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    halt
    halt
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
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
    ld [hl], b
    ld [hl], b
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
    rlca
    rlca
    rlca
    nop
    rlca
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
    rlca
    rlca
    rlca
    rlca

jr_00c_6699:
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
    sub c
    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    db $10
    inc d
    db $eb
    ld l, c
    rst $10
    ld d, b
    xor a
    jr nz, jr_00c_6699

    add l
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld b, b
    rst $38
    nop
    inc hl
    rst $38
    ld [bc], a
    add b
    rst $38
    rst $38
    ld b, [hl]
    rst $38
    cp a
    or b
    adc a
    ldh [$3d], a
    inc d
    db $eb
    ld l, l
    rst $10
    cp $ab
    sub d
    rst $38
    push de
    rst $38
    ld l, [hl]
    rst $38
    add hl, sp
    rst $38
    db $10
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    dec de
    db $fc
    dec a
    db $e3
    ld a, a
    jp nz, $e5de

    xor l
    jp c, $e99f

    rst $20
    rst $38
    rst $18
    ccf
    ld a, l
    xor [hl]
    rst $38
    db $fd
    rst $38
    ld c, $ae
    ld e, l
    ld e, l
    cp [hl]
    db $e3
    rst $38
    ldh [rIE], a
    or b
    ld a, a
    jr z, @+$01

    call nc, $3eff
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    add e
    cp a
    ld b, $3f
    rst $38
    ld h, b
    rst $18
    ld l, a
    rst $18
    add sp, $46
    rst $18
    ld l, b
    ld [bc], a
    inc d
    db $eb
    db $fd
    xor b
    adc a
    add e
    add e
    ldh [$3a], a
    ccf
    ld sp, hl
    ld e, a
    rst $38
    cp a
    cp $fd
    rst $38
    cp $ff
    db $fd
    ld a, a
    rst $38
    rst $38
    rst $30
    rst $38
    db $f4
    rst $38
    cp h
    ld a, a
    cp a
    ld a, a
    ld a, [hl]
    rst $38
    cp a
    rst $38
    ld a, a
    rst $00
    rst $38
    add e
    and a
    rst $18
    inc bc
    rst $38
    rrca
    db $fc
    rra
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    ld a, [hl]
    pop bc
    ld a, c
    rst $00
    adc a
    rst $30
    ldh [rIE], a
    ld sp, $18ff
    rst $38
    inc a
    rst $38
    ld e, $ff
    ld a, [hl]
    inc h
    rst $38
    ld a, [bc]
    xor e
    rst $38
    rst $38
    ld e, [hl]
    ld h, a
    cp a
    cp a
    rst $38
    rst $18
    ld a, a
    cp a
    adc b
    adc a
    inc b
    rst $20
    db $fd
    ld a, [$fbff]
    inc h
    rst $38
    nop
    db $fd
    jr nc, @+$01

    ld de, $a857
    xor d
    ld [hl], l
    ld e, l
    xor d
    db $eb
    inc d
    ld d, l
    xor d
    xor d
    ld d, a
    push af
    ld a, [bc]
    db $eb
    inc d
    rst $38
    add b
    and l
    and l
    rlca
    rst $20
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    or b
    adc a
    ld e, $3f
    rst $38
    sbc a
    rst $38
    rst $20
    rst $18
    di
    rst $28
    ei
    rst $30
    db $fd
    rst $38
    db $fc
    rst $38
    cp $df
    rst $28
    sbc $ff
    rst $38
    cp $fc
    rst $28
    db $fd
    add $ba
    push bc
    cp a
    add $9f
    rst $28
    sub b
    rst $08
    dec b
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    jr z, @+$01

    nop
    ld l, b
    jp $8700


    ld bc, $5fdf
    jp Jump_00c_7f00


    rlca
    rst $38
    ccf
    rst $38
    ld b, b
    rst $38
    ld d, $fb
    rst $30
    xor b
    adc a
    ld [$fffd], sp
    ld b, b
    rst $38
    xor d
    nop
    push de
    add b
    xor d
    ld [hl+], a
    add b
    ld b, e
    ret nz

    ld b, b
    ld [$20e0], sp
    rst $38
    rra
    xor e
    nop
    ld d, l
    ld bc, $aaab
    adc a
    ld bc, $cfbf
    push bc
    ldh a, [rP1]
    db $fc
    call nz, $dd00
    nop
    ccf
    add [hl]
    rst $00
    ld [bc], a
    ld a, a
    rst $38
    ei
    add h
    add l
    nop
    ld hl, sp-$7d
    ld bc, $0223
    ld a, a
    ld a, a
    cp a
    add e
    add l
    dec b
    cp a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    add l
    ret c

    nop
    cp $c6
    nop
    db $fd
    ldh [rLYC], a
    ld sp, hl
    rst $38
    dec d
    db $eb
    ld l, e
    sub $57
    xor l
    daa
    db $dd
    add a
    db $fd
    dec c
    cp $3d
    rst $38
    ld a, l
    rst $38
    sub h
    db $eb
    ld l, c
    rst $10
    or b
    rst $28
    xor h
    rst $38
    rst $18
    di
    db $fc
    rst $28
    db $fd
    ld l, a
    cp $af
    ld d, a
    xor c
    xor e
    db $76
    ld e, a
    xor l
    rst $28
    dec d
    ld d, a
    xor l
    xor l
    ld e, [hl]
    db $fd
    ccf
    db $fd
    ld a, a
    rst $10
    xor b
    ld l, d
    push af
    cp l
    ld [$fcaf], a
    rst $18
    ld a, [c]
    db $fc
    rst $28
    db $fd
    ld l, [hl]
    rst $38
    xor [hl]
    db $fc
    rst $38
    inc bc
    rst $38
    adc e
    ld bc, $1164
    ei
    push af
    rst $20
    ld a, [$f7ce]
    push hl
    rst $18
    db $db
    cp $75
    rst $38
    ccf
    rst $38
    rra
    rst $38
    db $e3
    cp $43
    cp a
    ld a, h
    inc b
    ld a, h
    rst $38
    cp h
    rst $38
    ld a, l
    add h
    ld bc, $0a35
    xor e
    rst $38
    rst $38
    ld e, a
    ld l, a
    cp a
    or a
    rst $38
    rst $18
    ld a, a
    xor a
    add h
    ld bc, $0fef
    ld [de], a
    rst $38
    ld [hl], l
    rst $18
    ld d, [hl]
    cp a
    dec sp
    rst $10
    sbc a
    push af
    rra
    or $1b
    rst $30
    ld e, a
    push af
    add e
    nop
    db $10
    dec de
    ret nc

    rst $28
    jr nz, @+$01

    and l
    rst $38
    xor d
    rst $38
    and l
    ld a, a
    ldh [$bf], a
    ld d, e
    cp [hl]
    or l
    ld a, a
    ld d, [hl]
    cp a
    ei
    rla
    ld e, a
    or l
    cp a
    ld d, [hl]
    ei
    rla
    rst $38
    dec d
    add e
    ld bc, $0e60
    db $dd
    ld [$f42b], a
    or l
    ld [$f7aa], a
    or l
    ld l, d
    db $eb
    or h
    nop
    rst $38
    ld sp, hl
    add $00
    inc [hl]
    ld b, $ff
    rst $38
    rst $18
    cp a
    cp a
    rst $18
    rst $38
    add d
    sub b
    add a
    adc a
    inc de
    push de
    cp e
    cp e
    push de
    cp a
    rst $28
    ld a, a
    rst $28
    cp a
    rst $28
    ccf
    rst $28
    rst $38
    rst $28
    ld a, [$b9ad]
    xor $ff
    rst $28
    and e
    adc e
    and e
    sub e
    ld [$f7ff], sp
    cp l
    ld d, a
    ld e, l
    or a
    rst $38
    rst $30
    ld a, h
    adc b
    nop
    db $fd
    add e
    ld bc, $11d2
    ld c, a
    rst $38
    db $fc
    rst $08
    ld l, a
    rst $38
    xor [hl]
    rst $38
    adc $ff
    db $ed
    rst $38
    xor $ff
    db $fd
    rst $38
    ldh [rIE], a
    add a
    sbc a
    nop
    ld a, a
    add h
    and b
    ldh [$29], a
    rst $28
    rra
    rst $38
    call z, $ff6e
    xor a
    cp $cf
    cp $ed
    cp $ee
    rst $38
    db $fd
    ld a, [$f4eb]
    inc b
    ei
    ld l, e
    push de
    ld d, l
    xor d
    daa
    ret c

    rst $18
    and b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    inc d
    db $eb
    jp hl


    ld d, a
    ld d, b
    xor a
    push af
    ld a, [bc]
    and l
    adc a
    dec b
    rst $38
    nop
    rst $20
    ld hl, sp-$31
    ldh a, [$c3]
    ld bc, $8740
    add a
    inc bc
    rst $38
    nop
    rst $38
    nop
    adc e
    add a
    rlca
    rra
    or $7b
    rst $10
    ld e, a
    or l
    dec sp
    sbc $87
    nop
    jr jr_00c_699a

    db $f4
    cp e
    ld l, l
    cp a
    di
    cp a
    xor $bf
    db $fd
    ccf
    ld a, [$f5bf]
    cp a
    ldh [rIE], a
    ld e, a
    or [hl]
    cp e
    ld [hl], a
    ld e, a
    or l
    ei
    ld e, $55

jr_00c_699a:
    xor e
    add l
    ld [bc], a
    ld c, d
    rrca
    rst $30
    cp b
    ld l, [hl]
    cp l
    rst $38
    cp e
    rst $28
    cp [hl]
    db $fd
    ld a, $fa
    cp a
    push af
    cp d
    db $eb
    db $f4
    add e
    ld [bc], a
    call z, $02a9
    jp nz, $0283

    jp c, $bf03

    pop de
    sbc a
    pop af
    add l
    adc a
    dec bc
    sbc [hl]
    rst $38
    cp $f1
    ld a, a
    xor b
    cp [hl]
    ld l, c
    ld a, l
    xor d
    cp $29
    add a
    ld [bc], a
    add sp, $07
    ld e, a
    or h
    cp [hl]
    ld d, l
    ld e, l
    or [hl]
    cp [hl]
    ld d, l
    add a
    ld [bc], a
    ld hl, sp-$7c
    ld bc, $0ac9
    cp l
    rst $38
    cp l
    ld a, [hl]
    db $db
    rst $38
    jp $e7bd


    db $db
    rst $38
    db $ed
    rst $28
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
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    dec b
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, $1f
    ld e, $1f
    ld l, $2f
    ld l, $2f
    ld l, $2f
    ld l, $2f
    ld a, $3f
    ld a, $3f
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
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld [hl], $36
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld [hl], $36
    ld [hl], $36
    ld b, $06
    ld b, $06
    ld [hl], $36
    ld [hl], $36
    ld b, $06
    ld b, $06
    ld [hl], $36
    ld [hl], $36
    ld b, $06
    ld b, $06
    dec hl
    inc l
    inc l
    dec l
    dec sp
    inc a
    inc a
    dec a
    dec sp
    inc a
    inc a
    dec a
    ld c, e
    ld c, h
    ld c, h
    ld c, l
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    ld b, $00
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, e
    ld e, e
    ld c, h
    ld c, h
    ld e, e
    ld e, e
    ld c, h
    ld c, h
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
    rlca
    rlca
    ld b, $00
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [de]
    rlca
    rlca
    rlca
    ld a, [de]
    ld h, $26
    rlca
    ld a, [de]
    rlca
    rlca
    rlca
    ld bc, $0202
    ld [bc], a
    rlca
    rlca
    rlca
    inc e
    rlca
    ld h, $26
    inc e
    rlca
    rlca
    rlca
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $10
    ld de, $1111
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [de]
    dec de
    dec de
    dec de
    ld bc, $0202
    ld [bc], a
    ld de, $1111
    ld [de], a
    dec bc
    dec bc
    dec bc
    inc c
    dec de
    dec de
    dec de
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $10
    ld de, $1111
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [de]
    dec de
    scf
    jr c, jr_00c_6b3e

    ld [bc], a

jr_00c_6b3e:
    add hl, sp
    ld a, [hl-]
    ld de, $1111
    ld [de], a
    dec bc
    dec bc
    dec bc
    inc c
    dec de
    dec de
    dec de
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $1a
    dec de
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    ld a, [de]
    dec de
    scf
    jr c, jr_00c_6b5e

    ld [bc], a

jr_00c_6b5e:
    add hl, sp
    ld a, [hl-]
    rlca
    rlca
    rlca
    inc e
    rlca
    rlca
    rlca
    inc e
    jr jr_00c_6b83

    rlca
    inc e
    rla
    rla
    ld [bc], a
    ld d, $10
    ld de, $1111
    inc de
    ld c, b
    ld c, b
    ld c, b
    inc de
    ld c, b
    ld c, b
    ld c, b
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld de, $1111

jr_00c_6b83:
    ld [de], a
    ld c, b
    ld c, b
    ld c, b
    dec d
    ld c, b
    ld c, b
    ld c, b
    dec d
    dec bc
    dec bc
    dec bc
    inc c
    ld a, [de]
    rlca
    rlca
    rlca
    ld a, [de]
    rlca
    rlca
    rlca
    ld a, [de]
    rlca
    scf
    jr c, jr_00c_6b9e

    ld [bc], a

jr_00c_6b9e:
    add hl, sp
    ld a, [hl-]
    rlca
    rlca
    rlca
    inc e
    rlca
    rlca
    rlca
    inc e
    ld [$0709], sp
    inc e
    rla
    rla
    ld [bc], a
    ld d, $1a
    dec de
    dec de
    dec de
    ld a, [de]
    ld h, $26
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    ld bc, $0202
    ld [bc], a
    inc hl
    inc h
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    scf
    jr c, jr_00c_6be6

    dec de
    add hl, sp
    ld a, [hl-]
    ld [bc], a
    ld [bc], a
    dec de
    dec de
    dec de
    inc e
    dec de
    ld h, $26
    inc e
    dec de
    dec de
    dec de
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $11
    ld de, $1111
    ld c, b
    ld c, b

jr_00c_6be6:
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    dec bc
    dec bc
    dec bc
    dec bc
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    jr nz, jr_00c_6bfe

    jr nc, jr_00c_6c2c

    ld [hl-], a
    dec b
    ld [hl+], a

jr_00c_6bfe:
    ld b, c
    ld [hl-], a
    dec b
    dec b
    ld e, $1f
    ld hl, $3e05
    ccf
    inc sp
    inc [hl]
    dec [hl]
    dec b
    inc sp
    ld b, h
    dec h
    dec b
    dec de
    dec de
    dec de
    dec de
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    dec de
    dec de
    dec de
    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, c
    ld b, d
    ld d, e
    ld d, e
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld a, [de]
    dec de
    dec de
    dec de

jr_00c_6c2c:
    ld bc, $0202
    ld [bc], a
    jr nc, jr_00c_6c72

    ld b, c
    ld b, d
    ld [hl+], a
    ld d, b
    ld d, c
    ld d, d
    ld [hl+], a
    ld b, c
    ld b, d
    ld d, e
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    ld b, e
    ld b, h
    ld b, l
    dec [hl]
    ld d, d
    ld d, h
    ld d, l
    dec h
    ld d, e
    ld b, e
    ld b, h
    dec h
    ld d, d
    ld d, d
    ld d, h
    ld d, l
    dec b
    jr nz, jr_00c_6c64

    ld de, $3231
    dec bc
    dec bc
    ld b, c
    ld b, d
    ld d, e
    ld d, e
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld de, $2111
    dec b

jr_00c_6c64:
    dec bc
    dec bc
    inc sp
    inc [hl]
    ld d, e
    ld d, e
    ld b, e
    ld b, h
    ld d, d
    ld d, d
    ld d, d
    ld d, h
    ld [hl+], a
    ld b, c

jr_00c_6c72:
    ld b, d
    ld d, e
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    dec sp
    ld a, [de]
    daa
    jr z, jr_00c_6cb8

    ld bc, $2a29
    ld d, e
    ld b, e
    ld b, h
    dec h
    ld d, d
    ld d, d
    ld d, h
    ld d, l
    dec de
    dec de
    inc e
    dec a
    ld [bc], a
    ld [bc], a
    ld d, $3d
    ld b, c
    ld a, [de]
    dec de
    dec de
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld a, [de]
    dec de
    daa
    jr z, jr_00c_6c9e

    ld [bc], a

jr_00c_6c9e:
    add hl, hl
    ld a, [hl+]
    dec de
    dec de
    inc e
    ld b, h
    ld d, d
    ld d, d
    ld d, d
    ld d, h
    dec de
    dec de
    dec de
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_00c_6cb8:
    dec b
    jr nz, jr_00c_6ccc

    ld de, $3231
    dec bc
    dec bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld de, $2111
    dec b

jr_00c_6ccc:
    dec bc
    dec bc
    inc sp
    inc [hl]
    ld b, c
    ld b, d
    ld d, e
    ld d, e
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld a, [de]
    dec de
    daa
    jr z, jr_00c_6cde

    ld [bc], a

jr_00c_6cde:
    add hl, hl
    ld a, [hl+]
    ld d, e
    ld d, e
    ld b, e
    ld b, h
    ld d, d
    ld d, d
    ld d, d
    ld d, h
    dec de
    dec de
    dec de
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $58
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld de, $1111
    ld de, $0b0b
    dec bc
    dec bc
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    dec de
    dec de
    dec de
    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    inc d
    inc d
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld de, $1111
    ld de, $0b0b
    dec bc
    dec bc
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld c, d
    ld e, c
    ld e, c
    ld e, c
    ld c, d
    ld b, $06
    ld b, $4a
    ld b, $06
    ld b, $5a
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld c, d
    ld b, $06
    ld b, $4a
    ld b, $06
    ld b, $4a
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld c, d
    ld b, $06
    ld b, $4a
    ld b, $06
    ld b, $4a
    ld b, $06
    ld b, $4a
    ld b, $06

Call_00c_6e3f:
    ld b, $4e
    ld c, a
    ld b, $06
    ld e, [hl]
    ld e, a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $4a
    ld b, $06
    ld b, $4a
    ld b, $06
    ld b, $4a
    ld b, $06
    ld b, $4a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, [hl]
    ld c, a
    dec b
    dec b
    ld e, [hl]
    ld e, a
    ld c, d
    ld b, $06
    ld b, $4a
    ld b, $06
    ld b, $5a
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld b, $06
    ld b, $4a
    ld b, $06
    ld b, $4a
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, h
    ld c, h
    ld e, e
    ld e, e
    dec sp
    ld b, $06
    ld b, $3b
    ld b, $06
    ld b, $3b
    ld b, $06
    ld b, $3b
    ld b, $06
    ld b, $06
    ld b, $06
    dec a
    ld b, $06
    ld b, $3d
    ld b, $06
    ld b, $3d
    ld b, $06
    ld b, $3d
    dec sp
    dec b
    dec b
    dec b
    dec sp
    dec b
    dec b
    dec b
    dec sp
    dec b
    dec b
    dec b
    dec sp
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec a
    dec b
    dec b
    dec b
    dec a
    dec b
    dec b
    dec b
    dec a
    dec b
    dec b
    dec b
    dec a
    dec sp
    ld b, $06
    ld b, $3b
    ld b, $06
    ld b, $3b
    ld b, $06
    ld b, $4b
    ld c, h
    ld c, h
    ld c, h
    ld b, $06
    ld b, $3d
    ld b, $06
    ld b, $3d
    ld b, $06
    ld b, $3d
    ld c, h
    ld c, h
    ld c, h
    ld c, l
    dec sp
    dec b
    dec b
    dec b
    dec sp
    dec b
    dec b
    dec b
    dec sp
    dec b
    dec b
    dec b
    ld c, e
    ld c, h
    ld c, h
    ld c, h
    dec b
    dec b
    dec b
    dec a
    dec b
    dec b
    dec b
    dec a
    dec b
    dec b
    dec b
    dec a
    ld c, h
    ld c, h
    ld c, h
    ld c, l
    ld e, h
    ld c, h
    ld c, h
    ld c, h
    dec a
    inc d
    inc d
    inc d
    dec a
    inc d
    inc d
    inc d
    dec a
    inc d
    inc d
    inc d
    ld c, h
    ld c, h
    ld c, h
    ld e, l
    inc d
    inc d
    inc d
    dec sp
    inc d
    inc d
    inc d
    dec sp
    inc d
    inc d
    inc d
    dec sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    dec a
    inc d
    inc d
    inc d
    dec a
    inc d
    inc d
    inc d
    dec a
    inc d
    inc d
    inc d
    dec a
    inc d
    inc d

Jump_00c_6f7f:
    inc d
    inc d
    inc d
    inc d
    dec sp
    inc d
    inc d
    inc d
    dec sp
    inc d
    inc d
    inc d
    dec sp
    inc d
    inc d
    inc d
    dec sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, h
    ld c, h
    ld e, e
    ld e, e
    ld e, $1f
    ld c, $0f
    ld a, $3f
    dec c
    dec e
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    ld c, $0f
    dec b
    dec b
    dec c
    dec e
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, $0f
    ld e, $1f
    dec c
    dec e
    ld a, $3f
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    ld c, $0f
    dec b
    dec b
    dec c
    dec e
    dec b
    dec b
    ld e, $1f
    dec b
    dec b
    ld a, $3f
    dec b
    dec b
    dec sp
    dec sp
    dec b
    dec b
    dec sp
    dec sp
    dec b
    dec b
    dec sp
    dec sp
    dec b
    dec b
    dec sp
    dec sp
    dec b
    dec b
    dec b
    dec b
    dec a
    dec a
    dec b
    dec b
    dec a
    dec a
    dec b
    dec b
    dec a
    dec a
    dec b
    dec b
    dec a
    dec a
    dec b
    dec hl
    inc l
    inc l
    dec hl
    dec sp
    dec b
    dec b
    dec sp
    dec sp
    dec b
    dec b
    dec sp
    dec sp
    dec b
    dec b
    inc l
    inc l
    dec l
    dec b
    dec b
    dec b
    dec a
    dec l
    dec b
    dec b
    dec a
    dec a
    dec b
    dec b
    dec a
    dec a
    dec sp
    dec sp
    dec b
    dec b
    dec sp
    dec sp
    dec b
    dec b
    dec sp
    ld c, e
    ld c, h
    ld c, h
    ld c, e
    ld c, h
    ld c, h
    ld c, h
    dec b
    dec b
    dec a
    dec a
    dec b
    dec b
    dec a
    dec a
    ld c, h
    ld c, h
    ld c, l
    dec a
    ld c, h
    ld c, h
    ld c, h
    ld c, l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, h
    ld c, h
    dec b
    dec b
    ld c, h
    dec sp
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, h
    ld c, h
    dec b
    dec b
    dec a
    ld c, h
    inc l
    inc l
    inc l
    inc l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, [hl]
    ld b, a
    ld c, h
    ld c, h
    ld d, [hl]
    ld d, a
    ld c, h
    ld c, h
    dec sp
    ld b, $06
    ld b, $4b
    ld c, h
    ld e, e
    ld e, e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $3d
    ld c, h
    ld c, h
    ld c, h
    ld c, l
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec sp
    dec b
    ld e, $1f
    dec sp
    dec b
    ld a, $3f
    dec sp
    dec b
    ld e, $1f
    dec sp
    dec b
    ld a, $3f
    ld e, $1f
    dec b
    dec a
    ld a, $3f
    dec b
    dec a
    ld e, $1f
    dec b
    dec a
    ld a, $3f
    dec b
    dec a
    ld c, l
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld c, e
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    dec sp
    dec sp
    ld e, $1f
    dec sp
    dec sp
    ld a, $3f
    dec sp
    dec sp
    ld e, $1f
    dec sp
    dec sp
    ld a, $3f
    ld e, $1f
    dec a
    dec a
    ld a, $3f
    dec a
    dec a
    ld e, $1f
    dec a
    dec a
    ld a, $3f
    dec a
    dec a
    ld sp, $4040
    ld b, b
    ld b, c
    ld b, l
    ld b, l
    ld b, l
    ld b, c
    ld b, l
    ld b, l
    ld b, l
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld b, b
    ld b, b
    ld b, b
    inc [hl]
    ld b, l
    ld b, l
    ld b, l
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, h
    ld d, d
    ld d, d
    ld d, d
    ld d, h
    nop
    nop
    nop
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
    db $10
    db $10
    stop
    nop
    nop
    nop
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    halt
    halt
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
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
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], c
    rlca
    rlca
    sub l
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
    ld [hl], c
    rlca
    rlca
    sub l
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], c
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
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], c
    rlca
    rlca
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
    rlca
    rlca
    rlca
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    daa
    daa
    daa
    ld hl, $2727
    ld hl, $2721
    daa
    ld hl, $0027
    nop
    rlca
    rlca
    daa
    ld hl, $2127
    ld hl, $2121
    ld hl, $2721
    ld hl, $0727
    rlca
    rlca
    rlca
    daa
    ld hl, $2727
    ld hl, $2721
    daa
    ld hl, $2727
    daa
    rlca
    rlca
    rlca
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
    rlca
    ld hl, $2121
    ld hl, $0007
    rlca
    nop
    sub l
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    sub l
    rlca
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
    and e
    nop
    rlca
    nop
    rlca
    and c
    rlca
    and c
    and b
    rlca
    and b
    rlca
    rlca
    and c
    rlca
    and c
    and b
    rlca
    and b
    rlca
    rlca
    and l
    rlca
    rlca
    and h
    rlca
    rlca
    rlca
    rlca
    and l
    rlca
    rlca
    and h
    rlca
    rlca
    rlca
    ld hl, $2121
    ld hl, $2121
    ld hl, $a321
    and e
    rlca
    rlca
    and e
    and e
    rlca
    rlca
    ld hl, $2121
    ld hl, $2121
    ld hl, $a321
    nop
    rlca
    nop
    rlca
    ld [de], a
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
    rlca
    nop
    rlca
    nop
    ld [de], a
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    ld [de], a
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
    rlca
    rlca
    rlca
    ld [de], a
    nop
    rlca
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
    or d
    rlca
    nop
    or d
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
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
    or d
    or d
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
    ld [hl], c
    rlca
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld hl, $2121
    ld hl, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld hl, $2121
    ld hl, $2121
    ld hl, $0721
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00c_7701:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00c_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
