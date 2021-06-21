; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $052", ROMX[$4000], BANK[$52]

    ld l, c

Call_052_4001:
    dec b
    dec b
    rlca
    ld [bc], a

Call_052_4005:
    inc bc
    ld bc, $6c01
    dec b
    inc b
    inc b
    ld b, $06
    rlca
    ld [bc], a
    ld b, e
    rlca
    inc bc
    ld [hl+], a
    inc bc
    inc hl
    ld bc, $030e
    inc bc
    rlca
    inc c
    rra
    db $10
    ccf
    jr nz, jr_052_4056

    ld b, b
    ld l, d
    ld b, b
    ld d, a
    add b
    db $eb
    ld b, h
    add b
    rst $38
    rrca
    rst $18
    and b
    ld l, e
    ld d, h
    ld d, l
    ld l, d
    ld [hl+], a
    dec a
    db $10
    rra
    dec d
    rra
    dec bc
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    inc hl
    inc b
    ld [bc], a
    nop
    inc b
    nop
    ld h, $08
    add h
    add $14
    inc c
    inc bc
    rlca
    ld bc, $8203
    add e
    and c
    pop hl
    ld e, b
    ld hl, sp-$42
    cp $3f
    ccf
    cpl

jr_052_4056:
    ccf
    inc hl
    scf
    jr nc, jr_052_40cc

    dec h
    ld [hl], b
    ldh [$34], a
    ld [hl], c
    ld [hl], c
    ld sp, $3372
    or d
    or a
    or h
    cp $f8
    rst $20
    db $f4
    push hl
    or $fb
    db $fc
    rst $18
    add sp, $7e
    push bc
    cp $43
    cp $03
    rst $38
    ld bc, $00ff
    cp $01
    db $fd
    ld [bc], a
    ld a, [$f405]
    dec bc

jr_052_4083:
    xor b
    ld d, a
    ld b, b
    cp a
    add c
    ld a, a
    and e
    rst $38
    rst $08
    ld a, l
    ld sp, hl
    ld sp, $28e8
    ld l, h
    jr z, jr_052_40d4

    ld [hl+], a
    ld b, h
    nop
    ld [bc], a
    inc h
    add d
    ld bc, $8180
    ld h, a
    ldh [rNR44], a
    add b
    add b
    ret nz

    ldh [rSVBK], a

jr_052_40a5:
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    ld a, h
    ld a, h
    cp [hl]
    cp $ae
    cp $ee
    cp $37
    ccf
    ld [hl], a
    ld a, [hl]
    or a
    call z, Call_052_40bf
    rst $38
    nop
    xor a
    nop
    ld d, a

Call_052_40bf:
    nop
    cp a
    nop
    ld e, a
    nop
    ld b, l
    rst $38
    nop
    jr jr_052_4083

    ld b, l
    ld d, l
    xor d

jr_052_40cc:
    jr z, jr_052_40a5

    ld [de], a
    rst $38
    adc a
    db $fd
    rst $28
    ld a, b

jr_052_40d4:
    ld e, a
    ret c

    rst $18
    ld d, c
    ld d, a
    pop de
    sub e
    sub c
    add d
    and c
    ld [bc], a
    ld hl, $2402
    ld [hl+], a
    ld a, [bc]
    or [hl]
    and d
    xor d
    and d
    or [hl]
    and d
    cp h
    and d
    rra
    and c
    ld c, a
    ld b, h
    ld d, c
    ld e, a
    ld a, c
    add hl, de
    ret nz

    ret nz

    ldh a, [$30]
    ret


    dec sp
    db $f4
    inc a
    db $fd
    ld a, $ff
    rra
    rst $38
    rrca
    rst $30
    rrca
    db $eb
    rla
    pop de
    cpl
    jp hl


    rla
    ret nc

    cpl
    and b
    ld e, a
    ld b, e
    ld bc, $0bff
    rlca
    cp $8f
    ld hl, sp-$72
    ld hl, sp-$2b
    ld hl, sp+$2a
    jr nc, @+$7f

    ld b, b
    ld b, e
    ccf
    jr nz, jr_052_412b

    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_052_4133

    dec [hl]
    dec d

jr_052_412b:
    ld a, [de]
    add e
    nop
    ld c, d
    ld bc, $0f0c
    add e

jr_052_4133:
    nop

jr_052_4134:
    jr z, jr_052_4159

    ld [bc], a
    ld [hl], b
    nop
    ld bc, $0083
    ld d, b
    ldh [$2d], a
    ld [$3108], sp
    jr nc, jr_052_41ab

    ld h, e
    sbc h

jr_052_4146:
    or h
    jr z, jr_052_4181

    ld d, b
    jr c, jr_052_4134

jr_052_414c:
    jr c, jr_052_4146

    ld a, b
    ld hl, sp-$04
    ld hl, sp-$64
    cp h
    call c, $fede
    rst $18
    db $fd

jr_052_4159:
    rst $38
    db $fc
    ei
    rst $38
    jr c, jr_052_4197

    ld a, [hl]
    ld l, [hl]
    rst $38
    add c
    rst $38
    nop
    cp a
    nop
    ld e, [hl]
    ld bc, $01fe
    ld a, a
    nop
    add e
    nop
    sbc [hl]
    add e
    add e
    ld bc, $2bd4
    add e
    nop
    and h
    dec c
    and b
    ld e, a
    jr nz, @+$01

    ldh a, [$df]
    ld sp, hl
    rrca

jr_052_4181:
    ld a, a
    rra
    jr nc, jr_052_4195

    jr nz, jr_052_41a7

    ld l, l
    dec bc
    jr nc, jr_052_41fb

    adc b
    adc b
    ld [$3008], sp
    jr nc, @-$3e

    ld b, b
    add b
    add b

jr_052_4195:
    ld [hl], e
    rlca

jr_052_4197:
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    ldh [$e0], a
    add $9a
    ldh [rNR43], a
    ldh a, [$08]
    ld hl, sp+$10

jr_052_41a7:
    ldh a, [$88]
    ld hl, sp+$48

jr_052_41ab:
    ld hl, sp+$44
    db $fc
    inc h
    cp h
    inc d
    sbc h
    jr jr_052_414c

    ld [$04c8], sp
    db $fc
    ld [$28f8], sp
    add sp, $40
    call nz, $a4a4
    jr nz, @+$34

    sub d
    sub d
    sub c
    sbc c
    rst $38
    ld [hl], c

jr_052_41c8:
    ldh [$29], a
    rra
    rra
    inc a
    inc hl
    jr c, @+$29

    ld hl, $113e
    ld e, $13
    inc e
    dec bc
    inc c
    rrca
    ld [$0407], sp
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    inc de
    ld sp, $2e2f
    jr z, jr_052_4210

    ld b, [hl]
    ld e, b
    ld a, [hl]
    ld b, b
    ccf
    jr nz, jr_052_420c

    db $10
    ld a, [bc]
    dec c
    ld [bc], a
    inc bc
    ld bc, $7b01
    dec de
    ld bc, $0403
    inc c
    db $10

jr_052_41fb:
    stop
    jr nz, jr_052_4210

    jr nz, @+$01

    ret nz

    ld a, [hl]
    pop bc
    rst $38
    ld b, b
    rst $18
    jr nz, jr_052_41c8

    ld h, b
    xor [hl]
    ld d, c

jr_052_420c:
    rst $00
    rrca
    rlca
    add b

jr_052_4210:
    add a
    inc b
    ld b, h
    rlca
    inc d
    ld b, $00
    rrca
    inc sp
    inc c
    inc bc
    rrca
    ld bc, $1f43
    nop
    ld bc, $003f
    ld b, e
    rst $38
    nop
    dec d
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    rrca
    ld d, b
    inc hl
    inc l
    inc b
    inc hl
    inc de
    db $10
    dec bc
    ld [$0700], sp
    inc b
    inc b
    inc bc
    inc bc
    ld h, a
    ld [$e0c0], sp
    ld [hl], c
    add hl, de
    ld a, [hl]
    ld b, $fc
    nop
    cp $83
    xor e
    ld bc, $bf80
    ld b, l
    ld b, b
    rst $38
    ld [bc], a
    add b
    rst $38
    nop
    ld b, l
    rst $28
    ld d, b
    inc bc
    rst $38
    ld bc, $18e7
    ld b, e
    rst $38
    add b
    ld c, [hl]
    rst $38
    nop
    ld [bc], a
    ld bc, $00ff
    and e
    xor c
    dec bc
    ld a, a
    add d
    rst $00
    dec a
    rst $38
    ld c, $79
    adc c
    jr nc, jr_052_42c3

    ldh [$e0], a
    ld h, l
    dec bc
    rlca
    rrca
    ld sp, $817f
    rst $38
    inc bc
    ld a, a
    ld b, a
    ccf
    rst $20
    rra
    ld b, h
    rst $38
    rrca
    ld b, e
    rra
    rst $38
    ldh [$32], a
    ccf
    cp $1e
    cp $06
    cp $12
    rst $28
    add hl, hl
    rst $08
    jp hl


jr_052_4296:
    ld [hl], a
    dec c
    db $e3
    sub e
    db $eb
    sub d
    ld [hl], a
    adc d
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $38
    nop
    or $39
    rst $00
    ld c, l
    add e
    add l
    rst $00
    ld a, [hl-]
    rst $38
    ld [bc], a
    cp $03

jr_052_42b2:
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld [$f0ff], sp
    rst $38
    add e
    ld a, h
    ld a, h
    xor c
    nop
    ld c, [hl]
    dec h
    add b

jr_052_42c3:
    rst $08
    add b
    ld h, c
    dec bc
    ld [hl], b
    ld [hl], b
    adc b
    adc b
    jr @+$0a

    jr nc, jr_052_42df

    ld h, b
    jr nz, jr_052_42b2

    and b
    ld b, e
    ldh a, [$90]
    ld d, $b0
    ldh a, [$e8]
    xor b
    ret z

    ret z

    adc h
    inc b

jr_052_42df:
    adc h
    ld b, h
    xor h
    ld b, h
    sbc h
    ld b, h
    inc l
    add h
    ret c

    ld [$08f8], sp
    ldh a, [rNR10]
    ldh [$a8], a
    nop
    sbc l
    and h
    adc e
    ld a, [bc]
    rlca
    ld [bc], a
    inc bc
    dec b
    rlca
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld [de], a
    ld d, $a3
    sbc l
    inc bc
    rrca
    ld [$0506], sp
    add a
    nop
    jr c, jr_052_4296

    nop
    ld [hl], b
    rlca
    add e
    rrca
    add c
    sbc a
    ld b, b
    rst $38
    nop
    rst $38
    adc d
    nop
    add l
    add [hl]
    nop
    ret nz

    nop
    nop
    sub b
    nop
    ret z

    and e
    sbc l
    ldh [$28], a
    ld [bc], a
    db $fd
    ld [bc], a
    cp $02
    rst $38
    rlca
    ei
    dec sp
    rst $10
    ld d, e
    db $d3
    ld l, a
    cp c
    ld b, h
    ld a, c
    add h
    db $fd
    ld [bc], a
    rst $38
    ld bc, $06fb
    rst $30
    ld [$e1de], sp
    rra
    ld sp, $190f
    rra
    ld [$02ff], a
    cp $01
    ei
    inc b
    rst $30
    ld [$018b], sp
    ld [hl], $05
    ld bc, $0e01
    rrca
    jr @+$19

    ld b, e
    ld de, $031e
    add hl, bc
    ld c, $0b
    inc c
    adc e
    rst $38
    ld b, e
    rrca
    add b
    adc h
    rst $28
    ld bc, $ff00
    ld h, h
    inc de
    ld b, $0e
    ld de, $233f
    rst $38
    add e
    rst $38
    rlca
    ld a, a
    rst $00
    ccf
    rlca
    add b
    add a
    nop
    rlca
    jr jr_052_4385

    inc b
    add a
    nop
    ld a, b
    dec b
    rst $38
    nop

jr_052_4385:
    rst $28
    jr nc, @+$01

    ld b, b
    adc c
    nop
    add $ff
    ld h, c
    ld [bc], a
    ld bc, $0001
    inc hl
    ld [bc], a
    ld a, [de]
    inc bc
    ld b, $07
    ld [$080b], sp
    rrca
    ld de, $1316
    inc e
    dec bc
    inc c
    rrca
    ld [$090f], sp
    rrca
    ld [$0c0b], sp
    dec b
    ld b, $04
    rlca
    ld [bc], a

jr_052_43af:
    inc bc
    jp $23a0


    ld bc, $0245
    inc bc
    rst $00
    add [hl]
    add l
    add a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0744
    inc b
    ld bc, $0303
    ld h, l
    ld de, $1404
    ld [de], a
    ld [de], a
    and c
    xor c
    jp nz, $04d6

    ld l, h
    ld [bc], a
    ld a, [$fc04]
    ld [$88f8], sp
    ld a, b
    ld b, e
    call nz, $103c
    ret z

    jr c, jr_052_43af

    ccf
    ret


    add hl, sp
    add b
    ld [hl], c
    nop
    ld [$f500], a
    add b
    db $eb
    add b
    rst $38
    add b
    ld c, l
    rst $38
    nop
    rrca
    ld e, a
    add b
    xor d
    ld h, b
    push af
    rra
    ld a, a
    db $10
    rst $38
    ldh [rIE], a
    sub b
    sbc a
    ld [$c0ff], sp
    ld b, e
    rst $38
    nop
    inc b
    rst $20
    pop bc
    rst $38
    ld a, $3e
    add h
    pop de
    nop
    inc b
    inc hl
    ld a, [bc]
    add hl, bc
    dec d
    dec d

jr_052_4414:
    jr nz, @+$30

    jr nz, jr_052_4457

    ld b, b
    ld a, a
    ld c, h
    ld [hl], e
    ld b, e
    sbc [hl]
    pop hl
    nop
    cp [hl]
    ld b, e
    pop bc
    ld a, $00
    pop de
    ld b, e
    inc a
    jp $1901


    rst $20
    xor [hl]
    rrc a
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    db $f4
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $30
    ld [hl+], a
    rst $38
    inc e
    ld b, [hl]
    rst $38
    nop
    inc bc

jr_052_4443:
    jr c, @+$01

    rst $00
    rst $00
    ld h, e
    add hl, de
    jr z, @+$2a

    ld d, h
    ld d, h
    ld b, h
    ld b, h
    add h
    adc h
    ld [$0858], sp
    xor b
    db $10
    ld d, b

jr_052_4457:
    db $10
    ldh a, [$08]
    add sp, $08
    ld hl, sp+$04
    db $f4
    jr @-$06

    jr nz, jr_052_4443

    and l
    nop
    ld l, $61
    and e
    nop
    ld [hl], $a9
    nop
    jr z, jr_052_4482

    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_052_4414

    db $10
    ret nc

    add hl, bc
    xor c
    ld b, $d7
    nop
    rst $38

jr_052_447c:
    jr c, jr_052_447c

    ld b, h
    rst $08
    add d
    rst $38

jr_052_4482:
    ld l, b
    ld b, h
    rst $38
    nop
    inc bc
    rlca
    rst $38
    ld hl, sp-$08
    db $ec
    scf
    ld de, $e0e0
    db $10
    jr nc, jr_052_449b

    ld hl, sp-$38
    ld hl, sp+$04
    xor h
    ld [bc], a
    ld d, [hl]

jr_052_449a:
    ld [bc], a

jr_052_449b:
    xor [hl]
    ld [bc], a
    cp $1c
    db $fc
    ret z

    sub b
    ld [$00ff], sp
    sub a
    nop
    set 0, e
    rst $38
    ld a, a
    rst $38
    add l
    nop
    adc d
    add hl, bc
    ld [bc], a
    rst $38
    rla
    rst $38
    ld [hl], l
    rst $38
    db $f4
    rst $38
    call nc, $44ff
    ld [hl+], a
    rst $30
    nop
    rst $38
    add l
    ld bc, $0920
    ld de, $0ad1
    xor d
    ld b, $d7
    ld a, [hl-]
    rst $38
    ld b, l
    rst $08
    adc c
    call $0843
    ld hl, sp+$01
    and h
    db $ec
    add e
    sbc a
    add hl, bc
    ld hl, $12a1
    db $d3
    ld a, [bc]
    xor e
    ld a, $ff
    ld b, l
    rst $08
    add e
    ld bc, $0230
    jp nz, $38ff

    adc h
    ld bc, $0035
    ld h, b
    add e
    xor l
    nop
    jr c, @+$45

    ld [$18f8], sp
    db $10
    ldh a, [$6c]
    db $fc
    ld b, b
    pop bc
    ld [hl+], a
    ld [c], a
    jr nz, @-$5a

    inc d
    call nc, $a808
    inc b
    call nc, $ee02
    add hl, sp
    rst $38
    ld b, h
    rst $08
    ld b, h
    rst $38
    jr nc, jr_052_449a

    xor a
    dec b
    and b
    and b
    db $10
    stop
    ld [$2262], sp
    ld [$100a], sp
    db $10
    ld c, h
    db $fc
    db $10
    ld e, $10
    dec e
    ld [$080f], sp
    ld b, h
    rrca
    inc c
    dec b
    ld a, [bc]
    rrca
    dec b
    rlca
    ld [$4378], sp
    inc b
    db $fc
    db $10
    ld [$2ff8], sp
    rst $38
    add hl, hl
    ld sp, hl
    ld b, b
    pop af
    add b
    ld [$7f40], a
    add b
    rst $20
    add b
    rst $18
    add b
    and h
    nop
    rst $08
    inc b
    ld b, c
    rst $38
    ld [hl+], a
    rst $38
    dec e
    xor [hl]
    nop
    ld [hl], l
    rst $38
    ld h, e
    ld bc, $0101
    ld [hl+], a
    ld [bc], a
    ldh [$2c], a
    ld b, $06
    inc b
    rrca
    inc e
    dec sp
    ld l, $28
    ld e, a
    ld d, b
    ld a, a
    ld l, $2f
    inc e
    ld e, h
    nop
    add b
    sbc h
    sbc b
    sbc [hl]
    cp a
    ld e, [hl]
    ld e, [hl]
    cpl
    cpl
    rlca
    rlca
    inc bc
    inc bc
    ld b, $07
    ld a, [bc]
    dec bc
    add hl, bc
    dec bc
    inc b
    inc b
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    nop
    ld [bc], a
    add l
    adc c
    ld l, d
    ld [hl+], a
    ld bc, $8f85
    dec b
    ld c, l
    ld c, l
    or c
    or c
    jr nz, jr_052_45b6

    ld h, e
    add hl, de
    ccf
    nop
    rst $38
    ld e, $e1
    ccf
    inc c
    rst $38
    jr nc, @-$0b

    ld h, d
    db $e3
    jp nc, $24d3

    ccf
    rra
    inc bc
    adc a
    nop
    rst $08
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rSCX]
    ccf
    ldh [$e0], a

jr_052_45b6:
    dec h
    ld e, a
    ret nz

    cp a
    add c
    ld a, a
    jr @+$01

    ldh [$1f], a
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    inc de
    nop
    cp a
    and b
    rst $38
    db $f4
    ld e, l
    ld a, a
    ld c, d
    ld a, [hl]
    ld h, d
    sbc [hl]
    ld a, [c]
    ld c, $02
    cp $ac
    db $fc
    ldh a, [$f0]
    ld h, e
    ldh [$27], a
    ld h, b
    ld h, b
    sbc b
    sbc b
    inc b
    inc b
    ld [$1008], sp
    db $10

jr_052_45ea:
    ld h, b
    ld h, b
    sbc b
    ld hl, sp+$62
    cp $79
    rst $38
    dec a
    rst $38
    ld [hl-], a
    cp $0c
    db $fc
    jr nc, jr_052_45ea

    sub b
    ldh a, [$d0]
    ld [hl], b
    ret z

    ld a, b
    sub [hl]
    ld l, [hl]
    bit 6, l
    push de
    ld l, d
    add d
    db $fd
    ld b, e
    add b
    rst $38
    ldh [rNR42], a
    ret nz

    ld a, a
    ld h, b
    ld a, a
    ldh a, [$1f]
    ld h, b
    ccf
    ldh [$3f], a
    ld d, b
    rra
    pop hl
    ccf
    rst $00
    ld a, a
    rst $28
    ld a, a
    rst $38
    ld a, a
    db $fd
    rst $38
    ld e, c
    ld a, a
    ld sp, $794f
    add a
    add c
    rst $38
    xor d
    cp $7c
    ld a, h
    ld [hl], c
    ld b, $03
    rlca
    nop
    ld [$1010], sp
    nop
    ld [hl+], a
    jr nz, jr_052_463b

jr_052_463b:
    nop
    inc h
    ld b, b
    ld c, $55
    ld b, b
    ld_long $ffc0, a
    ld hl, sp-$09
    ld a, [hl]
    ld a, e
    rst $38
    dec sp
    rst $38
    add hl, hl
    rst $38
    ld bc, $ff44
    nop
    rla
    db $10
    rst $38
    or b
    rst $38
    ld d, b
    rst $38
    cp c
    rst $38
    ld hl, sp-$01
    db $e4
    rst $20
    ld [c], a
    db $e3
    jp nz, $c4e3

    rst $00
    dec bc
    adc h
    ld a, [bc]
    rrca
    rlca
    rlca
    ld [hl], e
    inc bc
    add b
    ret nz

    jr nz, @+$32

    ld [hl+], a
    ld [$0419], sp
    inc e
    inc b
    inc a
    ld [bc], a
    ld l, [hl]
    ld [de], a
    cp $12
    db $76
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    dec b
    cp $06
    db $fc
    inc b
    ldh a, [$8c]
    add sp, -$28
    ret nc

    ldh a, [$a0]
    ld b, h
    ldh [rNR41], a
    nop
    ld h, b
    ld [hl+], a
    ldh a, [rTMA]
    ret nc

    ldh a, [rNR23]
    ld hl, sp+$78
    ld hl, sp-$18
    ld b, e
    ld hl, sp+$10
    ld b, $f0
    db $10
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    ld h, c
    adc l
    nop
    db $10
    dec c
    ld d, d
    ld d, d
    inc hl
    inc hl
    cpl
    jr nz, jr_052_46ca

    db $10
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
    inc hl
    ld bc, $ff01
    and b
    add $01
    daa
    jp $2201


    ld [bc], a
    nop
    ld a, a
    add b
    adc b

jr_052_46ca:
    nop
    or b

Call_052_46cc:
    ld a, [bc]
    db $fd
    ld sp, $90f1
    ld a, [c]
    jp nc, $ca72

    ld a, d
    sub [hl]
    ld l, a
    adc e
    nop
    call nz, $0361
    ld c, $1f
    jr nz, @+$62

    and a
    nop
    ld a, [hl-]
    add e
    nop
    add [hl]
    inc b
    ld a, [hl+]
    nop
    push de
    ret nz

    ei
    adc b
    ld bc, $8617
    ld bc, $184e
    jr nz, jr_052_4716

    db $10
    ld [hl], b
    db $10
    ldh a, [$08]
    cp b
    ld c, b
    ld hl, sp+$48
    ret c

    jr z, jr_052_477e

    inc h
    db $fc
    inc d
    add sp, $18
    ld hl, sp+$08
    ldh a, [$88]
    ldh [$d0], a
    add e
    add sp, $03
    ld c, [hl]
    rst $38
    ld hl, sp-$01
    add a
    nop

jr_052_4716:
    ld l, b
    rst $38
    db $ec
    daa
    rlca
    inc bc
    inc bc
    inc b
    inc b
    ld e, $1e
    ld hl, $2421
    ld b, b
    jr @+$4a

    jr nz, jr_052_4749

    jr nc, jr_052_475b

    inc l
    ld l, $1f
    rra
    rla
    scf

jr_052_4731:
    add hl, sp
    dec hl
    inc a
    inc h
    ccf
    ld b, e
    ld a, a
    ld b, b
    ld h, a
    ld e, b
    inc bc
    daa
    inc e
    inc e
    ld l, b
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    nop
    nop
    inc h
    inc b

jr_052_4749:
    dec b
    dec b
    inc b
    ld b, $04
    ld bc, $4304
    inc bc
    ld [bc], a
    inc hl
    ld bc, $3009
    ld [hl], b
    ld a, b
    adc b
    db $eb

jr_052_475b:
    sbc a
    add l
    jp $008f


    ld b, l
    ld a, a
    add b
    inc de
    ld e, h
    ld h, e
    jr jr_052_477c

    nop
    ld [$0505], sp
    ld b, $82
    ld bc, $0001
    add b
    ret nz

    ldh [$d0], a
    ret c

    ld a, b
    db $fc
    ld h, c
    add hl, bc
    db $e3
    db $e3

jr_052_477c:
    sbc a
    sbc h

jr_052_477e:
    inc bc
    inc e
    ld hl, $1f22
    rra
    xor c
    pop de
    nop
    add b

jr_052_4788:
    and h
    db $d3
    ldh [$31], a
    ld b, b
    ld b, b
    ld h, b
    jr nz, jr_052_4731

    jr nz, jr_052_4803

    db $10
    ld hl, sp+$08
    cp $06
    rst $38
    ld bc, $00ff
    or a
    rst $08
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    add b
    cp a
    ld h, b
    db $fd
    inc de
    rst $30
    inc c
    rst $38
    ld [$807f], sp
    ccf
    ld b, c
    rra
    ld [hl+], a
    ld e, $23
    add hl, de
    daa
    ld sp, $e34e
    sbc h
    add a
    db $fc
    ld c, a
    ld a, b
    and l
    and a
    and e
    and e
    inc bc
    cp $0e
    ldh a, [$f0]
    ld a, e
    ld a, [bc]
    add b
    add b
    ldh a, [$78]
    cp $06
    rst $38
    pop hl
    rst $38
    jr @+$01

    add e
    db $db
    ld [bc], a
    add b
    rst $38
    ld b, b
    ld b, h
    rst $38
    jr nz, jr_052_47e2

    and b
    cp a
    ld h, b
    ld a, a

jr_052_47e2:
    ret nz

    add l
    jp $fe01


    ld bc, $fd43
    ld [bc], a
    rlca
    di
    inc b
    add e
    ld b, h
    adc a
    adc h
    di
    di
    db $ec
    dec h
    rrca
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ret nc

    jr nc, jr_052_4788

    ld hl, sp-$38
    ld a, b

jr_052_4803:
    call nz, $e43c
    inc a
    ld b, e
    ld a, [c]
    ld e, $03
    ld [c], a
    ld e, $e4
    inc e
    ld b, e
    db $f4
    inc c
    ld b, l
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    inc bc
    ldh [rNR41], a
    ld b, b
    ret nz

    ld l, l
    rlca
    rlca
    rlca
    nop
    ld [$1010], sp
    nop
    inc h
    ld [hl+], a
    jr nz, jr_052_482e

    ld l, $3e
    ccf
    cpl

jr_052_482e:
    cpl
    inc hl

jr_052_4830:
    rra
    nop
    rrca
    ld [hl+], a
    cpl
    rlca
    daa
    ccf
    scf
    ld d, a
    ld a, b
    ld c, c
    ld h, [hl]
    ld e, [hl]
    add a
    nop
    ld c, d
    dec bc
    ld b, $0e
    rrca
    ld de, $131d
    db $e3
    di
    add c
    and b
    ld a, a
    ld h, b
    and e
    set 4, b
    inc hl
    rlca
    inc b
    ld b, $47
    ld [bc], a
    ld [bc], a
    add d
    add d
    add c
    pop bc
    pop bc
    pop hl
    and c
    and c
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    pop hl
    pop af
    rlca
    rlca
    ld hl, sp-$01
    jr nz, @+$41

    rra
    rra
    or a
    rst $08
    ld a, a
    ld [hl], b
    rst $38
    add b
    add l
    nop
    call nz, $ff1d
    db $10
    rst $38
    ld [$07ff], sp
    ei
    inc b
    ld a, a
    add b
    ccf
    ld b, e
    sbc l
    and [hl]
    dec e
    ld h, $1a
    daa
    ld hl, $835f
    cp $87
    db $fc
    add a
    ld hl, sp-$11
    ldh a, [$7f]
    add b
    add l
    nop
    ld [$018a], a
    stop
    nop
    and h
    ld bc, $872a
    ld bc, $001b
    jr nz, jr_052_4830

    ld bc, $8324
    ld bc, $002e
    or e
    adc c
    ld bc, $0b37
    jr jr_052_48d6

    inc h
    ld [hl+], a
    ld [hl+], a
    ld de, $1011
    db $10
    ld a, [bc]
    ld [$c805], sp
    nop
    ld a, [hl+]
    dec bc
    add b
    add b
    ld h, b
    ld h, b
    cp h
    inc e
    ld a, a
    inc bc
    rst $38
    nop
    ret nz

    ret nc

    add l
    ld bc, $07e2
    ld b, $07

jr_052_48d6:
    ld sp, hl
    cp $21
    ld a, $1f
    rra
    rst $38
    ld [hl], d
    ld c, $01
    ld [bc], a
    ld [bc], a
    ld b, $04
    dec c
    ld [$0802], sp
    dec e
    ld de, $111f
    rrca
    db $10
    ld b, e
    ccf
    ld hl, $3e43
    inc hl
    dec bc
    ld e, $13
    rra
    ld de, $090f
    rrca
    ld [$0407], sp
    ld bc, $2303
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $a9d2
    ldh [$66], a
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    ld a, a
    ld a, b
    add a
    add [hl]
    ld l, a
    ld h, c
    rra
    jr jr_052_4923

    inc c
    rra
    ld [hl-], a
    ld c, [hl]
    pop bc
    rlca
    nop
    ld bc, $4000
    ld b, b

jr_052_4923:
    add b
    add h
    add b
    adc b
    sbc b
    ld [$10e8], sp
    rst $38
    ret nc

    ccf
    ldh a, [rVBK]
    rst $08
    inc [hl]
    or a
    xor e
    xor e
    cp d
    cp e
    ld b, h
    rst $00
    add hl, sp
    rst $38
    add d
    cp $c7
    db $fc
    scf
    dec a
    dec bc
    ld c, $07
    rlca
    adc a
    inc b
    rst $38
    ld [$f0f8], sp
    ld d, b
    ld h, b
    add [hl]
    ld hl, sp-$80
    rst $38
    jr c, @+$01

    add $43
    cp a
    add c
    rst $38
    add c
    inc a
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    adc a
    adc l
    rst $18
    ld d, b
    rst $38
    inc hl
    rst $38
    adc h
    rst $38
    nop
    rst $38
    ld hl, $02fd
    rst $38
    inc b
    cp $00
    db $fd
    nop
    ld [bc], a
    ld h, c
    ldh [rNR42], a
    inc b
    nop
    ld [bc], a
    nop
    ld b, d
    ld b, [hl]
    ld b, c
    ld a, a
    pop bc
    rst $38
    pop hl
    ld e, $fe

jr_052_4982:
    dec b
    db $fd
    ld a, [de]
    ld a, [$fb0b]
    inc b
    db $fc
    di
    rst $38
    ld a, b
    rrca
    db $fc
    rlca
    db $fc
    rst $30
    ei
    rrca
    rst $38
    db $fc
    ldh a, [$66]
    dec bc
    ld b, $01
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    rlca
    cp $fc
    rst $38
    ld h, l
    dec b
    ldh [$e0], a
    db $10
    db $10
    ld h, b
    ld h, b
    inc hl
    add b
    add hl, de
    ldh [$60], a
    ldh a, [rNR23]
    add b
    inc b
    ld b, d
    ld [bc], a
    ld b, c
    ld b, c
    jr nz, jr_052_49dc

    ld hl, $7a20
    db $10
    push af
    db $10
    ld a, [$bf60]
    ldh [$5f], a
    ld [hl], b
    adc a
    or b
    ld b, e
    xor a
    cp b
    ldh [rNR42], a
    ld c, a
    ld a, b
    sbc a
    ldh a, [$1f]
    ldh a, [$3f]
    pop hl
    sbc $e6
    sub b
    jr @+$06

jr_052_49dc:
    inc b
    ld [bc], a
    ld [bc], a
    ld hl, $3841
    jr nz, jr_052_4982

    ld a, b
    rla
    rst $30
    db $10
    ldh a, [rNR41]
    ldh a, [$f0]
    ret nc

    ldh [rNR41], a
    ret nz

    ret nz

    ld a, c
    inc hl
    add b
    ld b, l
    ret nz

    ld b, b
    ld b, a
    ldh [rNR41], a
    rlca
    ret nz

    jr nz, @-$3e

    ld b, b
    add b
    ld b, b
    add b
    add b
    adc e
    and l
    pop de
    and d
    add h
    nop
    ld [hl], b
    ld bc, $04ff
    ld b, h
    rst $38
    add d
    inc bc
    ld b, h
    rst $38
    add hl, sp
    rst $38
    add h
    nop
    ret nz

    ld bc, $04ff
    ld b, h
    rst $38
    ld [$0403], sp
    rst $38
    di
    rst $38
    add h
    ld bc, $0210
    ldh a, [rIF]
    ldh a, [rSCX]
    cpl
    ld hl, sp+$09
    ld c, a
    ld hl, sp-$61
    ldh a, [rIE]
    ret nc

    cp a
    ld hl, sp-$39
    rst $38
    add e
    nop
    ld a, d
    dec bc
    jr c, @+$01

    ld bc, $07ff
    cp $8f
    ld hl, sp-$31
    ld hl, sp+$37
    inc a
    adc c
    nop
    add [hl]
    dec b
    ld a, a
    pop bc
    rst $38
    db $e3
    inc e
    rst $38
    add e
    nop
    jp z, $030b

    rst $38
    ldh a, [rIE]
    db $fc
    rrca
    cp $03
    cp $e3
    db $fc
    rlca
    adc c
    nop
    sub $85
    rst $08
    ld [$b08f], sp
    ld c, a
    ld a, b
    adc a
    ld hl, sp+$0f
    ld hl, sp+$1f
    add h
    rst $08
    ld bc, $afaf
    add e
    rst $08
    add hl, bc
    dec sp
    cp $05
    db $fc
    dec bc
    ld hl, sp-$71
    ld sp, hl
    rst $08
    ld sp, hl
    adc l
    rst $08
    dec c
    cp a
    db $e3
    ld e, $fe
    dec bc
    ei
    db $e4
    db $fc
    ei
    rrca
    db $fc
    rlca
    cp $e3
    ld b, e
    cp $f3
    ld bc, $e7fc
    adc l
    rst $08
    ld bc, $b09f
    adc c
    rst $08
    rst $38
    db $ec
    ld b, l
    dec h
    ld bc, $0225
    nop
    nop
    inc h
    inc b
    nop
    nop
    ld h, $08
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    rst $08
    sbc h
    inc bc
    inc bc
    rlca
    inc b
    dec b
    jp $61aa


    dec b
    rlca
    rrca
    db $10
    rra
    ld c, $0f
    ret


    sub [hl]
    adc l
    xor e
    add e
    adc a
    inc bc
    inc b
    ld c, $00
    ld [$cba3], sp
    inc hl
    jr nz, jr_052_4adb

    ld bc, $4149
    ld c, c
    add c

jr_052_4adb:
    sub c
    ld b, e
    add e
    sub e
    ld bc, $1303
    ld b, l
    rlca
    daa
    inc bc
    ld b, $27
    ld b, $47
    ld b, [hl]
    ld c, $4f
    nop
    adc a
    ld b, e
    ld e, $9f
    ld [bc], a
    rra
    sbc a
    jr jr_052_4b3a

    jr @+$12

    inc b
    db $10
    ldh a, [$f0]
    nop
    nop
    push bc
    nop
    ld c, c
    ld d, $18
    jr c, jr_052_4b2a

    inc l
    ld [de], a
    ld d, $d1
    db $db

jr_052_4b0b:
    ld sp, $18fb
    ld a, l
    adc b
    db $fd
    ret z

    rst $38
    ld d, b
    rst $38
    db $10
    db $fd
    ld l, h
    ld a, a
    ld a, $22
    ccf
    dec e
    rra
    jr nc, jr_052_4b0b

    db $ec
    cpl
    db $ec
    ccf
    ldh a, [$9d]
    ld a, [c]
    adc a
    ei
    ld b, a

jr_052_4b2a:
    ld e, h
    add c
    add c
    add h
    cp a
    ld [$10c8], sp
    db $10
    jr nc, jr_052_4b65

    ld a, [hl+]
    ld a, $49
    ld a, c
    ld c, e

jr_052_4b3a:
    ld a, e
    ld b, e
    add a
    rst $38
    ld b, $8c
    cp $8e
    cp $9f
    rst $38
    sbc a
    ld b, [hl]
    rst $38
    ccf
    ld b, e
    rrca
    rst $38
    ldh [$29], a
    dec c
    rst $38
    rra
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    dec sp
    rst $38
    inc sp
    rst $38
    ld [hl], $ff
    scf
    rst $38
    ld [hl], d
    cp $e2
    cp $4c
    ld a, h
    ld e, h

jr_052_4b65:
    ld a, h
    db $ec
    db $fc
    db $e4
    db $fc
    ld hl, sp-$08
    sbc b
    ret c

    ldh [$e0], a
    jr nz, @+$22

    ld d, b
    ld d, b
    ret nc

    ret nc

    ld d, b
    ldh a, [rLYC]
    ld c, b
    ld hl, sp+$07
    ld b, h
    db $fc
    inc b
    db $f4
    inc b
    call c, $f848
    inc hl
    db $fc
    ldh [$27], a
    call nc, $c63c
    ld c, d
    ld d, [hl]
    jp z, $3dfd

    db $e3
    ld a, $63
    cp [hl]
    and $7f
    call z, $f0fc
    ld a, [c]
    ld h, b
    ld h, e
    ld bc, $01c5
    add hl, bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    adc h
    adc h
    sbc $fe
    push de
    rst $38
    inc b
    rlca
    inc l
    cpl
    ld [hl], d
    ld a, a
    ld b, l
    ld a, [c]
    rst $38
    inc b
    ld a, [$feff]
    rst $38
    cp [hl]
    ld b, e
    rst $38
    cp d
    ld c, b
    rst $38
    ld a, [hl-]
    ld [de], a
    inc a
    rst $38
    dec a
    rst $38
    ld sp, hl
    rst $38
    inc sp
    ccf
    dec sp
    ccf
    dec e
    rra
    inc e
    rra
    rrca
    rra
    ld b, $0f
    ld bc, $00cc
    ld [hl], h
    ld a, [bc]
    jr c, @+$3a

    ld b, h
    ld a, h
    adc [hl]
    sbc $96
    or $9a
    ld a, [$c444]
    adc b
    ld de, $c080
    and [hl]
    xor [hl]
    cp l
    pop af
    ei

jr_052_4bec:
    rlca
    cp $00
    ei
    rlca
    db $fc
    inc b
    ld a, c
    cp c
    ld b, e
    ld b, d
    ld b, e
    add e
    add d
    dec c
    ld b, a
    ld b, [hl]
    jr c, jr_052_4c38

    nop
    inc b
    nop
    ld c, $03
    inc sp
    add h
    add h
    ld a, b
    ld hl, sp+$45
    jr nz, jr_052_4bec

    ld c, c
    db $10
    ldh a, [rBGP]
    ld [$01f8], sp
    nop
    ld hl, sp-$3b
    add c
    inc b
    ret z

    ld hl, sp+$30
    jr nc, jr_052_4c1d

jr_052_4c1d:
    and l
    nop
    ret c

    inc bc
    ret nz

    ld b, b
    ld b, b
    ret nz

    and h
    rst $28
    ld a, [bc]
    ld c, $0e
    ld de, $381b
    ccf
    inc [hl]
    scf
    inc l
    cpl
    ld de, $88c2
    ld [hl], c
    dec d
    add b

jr_052_4c38:
    add b
    nop
    add b
    inc e
    inc e
    ld [hl+], a
    or [hl]
    pop af
    rst $38
    jp hl


    ld l, a
    reti


    ld e, a
    ld [c], a
    ld [hl+], a
    db $fc
    inc e
    ld a, h
    add [hl]
    ld hl, sp-$08
    db $ec
    dec a
    ld [bc], a
    add b
    add b
    add b
    call z, $c380
    ld bc, $09d7
    or d
    cp [hl]
    jp nc, $e2de

    cp $44
    ld a, h
    jr c, jr_052_4c9b

    db $ec
    ld c, e
    rst $38
    ld h, e
    rlca
    inc bc
    ld bc, $0206
    rlca
    dec b
    ld c, $05
    ld b, a
    inc c
    dec bc
    ld bc, $0506
    ld [hl+], a
    inc bc
    inc d
    ld [bc], a
    rlca
    inc b

Jump_052_4c7c:
    rrca
    ld [$181f], sp
    rra
    db $10
    ccf
    jr nz, jr_052_4d01

    ld b, h
    cp h
    adc h
    ld hl, sp-$78
    ldh a, [$90]
    ld h, b
    ld h, b
    inc h
    jr nz, jr_052_4c91

jr_052_4c91:
    nop
    ld [hl+], a
    db $10
    and h
    add e
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a

jr_052_4c9b:
    ld bc, $6f01
    ldh [rNR41], a
    ld hl, sp-$10
    inc e
    inc b
    cp $e2
    ld e, $f2
    rrca
    pop af
    rrca
    ld sp, hl
    rrca
    ei
    inc e
    db $fc
    ld a, b
    ldh [rIE], a
    add b
    rst $18
    ld d, b
    rst $38
    ld [hl], h
    rst $38
    ld h, b
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    nop
    add b
    ld a, [hl]
    dec bc
    ret nz

    ld b, b
    jr c, jr_052_4cff

    ccf
    daa
    ccf
    ld hl, $111f
    ld c, $0e
    ret


    sub $13
    inc bc
    ld [bc], a
    rlca
    nop
    rlca
    dec b
    rst $30
    push af
    rra
    rrca
    rst $38
    ld bc, $00ff
    rst $28
    jr z, @+$01

    jr c, @+$01

    jr nc, jr_052_4d2c

    rst $38
    nop
    inc b
    ld a, a
    nop
    rrca
    nop
    inc bc
    cp d
    push de
    rlca
    inc bc
    ld bc, $0e1f
    rst $30
    db $f4
    dec b
    inc b
    add d
    jp $0084


    ccf

jr_052_4cff:
    ld a, [bc]
    ld a, h

jr_052_4d01:
    ld a, h
    adc a
    add d
    rst $38
    ld bc, $78ff
    add a
    db $fc
    inc bc
    ld b, e
    cp $01
    inc c
    rst $38
    add c
    rst $38
    pop bc
    ld a, [hl]
    pop hl
    ld a, $f3
    dec e
    cp $12
    db $fc
    inc c
    and e
    nop
    jr nz, @+$10

    db $fc
    inc b
    rst $38
    rla
    rst $38
    ld a, [bc]
    rst $30
    add [hl]
    ei
    ld b, d
    rst $38

jr_052_4d2b:
    ld [hl+], a

jr_052_4d2c:
    ld a, a
    ld e, $7f
    ld b, e
    ld [bc], a
    ccf
    ld [bc], a
    inc b
    ccf
    rlca
    ld b, e
    jr c, @+$0a

    dec bc
    ld [hl], b
    db $10
    ld a, b
    jr c, jr_052_4d2b

    ld l, h
    and $a6
    db $e3
    inc hl
    pop af
    ld de, $f043
    db $10
    ld [bc], a
    ldh [rNR41], a
    ret nz

    ret z

    nop
    sub d
    inc hl
    add b
    ld c, c
    ret nz

    ld b, b
    res 1, d
    ld a, [bc]
    ldh a, [$f0]
    db $fc
    inc c
    sbc [hl]
    ld [bc], a
    ld c, $02
    rrca
    ld bc, $449f
    ld bc, $43ff
    cp $02
    add hl, de
    db $fc
    inc c
    ldh a, [$f0]
    jr jr_052_4d88

    inc c
    inc c
    ld b, $06
    ld e, $1e
    sbc b
    sbc b
    call z, Call_052_46cc
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    inc l
    inc l
    jr c, @+$3a

    db $10
    db $10
    add l
    nop
    ld h, b
    add hl, bc

jr_052_4d88:
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    inc d
    rst $38
    nop
    rst $38
    rrca
    add l
    nop
    or b
    dec b
    rst $38
    nop
    rst $38
    jr @+$01

    jr nz, jr_052_4de1

    rst $38
    nop
    inc b
    rlca
    rst $38
    inc b
    rst $38
    inc d
    adc h
    ld bc, $0016
    inc bc
    ld b, l
    inc a
    inc b
    add l
    ld bc, $892a
    rst $38
    sbc e
    ei
    dec bc
    jr nc, @+$32

    db $10
    db $10
    jr jr_052_4dd3

    ld [$0c08], sp
    inc c
    inc e
    inc e
    adc l
    rst $38
    add l
    nop
    db $10
    rlca
    ld [hl], e
    ld [hl], e
    cp e
    adc d
    rst $38
    add h
    rst $38
    add b
    and l
    ld bc, $020a

jr_052_4dd3:
    inc e
    db $10
    jr c, jr_052_4e1b

    jr nz, @+$32

    inc hl
    jr nz, @-$7b

    ld bc, $0190
    rst $18
    ret nc

jr_052_4de1:
    add h
    nop
    ld l, b
    inc b
    rrca
    ld hl, sp+$0f
    ld sp, hl
    ld b, $83
    ld bc, $8ba0
    nop
    or [hl]
    adc e
    ld bc, $0b00
    rst $38
    rra
    di
    ld sp, $c1ff
    rst $38
    ld bc, $07ff
    rst $38
    ld a, $45
    rst $38
    ld [bc], a
    dec b
    ld a, a
    inc bc
    ld a, [hl]
    ld [bc], a
    ld a, $02
    sub e
    ld bc, $99c4
    ld bc, $01dc
    ld h, b
    ld h, b
    add l
    ld bc, $23f6
    inc c
    and e
    add l
    dec bc

jr_052_4e1b:
    inc e
    inc e
    add h
    add h
    call z, Call_052_58cc
    ld e, b
    ld [hl], b
    ld [hl], b
    jr nz, jr_052_4e47

    ld h, c
    rst $38
    db $ec
    adc c
    dec hl
    ld bc, $0861
    ld b, $07
    ccf
    ccf
    ld [hl], c
    ld a, a
    ld a, l
    ld a, a
    ld a, [hl]
    ld [hl+], a
    ld a, a
    rrca
    ccf
    ccf
    ld e, $1f
    inc c
    rrca
    inc d
    rla
    inc de
    inc de
    inc c
    inc c

jr_052_4e47:
    dec bc
    dec bc
    inc c
    rrca
    ld b, e
    db $10
    rra
    ld bc, $0f0f
    ld l, e
    ld bc, $0101
    ld b, l
    ld [bc], a
    inc bc
    rst $10
    jp nz, $0105

    inc bc
    inc c
    inc c
    db $10
    db $10
    inc hl
    jr nz, jr_052_4e87

    ld b, b
    ld [hl+], a
    add c
    ldh [rNR50], a
    add l
    add b
    add l
    dec b
    ld d, $05
    ld a, [de]
    rra
    db $10
    rrca
    jr z, @+$20

    ccf
    ld h, c
    ld h, a
    ret z

    rst $08
    call z, $1dcf
    sbc a
    rla
    rra
    or e
    cp a
    ld [hl], a
    rst $38
    rst $08
    rst $08
    daa

jr_052_4e87:
    rst $20
    add hl, de
    cp $37
    ld hl, sp+$7e
    pop bc
    ld b, e
    rst $38
    ret nz

    inc b
    ld a, $e1
    ccf
    db $e3
    ld a, a
    ld [hl+], a
    rst $38
    inc e
    rlca
    add a
    add e
    add e
    ld b, b
    ld [hl], c
    ld b, b
    ld c, c
    ld b, b
    ld c, a
    ld b, b
    ld c, c
    add c
    pop af
    ld [bc], a
    ld [bc], a
    inc b
    add h
    ld [$11f8], sp
    pop af
    rst $20
    rst $20
    add hl, de
    rra
    jr c, jr_052_4ef5

    inc a
    add [hl]
    nop
    and e
    ld bc, $0303
    ld h, l
    ldh [$50], a
    ret nz

    ldh [rNR10], a
    db $10
    jr jr_052_4ee2

    inc bc
    inc de
    jr nz, jr_052_4eea

    ld [hl], b
    ld e, b
    sbc b
    db $e4
    add h
    sbc h
    ld c, [hl]
    jp nz, $01ff

    rst $38
    nop
    db $fd
    inc bc
    cp $0e
    xor $13
    rst $38
    ld bc, $0efe
    ldh a, [rNR10]

jr_052_4ee2:
    rst $38
    rst $18
    cp c
    rst $38
    call z, $e7ff

jr_052_4ee9:
    rst $38

jr_052_4eea:
    rst $30
    rst $38
    ld a, [c]
    cp $fc
    db $fd
    ld hl, sp-$06
    ldh a, [$75]
    add b

jr_052_4ef5:
    ld [$d5d1], a
    xor e
    xor e
    pop de
    ld d, a
    jp hl


    ld l, a
    ld [hl], e
    ld a, e
    db $e3
    ei
    rst $00
    rst $30
    add a
    rst $30
    dec bc
    rst $28

jr_052_4f08:
    jr jr_052_4ee9

    inc a
    cp a
    ld e, [hl]
    ld e, a
    adc [hl]
    sbc a
    ld c, $22
    rrca
    dec bc
    ccf
    ccf
    ld e, a
    ld a, a
    adc a
    rst $38
    rst $00
    rst $38
    ld hl, sp-$08
    ldh [$e0], a
    and e
    nop
    call z, Call_052_4005
    ld b, b
    jr nz, jr_052_4f08

    ret nz

    ret nz

    xor [hl]
    nop
    ret c

    add e
    sub l
    ldh [$28], a
    jr nz, jr_052_4f33

jr_052_4f33:
    sub b
    db $10
    ld d, b
    ld [$0848], sp
    xor b
    nop
    inc h
    inc b
    inc d
    dec b
    dec d
    ld a, [de]
    ld e, $24
    daa
    ret


    rl b
    dec d
    jr nz, jr_052_4f84

    pop bc
    push de
    add d
    xor d
    inc b
    call c, $af0a
    add hl, de
    ld e, a
    dec a
    rst $38
    ld c, a
    ld a, a
    add e
    add a
    dec h
    add b
    ld a, [bc]
    ret nz

    ret nz

    ldh [$f0], a
    ldh a, [$f8]
    db $e4
    db $fc
    xor $ff
    db $fc
    ld [hl+], a
    rst $38
    ld [de], a
    cp a
    rst $38
    adc a
    sbc a
    inc bc
    add a
    ld b, c
    pop bc

jr_052_4f73:
    ld b, b
    ret nz

    ld h, c
    pop hl
    and $e7
    set 1, a
    db $10
    rra
    inc a
    ld [hl+], a
    ccf
    inc b
    rra
    rra
    rrca

jr_052_4f84:
    rra
    ld b, $a2
    db $ed
    jp nc, $df00

    ldh [rNR43], a
    rlca
    ld c, $0f
    inc e
    inc e
    jr jr_052_4fac

    ld de, $3b11
    dec sp
    ld l, a
    ld c, l
    cp a
    push hl
    ld l, [hl]
    ld [hl], d
    or $8a
    call c, $dce4
    inc h
    db $fc
    add h
    ld hl, sp-$68
    db $f4
    db $fc
    add h
    db $fc

jr_052_4fac:
    adc h
    db $fc
    ld hl, sp-$04
    daa
    ld hl, sp+$01
    ld [hl], b
    ldh a, [$8f]
    ld bc, $08be
    ldh [$e0], a
    sub b
    ld hl, sp-$1c
    db $fc
    ld [c], a
    cp $f6
    ld [hl+], a
    cp $04
    inc a
    cp $08
    db $fc
    or b
    and e
    ld bc, $844b
    ld bc, $04fd
    jr nz, jr_052_4f73

    db $10
    ldh a, [$e0]
    adc [hl]
    xor a
    nop
    ld h, b
    and e
    ld bc, $00a4
    ldh a, [rSCX]
    ld h, b
    ldh [rTIMA], a
    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    db $ec
    ld d, l
    rst $38
    db $ec
    ld c, a
    dec b
    rlca
    rlca
    ld c, $0f
    inc c
    ld c, $23
    inc b
    nop
    ld bc, $0922
    dec b
    jr jr_052_5016

    jr nz, jr_052_5028

    jr z, jr_052_502e

    ld b, e
    db $10
    ld [de], a
    inc bc
    ld [$0639], sp
    ld e, $ec
    ld hl, $0103
    ld bc, $0101
    sub c
    sub c
    nop
    ld [bc], a
    inc hl

jr_052_5016:
    inc bc
    ld b, [hl]
    inc bc
    ld [bc], a
    adc l
    sbc a
    add hl, bc
    ldh a, [$f0]
    rrca
    rrca
    ld bc, $8135
    sub c
    ld h, b
    ld h, b
    ld h, c

jr_052_5028:
    and h
    di
    nop
    add c
    ld h, c
    add hl, bc

jr_052_502e:
    db $10
    jr jr_052_5051

    dec h
    jr nz, @+$24

    pop af
    inc de
    cp $fe
    ret z

    add sp, -$20
    add hl, hl
    rra
    inc hl
    ccf
    ld b, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, h
    ld a, e
    ld a, h
    ld a, $39
    ld sp, $3f3e
    jr nc, jr_052_508d

    ld [hl], $6f
    ld e, c

jr_052_5051:
    ld a, a
    ld d, b
    cp $d1
    ld a, $f1
    rst $38
    jp hl


    rst $38
    ret z

    ld a, a
    ld h, h
    ccf
    inc hl
    rra
    db $10
    ld l, a
    ld a, b
    adc a

jr_052_5064:
    ld hl, sp-$61
    ld b, e
    ldh a, [$3f]
    db $10
    pop hl
    rst $38
    pop bc
    ld a, a
    pop bc
    ld a, $e3
    ccf
    rst $20
    dec de
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld hl, sp-$01
    ld b, e
    jr nz, jr_052_50bd

    ld b, l
    ld b, b
    ld a, a
    ld c, c
    add b
    rst $38
    ld b, l
    ld b, b
    ld a, a
    dec b
    ret nz

    rst $38
    ld a, a

jr_052_508b:
    ld a, c
    ld a, [hl]

jr_052_508d:
    ld h, d
    ld b, e
    cp $a2
    rlca
    di
    db $ed
    ld hl, $2139
    ccf
    ld e, $1e
    and l
    rst $28
    inc de
    adc [hl]
    cp $ff
    rst $38
    ei
    rlca
    rst $38
    ld bc, $01fe
    rst $18
    jr nz, jr_052_508b

    ld e, $ff
    nop
    rst $38
    inc c
    rst $28
    ld [de], a
    ld b, e
    rst $38
    nop
    inc de
    ld [hl], a
    adc b
    rrca
    ld [$909f], sp
    rst $38
    inc bc

jr_052_50bd:
    rst $30
    inc c
    adc a
    db $fc
    rst $38
    ld b, h
    rst $38
    ld c, h
    ei
    cp $83
    cp $43
    ld bc, $02e7
    nop
    rst $38
    jr jr_052_50f7

    rst $38
    nop
    rst $00
    ld b, h
    rst $38
    nop
    nop
    add b
    ld b, h
    rst $38
    ld b, b
    nop
    ld h, b
    ld b, [hl]
    rst $38
    jr nz, jr_052_5064

    sub c
    ld b, h
    rst $38
    ld [$0005], sp
    rst $38
    cp $ff
    add hl, bc
    ld c, $43
    rlca
    inc b
    dec b
    rrca
    ld [$0c0b], sp
    ld b, $07

jr_052_50f7:
    adc h
    nop
    or b
    ld [bc], a
    add b
    ret nz

    ret nz

    ld [hl+], a
    ldh [rNR51], a
    ldh a, [rNR44]
    ld hl, sp-$20
    jr nc, @-$66

    sbc b
    ld l, b
    cp a
    ld c, a
    ld [hl], e
    sbc a
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    ccf

jr_052_5113:
    cp h
    ld a, h
    ldh [rNR41], a
    ldh [$60], a
    ldh [$30], a
    ret c

    jr @-$32

    inc c
    and $06
    or $06
    db $fd
    add a
    ld sp, hl
    rst $08
    or b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ld h, d
    cp $3c
    db $fc
    jr nz, jr_052_5113

    ld e, $fe
    ld de, $43f1
    ld [$1ff8], sp
    rrca
    ld sp, hl
    rrca
    ei
    rra
    di
    rra
    pop af
    rra
    ldh a, [$3f]
    db $e3
    ccf
    db $e4
    ccf
    add sp, -$21
    reti


    rst $08
    ld c, c
    ld c, a
    ld c, b
    ld b, a
    ld b, h
    inc sp
    inc sp
    ld [$08e8], sp
    ld hl, sp-$10
    ldh a, [$f4]
    inc hl
    nop
    ld l, [hl]
    ld bc, $8080
    cp a
    nop
    ld a, b
    inc bc
    ld h, b
    ld h, b
    sub b
    sub b
    ld [hl+], a
    db $10
    inc c
    ld d, b
    rst $10
    scf
    add sp, -$08
    ret nc

    sub $80
    call nz, $8383
    add b
    add b
    ld b, e
    ld [bc], a
    add d
    ld bc, $c080
    ld h, c
    add hl, bc
    inc b
    inc c
    add d
    jp nc, $a242

    rst $00
    db $e4
    ccf
    rst $38
    db $ec
    ld d, c
    rlca
    add b
    add b
    ld [hl], b
    ld [hl], b
    jr c, jr_052_520d

    sbc b
    cp b
    inc hl
    stop
    ld b, b
    ld [hl+], a
    ld c, b
    dec b
    adc h
    adc h
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    ld b, e
    inc b
    inc h
    inc bc
    adc b
    ld c, b
    or b
    or b
    ld h, l
    rst $38
    ld h, a
    ldh [$32], a
    ld b, $0f
    dec d
    jr nc, jr_052_51b8

    ld a, h
    ld d, h

jr_052_51b8:
    ld b, e
    ld a, [hl+]
    add b
    push de
    add b
    add d
    ld hl, sp+$50
    add l
    ld a, [hl+]
    add b
    dec d
    ld b, b
    ld l, d
    ld b, b
    dec [hl]
    jr nz, jr_052_51f4

    jr nz, jr_052_5201

    jr nz, @+$2c

    ld hl, $1e10
    dec d
    db $10
    ld a, [de]
    db $10
    dec c
    ld [$080f], sp
    ld [$060f], sp
    inc b
    dec b
    inc b
    inc b
    rlca
    rlca
    inc b
    ld bc, $0246
    inc bc
    ld b, e
    rlca
    inc b
    ld bc, $0704
    add $87
    ld [hl+], a
    ld bc, $e077
    inc sp

jr_052_51f4:
    ld b, b
    ret nz

    sub b
    jr nc, jr_052_5251

    adc b
    adc b
    ld h, h
    ld b, [hl]
    ld [de], a
    and e
    add hl, bc
    ld d, e

jr_052_5201:
    inc b
    add hl, hl
    jp nz, $2156

    xor a
    db $10
    ld d, e
    ld [$08a5], sp
    ld c, e

jr_052_520d:
    inc [hl]
    inc de
    call nz, $04ab
    ld e, l
    ld [bc], a
    xor c
    ld [bc], a
    ld d, [hl]
    ld bc, $01ae
    ld e, a
    nop
    rrca
    ldh a, [$73]
    inc c
    db $fc
    inc bc
    rra
    ldh [$e3], a
    inc e
    db $fc
    inc bc
    ld b, a
    rst $38
    nop
    inc bc
    ccf
    ret nz

    jp $873c


    adc l
    dec c
    cp $81
    ld a, l
    ld b, d
    ld a, [hl-]
    dec [hl]
    rrca
    rrca
    rlca
    inc b
    rrca
    ld [$090e], sp
    ld [hl], l
    ld bc, $8080
    and e
    nop
    ld b, b
    ldh [rNR44], a
    ld h, b
    and b
    ld [hl], b
    sub b
    or b
    ld d, b
    cp b

jr_052_5251:
    ld c, b
    call c, $dd25
    dec h
    rst $28
    inc de
    rst $30
    dec bc
    rst $30
    add hl, bc
    ei
    dec b
    dec a
    jp $33cc


    rst $30
    ld a, [bc]
    ld a, [$0307]
    cp $ff
    ld [bc], a
    ccf
    jp nz, $3ec3

    ld c, c
    rst $38
    ld [bc], a
    ldh [rNR42], a
    ld a, a
    add d
    adc a
    ld [hl], d
    rst $30
    ld a, [bc]
    db $d3
    ld l, $aa
    ld d, a
    ld d, a
    xor l
    xor c
    ld e, a
    rst $18
    or c
    sbc l
    ld h, e
    ld [hl], e
    adc h
    rst $28
    db $10
    ld b, $0e
    dec de
    dec d
    dec e
    ld [de], a
    dec a
    ld [hl+], a
    ld a, $21
    ld l, $31
    ld b, e
    db $76
    ld c, c
    ld b, l
    ld a, e
    ld b, h
    ld bc, $84fb
    ld b, l
    db $fd
    add d
    dec b
    sbc c
    and $e6
    sbc c
    cp $81
    ld c, c
    cp $01
    ld bc, $807f
    ld b, e
    cp a
    ld b, b
    dec c

jr_052_52b2:
    rst $18
    jr nz, @-$17

    jr jr_052_5330

    add [hl]
    ld a, [hl]
    add c
    cp a
    ld b, b
    rst $08
    jr nc, jr_052_52b2

    inc c
    add e
    nop
    xor d
    ld bc, $03fc
    and e
    adc c
    rlca
    cp a
    ld b, b
    ld a, [hl]
    add c
    ld a, c
    add [hl]
    rst $20
    jr jr_052_5315

    rst $18
    jr nz, jr_052_5318

    cp a
    ld b, b
    inc bc
    rst $38
    add c
    ei
    ld b, [hl]
    add l
    nop
    pop de
    ld bc, $8000
    and [hl]
    nop
    ld c, b
    nop
    ld b, b
    ld b, l
    ld h, b
    and b
    nop
    ld b, b
    add h
    nop
    db $dd
    ld [bc], a
    or b
    ld d, b
    and b
    add e
    nop
    pop hl
    nop
    inc l
    ld b, e
    jp c, $062e

    reti


    cpl
    jp hl


    rra
    ld [$6e1f], a
    ld b, [hl]
    sub a
    ld l, h
    ld b, e
    ld l, l
    sub a
    dec d
    ld l, h
    sub a
    xor h
    ld d, a
    call z, $ec37
    rla
    ld a, [$790f]

jr_052_5315:
    adc a
    add hl, sp
    rst $08

jr_052_5318:
    db $db
    inc l
    pop af
    ld e, $f0
    rra
    ld [hl-], a
    db $dd
    ld b, e
    ldh [$3f], a
    dec bc
    ldh a, [$5f]
    ld hl, sp+$4f
    ld hl, sp-$71
    db $fd
    add a
    or [hl]
    ld c, [hl]
    db $ec
    ld d, h

jr_052_5330:
    db $ec
    ld hl, $2005
    jr nz, jr_052_5386

    ld d, b
    sub b
    or b

jr_052_5339:
    ld b, e
    jr nz, @-$1e

    ld b, l
    ld b, b
    ret nz

    ldh [$2d], a
    ld h, b
    ldh a, [$f8]
    adc b
    ld h, h
    add h
    add h
    ld h, h
    db $ec
    db $f4
    ld l, h
    db $f4
    ld e, h
    db $e4
    jr c, jr_052_5339

    jr nc, @-$0e

    inc h
    db $e4
    ret z

    jp z, $8a8c

    ld a, [hl]
    ld a, [c]
    ld a, h
    call nz, $c878
    inc a
    cp $78
    pop bc
    db $fc
    add [hl]
    ld hl, sp-$08
    ldh a, [$b0]
    ld hl, sp+$08
    db $fc
    call nz, $3838
    rst $38
    db $ec
    ld [hl], a
    dec c
    rlca
    rlca
    dec bc
    inc c
    ld [bc], a
    add hl, bc
    ld [$080b], sp
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc hl
    ld bc, $020b
    inc bc

jr_052_5386:
    inc b
    rlca
    ld [$0b0f], sp
    rrca
    ld b, $07
    ld bc, $6301
    ld [de], a
    ld bc, $0201
    rlca
    rrca
    ld [$101f], sp
    inc sp
    cpl
    ld hl, $3831
    jr nz, jr_052_53b7

    jr jr_052_53ba

    ld e, $11
    ld b, l
    rra
    db $10
    ld bc, $103f
    ld c, [hl]
    ccf
    jr c, @+$03

    jr jr_052_53f0

    ld b, l
    inc e
    rra
    rlca
    dec c
    rra

jr_052_53b7:
    dec c
    rrca
    dec b

jr_052_53ba:
    rrca
    rlca
    rlca
    daa
    ld bc, $0001
    ld bc, $e061
    ld c, a
    inc bc
    inc bc
    inc b
    rlca
    ld a, $3f
    ld b, c
    ld a, a
    jp nz, Jump_052_60d7

    rst $18
    ld [hl+], a
    rst $38
    ld h, e
    rst $38
    di
    sbc $fb
    adc [hl]
    ld a, a
    add h
    ld e, a
    and b
    ld e, $d1
    ld e, e
    ret nc

    ld b, e
    ret nz

    ld b, e
    ldh [$2f], a
    ld a, [c]
    ld e, e
    call c, $8787
    inc e
    rra
    ld a, a
    ld l, a
    sbc a

jr_052_53f0:
    rst $28
    db $10
    rst $38
    and b
    rst $38
    cp $7f
    ccf
    rst $38
    sbc a
    rst $38
    ld l, e
    ld a, a
    db $fd
    rst $38
    ld [$ddff], a
    rst $28
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    rst $38
    cpl
    rst $38
    ld c, a
    rst $38
    ld c, h
    rst $38
    ld a, a
    rst $38
    jp c, $febf

    add e
    ld b, e
    db $fd
    add a
    inc b
    cp l
    add a
    dec a
    add a
    cp c
    ld b, [hl]
    rrca
    jr c, @+$0a

    ld a, b
    rrca
    ld [hl], b
    rra
    cp $1f
    pop af
    ld de, $2270
    ld hl, sp-$20
    dec [hl]
    sbc b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rNR23], a
    ld hl, sp+$66
    cp $99
    rst $38
    inc b
    rst $38
    ld [de], a
    rst $28
    ld l, a
    di
    ld sp, hl
    rst $30
    pop af
    ccf
    pop af
    rra
    ret nc

    ccf
    cp b
    ld c, a
    sbc b
    xor a
    sub b
    xor a
    ldh a, [$1f]
    ld hl, sp+$1f
    call c, Call_052_633f
    db $e3
    ret nz

    ret nz

    ld hl, sp-$04
    db $e3
    rst $08
    ld b, b
    rst $08
    ld sp, $3bcf
    and $3f
    rst $28
    ld b, l
    ldh a, [rIE]
    inc b
    jp hl


    rst $38
    add sp, -$01
    db $e4
    and h
    jp hl


    ld [bc], a
    ld a, [c]
    rst $38
    ei
    ld b, [hl]
    rst $38
    ld sp, hl
    ld bc, $8f78
    ld c, c
    ld hl, sp+$0f
    ld b, e
    ld a, b
    rrca
    ld de, $9f68
    ret c

    xor a
    xor b
    rst $18
    ret c

    xor a
    xor a
    rst $18
    ret c

    add sp, $5c
    ld a, h
    ld [hl-], a
    ld a, [hl]
    ld e, $3e
    ld h, a
    and [hl]
    nop
    adc b
    ld [$18d0], sp
    ld l, b
    ld b, h
    cp h
    add h

jr_052_549e:
    db $fc
    add d
    cp $43
    pop bc
    rst $38
    ld e, $e0
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld [hl], b
    rst $38
    jr z, jr_052_549e

    ret z

    rst $08
    ld [$900f], sp
    rst $18
    ld a, h
    ccf
    rrca
    rlca
    db $e3
    nop
    ld a, l
    add c
    ld a, a
    ld sp, hl
    ld b, $ff
    ld bc, $00ff
    ld b, h
    rst $38
    add b
    nop
    ld b, b
    ld b, h
    rst $38
    jr nz, @+$0e

    db $10
    rst $38
    ld [$88ff], sp
    rst $38
    add h
    rst $38
    add d
    rst $38
    jp nz, $c1ff

    ld b, h
    rst $38
    ld h, b
    ld b, e
    jr nc, @+$01

    inc bc
    add hl, de
    rst $38

jr_052_54e3:
    ld a, [de]
    cp $43
    inc c
    db $fc
    inc bc
    jr jr_052_54e3

    ldh [$e0], a
    db $ec
    inc hl
    and l
    nop
    add [hl]
    and l
    nop
    adc d
    ld a, [bc]
    ld [$30f8], sp
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    cp b
    db $fc
    ccf
    ld [hl+], a
    rst $38
    ld b, $fb
    cp $bf
    ld sp, hl
    rrca
    db $fd
    ld [bc], a
    and a
    di
    add hl, bc
    cp $04
    db $fc
    ld [$10f8], sp
    ld hl, sp+$30
    ld hl, sp+$70
    ld h, $f8
    rlca
    db $10
    ldh a, [rNR10]
    ldh a, [$60]
    ldh [$80], a
    add b
    db $ec
    ld b, l
    inc bc
    add b
    add b
    ret nz

    ld b, b
    push bc
    ld [bc], a
    ld d, c
    ldh a, [$33]
    pop de
    rst $38
    ld h, a
    ld [bc], a
    ld bc, $0003
    ld b, h
    inc b
    rlca
    ld de, $0203
    ld bc, $0301
    inc bc
    nop
    inc b
    dec bc
    add hl, bc
    inc de
    dec d
    dec de
    inc d
    inc c
    dec bc
    rlca
    rlca
    ld a, e
    ld [hl+], a
    ld bc, $80c2
    db $ec
    dec [hl]
    ld bc, $8080
    ld b, e
    ret nz

    ld b, b
    dec d
    ldh [rNR41], a
    rst $30
    rla
    ld a, e
    adc b
    rst $30
    ld [$47b9], sp
    cp $23
    cp [hl]
    rst $28
    ld a, a
    rst $38
    call nz, $28cf
    cpl
    rra
    rra
    sub e
    jp hl


    inc d
    ld e, $1f
    ldh [rIE], a
    rlca
    rst $38
    ld a, [c]
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld b, e
    ld a, a
    ld b, [hl]
    ld a, a
    ld e, h
    ld a, a
    inc a
    ld [hl+], a
    ccf
    inc b
    rra
    rra
    rrca
    rrca
    inc bc
    sbc d
    nop
    ld hl, $0403
    inc b
    inc bc
    inc bc
    and l
    xor $0b
    inc bc
    rlca
    ld b, $0f
    add hl, bc
    dec e
    ld de, $831b
    or e
    and e
    and a
    inc hl
    add a
    db $10

Jump_052_55aa:
    ld h, a
    rst $20
    rra
    rst $38
    sub e
    rst $38
    ld c, c
    rst $38
    ld [hl], h
    rst $38
    ld a, [$3dff]
    ccf
    ld c, $0f
    ld [bc], a
    inc h
    inc bc
    ld a, [de]
    ld [bc], a
    inc bc
    dec c
    rrca
    ld sp, $c63f
    rst $38
    inc e
    rst $38
    ld a, b
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    add d
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc e
    ld b, h
    rst $38
    jr c, jr_052_55e1

    ret z

    rst $38
    ldh a, [rIE]

jr_052_55e1:
    inc b
    ld [hl+], a
    rlca
    call nz, $00d4
    rlca
    ld b, e
    ld [$0909], sp
    db $10
    dec e
    jr nz, @+$25

    ld b, e
    ld b, b
    ld b, e
    ld b, e
    jr c, jr_052_5632

    ld h, e
    ld bc, $1f03
    dec hl
    rst $38
    ldh [rNR43], a
    ld l, [hl]
    ld l, a
    db $dd
    sbc $fa
    db $fd
    rst $30
    ld hl, sp-$11
    ldh a, [$fb]
    db $e4
    rst $18
    rst $20
    db $fc
    ldh [$bf], a
    di
    sbc a
    ld sp, hl
    add $ff
    ld [hl], b
    rst $38
    ld d, e
    di
    jp nc, $8ff3

    rst $38
    add l
    rst $38
    dec b
    rst $38
    add h
    ld b, e
    rst $38
    inc b
    ld b, [hl]
    rst $38
    ld c, $08
    ld e, [hl]
    rst $38
    sbc [hl]
    rst $38
    ld e, $ff
    ccf
    rst $38
    scf
    ld b, h

jr_052_5632:
    rst $38
    dec sp
    ld b, e
    ld a, a
    ei
    ld bc, $fb75
    ld b, l
    rst $38
    pop af
    ld de, $fdfe
    db $e3
    db $e3
    ld h, b
    ldh [$c0], a
    jr nz, jr_052_5647

jr_052_5647:
    ldh [$80], a
    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    xor b
    nop
    ld b, d
    ld bc, $c080
    ld [hl+], a
    ldh [$e0], a
    dec sp
    ret z

    ld hl, sp-$44
    db $fc
    db $fc
    cp $7e
    cp $f6
    ld [hl], a
    sbc a
    sbc a
    ld e, a
    ld e, a
    rra
    rla
    rst $38
    inc de
    cp $46
    cp c
    cp a
    ld h, c
    ld a, a
    sbc l
    rst $38
    ld a, [hl-]
    cp $7c
    db $fc
    add d
    cp $01
    rst $38
    ld b, $ff
    dec c
    rst $38
    sbc [hl]
    rst $38
    rst $18
    rst $38
    xor $ff
    db $76
    rst $38
    scf
    rst $38
    add h
    db $fc
    ld b, h
    db $fc
    ld h, h
    db $fc
    inc a
    db $fc
    inc e
    db $fc
    inc c
    db $fc
    ld b, a
    ld [bc], a
    cp $4b
    ld bc, $11ff
    ei
    rst $38
    db $fc
    db $fc
    ld a, [hl]
    ld a, [c]
    ld [hl], d
    ld c, [hl]
    ld c, [hl]
    ld [hl], d
    ld b, d
    ld d, d
    ld bc, $4151
    ld e, a
    jr nz, jr_052_56e0

    inc hl
    jr nz, jr_052_56b3

    dec e

jr_052_56b3:
    rra
    cp a
    nop
    ld e, h
    add hl, de
    ld a, [de]
    dec de
    inc a
    daa
    inc e
    dec d
    inc e
    inc d
    ld c, $0a
    sbc a
    sbc c
    ld h, a
    db $fc

jr_052_56c6:
    rst $08
    rst $38

jr_052_56c8:
    adc [hl]
    rst $38
    sbc l
    rst $38
    ld a, $fe
    jr c, jr_052_56c8

    ldh a, [$f0]
    sub c
    nop
    ld c, h
    db $f4
    ld b, c
    nop
    ld [hl+], a
    inc de
    ret nz

    ret nc

    jr c, jr_052_56c6

    jr jr_052_5758

jr_052_56e0:
    ret c

    add sp, -$28
    ret c

    jr c, jr_052_570e

    ldh a, [$d0]
    ld h, b
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    db $ec
    dec a
    rst $38
    db $ec
    dec l
    dec b
    add hl, bc
    add hl, de
    rlca
    daa
    ld hl, $4327
    db $10
    rra
    ld de, $0f08
    ld b, $07
    add hl, de
    rra
    jr nz, jr_052_5745

    add hl, de
    rra
    ld b, $06
    ld [$080c], sp
    rrca

jr_052_570e:
    rlca
    rlca
    ld l, a
    inc de
    ld bc, $0201
    ld [bc], a
    nop
    inc b
    inc bc
    rlca
    inc b
    inc c
    ld [$0008], sp
    db $10
    ld de, $1c13
    inc e
    nop
    jr nc, jr_052_574a

    jr nz, jr_052_572e

    inc bc
    ld b, a
    ld c, b
    ld e, b
    ld h, b

jr_052_572e:
    ld h, b
    inc hl
    ld b, b
    dec bc
    sbc a
    add b
    rst $38
    inc e
    db $e3
    ld [hl+], a
    call $dd5d
    db $dd
    ld e, c
    db $dd
    call nz, $1086
    rst $38
    add b
    rst $38
    nop

jr_052_5745:
    ccf
    nop
    ld a, a
    ld [hl+], a
    rst $20

jr_052_574a:
    jp nz, $c6ee

    sbc $8e
    rst $38
    ld [hl], c
    ld [hl], c
    add h
    rst $00
    ld b, $03
    inc c
    inc e

jr_052_5758:
    jr nz, jr_052_57ba

    rrca
    rst $38
    ld h, l
    ld bc, $ff7e
    and a
    db $dd
    ld bc, $7f7f
    ld h, a
    inc bc
    jp $3cc3


    inc a
    ld h, l
    ld c, $8f
    nop
    rst $38
    rlca
    ld hl, sp-$78
    di
    rst $30
    scf
    rst $30
    ld d, $f7
    ld [$07f8], sp
    ld b, [hl]
    rst $38
    nop
    dec bc
    ld [bc], a
    ld l, a
    inc hl
    ld h, a
    ld hl, $50f7
    rst $18
    adc h
    adc a
    inc bc
    inc bc
    ld h, c
    inc de
    ldh [$e0], a
    inc e
    inc e
    inc bc
    inc bc
    ret nz

    ret nz

    inc a
    inc a
    inc bc
    inc bc
    ld bc, $0300
    nop
    rst $38
    ld hl, sp+$07
    ld b, $43
    rlca
    ld bc, $0f14
    nop
    rst $30
    ld hl, sp+$0f
    dec c
    rrca
    inc bc
    rrca
    ld bc, $c1df
    ccf
    ld [hl-], a
    rra
    ld a, [bc]
    rra
    rlca
    rra
    ld [bc], a

jr_052_57ba:
    cp a
    ld b, e
    ld [bc], a
    rst $38
    ld a, [de]
    add c
    ld a, a
    ld b, c
    ld a, a
    ld h, e
    ld a, h
    ld a, [hl]
    ldh a, [rIE]
    nop
    rst $38
    ld hl, $2fff
    rst $38
    inc e
    rst $38
    ld [$073f], sp
    sbc a
    call nz, $b8fc
    cp b
    add b
    add b
    ld l, c
    dec bc
    ret nz

    ret nz

    jr nz, jr_052_5800

    ret nc

    db $10
    ldh a, [$90]
    ld hl, sp+$48
    ld hl, sp+$28
    ld b, h

jr_052_57e9:
    db $fc
    inc h
    inc b
    ld b, h
    db $fc
    xor h
    db $fc
    or h
    ld b, [hl]
    db $fc
    inc h
    add hl, bc
    ld [hl], h
    ld hl, sp+$48
    ld hl, sp-$38
    ldh a, [$90]
    ldh a, [rNR10]
    ldh [$c5], a

jr_052_5800:
    and h
    ld a, [bc]
    ret nz

    nop
    jr nz, jr_052_5826

    ld h, b
    jr nz, jr_052_57e9

    ld b, b
    ret nz

    add b
    add b
    and e
    nop
    ld e, b
    inc bc
    ld b, b
    ret nz

    add b
    add b
    ld [hl], l
    ld bc, $0706
    inc hl
    add hl, bc
    ld b, e
    ld [$0f0f], sp
    inc b
    rlca
    ld b, $07
    rra
    rra
    dec h

jr_052_5826:
    ccf
    jr jr_052_5842

    ld [$040b], sp
    rlca
    inc bc
    inc bc
    ld l, b
    ld [bc], a
    rst $38
    nop
    rst $38
    adc e
    nop
    sub h
    add e
    ld bc, $1520
    ld a, [hl]
    ld b, [hl]
    ld a, c
    ld l, e
    ld [hl], c
    ld a, a
    pop hl

jr_052_5842:
    rst $38
    ld [bc], a
    cp $5a
    sbc $0f
    sbc a
    ld [$10ff], sp
    rst $38
    inc sp
    rst $38
    db $fc
    db $fc
    inc hl
    add b
    inc bc
    nop
    nop
    ret nz

    ret nz

    ld a, e
    nop
    ld bc, $01a3
    ld [hl], l
    nop
    inc b
    ld b, e
    inc b
    rlca
    ld b, e
    ld [bc], a
    inc bc
    add e
    rst $28
    inc b
    db $e3
    and d
    ld c, l
    db $dd
    ld e, l
    add [hl]
    nop
    add l
    jp $9000


    add hl, de
    rst $38
    ld [bc], a
    rst $38
    adc l
    ld [hl], d
    ld d, [hl]
    ld h, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    add h
    db $fc
    inc b
    db $fc
    ld e, h
    call c, $3ee3
    pop bc
    ld l, a
    pop bc
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    add l
    nop
    adc d
    dec bc
    rst $38
    rlca
    ld hl, sp-$71
    ldh a, [$fb]
    jr nc, @+$01

    jr @+$01

    rrca
    rst $38
    add e
    nop
    call c, $0184
    jr nz, jr_052_58aa

    pop bc
    ld a, a
    db $e3
    db $fc

jr_052_58aa:
    cp $85
    ld bc, $ff2a
    db $ec
    ld d, e
    dec c
    ld bc, $3301
    ld [hl], e
    ld b, [hl]
    ld l, [hl]
    ld c, h
    ld l, h
    ld h, $3e
    ld [hl], d
    ld a, [hl]
    inc c
    inc c
    db $ec
    dec a
    inc bc
    ld bc, $0201
    inc bc
    ld b, l
    inc b
    rlca
    ld [hl+], a
    ld [bc], a

Call_052_58cc:
    ret z

    adc d
    db $10
    ld bc, $0001
    ld [bc], a
    ld b, $07
    inc c
    ld c, $18
    jr jr_052_590a

    jr nc, jr_052_593c

    ld h, b
    ret nz

    ret nz

    nop
    and h
    sub a
    dec bc
    inc bc
    inc bc
    ld a, a
    ld a, a
    cp e
    add a
    ld h, e
    ldh [$0e], a
    ld e, $00
    ld bc, $c993
    inc hl
    ld bc, $0202
    inc bc
    dec b
    ld [hl+], a
    rlca
    inc bc
    inc bc
    inc bc
    ld bc, $8501
    db $db
    ld bc, $0303
    add l
    pop hl
    ldh [rNR42], a
    ld bc, $100b

jr_052_590a:
    inc de
    nop
    daa

jr_052_590d:
    ret nz

    rst $08
    add c
    rra
    add $fe
    jr z, jr_052_590d

    add hl, de
    sbc c
    ld a, a
    ld a, [hl]
    di
    di
    pop bc
    ret


    add c
    and l
    add d
    sub a
    ld e, a
    ld e, a
    inc h
    db $e4
    inc b
    ld b, h
    add h
    add h
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $8b01
    nop
    sbc b
    ld bc, $f3c3
    inc hl
    rst $38
    ld b, $dc
    dec a
    ld a, $02

jr_052_593c:
    and c
    ldh [$0a], a

jr_052_593f:
    add [hl]
    di
    dec bc
    rlca
    rlca
    ld [$2018], sp
    ld h, b
    nop
    add c
    add b
    sbc a
    nop
    ld h, b
    add e
    nop
    add $e0
    ld l, $1e
    ld a, a
    cp a
    ret nz

    rst $18
    and b
    ld e, [hl]
    sub c
    rst $18
    sub b
    rst $38
    add b
    or a
    ret z

    ldh a, [$cc]
    ld hl, sp-$19
    rst $18
    ld hl, sp+$47
    rst $38
    daa
    rst $38
    rra
    rst $38
    add a
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    adc b
    add a
    add b
    ret nz

    ld b, b
    ld b, b
    pop de
    pop hl
    call nz, $84ff
    rst $38
    ret


    rst $38
    ccf
    ld b, h
    rst $38
    ld [$e10d], sp
    rst $38
    ld e, $ff
    add h
    ld a, a
    inc b
    ld a, a
    ld [bc], a
    ccf
    ld bc, $81bf
    rst $38
    ld b, e
    ld b, b
    ld a, a
    rla
    and b
    rst $38
    ld b, c
    rst $38
    add [hl]
    rst $38
    sbc l
    rst $38
    ld a, e
    rst $38
    sbc a
    rst $38
    inc c
    adc a
    rrca
    ld a, a
    cp $f1
    rrca
    nop
    or b
    ldh a, [rTIMA]
    rrca
    ld h, c
    ldh [rHDMA1], a
    add b
    ret nz

    jr nc, jr_052_5a27

    nop
    adc b
    db $10
    inc b
    jr z, jr_052_593f

    ld d, $62
    ld [hl+], a
    ld a, [de]
    ld d, b
    dec b
    add hl, hl
    add e
    pop hl
    ld h, c
    add hl, sp
    reti


    cp e
    sub a
    xor [hl]
    sub e
    rst $38
    inc bc
    rst $28
    rla
    ld a, a
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    ld b, a
    rst $38
    and [hl]
    cp $24
    db $fc
    inc d
    db $fc
    adc h
    db $ec
    ld c, b
    ret z

    ld e, b
    ld e, b
    inc h
    cp h
    ld b, d
    ld a, [hl]
    pop bc
    db $fd
    and b
    cp h
    jr jr_052_5a0a

    dec b
    rlca
    add e
    add e
    add c
    add c
    add b
    add b
    ld b, b
    pop bc
    ld b, b
    jp nz, $e727

    ld l, $ee
    inc e
    db $fc
    jr @-$06

    ld b, l
    sub b
    ldh a, [$03]
    ld h, b

jr_052_5a0a:
    ldh [$a0], a
    ldh [$a5], a
    ld bc, $0d2c
    add b
    ldh [$fe], a
    rst $38
    ld a, a
    rst $38
    cp $01
    cpl
    ld d, b
    add b
    add b
    ccf
    ld a, a
    ld [hl], l
    inc b
    ldh a, [$f0]
    ld [$18f8], sp
    ld [hl+], a

jr_052_5a27:
    ld hl, sp+$01
    ldh a, [$f0]
    and l
    ld bc, $0100
    add b
    ret nz

    ld l, e
    dec d
    inc bc
    inc bc
    ld b, $05
    add hl, de
    sbc a
    ld [$c4ee], a
    call nz, $c2c2
    add d
    adc d
    inc [hl]
    inc [hl]
    ret z

    ret z

    ld [hl], b
    ld [hl], b
    add b
    add b
    ld [hl], a
    dec c
    inc bc
    inc bc
    inc b
    add h
    ld hl, sp-$05
    ld de, $c2f7
    ld c, $0c
    inc a
    ldh a, [$f0]
    db $f4
    ld [hl], $00
    ld l, e
    ld hl, sp+$28
    add c
    add hl, bc
    ld c, $0e
    ld [hl-], a
    ld [hl], $c4
    call c, $f898
    ldh [$e0], a
    ld h, l
    rst $38
    ld l, c
    ld bc, $0301
    dec h
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $2400
    ld bc, $0343
    ld [bc], a
    ld bc, $0407
    ld b, h
    rlca
    ld b, $08
    rlca
    dec c
    dec bc
    rrca
    ld [$0c0f], sp
    inc bc
    ld b, $46
    ld bc, $0105
    inc bc
    inc bc
    push bc
    sbc d
    nop
    ld bc, $21ec
    inc b
    inc b
    inc c
    ld b, $12
    ld b, $44
    ld [de], a
    ld d, $09
    rlca
    ld hl, $a127
    rst $28
    ld h, b
    xor [hl]
    ld h, c
    rst $28
    jr nz, jr_052_5af3

    rst $18
    nop
    ldh [rNR41], a
    add b
    sbc a
    pop bc
    rst $18
    ld b, d
    rst $18
    ld h, h
    ld h, a
    inc a
    sbc a
    jr @+$51

    nop
    adc a
    nop
    ld c, a
    nop
    xor a
    nop
    ld c, a
    add b
    and a
    add b
    rst $00
    add b
    and a
    add b
    ld e, l
    add [hl]
    or c
    rrca
    ei
    inc c
    ld b, e
    ei
    adc h
    ld a, [bc]
    ld e, e
    ld c, h
    cpl
    inc h
    dec d
    ld d, $0a
    dec bc
    inc b
    ld b, $00
    sbc e
    db $ed
    ldh [$50], a
    inc c
    ld [bc], a
    ld [de], a
    inc l
    inc h
    ld e, h
    ld b, h
    rst $38
    adc e
    rst $38
    ld [$13ff], sp
    rst $38

jr_052_5af3:
    inc c
    rst $38
    jr nc, @+$01

    ld b, b
    db $eb
    sbc h
    db $dd

jr_052_5afb:
    ld a, $ff
    ld a, $fb
    ld a, h
    rst $28

jr_052_5b01:
    ld [hl], c
    rst $18
    ld h, d
    cp $04
    db $ec
    jr jr_052_5b01

    jr nc, jr_052_5afb

    ld sp, $39f0
    ret c

    jr c, @-$02

    inc e
    di
    rrca
    db $fc
    inc bc
    rst $38
    nop
    rst $28

jr_052_5b19:
    add b
    rst $30
    ld b, b
    db $ed
    jr nc, jr_052_5b19

    inc c
    cp $03
    rst $38
    nop
    ld a, h
    add e
    inc bc
    ld a, h
    rra
    nop
    sbc a
    add b
    ld c, a
    ld b, b
    rlca
    jr nz, jr_052_5b68

    jr c, jr_052_5b5f

    daa
    dec de
    dec de
    ld [hl], e
    rlca
    inc bc
    rlca
    jr c, @+$3a

    jp $1fc0


    nop
    ld b, h
    rst $38
    nop
    inc bc
    dec b
    rst $38
    inc bc
    db $fc
    add h
    adc c
    ld [$807f], sp
    rst $18
    ldh [$6f], a
    ld [hl], b
    ccf
    ld [hl], b
    scf
    ld b, l
    jr c, jr_052_5b96

    jr jr_052_5b89

    ld l, a
    ld [hl], b
    sbc a
    ldh [$7f], a
    add b

jr_052_5b5f:
    rst $38
    ld bc, $03fe
    rst $38
    ld [bc], a
    cp $03
    ld a, l

jr_052_5b68:
    ld b, $9e
    dec b
    rst $00
    call nz, $b97e
    rst $38
    nop
    ld b, h
    rst $38
    ld bc, $000e
    cp $01
    ld sp, hl
    ld b, $07
    ld hl, sp-$01
    nop
    rst $08
    ret nz

    jr c, jr_052_5bbb

    rlca
    rlca
    ld l, e
    dec bc
    ld h, b
    ldh a, [rNR23]

jr_052_5b89:
    ld [$1860], sp
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    and e
    nop
    inc a
    inc b

jr_052_5b96:
    ldh [$f0], a
    inc e
    rrca
    ret z

    add e
    pop hl
    add hl, bc
    ld bc, $1efe
    ldh [$60], a
    ldh a, [$30]
    jr c, jr_052_5bb3

    ld [c], a
    and l
    ei
    ld c, $07
    ld hl, sp+$38
    ldh [$e0], a
    ld h, b
    and b
    and b

jr_052_5bb3:
    ld h, b
    ld b, b
    and b
    or b
    ld d, b
    ld d, b
    or b
    add e

jr_052_5bbb:
    add e
    dec c
    ldh a, [rSVBK]
    ret c

    sbc b
    db $e4
    inc b
    ld a, [$fe02]
    add d
    ld a, h
    db $fc
    and b
    ld h, b
    add e
    sbc e
    inc bc
    ld h, b
    and b
    ret nz

    ld b, b
    db $f4
    ld [hl+], a
    nop
    inc a
    inc bc
    ret nz

    jr nz, jr_052_5bfa

    ret nz

    res 0, e
    ld bc, $4080
    add d
    or l
    db $ec
    dec hl
    adc l
    nop
    jr nz, jr_052_5be9

    inc bc

jr_052_5be9:
    rlca
    add h
    nop
    ldh [$0a], a
    ld h, e
    rst $38
    rlca
    rst $28
    rra
    cp $3e
    db $fc
    dec a
    ld hl, sp+$39
    add l

jr_052_5bfa:
    ld bc, $0240
    rst $28
    ldh a, [$7f]
    add [hl]
    ld bc, $8d49
    xor a
    nop
    rlca
    ld b, l
    rlca
    inc bc
    adc d
    nop
    dec [hl]
    adc c
    cp a
    ld b, l
    rst $38
    ccf
    inc bc
    rst $18
    ccf
    rst $38
    rra
    adc e
    nop
    db $f4
    add a
    rst $08
    ld [bc], a
    rst $38
    ldh a, [$f7]
    ld b, l
    ld hl, sp-$01
    ld [bc], a
    ldh a, [$ef]
    ldh a, [$8b]
    ld bc, $ff54
    ld h, l
    ld bc, $0101
    inc hl
    ld [bc], a
    inc hl
    inc b
    dec de
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    inc c
    ld c, $08
    ld [$1010], sp
    jr nc, jr_052_5c70

    rrca
    ld a, [hl]
    ld bc, $808f
    sbc a
    cp h
    rst $38
    ld c, a
    ld a, a
    inc hl
    ccf
    jr @+$1b

    inc bc
    rlca
    ld l, c
    rlca
    ld bc, $0701
    ld b, $0f
    ld [$0707], sp
    ld l, e
    dec b
    ld [bc], a
    inc bc
    ld bc, $0e01
    ld e, $61
    rlca
    ld a, $3e
    jp $05c1


    nop
    ld [bc], a
    nop
    add l
    add e
    dec de
    dec bc

jr_052_5c70:
    nop
    cpl
    ld c, $1b
    ld a, [bc]
    dec l
    ld c, $5f
    nop
    xor a
    nop
    ld e, a
    nop
    rst $38
    add c
    ld a, [hl]
    add $38
    add sp, $10
    ldh a, [$90]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ld h, c
    ld de, $0103
    inc c
    inc c
    jr nc, jr_052_5cc3

    db $eb
    ld b, c
    db $fd
    ld [$30fa], sp
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ld h, c
    dec bc
    ld bc, $0f03
    rra
    jr c, jr_052_5cdf

    ld h, b
    ld h, b
    ldh [$e0], a
    sbc h
    sbc h
    and a
    db $ed
    inc bc
    ret nz

    ld b, b
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld d, $f8
    ld [$0cf8], sp
    db $fc
    inc c
    cp $0e
    db $f4
    ld d, $f3

jr_052_5cc3:
    rla
    pop hl
    inc hl
    jp nz, $8143

    add e
    ld [bc], a
    ld b, $04
    ld b, $02
    ld [hl+], a
    ld b, $1b
    inc bc
    rlca
    inc bc
    inc bc
    ld a, c
    ld a, c
    cp $86
    rst $38
    dec e
    ld a, a
    ld h, b
    sbc a

jr_052_5cdf:
    add c
    ld b, [hl]
    ld [bc], a
    and h
    inc b
    ld e, b
    jr @-$1d

    pop hl
    rlca
    rrca
    ld a, $7e
    ldh a, [$f0]
    ld a, e
    add l
    nop
    ld [hl], $11
    rra
    db $10
    ld hl, $3100
    ld hl, $426a
    ld d, l
    ld b, h
    xor $84
    db $fd
    adc b
    cp $88
    rst $38
    adc b
    ld b, e
    ld a, a
    ld d, b
    dec de
    cp a
    or e
    db $fc
    db $fc
    and b
    ldh [$d0], a
    ldh a, [$30]
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nc, jr_052_5d87

    ldh [$f0], a
    ldh [$e0], a
    and b
    and b
    jr nc, jr_052_5d4f

    jr jr_052_5d3a

    rrca
    rrca
    inc bc
    rlca
    ld [hl], l
    dec e
    ld a, $3e
    cp $c2
    cp $12
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
    inc b
    ld a, b
    ld [$0838], sp
    jr @+$0a

    db $10

jr_052_5d3a:
    db $10
    ld d, b
    db $10
    and b
    jr nz, @-$1e

    jr nz, @-$3e

    ld b, b
    add b
    add b
    ld l, b
    inc h
    db $10
    rrca
    ld [$0c18], sp
    inc c
    ld e, $1e

jr_052_5d4f:
    ld [hl-], a
    ld [hl-], a
    ld [c], a
    and $c5
    push bc
    dec b
    add l
    inc b
    inc b
    ld h, l
    dec b
    inc b
    inc b
    ld c, $0e
    ld [$8908], sp
    nop
    ld d, $07
    dec bc
    nop
    cpl
    nop
    rra
    ld c, $2f
    nop
    add a
    nop
    ld l, b
    add a
    nop
    or b
    rlca
    or $16
    ld [c], a
    ld h, $c4
    ld b, [hl]
    add d
    add [hl]
    add l
    nop
    xor [hl]
    add hl, bc
    db $fc
    inc e
    ld hl, sp+$1c
    db $e4
    inc l
    ret z

jr_052_5d87:
    ld c, h
    add h
    adc h
    adc c
    nop
    db $10
    ld de, $1010
    rrca
    ld a, $01
    ld b, a
    ld b, b
    ld c, a
    ld e, h
    ld a, a
    ld c, a
    ld a, a
    cpl
    ccf
    daa
    cpl
    db $10
    rla
    and e
    nop
    ld [c], a
    add l
    nop
    ld [hl], b
    ld bc, $e0a0
    add e
    nop
    ld a, b
    ld de, $3030
    ld [hl], e
    ld d, c
    ld a, h
    ld e, h
    ld a, b
    ld d, b

jr_052_5db5:
    ld a, a
    ld d, c
    dec a
    jr z, jr_052_5df8

    jr nc, jr_052_5ddb

    jr jr_052_5dc1

    inc bc
    ld l, a
    dec c

jr_052_5dc1:
    ld e, $1e
    rra
    ld de, $0e0f
    rrca
    add hl, bc
    rra
    ld de, $0123
    ld sp, $8320
    ld bc, $850c
    nop
    and h
    ld bc, $a0e0
    add e
    nop
    xor b

jr_052_5ddb:
    inc bc
    ld [hl], b
    db $10
    jr nc, jr_052_5df0

    adc e
    rst $08
    add e
    nop
    ld a, h
    rst $38
    ld [hl], c
    add hl, de
    ld bc, $0601
    ld [bc], a
    ld [$1208], sp
    db $10

jr_052_5df0:
    dec h
    jr nz, jr_052_5e33

    nop
    ld b, e
    ld b, a
    jr c, jr_052_5e31

jr_052_5df8:
    ld bc, $0301
    inc bc
    rrca
    dec c
    rla
    ld de, $212f

jr_052_5e02:
    ld b, e
    cpl
    jr nz, jr_052_5e15

    rla
    db $10
    rrca
    inc c
    rlca
    ld b, $0b
    rrca
    dec e
    inc de
    ld a, $23
    ld a, $27
    inc e

jr_052_5e15:
    rra
    ld b, l
    inc b
    rlca
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    ret


    or [hl]
    ldh [$29], a
    ld h, b
    jr nz, jr_052_5db5

    db $10
    adc b
    adc b
    sbc h
    add h
    rst $18
    add e
    rst $38
    add b
    db $e3
    add e
    inc c

jr_052_5e31:
    adc h
    db $10

jr_052_5e33:
    db $10
    jr nz, jr_052_5e56

    ld [$5540], a
    nop
    ld a, [bc]
    nop
    ret nz

    ldh [$e3], a
    rst $38
    add c
    jp $8180


    add b
    add b
    adc b
    adc b
    add b
    pop bc
    pop bc
    db $e3
    ld [hl+], a
    rst $38
    rlca
    ld a, a
    ldh a, [$3f]
    ret nz

    ld a, a
    add h
    rst $38

jr_052_5e56:
    ld [$ff43], sp
    stop
    rst $10
    ld b, e
    jr nz, jr_052_5e02

    dec bc
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    cp $78
    ld a, b
    ld l, l
    dec e
    db $fd
    dec e
    rst $38
    db $e3
    ld a, a
    nop
    rrca
    nop
    inc bc
    inc bc
    ld e, l
    inc c
    cp d
    db $10
    ld [hl], l
    jr nz, @+$01

    ld b, b
    ld a, a
    nop
    rrca
    add b
    pop af
    ldh a, [$fe]
    cp $f1
    db $fd
    ldh [$f0], a
    inc hl
    ldh [rTMA], a
    ld [c], a
    ld [c], a
    ldh [$f0], a
    ldh a, [$f8]
    ccf
    ld b, h
    rst $38
    rra
    ld b, e
    ccf
    ldh [$09], a
    ld a, a
    ldh [$7f], a
    db $e3
    ld a, h
    db $fd
    add b
    add b
    add b
    add b
    ld [hl], c
    ld [de], a
    ldh [$e0], a
    db $fc
    inc c
    rst $38
    db $d3

jr_052_5eaf:
    rst $38
    jr nc, jr_052_5eaf

    rst $08
    rst $38
    inc bc
    cp $01
    db $fd
    rlca
    ld a, b
    inc c
    cp $43
    db $10
    rst $38
    inc c
    jr nz, @+$01

    jr nz, jr_052_5f43

    nop
    sbc a
    add b
    ld h, a
    ld h, b
    ld sp, $3c38
    ld a, $22
    ccf
    ld b, $7f
    ld a, a
    cp $ff
    db $fc
    rst $38
    ldh a, [rDMA]
    rst $38
    nop
    ld c, $1c
    ei
    rst $38
    rst $28
    pop af
    scf
    ld h, c
    inc de
    db $10
    add hl, bc
    ld [$0404], sp
    ld bc, $7103
    rla
    ret nz

    ret nz

    db $ec
    inc l
    or [hl]
    ld [hl], d
    adc $c2

jr_052_5ef4:
    inc e
    inc b
    inc a
    inc b
    ld a, d
    ld c, $fa
    ld c, $f2
    ld e, $b2
    ld a, [hl]
    call c, $fc3c
    inc e
    ld b, e
    ld hl, sp+$08
    add hl, bc
    db $fc
    inc b
    ld a, h
    inc b
    adc h
    add h
    ld hl, sp+$78
    ldh a, [rNR10]
    ld b, a
    ldh [rNR41], a
    inc bc
    ret nz

    ld b, b
    add b
    add b
    rst $00
    nop
    db $eb
    add l
    adc c
    ld d, $17
    ld de, $0e0f
    rlca
    inc b
    ld c, $0d
    inc d
    rra
    ld a, [hl-]
    daa
    ccf
    daa
    jr @+$1a

    rst $28
    rra
    add a
    ld a, a
    ld [bc], a
    rst $38
    ld bc, $ff44
    ld b, b
    dec b
    jr nz, @+$01

    pop de
    rst $38
    rlca
    rlca
    adc [hl]
    nop

jr_052_5f43:
    db $ec
    adc d
    nop
    pop de
    ld b, $7f
    ret nz

    rst $38
    add b
    ld a, a
    add e
    db $fc
    call z, $ac00
    add l
    nop
    jr nc, jr_052_5f67

    add hl, bc
    rrca
    ld de, $391f
    daa
    ld a, $26
    jr jr_052_5f78

    rst $38
    ld a, a
    rst $38
    ccf
    rst $28
    rra
    db $fd

jr_052_5f67:
    inc bc
    and e
    nop
    sub l
    inc bc
    ld a, a
    ld h, b
    rra
    jr jr_052_5ef4

    cp a
    inc hl
    rst $38
    ld bc, $7f9f
    ld b, l

jr_052_5f78:
    rst $38
    nop
    ld [bc], a
    db $fc
    rst $38
    add e
    ld c, b
    rst $38
    add b
    nop
    pop bc
    ld [hl+], a
    rst $38
    add [hl]
    nop
    ret nz

    ld c, d
    rst $38
    ldh [rSB], a
    ldh a, [rIE]
    adc e
    xor a
    adc b
    ld bc, $0410
    ldh [$31], a
    ld hl, sp+$3c
    cp $43
    ccf
    rst $38
    adc l
    ld bc, $ff22
    ld l, [hl]
    ld [hl+], a
    ld bc, $0000
    ld b, [hl]
    inc bc
    ld [bc], a
    nop
    ld bc, $89d1
    jp nz, $8f8d

    sub l
    rrca
    inc c
    inc e
    ld [de], a
    ld [hl+], a
    dec a
    ld d, c
    ld a, [hl]
    ld c, b
    ccf
    jr nz, jr_052_5fdb

    db $10
    rlca
    ld c, $00
    ld bc, $e061
    scf
    ld bc, $0f03
    inc b
    inc de
    db $10
    ld hl, $4100
    ld b, b
    jp Jump_052_67c0


    ret nz

    ld a, a
    ret nz

    ccf
    ld b, b

jr_052_5fd6:
    ccf
    nop
    dec a

jr_052_5fd9:
    jr nz, jr_052_5fd6

jr_052_5fdb:
    ldh [$7d], a
    ldh [$3e], a
    ldh [$bd], a
    pop hl
    ld a, [hl]
    ld b, d
    ld a, $23
    rra
    ld de, $101f
    rrca
    add hl, bc
    rra
    ld a, [hl-]
    ld a, l
    push bc
    cp $02
    rst $38
    dec b

jr_052_5ff4:
    ld a, a
    inc b
    sbc a
    adc e
    ld a, a
    ld [hl], l
    ld c, $12
    ld b, e
    inc e
    inc d
    ld de, $0a0e
    rrca
    add hl, bc
    rlca
    inc b
    add [hl]
    add h
    cp $78
    rst $38
    ld bc, $02fe
    db $fc
    inc e
    ldh [$e0], a
    ld h, c
    rla
    ldh a, [$f8]
    sbc $07
    rst $38
    rrca
    cp a
    rra
    cp h
    inc e
    ret c

jr_052_601f:
    jr jr_052_5fd9

    jr jr_052_601f

    inc e
    cp $0f
    db $fc
    rrca
    cp $07
    rst $38
    inc bc
    ld b, h
    rst $38
    nop
    nop
    add b
    ld b, e
    ld a, a
    ret nz

    dec d
    rst $38
    add b
    rst $38
    inc de
    cp $0e
    ld a, [$fc0a]
    inc e
    rst $38
    sub e
    rst $38
    ldh [$bf], a
    ld hl, $029e
    call z, $38cc
    jr c, jr_052_5ff4

    nop
    daa
    nop
    add b
    or c
    nop
    ld a, [de]
    add hl, bc
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld d, b
    ld [hl], b

jr_052_605c:
    ld [$4778], sp
    ld [$1df8], sp
    jr jr_052_605c

    ld hl, sp-$18
    ld hl, sp+$18
    ldh a, [rNR10]

jr_052_606a:
    pop af
    dec bc
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ldh [$3f], a
    jr nz, jr_052_60f4

    ld b, b
    ld hl, sp-$10
    rst $38
    rra
    db $fc
    inc d
    db $fc
    db $e4
    inc e
    ld [de], a
    ld b, h
    ld c, $0a
    ld bc, $0f09
    ld b, e
    add hl, bc
    rlca
    ld b, $07
    inc bc
    inc b
    inc bc
    ld [bc], a
    nop
    ld bc, $27ec
    inc b
    add b
    ret nz

    ldh [rNR41], a
    ldh [rLY], a
    db $10
    ret nc

    ld a, [bc]
    jr nz, jr_052_60bf

    ld b, b
    ld b, b
    nop
    add b
    ld [$0618], sp
    ld h, $2f
    ld b, e
    dec h
    ccf
    ld [bc], a
    ld hl, $213f
    ld b, e
    ld a, [hl]
    ld b, d
    rlca
    db $fc
    add h
    ld hl, sp+$08
    ldh [$30], a
    ret nz

    ret nz

    adc e
    nop
    daa
    xor c

jr_052_60bf:
    cp d
    dec b
    nop
    ld [$1405], sp
    rla
    ld [de], a
    add e
    nop
    sub b
    nop
    ld bc, $a1a6
    add l
    nop
    add b
    inc de
    ccf
    ld [hl], l
    ld a, $81
    ld a, h

Jump_052_60d7:
jr_052_60d7:
    ld c, $f0
    jr jr_052_60d7

    add [hl]
    rst $38
    ld h, c
    rst $38
    add hl, de
    cp $01
    db $fc
    ld b, $f8
    jr jr_052_606a

    nop
    sbc [hl]
    ld h, c
    inc de
    cp $19
    rst $28
    pop af
    ld e, $22
    jr c, jr_052_613f

    ld [hl], c

jr_052_60f4:
    ld d, c
    ld h, e
    ld d, d
    scf
    ld c, h
    ccf
    jr nz, jr_052_610b

    jr jr_052_6101

    ld b, $ac
    nop

jr_052_6101:
    inc [hl]
    ld c, $30
    ld d, b
    ld c, b
    cp b
    adc b
    ld hl, sp-$6c
    db $fc

jr_052_610b:
    inc d
    ld hl, sp+$24
    ld hl, sp+$08
    ldh a, [rNR10]
    and d
    reti


    call z, $f600
    ld [$090f], sp
    rrca
    ld a, [bc]
    ld b, $08
    rlca
    inc b
    inc bc
    xor [hl]
    sub a
    and e
    nop
    ld a, $11
    ld [bc], a
    ld b, [hl]
    adc l
    add l
    dec a
    dec b
    ld a, a
    add hl, bc
    rst $38
    ld de, $02fe
    db $fc
    inc b
    ld hl, sp+$18
    ld h, b
    ldh [$61], a
    adc e
    nop
    ld [hl], b
    inc bc
    ld a, a

jr_052_613f:
    push bc
    rst $38
    ld [bc], a
    add a
    nop
    ret nz

    rlca
    rst $38
    inc c
    rst $38
    ld [$1cff], sp
    rst $38
    sub e
    add a
    ld bc, $0210
    rst $38
    jr nz, @+$01

    add h
    ld bc, $ff1b
    ld a, e
    ldh [rNR44], a
    inc bc
    rlca
    inc bc
    jr @+$06

    inc hl
    jr c, jr_052_618b

    jr nz, jr_052_61a5

    nop
    ccf
    ld de, $111f
    ld e, $0b
    ld c, $07
    ld b, $07
    inc b
    rra
    inc e
    cpl
    jr nz, @+$41

    jr nz, @+$1d

    inc d
    dec bc
    inc c
    rlca
    inc b
    dec b
    ld b, $43
    inc bc
    ld [bc], a
    inc hl
    ld bc, $e07a
    jr nz, jr_052_618a

    nop

jr_052_618a:
    ld [bc], a

jr_052_618b:
    nop
    inc b
    ld [$640c], sp
    db $f4
    add d
    ld h, d
    ld bc, $07c3
    add b
    rrca
    add b
    sbc a
    nop
    rst $38
    nop
    ei
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    sbc a
    ld h, b

jr_052_61a5:
    ei
    ld b, $ff
    ld bc, $ff4f
    nop
    dec bc
    ccf
    nop
    rlca
    sbc b
    ld sp, hl
    add [hl]
    cp a
    jp Jump_052_4c7c


    jr nc, jr_052_61e9

    ld l, a
    ld de, $e060
    jr jr_052_61d7

    ld e, $06
    ld a, a
    ld bc, $60ff
    ld a, a
    sub b
    rst $38
    ld [$887f], sp
    ld a, a
    ldh a, [rLYC]
    rst $38
    nop
    add hl, bc
    rst $28
    ld [$18ff], sp
    rst $38
    db $10

jr_052_61d7:
    cp $01
    rst $28
    ld [hl], b
    or c
    rst $08
    ld bc, $00ff
    ld b, e
    cp $00
    ld bc, $fefd
    sbc e
    nop
    ld b, [hl]

jr_052_61e9:
    rlca
    ret nz

    ldh [$f8], a
    inc e
    di
    rrca
    pop hl
    ld e, $43
    ld [c], a
    inc e
    inc bc
    pop hl
    ld e, $e0
    rra
    ld b, e
    ldh a, [rIF]
    ld a, [bc]
    ld hl, sp+$07
    ld a, b
    add a
    db $fc
    inc bc
    rst $38
    ld bc, $38df
    rst $30
    ld b, e
    inc b
    rst $38
    ld [bc], a
    ld [$30df], sp
    ld b, [hl]
    rst $38
    ld bc, $020a
    ld a, a
    ld [bc], a
    ccf
    inc b
    ccf
    rlca
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    ld a, e
    dec d
    add b
    add b
    ldh [$60], a
    ld a, b
    jr jr_052_623c

    inc c
    call nz, $003c
    ld hl, sp+$08
    ld hl, sp+$00
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    daa
    add b
    dec b
    ret nz

    ret nz

jr_052_623c:
    ldh [$a0], a
    ret nz

    jr nc, jr_052_6286

    ldh a, [rNR10]
    inc b
    ldh [rNR41], a
    ld b, b
    ldh [rP1], a
    and h
    nop
    db $ed
    add hl, bc
    rlca
    ld b, $07
    dec b
    dec bc
    add hl, bc
    rrca
    add hl, bc
    dec bc
    inc c
    add l
    nop
    ld a, [hl-]
    add e
    rst $38
    ld a, [bc]
    rst $38
    ld h, b
    rst $18
    sub b
    ld a, a
    adc b
    rst $38
    ld [$00ff], sp
    rst $38
    adc d
    nop
    db $ed
    dec b
    ld bc, $001f
    jr nz, jr_052_62af

    ld hl, $2043
    ccf
    ld b, $10
    rra
    nop
    rra
    add hl, bc
    rrca
    dec b
    ld b, h
    ld b, $07
    adc c
    nop
    ld e, h
    ld a, [bc]
    ld hl, sp-$04

jr_052_6286:
    adc b
    ld l, h
    inc b
    call nz, $8202
    ld bc, $f383
    adc b
    nop
    db $dd
    ld b, $bf
    ld b, h
    rst $18
    ld [hl+], a
    rst $38
    nop
    db $fd
    add e
    db $d3
    ld bc, $fe01
    add e
    nop
    add e
    add [hl]
    nop
    xor e
    dec b
    inc e
    inc e
    rra
    inc bc
    ld a, a
    nop
    adc a
    nop
    cp b

jr_052_62af:
    ld a, [bc]
    rst $38
    nop
    rst $38
    inc c
    cp $11
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld b, h
    ldh [$3f], a
    ld [bc], a
    rst $38
    ret nz

    rst $38
    ld l, h
    rlca
    adc b
    ld hl, sp-$74
    inc b
    inc d
    inc c
    ld h, h
    inc e
    ld b, e
    ld [$00f8], sp
    db $10
    add h
    ld bc, $016b
    nop
    ldh [$83], a
    nop
    ld h, h
    nop
    nop
    ld [hl+], a
    inc b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld h, c
    di
    add e
    ld h, c
    rlca
    ret nz

    ei
    rlca
    adc c
    db $eb
    ld [bc], a
    rst $38
    nop
    rst $38
    sub b
    nop
    and e
    rlca
    inc e
    inc b
    ld a, [hl]
    ld [bc], a
    rst $38
    ld h, c
    ld a, a
    sub c
    add e
    rst $30
    ld [bc], a
    rst $38
    adc b
    rst $38
    add d
    ld sp, hl
    adc l
    nop
    jp nz, $fb8b

    ld b, e
    rst $38
    nop
    rst $38
    ld [hl], h
    ld [bc], a
    ld bc, $0101
    adc e
    adc h
    nop
    ld [bc], a
    ld [hl+], a
    inc bc
    dec bc
    ld h, b
    ld h, h
    inc e
    sbc h
    add [hl]
    add [hl]
    ld b, d
    ld b, e
    jr nz, jr_052_6342

    db $10
    db $10
    inc hl
    ld [$3002], sp
    jr nc, jr_052_632a

jr_052_632a:
    ld [hl+], a
    ld b, b
    ldh [$2a], a
    inc a
    inc a
    inc hl
    dec hl
    jr nz, jr_052_636b

    db $10
    dec de
    inc c
    rrca
    inc de
    rra
    nop
    dec hl
    jr nz, @+$27

    nop

Call_052_633f:
    ld b, e
    nop
    ld b, a

jr_052_6342:
    ld b, b
    ld l, e
    ld b, b
    ld d, a
    jr nz, jr_052_6387

    rra
    ccf
    nop
    ld e, a
    ld b, b
    ld l, e
    add b
    rst $10
    jr jr_052_636a

    inc b
    inc h
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    db $10
    ld [hl+], a
    ld de, $0000
    add h
    cp c
    add hl, bc
    ld c, b
    ret z

    jr z, jr_052_638c

    jr jr_052_637e

    add b
    adc h
    add b
    add b

jr_052_636a:
    inc hl

jr_052_636b:
    ld b, b
    add hl, de
    add $c7
    jr nc, @+$01

    nop
    rst $38
    ld hl, sp-$01
    cp $ff
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rlca

jr_052_637e:
    rrca
    ld de, $221f
    dec a
    ld b, e
    ld a, h
    ld b, a
    ld a, b

jr_052_6387:
    ld b, e
    add a
    ld hl, sp+$0a
    rlca

jr_052_638c:
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    inc bc
    rst $38
    rra
    db $fc
    rst $38
    ld b, h
    ldh [$1f], a
    ld b, l
    rrca
    ldh a, [rSB]
    ld b, $f9
    and e
    sub e
    dec b
    jr c, @+$01

    ccf
    rst $00
    inc a
    jp $0c68


    ld [$1404], sp
    sub h
    sub h
    add h
    and h
    ld h, h
    ld h, h
    inc b
    ld b, h
    inc b
    inc b
    add hl, hl
    ld [$e80a], sp
    add sp, $18
    ld hl, sp+$04
    call nz, $0602

jr_052_63c2:
    ld [bc], a
    cp [hl]
    ld bc, $ff44
    add b
    ld b, e
    ret nz

    rst $38
    add hl, de
    ldh a, [rIE]
    ld a, l
    rst $38
    cp a
    ld a, a
    ldh a, [$3f]
    ret nc

    ccf
    adc h
    ld a, h
    ld c, $fa
    rrca
    pop af
    sbc a
    pop hl
    cp $62
    sbc $3a
    add $3e
    add a
    ld a, e
    ld b, e
    adc a
    ld [hl], c
    dec c
    rra
    db $e3
    ld e, $e2
    ld e, $e7
    dec a
    push bc
    inc a
    call nz, $c838
    ld hl, sp-$78
    db $ec
    ld hl, $030c
    rlca
    ld [$2018], sp
    jr nz, jr_052_63c2

    ldh a, [$80]
    rst $38
    ld h, b

jr_052_6406:
    rst $38
    db $10
    and h
    add c
    nop
    ldh [rLY], a
    rst $38
    nop
    ld c, $c0
    rst $38
    ld hl, $1aff
    cp $0c
    inc a
    inc b
    rra
    inc bc
    rrca
    ld bc, $0107
    ld b, e
    inc bc
    nop
    ld [$8001], sp
    add c
    add b
    adc a
    nop
    jr nc, jr_052_642b

jr_052_642b:
    ret nz

    and [hl]
    nop
    ld e, $02
    ld b, b
    ld b, c
    ld b, c
    xor b
    nop
    pop bc
    dec c
    jr c, jr_052_6461

    jr c, jr_052_6453

    inc a
    inc l
    inc a
    inc c
    inc a
    inc l
    ld a, $1e
    ld a, $2e
    add e
    add e
    nop
    ccf
    ld b, e
    ccf
    ld a, a

jr_052_644c:
    ld [$7f7f], sp
    rst $38
    rst $38
    rrca
    ld a, a

jr_052_6453:
    inc bc
    ccf
    ld bc, $ff4c
    nop
    ld b, e
    jr nz, @+$01

    inc c
    ld b, b
    rst $38
    add b
    cp a

jr_052_6461:
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    ret nz

    rst $38
    jr nz, jr_052_64af

    rst $38
    sub b
    inc de
    ld d, b
    rst $38
    ld b, b
    rst $38
    jr c, @+$01

    inc h
    rst $20
    ld e, d
    ei
    ld b, l
    ld a, l
    ld h, l
    ld a, l
    jp nc, $aafe

    cp $d2
    cp $ec
    ld [hl+], a
    jr jr_052_6406

    add d
    add e
    add a
    add a
    adc e
    adc a
    sub [hl]
    sbc a
    xor h
    cp [hl]
    call c, $a8fc
    db $fc
    ld e, b
    ld hl, sp+$30
    cp b
    jr nc, jr_052_650a

    jr nz, jr_052_644c

    jr nc, jr_052_650e

    ld b, e
    ld c, b
    ld hl, sp+$01
    add [hl]
    cp $45
    rrca
    ld sp, hl
    ld b, e
    ld b, $fa
    ld bc, $f20c
    ld b, e
    inc c

jr_052_64af:
    db $f4
    nop
    inc e
    ld b, e
    db $e4
    jr @+$03

    add sp, $38
    ld b, h
    ret z

    cp b
    ld bc, $e498
    rst $38
    ld [hl], c
    add hl, bc
    ld [$1b1c], sp
    inc de
    ld c, $08
    inc bc
    ld b, $01
    ld bc, $0161
    ld bc, $ec01
    inc hl
    dec de
    ld bc, $0403
    inc b
    ld [$0309], sp
    ld de, $2200
    ld [hl], $22
    inc l
    ld b, h
    ld e, e
    ld c, c
    ld b, d
    sub [hl]
    pop hl
    adc b
    db $d3
    and a
    ld a, [hl]
    ret c

    ld a, a
    and a
    ld a, $50
    db $d3
    xor [hl]
    inc d
    ld b, $8e
    ld [hl], b
    ld [hl], b
    rst $00
    nop

jr_052_64f7:
    ld a, a
    add b
    rst $28
    ldh a, [$3f]
    nop
    ld [hl], a
    ld hl, sp+$03
    rlca
    ld bc, $0301
    ld [bc], a
    inc bc
    ld b, e
    inc b
    rlca
    inc b

jr_052_650a:
    add hl, bc
    ld c, $0a
    inc b

jr_052_650e:
    inc b
    adc h
    rst $10
    ld e, $0c
    db $10
    db $10
    jr nz, jr_052_64f7

    ld b, c
    ld b, c
    add d
    add [hl]
    nop
    ld [$1000], sp
    jr nz, @+$22

    ld b, c
    ld b, e
    add h
    adc h
    db $10
    db $10
    ld h, b
    nop
    jp nz, $16c1

    ld c, $30
    ld [hl], b
    ld b, b
    add b
    add e
    nop
    rra
    ld [$1e0c], sp
    ld bc, $0c21
    jr jr_052_653f

    rlca
    nop
    add e

jr_052_653f:
    xor l
    ld [$4030], sp
    ld b, b
    add c
    add b
    rrca
    nop
    ld a, a
    nop
    ld b, e
    rst $38
    nop
    rlca
    db $fd
    ld [bc], a
    ei
    inc c
    rst $28
    ld [hl], b
    rst $38
    add b
    and e
    jp hl


    ld [$30d0], sp
    ret nz

    pop bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    ld [hl+], a
    ld [$0219], sp
    ld de, $1410
    ld bc, $7828
    ld hl, sp+$06
    rlca
    ld a, [bc]
    nop
    ld d, l
    nop
    cp a
    ld a, h
    add e
    add e
    ld a, [bc]
    nop
    dec d
    nop
    daa
    rra
    ld h, b
    ldh [$61], a
    ldh [rNR42], a
    dec b
    nop
    ld a, [bc]
    nop
    ld e, a
    ccf
    ldh [$c0], a
    ld [bc], a
    nop
    dec d
    nop
    cpl
    nop
    ld e, a
    nop
    ld [bc], a
    rlca
    inc b
    inc b
    jp nz, $ffe3

    rrca
    rst $38
    nop
    rst $38
    ret nz

    sbc a
    jr nz, jr_052_6600

    nop
    cp a
    nop
    ld c, l
    rst $38
    nop
    ldh [$3f], a
    cp $01
    rst $30
    ld c, $ff
    ldh a, [$7f]
    add b
    rst $18
    add b
    xor a
    nop
    rla
    nop
    dec bc
    nop
    rla
    nop
    dec hl
    nop
    rla
    and b
    cpl
    ld d, b
    ld l, a
    db $10
    or a
    ld [$0877], sp
    cp e
    call nz, $32ed
    push af
    ld a, [bc]
    cp $85
    rst $18
    ld h, d
    rst $30
    add hl, de
    cp l
    adc $72
    ld a, a
    xor l
    rrca
    ld e, a
    inc bc
    rst $38
    nop
    ld a, [hl]
    add c
    ld [hl], l
    ld a, d
    cp a
    rlca
    ld a, [$f505]

jr_052_65e6:
    ld a, [bc]
    ld [$a515], a
    nop
    sbc d
    inc b
    ld l, b
    adc b
    db $f4
    db $e4
    ld hl, sp+$43
    ld [bc], a
    cp $02
    ld bc, $01ff
    ld b, h
    rst $38
    nop
    ld a, [bc]
    ld bc, $01fe

jr_052_6600:
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr jr_052_65e6

    ldh [rWX], a
    rst $38
    nop
    add hl, bc
    rst $18
    jr nz, @-$0f

    db $10
    rst $30
    ld [$09f7], sp
    ld a, [$4406]
    db $fc
    inc b
    nop
    ld [bc], a
    ld b, e
    ld a, [hl]
    add d
    ld b, e
    cp [hl]
    ld b, d
    add hl, de
    inc a
    jp nz, $24dc

    sbc b
    db $e4
    ld e, b
    add sp, $28
    ld hl, sp-$70
    ld hl, sp-$38
    ld hl, sp-$4c
    ld a, h
    ld e, h
    xor [hl]
    xor d
    ld d, a
    push af
    db $eb
    ld e, [hl]
    cp l
    and e
    ld e, a
    xor l
    nop
    dec b
    inc b
    ld [$5828], sp
    ld c, b
    jr jr_052_6689

    adc b
    or b
    dec b
    db $10
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    call nz, $0381
    ldh a, [$08]
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    ld b, e
    cp $02
    ld b, e
    rst $38
    ld bc, $fc05
    ld [bc], a
    cp [hl]
    jp nz, $3c18

    db $f4
    inc hl
    nop
    ld [hl+], a
    inc bc
    ld h, b
    ldh a, [rNR23]
    db $fc
    rst $38
    ld [$0100], sp
    ld [bc], a
    ld b, $00
    ld [$1010], sp
    nop
    ld [hl+], a
    jr nz, jr_052_667f

    nop
    ld b, b

jr_052_667f:
    nop
    ld h, $40
    add hl, bc
    jr nz, @+$23

    jr nz, jr_052_66aa

    jr nz, jr_052_66b0

jr_052_6689:
    ld h, b
    ld l, a
    ld d, b
    ld e, a
    ld b, e
    sub b
    sbc a
    ld b, e
    adc b
    adc a
    add hl, de
    add h
    adc a
    add h
    sbc [hl]
    ld b, d
    ld e, [hl]
    ld b, d
    ld a, [hl]
    ld b, c
    ld a, a
    jr nz, jr_052_66de

    jr nz, jr_052_66de

    db $10
    inc e
    db $10
    jr jr_052_66af

    ld [$0404], sp

jr_052_66aa:
    ld [bc], a
    ld [bc], a
    ld bc, $7d01

jr_052_66af:
    dec b

jr_052_66b0:
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_052_66d6

    inc hl
    db $10
    inc hl
    ld [$0419], sp
    inc c
    inc b
    inc d
    inc b
    inc l
    ld [bc], a
    sub $02
    xor d
    ld [bc], a
    sub $01
    db $eb
    ld bc, $01f5
    pop af
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    adc e

jr_052_66d6:
    or c
    dec b
    ld h, b
    ld h, b
    jr jr_052_66f4

    inc c
    inc c

jr_052_66de:
    add l
    db $db
    add e
    adc l
    inc bc
    inc e
    inc e
    inc bc
    inc bc
    and e
    adc c
    ld bc, $0101
    ld b, l
    ld [bc], a
    inc bc
    add l
    add a
    dec b
    dec b
    rlca

jr_052_66f4:
    ld [$300c], sp
    add hl, sp
    ld a, a
    dec b
    add e
    add e
    add a
    add h
    adc a
    adc c
    ld b, e
    ld d, e
    ld d, c
    ld bc, $6362
    ld b, l
    ld a, $33
    nop
    ld e, $44
    ld de, $161f
    rrca
    dec bc
    ld c, $0e
    ld [$880c], sp
    adc b
    ld d, b
    ld e, c
    jr nz, jr_052_674d

    nop
    ld h, c
    add b
    ld [c], a
    add b
    push bc
    nop
    jp nz, $ff00

    ld a, [hl]
    ld [hl+], a
    rst $38
    dec c
    add c
    sbc a
    nop
    rrca
    nop
    rra
    nop
    rst $38
    ldh a, [rIE]
    inc c
    rst $38
    inc bc
    rst $38
    ld l, h
    ld bc, $0204
    ld [hl+], a
    ld a, [bc]
    nop
    ld [bc], a
    ld b, e
    ld d, $12
    rrca
    ld e, $22
    ld a, $27
    ccf
    jr c, @+$41

    ldh [$f1], a
    ret nz

jr_052_674d:
    ld h, b
    add b
    ldh [rP1], a
    di
    nop
    ld b, h
    rst $38
    nop
    ld b, e
    ld bc, $45ff
    ld [bc], a
    cp $00
    ld [hl], h
    ld [hl+], a
    db $fc
    dec c
    ld [$0938], sp
    ld e, c
    inc de
    or e
    ld [de], a
    ld d, e
    inc h
    and a
    jr z, jr_052_67dc

    ld c, b
    rst $08
    ld b, e
    ld d, b
    rst $18
    and l
    and e
    dec c
    ret nz

    rst $38
    ld h, c
    rst $38
    ld h, $fe
    ld a, $fe
    ld c, [hl]
    adc $87

jr_052_6780:
    adc a
    rlca
    rlca
    xor a
    nop
    ld d, d
    and e
    nop
    ld c, $1b
    inc b
    inc b
    dec b
    dec b

jr_052_678e:
    ld a, [bc]
    ld a, [bc]
    db $fc
    db $fc
    inc d
    db $f4
    jr jr_052_678e

    jr z, jr_052_6780

    ld sp, $53f1
    jp nc, $ec65

    call nz, $88fc
    cp b
    nop
    ld [hl], b
    ld de, $4370
    ccf
    ldh [$03], a
    ld a, a
    ret nz

    ld a, a
    ld b, b
    ld b, h
    rst $38
    add b
    ld a, [bc]
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    db $e3
    inc e
    db $fc
    db $10
    ldh a, [rSCX]
    rra
    rst $38

Jump_052_67c0:
    dec bc
    inc a
    db $fc
    ld hl, $63e1
    db $e3
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld e, $1e
    ld h, c
    db $10
    jr jr_052_67e9

    ld a, b
    ld l, b
    ldh a, [$f0]
    ld [bc], a
    ld b, $01
    add hl, bc
    ld bc, $0111

jr_052_67dc:
    ld hl, $4202
    ld [bc], a
    ld [hl+], a
    add d
    inc hl
    inc b
    inc bc
    ld l, b
    ld l, b
    sbc b
    sbc b

jr_052_67e9:
    and e
    nop
    ld a, [hl-]
    and e
    nop
    inc a
    rlca
    ret nz

    ret nz

    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld bc, $68f8
    inc hl
    ld hl, sp+$01
    ret c

    ret c

    call nz, $0080
    ld l, b
    ld b, e
    ldh a, [rNR10]
    rlca
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    jr nc, @+$32

    add e
    rst $00
    ld bc, $e0e0
    and l
    nop
    and [hl]
    nop
    ret nz

    xor [hl]
    nop
    ccf
    rst $38
    ld [hl], l
    ld bc, $0101
    inc hl
    ld [bc], a
    daa
    ld bc, $0223
    dec bc
    ld c, $0e
    ld [de], a
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld b, $04
    rlca
    inc b
    ld b, $04
    ld b, a
    inc bc
    ld [bc], a
    ld bc, $0101
    call $13a6
    ld bc, $0301
    rlca
    dec bc
    ld a, [de]
    inc sp
    ld [hl+], a
    rra
    ld h, d
    ld c, d
    ld [hl], a
    add l
    rst $38
    add a
    db $fc
    adc l
    ld hl, sp+$4c
    ld a, b
    ld h, l
    ld [$0606], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0008], sp

jr_052_6860:
    ld [hl+], a
    db $10
    ldh [rBGP], a
    ld hl, $4320

jr_052_6867:
    ld b, b
    rst $00
    ret nz

    rlca
    ld b, b
    adc [hl]
    add b
    rrca
    add b
    ld e, $00
    dec e
    nop
    inc e
    nop
    ld a, [hl-]
    nop
    dec a
    nop
    ld a, [hl-]
    nop
    ld a, l
    nop
    ld a, d
    nop
    ld a, l
    ld bc, $017a
    cp l
    nop
    ld a, [hl]
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$9f]
    ldh [$bf], a
    ld b, b
    ld a, a
    ld e, b
    ld b, a
    call nz, $888b
    add a
    sub h
    dec bc
    jr z, @+$19

    inc [hl]
    dec bc
    ld a, b
    rlca
    add b
    ld a, a
    ld a, $ff
    pop bc
    rst $38
    ld b, e
    ret nz

    ccf
    ld bc, $7f80
    ld h, e
    ld d, $18
    inc e
    ld b, d
    ld h, d
    ld b, $82
    inc e
    inc b
    jr c, @+$0a

    ld h, b
    jr @-$0e

    db $10
    or b
    db $10
    ld h, b
    jr nz, jr_052_6867

    jr nz, jr_052_6909

    ld b, b
    ret nz

    ld [hl+], a
    ld b, b
    rlca
    ldh [rSVBK], a
    db $10
    sub b
    and b
    and b
    ret nz

    ret nz

    dec h
    add b
    ld [bc], a
    ret nz

    ret nz

    jr nz, jr_052_6860

    sub a
    rrca
    ret nz

    rst $20
    daa
    ei
    inc a
    ret nc

    ldh [rP1], a
    ldh a, [$09]
    ldh a, [rTMA]
    ld sp, hl
    ld bc, $00fe
    ld d, h
    rst $38
    nop
    rlca
    ret nz

    rst $38
    jr nc, @+$01

    ld c, $ff
    ld bc, $ecff
    inc sp
    ld c, $e0
    ldh a, [$ec]
    inc e
    inc de
    rrca
    jr nc, jr_052_6915

    jp hl


    rla
    pop de

jr_052_6909:
    cpl
    ld [hl+], a
    rst $18
    ld [bc], a
    ld b, [hl]
    cp $03
    ld [bc], a
    ld bc, $01ff
    ld c, b

jr_052_6915:
    rst $38
    nop
    ld [$ff01], sp
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    db $fc
    adc b
    rst $18
    ld [$0706], sp
    ld [$0c08], sp
    ld [$0c00], sp
    ld b, $c4
    nop
    inc sp
    rlca
    ld c, $1c
    dec d
    inc d
    ld c, $0c
    dec b
    inc b
    and e
    nop
    call nc, $0604
    inc b
    dec c
    ld [$240c], sp
    ld [$32e0], sp
    jr nc, jr_052_69c0

    ld b, b
    ld d, b
    ld d, c
    ld d, b
    ld sp, $2130
    jr nz, jr_052_6974

    jr nz, @+$49

    ld b, b
    xor a
    add b
    rst $18
    add b
    xor a
    nop
    ld e, a
    nop
    cp [hl]
    nop
    db $fd
    nop
    ld a, [$fd00]
    nop
    xor e
    nop
    rst $10
    add c
    cp $c6
    inc a
    db $fc
    inc b
    db $fc
    ld a, h
    db $fc
    ei
    add a
    adc l
    inc bc

jr_052_6974:
    adc h
    inc bc
    ld a, b
    add a

jr_052_6978:
    nop
    adc d
    ld bc, $831f
    nop
    db $ec
    ld [bc], a
    db $10
    db $10
    jr @+$24

    ld [$0410], sp
    inc b
    add h
    inc b
    ld b, $02
    add d
    inc bc
    ld b, l
    dec b
    adc e
    add hl, bc
    ld c, a
    add hl, bc

jr_052_6994:
    and l
    rlca

jr_052_6996:
    ld [hl], c
    ld b, [hl]
    ld bc, $0bf1
    ei
    ld bc, $01f5
    ld a, [$f602]
    ld [bc], a
    xor $02
    cp $02
    ld b, e
    db $fc
    inc b
    dec c
    db $ec
    ld e, $e6
    ld [hl+], a
    ld a, h
    inc h
    cp b
    jr jr_052_6a24

    jr nc, jr_052_6996

    jr nz, jr_052_6978

    ld b, b
    and l
    nop
    ld a, $0f
    jr nc, jr_052_69ef

    ld c, b

jr_052_69c0:
    ld c, b
    ret z

    adc b
    ld e, $ee
    add a
    db $fd
    add e
    rst $38
    ld h, c
    rst $38
    ld d, c
    rst $38
    rst $38
    ld [hl], a
    ld de, $0101
    inc bc
    inc bc
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    rrca
    ld a, [bc]
    rlca
    dec b
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld bc, $ec01
    ld e, c
    rla
    jr nc, jr_052_6a57

    rrca
    adc a
    inc bc
    inc b
    ld c, a
    ld [hl+], a
    cp a
    ld [hl], e

jr_052_69ef:
    bit 7, c
    rst $28
    ld a, c
    sub [hl]
    sbc [hl]
    sub a
    sub h
    ld h, a
    ld h, h
    rrca
    ld [$f676], sp
    add e
    di
    ld [bc], a
    ld bc, $0201
    add $00
    ld a, [de]
    dec h
    ld bc, $2bf0
    nop
    jr z, jr_052_6994

    xor e
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    ld b, e
    ld [$e00f], sp
    cpl
    db $10
    rra
    db $10
    dec de
    jr jr_052_6a3c

    jr jr_052_6a3f

    add hl, de
    rra
    ld h, e
    ld a, [hl]

jr_052_6a24:
    add a
    cp $db
    cp $39
    inc [hl]
    jr jr_052_6a40

    adc [hl]
    adc d
    ld a, [hl]
    ld a, a
    ld sp, hl
    add hl, de
    ld a, [$f806]
    dec b
    ld a, b
    dec b
    ldh a, [$ca]
    ld [hl], b
    ld a, h

jr_052_6a3c:
    adc h
    db $fc
    daa

jr_052_6a3f:
    rst $38

jr_052_6a40:
    add $fe
    call z, $8cfc
    db $fc
    inc e
    db $fc
    ld b, e
    jr @-$06

    inc c
    ld sp, $b2f1
    di
    and h
    and $44
    ld b, a
    inc bc
    inc bc
    nop

jr_052_6a57:
    ld [bc], a
    nop
    inc h
    ld [bc], a
    nop
    nop
    ld b, h
    inc b
    dec b
    rla
    ld bc, $0b08
    inc c
    ld a, [bc]
    add hl, bc
    nop
    db $10
    ld bc, $0210
    jr nz, jr_052_6a6f

    ld b, b

jr_052_6a6f:
    ld [hl+], a
    ld b, b
    ld [hl], l
    ld h, c
    set 7, c
    ld b, $7e
    db $fc
    db $fc
    ld h, c
    inc b
    db $e3
    db $e3
    inc e
    rst $38
    ld [$ff44], sp
    nop
    ldh [rNR42], a
    ld h, e
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    ld l, a
    db $dd
    ld [hl], a
    ret


    rst $38
    pop bc
    cp $81
    ld e, d
    ld h, [hl]

jr_052_6a95:
    ld a, [hl]
    ld b, d
    rst $38
    ld b, d
    ccf
    nop
    dec de
    inc h
    and $99
    ld a, e
    ld h, a
    inc e
    ccf

jr_052_6aa3:
    ld b, $26
    nop
    dec de
    and a
    nop
    sub $25
    ld b, b
    inc hl
    add b
    rrca
    ld b, b
    ret nz

    jr nc, jr_052_6aa3

    ld c, h
    ld a, a
    adc b
    adc a
    adc b
    ld hl, sp-$10
    rst $38
    rst $38
    rra
    ei
    inc e
    ld b, e
    rst $30
    inc d

jr_052_6ac2:
    ld a, [bc]
    rst $20
    inc h
    db $e3
    inc h
    rst $20
    jr z, jr_052_6a95

    ld c, h
    ld c, b
    ret


    ret z

    ld [hl+], a
    ld c, b
    dec bc
    adc b
    adc b
    add b
    adc b
    sub l
    sub b
    ld a, [de]
    db $10
    rrca
    rrca

jr_052_6adb:
    inc b
    dec b
    jp $e500


    inc bc
    add b
    add b
    ld h, b
    ldh [$a4], a
    nop
    ld [$32e0], a
    ld hl, sp+$04
    db $fc
    inc b
    db $ec
    add h
    cp h
    inc c
    db $fc
    inc l
    db $fc
    ld h, d
    cp $f1
    cp a
    rst $38
    cpl
    sbc $2e
    ret c

    jr z, @-$02

    ld e, h
    ld h, h
    db $fc
    or d
    cp [hl]
    ld a, b
    ld a, [hl]
    adc l
    adc a
    inc b
    add a
    ld bc, $0045
    ld c, c
    ld hl, $1332
    inc d
    rla
    inc d
    cpl
    cpl
    ld c, [hl]
    ld c, a
    ld b, [hl]
    ld b, a
    ld h, a
    ld h, a
    inc hl
    inc hl
    dec bc

jr_052_6b20:
    ld d, e
    ld [hl], e

jr_052_6b22:
    adc c
    ld sp, hl
    add c
    ld sp, hl
    ld b, h
    ld c, h
    jr jr_052_6b22

    ldh [$a0], a
    ld b, e
    ldh [rNR41], a

jr_052_6b2f:
    ld bc, $20c0
    ld b, a
    ret nz

    ld b, b
    dec b
    ld b, b
    ret nz

    ld h, b
    jr nz, jr_052_6adb

    jr nz, jr_052_6ac2

    add e
    and l
    nop
    db $e4
    ld bc, $e0e0
    db $f4
    ld hl, $c200
    adc c
    adc a
    rla
    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ld h, b
    or b
    jr nc, jr_052_6b20

    inc c
    db $e3
    inc bc
    ld hl, sp-$40
    ccf
    ldh a, [rVBK]
    call z, $c243
    ld b, c
    pop bc
    add c
    add c
    db $f4

jr_052_6b64:
    ld e, e
    nop
    jr z, jr_052_6b2f

    ld [bc], a
    dec [hl]
    add hl, bc
    ld [hl], b
    sub b
    ret z

    jr c, jr_052_6b64

    inc b
    ld hl, sp+$38
    ret nz

    ld b, b
    db $f4
    dec l
    nop
    ld h, $ff
    ld l, d
    jr nc, jr_052_6b7e

    nop

jr_052_6b7e:
    nop
    call nz, $e091
    jr z, @+$22

    ld h, b
    ld h, b
    sub b
    ld hl, sp-$78
    ld l, [hl]
    ld d, [hl]
    ld d, l
    ld l, e
    ld a, [hl+]
    dec [hl]
    jr nz, jr_052_6bd0

    db $10
    rra
    ld [$180f], sp
    rra
    ld a, h
    ld h, a
    ldh a, [$8f]
    ld b, b
    ld a, a
    jr nc, jr_052_6bde

    ld [$100f], sp
    rra
    ld hl, $763f
    ld c, a
    ld h, h
    ld e, h
    jr c, jr_052_6be3

    nop
    ld [hl+], a

jr_052_6bad:
    db $10
    ld a, [bc]
    ld bc, $2b20
    jr nz, jr_052_6beb

    jr nz, jr_052_6be5

jr_052_6bb6:
    ld b, b
    ld d, [hl]
    ld b, c
    ld l, [hl]
    ld b, h
    ld b, c
    ld a, a
    ld bc, $203f
    ld h, a
    rla
    ret nz

    ret nz

    jr nc, jr_052_6bb6

    adc b
    ld hl, sp-$3c
    db $fc
    jp nz, $e1c2

    add c
    ld [hl], b
    add b

jr_052_6bd0:
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    cp $01
    db $fd
    add d
    ld b, e
    rst $38
    add b
    rla

jr_052_6bde:
    rst $28
    sub b
    ld e, a
    and b
    ld e, a

jr_052_6be3:
    ld h, b
    ld a, a

jr_052_6be5:
    ld b, b
    rst $38
    add b
    ld a, a
    ldh [$1f], a

jr_052_6beb:
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$8383]
    ld [de], a
    ccf
    rst $38
    ret nz

    ret nz

    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    nop
    di
    rrca
    rst $18
    jr nc, @+$01

    ld b, b
    ld a, a
    ld b, e
    add b
    rst $38
    ld [bc], a
    nop
    rst $38
    ld [bc], a
    ld b, h
    rst $38
    ld bc, $8100
    ld [hl], c
    dec c
    add b
    add b
    ld b, e
    ld b, a
    jr c, jr_052_6c58

    nop
    jr nc, jr_052_6bad

    ld b, b
    ld d, l
    nop
    xor a
    nop
    ld d, l
    rst $38
    nop
    ld bc, $07fb
    rst $00
    ret c

    rlca
    cp $01
    rst $38
    jp $20ff


    rst $30
    jr @+$46

    rst $38
    nop
    ld [de], a
    add b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ld [$0cf7], sp
    rst $28
    inc d
    rst $30
    ld a, [bc]
    ld [$d717], a
    ld a, [hl+]
    xor d
    ld d, a
    ld [hl], c
    inc c
    ld a, h
    cp $07
    ld bc, $030f

jr_052_6c58:
    db $10
    inc c
    xor b
    nop
    push de
    nop
    db $eb
    add h
    call $ef43
    db $10
    ld b, e
    rst $30
    ld [$fb0b], sp
    inc b
    rst $38
    inc bc
    rst $38
    inc c
    ld a, [$d435]
    db $eb
    and b
    ld e, a
    add a
    ld [$800b], a
    ld a, a
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp+$3f
    cp $07
    rst $38
    ld bc, $ed83
    add l
    push af
    inc bc
    ld [$5515], a
    xor d
    and l
    add c
    xor a
    nop
    jp $030e


    rlca
    jr jr_052_6ccf

    ret nz

    jp $0300


    rrca
    inc bc
    ld a, a
    ld bc, $01fe
    rst $38

jr_052_6ca1:
    xor c
    add $0a
    rlca

jr_052_6ca5:
    rst $38
    jr c, jr_052_6ca5

    jp nz, Jump_052_55aa

    ld d, b
    xor a
    add b
    ld a, a
    ld b, e
    ld bc, $05ff
    inc bc
    cp $05
    ei
    ld a, [bc]
    push af
    push bc
    ld bc, $0d01
    rrca
    rst $38
    inc d
    rst $38
    dec b
    cp $82
    rst $38
    ld h, e
    db $fd
    cp a
    ld e, c
    ld d, [hl]
    xor a
    add e
    rst $10
    add hl, bc
    xor c

jr_052_6ccf:
    ld d, a
    ld d, [hl]
    xor d
    xor h
    ld d, h
    ld e, h
    and h
    cp b
    ld c, b
    ld l, e
    ld a, [bc]
    ld e, $3e
    pop hl
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld a, $ff
    cp $43
    cp $fc
    ld bc, $f8fc
    ld b, e
    ld hl, sp-$10
    rrca
    ld [hl], b
    ldh [rNR41], a
    ldh a, [rSVBK]
    add sp, -$38
    ret c

    jr z, jr_052_6ca1

    ld e, b
    ld d, b
    or b
    and b
    ld h, b
    ld b, b
    ld [hl+], a
    ret nz

    inc bc
    ld b, b
    ret nz

    ret nz

    ld b, b
    add e
    add a
    rlca
    ldh a, [$30]
    ld l, b
    adc b
    ld hl, sp+$08
    ldh a, [$30]
    push bc
    sub b
    dec b
    ld d, b
    sub b
    ld c, h
    adc h
    ld h, d
    add d
    jp $0201


    dec b
    cp $02
    db $fc
    add h
    ld a, b
    ld a, b
    ld h, l
    rst $38
    ld l, b
    ld [de], a
    ld bc, $0100
    inc bc
    ld bc, $040c
    db $10
    db $10
    ld hl, $4621
    ld c, [hl]
    sub b
    db $10
    and b
    and b
    ld b, b
    ld b, b
    db $ec
    inc sp
    ldh [rNR41], a
    inc c
    ld e, $35
    ld h, c
    ld l, e

jr_052_6d44:
    add b
    rst $38
    add b
    push af
    ld b, $ff
    adc [hl]
    ld [hl], l
    ld c, [hl]
    ccf
    jr nz, @+$81

    ld b, b
    cp a
    ret nz

    ld a, a
    pop bc
    ld e, $3f
    inc bc
    rlca
    dec b
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    nop
    ld [hl+], a
    ld bc, $0303
    ld [bc], a
    rlca
    inc b
    add l
    add e
    nop
    ld bc, $f3c2
    ld [hl], l
    ld [bc], a
    ld b, $05
    ld [$0b22], sp
    ld bc, $0404
    and e
    nop
    ld b, $00
    add b
    ld b, e
    ld b, b
    ret nz

    inc bc
    jr nz, @-$1e

    jr nz, jr_052_6d44

    res 0, c
    ld c, $05

jr_052_6d88:
    rrca
    ld a, [de]
    ld [hl], l
    ld h, b
    db $eb
    add b
    push af
    ret nz

    ld a, a
    ldh [$ef], a
    ldh a, [rIE]
    ld b, b
    ld b, a
    rst $38
    nop
    dec bc
    cp $01
    push af
    adc d
    ld a, [hl+]
    ld [hl], l
    dec d
    rra
    rrca
    rrca
    inc bc
    rlca
    add [hl]
    db $eb
    inc c
    dec c
    ld e, $12
    db $f4
    db $ec
    bit 6, a
    ld a, [hl+]
    cp d
    cp [hl]
    cp d
    ld b, l
    ld b, l
    jp z, $06e4

    inc bc
    rlca
    inc c
    ld a, [bc]
    db $10
    dec e
    db $10
    ld b, e
    ccf
    jr nz, jr_052_6dd5

    dec e
    ld hl, $233f

Jump_052_6dc8:
    sbc l
    sub e
    rst $38
    ld [hl], b
    rst $38
    inc e
    xor $1f
    ld a, h
    cp $f8
    db $fc
    cp h

jr_052_6dd5:
    ld h, h
    and e
    nop
    ld e, [hl]
    ldh [rNR44], a
    db $fc
    inc b
    ret c

    jr z, jr_052_6d88

    ld e, h
    ld e, h
    cp h
    cp $5e
    xor a
    xor a
    add e
    rst $00
    ret nz

    db $e3
    pop bc
    ld [c], a
    jp $8342


    add l
    rlca
    dec b
    ld e, $0e
    cp $f2
    rst $08
    ld sp, $c55e
    db $db
    db $db
    jr nz, jr_052_6e1f

    jp z, $2500

    inc de
    ret nz

    ld [hl], b
    jr nc, @-$4e

    ld [$0878], sp
    ld hl, sp+$04
    db $fc
    inc b
    ld [hl], h
    adc h
    ld hl, sp-$74
    ld a, b
    adc b
    add b
    ld e, b
    db $10
    ld [hl+], a
    sub b
    ld bc, $8880
    inc hl
    ld c, b
    ld [bc], a

jr_052_6e1f:
    jr z, jr_052_6e49

    jr nz, jr_052_6e45

    inc h
    dec h
    inc d
    inc b
    ld [$0018], sp
    add b
    add b
    ld [hl+], a
    ret nz

    ld [bc], a
    add b
    add b
    add b
    xor b
    nop
    add c
    ld [bc], a
    ret nz

    ret nz

    jr nz, @-$3a

    add b
    ld b, e
    ret nz

    ld b, b
    ld a, [bc]
    add e
    add e
    inc c
    inc c
    db $10
    db $10

jr_052_6e45:
    rlca
    rla
    ld a, l
    ld l, b

jr_052_6e49:
    db $eb
    add [hl]
    sbc a
    add hl, de
    ld [bc], a
    rlca
    ld c, $18
    dec d
    jr nz, jr_052_6e8f

    jr nz, jr_052_6ed4

    ld b, b
    ld a, a
    ld h, c
    adc $89
    rrca
    inc b
    rra
    inc b
    rst $28
    ld hl, sp+$1b
    sbc h
    rst $20
    ld h, a
    or $1f
    rst $00
    cp d
    ld c, $e0
    ld h, b
    ld h, b
    db $10
    ldh a, [rNR10]
    or b
    ret z

    ld hl, sp-$38
    cp b
    ret z

    ldh a, [$08]
    ldh a, [rSCX]
    db $10
    ldh [rP1], a
    ld h, b
    xor d
    nop
    add b
    adc b
    rst $28
    dec bc
    db $10
    db $10
    inc hl
    inc hl
    ld b, l
    ld c, l
    sub d
    inc de
    and l
    and l
    ld b, [hl]

jr_052_6e8f:
    ld b, [hl]
    ld h, e
    rlca
    rst $38
    ret nz

    ccf
    ldh [$7f], a
    pop bc
    sbc [hl]
    cp a
    add a
    nop
    ld l, b
    add h
    rst $38
    dec b
    add c
    inc c
    inc b
    ld bc, $1611
    add h

jr_052_6ea7:
    rst $38
    add e
    rst $28
    dec bc
    rra
    inc b
    ld a, a
    jr c, jr_052_6ea7

    db $ec
    ld l, e
    call c, $a7a7
    or $df
    add a
    nop
    ld d, b
    inc bc
    db $fd
    ld [bc], a
    rst $38
    adc h
    and e
    ld bc, $021a
    ld a, a
    ld h, b
    rst $08
    sbc e
    ld bc, $43b3
    ld c, b
    ld hl, sp+$00
    adc b
    adc e
    ld bc, $ffd4
    ld [hl], c
    dec de

jr_052_6ed4:
    ld bc, $0701
    ld b, $08
    ld [$101c], sp
    ld a, $30
    ld a, a
    ld l, b
    ld a, a
    ld d, a
    rst $38
    db $eb
    rst $18
    push af
    adc a
    xor e
    add a
    rst $30
    add e
    ei
    add e
    rst $38
    add c
    rst $38
    ld c, c
    ld b, b
    ld a, a
    dec bc
    ld h, b
    ld a, a
    sub b
    sbc a
    add c
    rst $28
    add e
    cp $87
    db $fc
    add a
    db $fd
    ld b, e
    ld c, a
    ld a, c
    inc bc
    ld e, a
    ld [hl], c
    ccf
    ld sp, $3f43
    jr nz, jr_052_6ed4

    sbc d
    ld b, $8c
    di
    or d
    pop bc
    ret nz

    add a
    add c
    ld h, l
    ldh [$2f], a
    inc bc
    inc bc
    dec c
    inc c
    ld [de], a
    db $10
    dec a
    jr c, @+$75

    ld b, d
    pop af
    add c
    ld sp, hl
    pop bc
    rst $38
    ld [hl-], a
    rst $38
    adc h
    ld a, a
    nop
    ld a, a
    ld b, b
    rst $38
    pop bc
    ld a, $2e
    rra
    pop de
    rrca
    ld [$f407], a
    inc bc
    ld_long a, $ff01
    add c
    rst $38
    add [hl]
    cp $cd
    ld hl, sp+$1e
    ldh a, [$3d]
    ldh [$3e], a
    ldh [rSCX], a
    ld a, a
    ret nz

    ld bc, $c0ff
    ld b, [hl]
    rst $38
    add b
    ld a, [bc]
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld [$88ff], sp
    ld b, h
    rst $38
    sub b
    ld b, e
    ld c, b
    rst $38
    ld [$ff26], sp
    inc hl
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    ld h, c
    dec c
    jr nc, jr_052_6fa9

jr_052_6f71:
    add $c7
    ret c

    jr jr_052_6f71

    inc hl
    db $fc
    ld b, h
    cp $06
    ld sp, hl
    add hl, bc
    ld b, e
    ld hl, sp+$1f
    dec c
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    ccf
    call nz, $9e47
    sbc e
    ld a, [hl]
    ld h, e
    rst $38
    add e
    ld c, b
    rst $38
    nop
    ld a, [bc]
    ldh [$1f], a
    inc e
    inc bc
    inc bc
    add c
    nop
    ld b, b
    nop
    or c
    nop
    ld c, b
    rst $38
    nop
    dec c
    inc bc
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ret nz

jr_052_6fa9:
    rra
    dec de
    add [hl]
    inc b
    rst $18
    jr @+$01

    ld b, e

jr_052_6fb1:
    jr nz, jr_052_6fb1

    ld bc, $fc10
    rst $00
    sub c
    inc b
    ldh [rIE], a
    cp b
    rst $38
    ld e, [hl]
    ld h, e
    dec b
    inc b
    ld b, $04
    add l
    inc b
    ld b, $43
    inc b
    rlca
    ld b, $88
    adc a
    ld c, b
    ld c, a
    jr z, @-$4f

    inc e
    and [hl]
    sbc [hl]
    rlca
    ld a, $f8
    db $fd
    ret nz

    ld a, [$fd00]
    nop
    ld c, [hl]
    rst $38
    nop
    nop
    ld bc, $fe43
    ld [bc], a
    rra
    db $fc
    inc b
    db $ec
    inc b
    db $e4
    inc b
    ldh [rSC], a
    ld a, [c]
    jp nz, $21f0

    ld sp, hl
    ld bc, $81f8
    ld a, [hl]

jr_052_6ff6:
    ld h, d
    ld e, $12
    ld e, $1a
    rrca
    rlca
    ld [hl], b
    ld h, b
    db $eb
    add e
    rst $30
    inc b
    rst $38
    ld [$00c6], sp
    xor h
    xor e
    nop
    ld [$8000], sp
    ld [hl+], a
    ld b, b
    ldh [rNR50], a
    ret nz

    jr nz, @-$5e

    jr nz, jr_052_6ff6

    ld [de], a
    db $d3
    inc e
    cp $08
    cp $8c
    rst $38
    ld h, b
    ld a, a
    ld de, $891f
    rrca
    ld [hl], l
    rlca
    or $3a
    rst $00
    dec b
    di
    inc sp
    ei
    ld a, [bc]
    db $fd
    inc h
    rst $18
    ld d, d
    rst $18
    ret c

    daa
    ld [hl], $23
    dec b
    ld bc, $0200
    ld l, l
    dec b
    inc bc
    inc bc
    jr c, jr_052_707d

    ret nz

    ret nz

    and l
    nop
    ld h, h
    dec bc
    adc b
    ld [$04c4], sp
    jp nz, $cf02

    dec c
    sbc d
    db $10
    db $f4
    ldh [rPCM12], a
    inc hl
    add b
    jp nz, $8f81

    sub d
    dec de
    ld h, b
    ld h, b
    db $fc
    inc e
    cp $02
    db $fd
    inc c
    rst $38
    add l
    rst $38
    add c
    ld a, a
    ld h, e
    dec e
    dec e
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    jr jr_052_708b

    ld h, b
    ld h, b
    nop
    add b
    sub e
    call nz, Call_052_4001
    ld b, b
    rst $38

jr_052_707d:
    ld h, a
    dec b
    ld b, $0e
    add hl, bc
    rrca
    inc b
    rlca
    ld b, e
    ld [bc], a
    inc bc

jr_052_7088:
    ld bc, $0203

jr_052_708b:
    add hl, hl
    ld bc, $0223
    inc b
    nop
    ld [bc], a
    nop
    inc b
    inc b
    ld b, e
    inc b
    nop
    ld a, [hl+]
    ld [$0425], sp
    push bc
    sbc d
    ld a, c
    ld bc, $8080
    ld b, e
    ld b, b
    ret nz

    inc bc
    jr nz, jr_052_7088

    and b
    ld h, b
    ld b, e
    sub b
    ld [hl], b
    ld b, l
    ld d, c
    ld sp, $6001
    jr nz, jr_052_70f9

    jr nz, jr_052_7116

    ld b, e
    db $10
    ld [hl], b
    inc b
    ld [$0438], sp
    inc a
    inc bc
    ld b, e
    rra
    nop
    inc bc
    rrca
    nop
    rlca
    nop
    adc b
    ret z

    add hl, bc
    add b
    add b
    ld h, b
    ld b, b
    inc a
    jr nc, jr_052_70e0

    inc c
    inc bc
    inc bc
    ld l, c
    ld [bc], a
    jr nz, jr_052_70f8

    nop
    ld [hl+], a
    ld d, b
    dec c
    ld e, b
    ld c, e
    ld a, b
    ld c, h

jr_052_70e0:
    ld a, c
    ld c, c
    ld d, $3f
    jr nc, jr_052_7125

    ld b, d
    ld b, c
    add e
    add b
    ld b, e
    ld bc, $0d00
    add c
    nop
    jp $7f80


    ld b, b
    ld a, $31
    inc c
    rrca

jr_052_70f8:
    ld [bc], a

jr_052_70f9:
    inc bc
    ld bc, $8501
    jp nz, $e11b

    pop hl
    rra
    rst $38
    ld [bc], a
    cp $0d
    db $fc
    add [hl]
    ld a, b
    ld a, l
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    rra
    nop
    rst $38

jr_052_7116:
    nop
    rst $38
    add b
    ccf
    ld a, a
    ld l, l
    add hl, bc
    ldh a, [$f0]
    adc h
    db $fc
    ld h, e
    rst $38
    or c
    cp a

jr_052_7125:
    cp e
    cp [hl]
    ld b, e
    ei
    cp $02
    ld [hl], c
    rst $38
    add c
    ld b, h
    ld a, a
    add b
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    dec c
    ld h, b
    sbc a
    ld hl, sp+$07
    db $fc
    add e
    cp $81
    cp [hl]
    ld bc, $005f
    cp a
    nop
    add a
    add e
    dec c
    ld a, [hl]
    ld bc, $03bc
    db $fc
    inc bc
    ld sp, hl
    rlca
    or $0e
    ld hl, sp+$38
    ret nz

    ldh [$84], a
    nop
    inc b
    ld [$0906], sp
    add hl, bc
    inc de
    ld de, $2226
    ld b, [hl]
    ld b, d
    ld b, e
    adc [hl]
    add d

jr_052_7166:
    dec d

jr_052_7167:
    inc e
    inc b
    inc c
    inc d
    ld c, $0e
    ld bc, $8201
    ld [bc], a
    call z, $fc04
    inc b
    cp $c2
    ld a, a
    pop hl
    ld e, a
    reti


    ld b, [hl]
    add $49
    jr nz, @-$1e

    ld c, c
    db $10
    ldh a, [rLYC]
    jr nz, jr_052_7166

    ld b, e
    ld b, b
    ret nz

    xor e
    nop
    ld b, b
    adc b
    nop
    ld h, b
    nop
    ld [hl], c
    ld b, l
    ld d, c
    ld sp, $0083
    or b
    inc b
    ld a, h
    ld h, e
    ret nz

    add c
    ld bc, $0084
    cp c
    add hl, bc
    add e
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    ld e, $19
    inc b
    rlca
    add e
    nop
    ret z

    adc e
    nop
    ld b, b
    dec b
    inc bc
    rlca
    inc b
    rlca
    inc bc
    inc bc
    or e
    nop
    ld c, d
    jp $2400


    adc c
    nop
    ld h, $89
    nop
    ld d, h
    add hl, bc
    ld h, b
    ldh [rNR10], a
    ldh a, [$c8]
    cp b
    ld h, h
    ld e, h
    ld d, h
    ld c, h
    ld b, l
    ld b, d
    ld c, [hl]
    dec bc
    ld b, e
    ld c, a
    add l
    adc l
    sub l
    adc l
    inc b
    inc e
    jr z, jr_052_71f5

    ld [$4538], sp
    db $10
    jr nc, jr_052_7167

    nop
    ld a, h
    inc bc
    rst $38
    ld bc, $fbff
    ld b, h
    cp $03
    nop
    ld bc, $0183
    dec bc
    nop
    ld a, a
    adc [hl]

jr_052_71f5:
    db $db
    ld bc, $0203
    add e
    nop
    inc hl
    inc bc
    dec b
    inc b
    dec b
    nop

jr_052_7201:
    ld b, [hl]
    add hl, bc
    ld [$1045], sp
    ld de, $1024
    xor h
    rst $28
    rlca
    ld h, b
    ld h, b
    and b
    and b
    jr nz, jr_052_7272

    nop
    ld b, b
    ld b, l
    ld b, b
    ret nz

    inc hl
    add b
    dec h
    add c
    add a
    nop
    ld e, h
    rlca
    jr nz, jr_052_7201

    db $10
    ld [hl], b
    ld [$0478], sp
    inc a
    rst $38
    ld l, a
    ld [hl+], a
    ld bc, $80d0
    ld [$3030], sp
    ld c, b
    ld a, b
    ld b, h
    ld a, h
    ld b, [hl]
    ld a, [hl]
    cpl
    ld [hl+], a
    ccf
    dec b
    ld a, [hl]
    ld e, [hl]
    ld a, b
    ld c, b
    ld [hl], b
    ld d, b
    inc hl
    jr nz, jr_052_7266

    ld b, b
    dec h
    add b
    inc bc
    ret nz

    add b
    ldh a, [$80]
    ld b, e
    ld a, a
    ld b, b
    ldh [rNR44], a
    cpl
    jr nz, jr_052_7288

    jr nz, jr_052_726f

    db $10
    dec c
    ld [$1e1e], sp
    ccf
    ccf
    ld e, a
    ld a, a
    add a
    db $fd
    ld c, [hl]
    ld a, [hl]
    jr nc, jr_052_7294

    ld [hl], b
    ld [hl], b

jr_052_7266:
    ld hl, sp-$08
    cp h
    db $fc
    sbc [hl]
    xor $9f
    rst $30
    ld e, a

jr_052_726f:
    ld a, e
    ccf
    dec a

jr_052_7272:
    rst $38
    rst $38
    ld b, e
    cp $3e
    add hl, bc
    call c, $ec3c
    cp h
    ld d, h
    ld a, b
    inc l
    jr c, jr_052_729f

    jr jr_052_72c6

    rrca
    ld [$0704], sp
    inc b

jr_052_7288:
    ld b, $04
    inc bc
    and h
    rlc e
    ld a, h
    ld a, h
    add e
    add e
    sub b
    nop

jr_052_7294:
    nop
    dec bc
    nop
    rlca
    nop
    rra
    nop
    ld a, a
    nop
    cp $00

jr_052_729f:
    push af
    nop
    xor d
    xor b
    add c
    inc bc
    rst $10
    add e
    db $fc
    db $fc
    ld h, l
    ld c, $0f
    rlca
    rla
    inc de
    cpl
    inc l
    ccf
    jr z, @+$21

    inc de
    rst $20
    db $e4
    add a
    add a
    inc bc
    ld l, [hl]
    ld bc, $0081
    ld b, e
    rst $38
    nop
    db $10
    cp $00
    ld d, l
    nop

jr_052_72c6:
    xor e
    ld bc, $0256
    add h
    add h
    ld h, h
    ld h, h
    ret c

    ret c

    jr c, jr_052_730a

    jr nc, jr_052_72f6

    db $10
    dec d
    jr @+$12

    ld e, $10
    rra
    db $10
    dec de
    nop
    db $fd
    ld [$08fa], sp
    db $fd
    inc b
    cp $04
    cp [hl]
    ld b, $5d
    dec b
    xor b
    ld [$00a3], sp
    ld d, b
    inc bc
    ld h, b
    jr nz, @-$3e

    ret nz

    xor e
    nop

jr_052_72f6:
    ld b, $00
    ld b, b
    ld b, e
    ld b, b
    ret nz

    rlca
    ret nz

    ldh a, [$30]
    db $ec
    adc h
    ld [c], a
    ld [bc], a
    pop bc
    adc h
    nop
    dec d
    nop
    ccf

jr_052_730a:
    add e
    db $dd
    ld b, $07
    ld hl, sp+$18
    ldh [$60], a
    add b
    add b
    ld [hl], c
    nop
    inc bc
    add e
    ei
    add [hl]
    nop
    xor c
    dec c
    xor b
    nop
    ld d, l
    ld bc, $0109
    add l
    add c
    ld h, d
    ld h, b
    dec e
    jr jr_052_7331

    rlca
    sub d
    xor e
    inc c
    inc bc
    rrca
    rrca

jr_052_7331:
    ccf
    inc a
    rst $18
    di
    xor a
    rst $38
    sbc $fe
    db $fc
    db $fc
    inc hl
    ld a, a
    inc de
    ld a, $3f
    dec [hl]
    ccf
    dec hl
    ccf
    cp h
    inc a
    call z, $3cc8
    jr c, jr_052_736a

    inc e
    rrca
    ld b, $0f
    dec bc
    rrca
    inc c
    ld [hl+], a
    rlca
    add $d3
    ld [bc], a
    rrca
    nop
    ld a, a
    add h
    ei
    ld [$1ffa], sp
    push af
    ccf
    ld [$5f7f], a
    ld a, a
    cp h
    ld b, h
    rst $38
    ld hl, sp+$00

jr_052_736a:
    db $fd
    ld [hl+], a
    rst $38
    ld a, [bc]
    ld a, a
    ld a, a
    ld hl, sp-$02
    jr nc, jr_052_73b3

    db $10
    ld e, $08
    inc c
    inc b
    xor b
    ld bc, $0313
    ldh [$e0], a
    ldh a, [rNR10]
    ld b, e
    ldh a, [$90]
    dec de
    ldh [$e0], a
    add b
    add b
    jr c, @+$3a

    adc b
    ld hl, sp-$38
    ld hl, sp+$48
    ld hl, sp-$38
    ld hl, sp+$60
    ldh [$80], a
    add b
    ld h, b
    ld h, b
    ret nc

    ret nc

    ldh a, [$d0]
    ld hl, sp-$38
    cp b
    adc b
    add e
    sbc l
    ld b, e
    ret nz

    ld b, b
    nop
    and b
    ld [hl+], a
    jr nz, jr_052_73ad

    db $10
    db $10

jr_052_73ad:
    sub b
    ld b, l
    db $10
    ldh a, [rNR30]
    sub b

jr_052_73b3:
    ldh [$e0], a
    ld d, b
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    ld a, [$7de2]
    pop bc
    ld hl, sp-$40
    ld sp, $1221
    ld [de], a
    adc h
    adc h
    ret nz

    ret nz

jr_052_73c9:
    ld h, b
    ld h, b
    jr nz, jr_052_73ed

    rst $00
    ld bc, $ff23
    ld l, c
    dec b
    ld b, $0e
    ld bc, $040b
    rlca
    ld b, e
    ld [bc], a
    inc bc
    dec h
    ld bc, $0309
    inc bc
    ld [bc], a
    inc bc
    inc b
    rrca
    ld bc, $0f17
    rrca
    push bc
    adc b
    rlca
    nop

jr_052_73ed:
    ld bc, $0200
    nop
    ld [bc], a
    inc bc
    inc bc
    db $ec
    ld [hl+], a
    ldh [$36], a
    ld bc, $0200
    ld [bc], a
    inc bc
    ld b, $07
    adc h
    adc a
    ld [hl], d
    ei
    dec d
    push af
    ld bc, $a8f0
    ld hl, sp+$57
    rst $38
    xor a
    rst $38
    rst $30
    ld sp, hl
    rst $18
    ldh [$bf], a
    ret nz

    xor a
    add b
    ld d, a
    add b
    cpl
    nop
    ld d, e
    nop
    ld hl, $7110
    ld [$0973], sp
    rst $30
    ld a, [bc]
    ei
    call nz, $203f
    rra
    db $10
    rla
    ld de, $1614
    db $10
    jr jr_052_73c9

    rst $08
    inc b
    add b
    add d
    ld a, h
    rst $38
    ld b, h
    ld b, h
    rst $38
    nop
    rrca
    ld bc, $39ff
    cp $ce
    add d
    add a
    add hl, sp
    cp e
    ld b, l
    rst $38
    ld bc, $c6bb
    rst $18
    jr c, jr_052_7497

    rst $38
    nop
    ld bc, $817e
    ld c, b
    rst $38
    nop
    inc bc
    add e
    ld a, a
    ld a, a
    ld bc, $009a
    ld sp, $00a5
    ld d, $17
    ld h, e
    db $e3
    sbc h
    cp a
    ld d, b
    ld e, a
    nop
    rra
    dec hl
    ccf
    push de
    rst $38
    ei
    rst $38
    db $dd
    ccf
    rst $30
    rrca
    ei
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    ld b, e
    rst $38
    ld bc, $23e0
    rst $28
    ld de, $217f
    ld a, $20
    inc a
    and b
    cp a
    ld b, a
    db $fc
    inc c

jr_052_7489:
    ld hl, sp+$1f
    rst $38
    rla
    rst $28
    ret nc

    xor $b0
    db $fd
    ret nz

    ld e, e
    pop hl
    ld [hl], l
    ld h, h

jr_052_7497:
    ld a, [hl+]
    db $76
    dec [hl]
    jr nc, jr_052_74b6

    inc a
    rrca
    rra
    inc b
    rrca
    adc l
    nop
    jr nc, jr_052_74a9

    ldh [$e0], a
    jr nz, jr_052_7489

jr_052_74a9:
    ld b, b
    jp z, $23d4

    add b

jr_052_74ae:
    dec b
    ld h, b
    ldh [rNR10], a
    ldh a, [$e0]
    ldh [$8b], a

jr_052_74b6:
    sub c
    add e
    adc e
    ld d, $40
    ret nz

    jr nc, jr_052_74ae

    ret z

    ld hl, sp-$58
    jr c, jr_052_7517

    inc e
    inc d
    sbc h
    call nc, $94dc
    inc e
    ld l, b
    jr c, @-$16

    ld a, b
    sub b
    ldh a, [$60]
    add h
    and a
    ld b, $39
    rst $38
    rst $00
    add d
    adc a
    db $10
    add a
    ld b, e
    add hl, sp
    rst $38
    inc b
    ld bc, $82ff
    cp e
    ld a, h
    ld h, a
    ld b, $08
    jr jr_052_74eb

    ld d, $08

jr_052_74eb:
    rrca
    inc b
    and h
    db $e3
    inc b
    inc bc
    inc bc
    ld bc, $0203
    ld [hl+], a
    rlca
    and e
    db $dd
    dec d
    ld bc, $4e3f
    ld e, a
    ld a, $3e
    inc b
    ld c, $04
    ld b, $02
    inc bc
    nop
    ld [bc], a
    nop
    ld b, $01
    inc b
    inc bc
    add hl, bc
    ld b, $0e
    ld l, c
    add l
    nop
    ld [hl], b
    jr @+$61

    nop

jr_052_7517:
    daa
    db $10
    ld h, e
    db $10
    ld [hl], c
    ld [$09f3], sp
    push af
    ld c, d
    ei
    add h
    rst $38
    ret nz

    scf
    ld sp, $1317
    inc d
    inc d
    db $10
    jr jr_052_752e

jr_052_752e:
    adc b
    nop
    rst $08
    ld bc, $ffff
    add l
    nop
    jp c, $0187

    db $10
    add e
    ld bc, $1316
    ld l, $10
    ld a, $a0

jr_052_7542:
    ccf
    and h
    cp a
    ld b, e
    cp $07
    rst $38
    rra
    rst $28
    sbc b
    xor $d0
    db $ed
    ldh a, [$5b]
    pop hl
    ld h, a
    inc bc

jr_052_7554:
    jr nc, jr_052_7586

    ret nc

    ldh a, [$ab]
    nop
    ld c, $00

jr_052_755c:
    add b
    inc h
    ret nz

    dec bc
    jr nz, jr_052_7542

jr_052_7562:
    jr jr_052_755c

    call nz, $f8fc
    ld hl, sp-$40
    ldh [$80], a
    ret nz

    and [hl]
    nop
    ld d, $04
    ld b, b
    and b
    jr nz, jr_052_7554

    ldh [$89], a
    ld bc, $ff76
    db $ec
    daa
    inc hl
    ld bc, $0203
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, a
    rlca
    inc b
    ld b, e

jr_052_7586:
    inc bc
    ld [bc], a
    dec e
    rrca
    rrca
    ld de, $2111
    ld [hl+], a
    ld b, a
    ld b, h
    ld b, a
    ld b, a
    adc b
    adc b
    xor b
    adc b
    reti


    adc c
    ld l, c
    ld c, c
    ld a, a
    ld b, [hl]
    ld a, $25
    add hl, sp
    ld l, $12
    dec e
    ld hl, $203e
    ccf
    ld b, l
    ld b, b
    ld a, a
    db $ec
    ld hl, $1f0f
    rra
    ld l, d
    ld h, d
    db $dd
    adc h
    cp d
    db $10
    ld [hl], l
    jr nz, jr_052_7562

    ld b, c
    dec d
    ld b, d
    ld l, c
    add d
    ld b, l
    ld a, e
    add h
    ld b, e
    cp e
    ld b, h
    rla
    db $db
    inc h
    db $dd
    ld [hl+], a
    db $dd
    and d
    cp h
    jp $c2bd


    db $fc
    add e
    ld sp, hl
    add [hl]
    ld hl, sp+$07
    ldh a, [rIF]
    ld [hl], b
    adc a
    and b
    ld e, a
    ld b, b
    cp a
    add e
    add e
    ld b, $00
    rst $38
    nop
    rst $38
    ld bc, $03ff
    and [hl]
    rst $18
    dec b
    rlca
    rlca
    ld [$0d08], sp
    ld a, [bc]
    ld b, e
    ld [$000f], sp
    db $10
    ld b, h
    rla
    jr jr_052_763b

    db $10
    rra
    ld b, e
    ld [$110f], sp
    inc a
    ccf
    db $eb
    jp $0055


    cp e
    nop
    ld a, a
    nop
    add e
    inc a
    jr c, @-$37

    ldh [$1f], a
    ret nz

    ccf
    ld b, e
    add b
    ld a, a
    inc de
    ld b, $ff
    add hl, bc
    rst $38
    db $10
    rst $38
    sub b
    ld a, a
    and e
    ld a, a
    rst $20
    inc a
    ld l, a
    cp b
    cp a
    ld [hl], b
    ld e, a
    or b
    sbc [hl]
    ld [hl], b
    ld b, l
    inc e
    ldh a, [rP1]
    ld c, $44
    ld hl, sp+$0f
    ld b, e
    rra
    ldh a, [rTAC]
    dec sp
    pop hl
    ld [hl], c
    pop bc
    db $e3
    add d
    db $e3

jr_052_763b:
    ld [bc], a
    ld h, a
    dec de
    ret nz

    ret nz

    jr nc, jr_052_7672

    ld c, b
    adc b
    ld [hl], $c6
    dec e
    pop hl
    ld c, $f0
    rlca
    ld hl, sp+$0b
    db $f4
    ld b, a
    ld hl, sp+$22
    db $fd
    ld sp, $18fe
    rst $38
    inc e
    rst $38
    adc [hl]
    rst $38
    ld b, e
    rst $00
    ld a, a
    ld [$3fe3], sp
    di
    ccf
    ld l, c
    cp a
    inc d
    rst $38
    inc de
    jp $e0d9


    inc h
    rst $38
    ld bc, $80ff
    rst $38

jr_052_7670:
    ldh [rIE], a

jr_052_7672:
    ld sp, hl
    rra
    cp $06
    db $fc
    inc b
    cp h
    inc b
    jr @+$0a

    ld a, [bc]
    ld [$1014], sp
    jr z, @+$22

    ld sp, $4921
    ld b, c
    ld d, e
    ld b, d
    and e
    add d
    rst $10
    add h
    and a
    add h
    rst $10
    inc b
    ld b, e

jr_052_7691:
    rst $38
    add hl, bc
    ld bc, $0ff8
    or e
    nop
    ld d, $e0
    ld c, e
    ld b, b
    ld b, b
    and b
    jr nz, jr_052_7670

    db $10
    add sp, $08
    jr z, @-$36

    add h
    ld [hl], h
    ld b, d
    cp d
    ld [hl+], a
    jp c, $dd21

    ld de, $98ed
    and $c8
    rst $30
    call z, $6cf3
    di
    inc h
    ei
    or $ff
    add hl, de
    ld sp, hl
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add [hl]
    ld c, $0d
    inc de
    ld e, $23
    ld a, $3f
    ld a, $43
    ld a, d
    ld b, e
    ld [hl], d
    or e
    ld [c], a
    cp h
    db $e4
    db $fc
    inc h
    db $fc
    inc [hl]
    jp hl


    add hl, hl
    ret


    ld c, c
    db $d3
    ld d, e
    sub h
    sub [hl]
    or h
    and h
    ld a, b
    ld c, b
    ldh a, [$90]
    ldh [$a0], a
    db $f4
    add hl, hl
    nop
    nop
    ld bc, $4040
    ld b, h
    jr nz, jr_052_7691

    ld c, $e0
    inc d
    call c, $de1a
    sub d
    ld a, [$7a52]
    ld b, [hl]
    ld a, d
    ld c, h
    ld [hl], h
    ld l, h
    ld [hl], h
    ld b, e
    call nc, $165c
    sbc h
    inc a
    ld hl, sp+$78
    ld c, h
    ld b, h
    adc h
    add h
    sbc [hl]
    add d
    cp a
    add c
    cp a
    ld h, c
    cp $11
    sbc $2a
    call c, $e0bc
    and b
    ld b, b
    and h
    ld bc, $ff1f
    ld [hl], d
    ld bc, $0001
    ret


    add c
    ld bc, $0018
    ld [hl+], a
    inc h
    nop
    ld [bc], a
    ld [hl+], a
    ld b, d
    rrca
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    ld c, d
    ld b, b
    dec h
    jr nz, @+$2c

    jr nz, jr_052_7770

    jr nz, jr_052_7758

    db $10

jr_052_773e:
    ld e, $11
    ld b, e
    rrca
    add hl, bc
    inc bc
    rlca
    inc b
    inc bc
    ld [bc], a
    call nc, $02ab
    nop
    ld bc, $4301
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    dec b
    ld b, $67
    dec e

jr_052_7758:
    inc c
    inc c
    inc de
    inc de
    ld de, $1611
    rla
    ld a, b
    ld a, [$0200]
    nop
    inc b
    ret nz

    add b
    ld b, b
    ld b, b
    jr nc, jr_052_779c

    jr jr_052_7786

    jr z, jr_052_7798

jr_052_7770:
    inc h
    inc h
    ld b, [hl]
    ld b, h
    ld b, e
    ld b, e
    inc hl
    ld b, b
    inc c
    ret nz

    ret nz

    jr nz, jr_052_77dd

    ld h, b
    jr nz, jr_052_7790

    sub b
    add h
    adc h
    ld bc, $0003

jr_052_7786:
    ld [hl+], a
    db $10
    ldh [rNR43], a
    ld [$0408], sp
    inc d
    add a
    sub a

jr_052_7790:
    add h
    adc l
    ld b, b
    ld b, [hl]
    jr nz, jr_052_77b6

    db $10
    db $10

jr_052_7798:
    inc c
    inc c
    rrca
    dec bc

jr_052_779c:
    rrca
    ld [$0407], sp
    dec bc
    rrca
    inc a
    dec a
    ldh [$c3], a
    ld b, l
    add d
    ld [bc], a
    add l
    adc l
    ld [bc], a
    nop
    ld b, e
    rrca
    nop
    inc b
    nop
    jr nc, @+$72

    jr jr_052_773e

jr_052_77b6:
    ld b, e
    sbc h
    add h
    ld [$030f], sp
    rrca
    ld [bc], a
    ld b, $01
    ld a, [bc]
    nop
    dec b
    ld h, d
    ld [bc], a
    adc d
    nop
    ld [hl], h
    ld l, d
    inc bc
    add c
    nop
    ld a, a
    cp $84
    nop
    ccf
    add [hl]
    add e
    inc bc
    ld [bc], a
    nop
    ld a, [hl]
    rst $38
    add l
    nop
    ld d, d
    dec b
    rrca

jr_052_77dd:
    rrca
    ld bc, $0005
    inc bc
    and a
    nop
    ld d, b
    ld c, $ff
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$50
    xor b
    and b

jr_052_77f3:
    ld e, b
    ld [$f045], sp
    nop
    ld h, h
    inc c
    ld h, b
    ld h, b
    ret nc

    sub b
    ret nc

    inc de

jr_052_7800:
    jr c, jr_052_781e

    and b
    ld [hl], b
    add c
    ld bc, $c303
    db $e3
    ldh [rSTAT], a
    rlca
    inc c
    inc b
    ld d, [hl]
    ld a, [bc]
    daa
    ld a, [bc]
    ld e, [hl]
    inc b
    xor a
    ld [$307e], sp
    rst $38
    ret nz

    ld e, a
    nop
    xor a
    nop

jr_052_781e:
    ld d, a
    nop
    xor a
    nop
    ld d, [hl]
    ld bc, $06bb
    ld d, a
    jr jr_052_7800

    ldh [$2b], a
    nop
    dec d
    nop
    ld [$b560], a
    add b
    ld a, [hl+]
    nop
    dec d
    ld b, b
    ld a, [hl+]
    add b
    dec d
    nop
    dec hl
    ld bc, $0617
    ld a, a
    ld a, b
    rst $38
    add b
    rst $38
    nop
    cp a
    ret nz

    ccf
    ld a, $01
    rrca
    nop
    rrca
    ld [$0745], sp
    nop
    nop
    rlca
    xor l
    nop
    ld c, d
    ld bc, $8080
    xor d
    nop
    ld c, [hl]
    ld [hl+], a
    ld b, b
    ld de, $20a0
    ld h, b
    jr nz, jr_052_77f3

    db $10
    ld [$e808], sp
    ld c, b
    push bc
    ld b, a
    and h
    call nz, $e8a8
    ldh a, [rNR10]
    and l
    rst $20
    ld de, $00eb
    rst $38
    nop
    rst $38
    ld bc, $06fe
    db $fd
    dec e
    db $ed
    dec d
    rst $18
    dec hl
    ld a, [hl]
    ld a, [c]
    ld hl, sp-$3c
    ld b, l
    ldh a, [$08]
    ld b, e
    ldh [rNR10], a
    dec c
    pop hl
    ld de, $eaf2
    inc e
    db $fc
    inc de
    db $e3
    nop
    ldh a, [$08]
    ldh a, [rP1]
    ld hl, sp+$7d
    ld [bc], a
    ld [$0418], sp
    ld [hl+], a
    inc h
    dec c
    ld c, $42
    ld c, $82
    ld e, $02
    inc e
    inc b
    inc a
    inc b
    jr c, jr_052_78b6

    ld a, b
    ld [$00a3], sp
    xor h
    inc bc
    ret nz

    ld b, b

jr_052_78b6:
    add b
    add b
    adc l
    ld bc, $2282
    ld b, b
    jp nz, $8f80

    ld bc, $018c
    jr nz, jr_052_78e5

    rst $38
    ld h, l
    inc bc
    ld bc, $0201
    ld [bc], a
    inc hl
    inc b
    ld bc, $0400
    dec h
    ld [bc], a
    ld b, $00
    ld [bc], a
    ld bc, $0303
    rlca
    dec b
    ld [hl+], a
    rrca
    ld b, $10
    ld de, $3011
    dec hl
    inc a
    dec [hl]

jr_052_78e5:
    ld [hl+], a
    ld a, a
    dec bc
    ld b, a
    ld c, [hl]
    dec bc
    ld b, [hl]
    ld e, $84
    cp [hl]
    add h
    db $f4
    adc b
    db $fc
    adc b
    ld b, e
    ld a, b
    ld c, b
    inc bc
    ld l, b
    ld d, b
    jr c, jr_052_792c

    ld b, e
    inc e
    stop
    ld e, $43
    db $10
    rrca
    dec b
    ld [$080f], sp
    ld [bc], a
    inc c
    ld b, $22
    rlca
    ld bc, $0303
    jp Jump_052_6dc8


    rlca
    ldh [$e0], a
    nop
    db $10
    ld [hl], b
    ld [$48f8], sp
    ld b, h
    sbc b
    xor b
    ld [bc], a
    db $e4
    cp $47
    ld b, e
    ld a, a
    inc b
    nop
    ld a, l
    ld b, e
    ld [bc], a
    ccf
    add hl, bc

jr_052_792c:
    add d
    cp a
    add c
    cp a
    add b
    sbc a
    add b
    rst $18
    ret nz

    rst $18
    ld b, h
    ld b, b
    sbc a
    ld bc, $001f
    ld c, e
    rrca
    nop
    ld b, e
    rra
    nop
    ld b, e
    ccf
    nop
    ld bc, $007f
    ld b, e
    rst $38
    nop
    dec d
    ld e, a
    nop
    xor e
    nop
    ld d, l
    nop
    jp z, $ffe0

    rst $38
    cp a
    ld a, a
    push de
    add b
    ld [$7ff0], a

jr_052_795d:
    ld a, a
    ccf
    ccf
    rrca
    ld c, $22
    ld bc, $0308
    inc b
    inc b
    ld bc, $0b08
    ld [$1103], sp
    ld b, h
    ld d, $12
    ld [$1713], sp
    ld de, $1007
    sub a

jr_052_7978:
    sub b
    rst $10

jr_052_797a:
    ld d, b
    ld b, e
    scf
    or b
    inc bc
    rst $30
    ldh a, [$f7]
    sub b
    ld b, e
    rst $30
    db $10
    rlca
    rst $20
    db $10
    rst $20
    nop

jr_052_798b:
    rst $00
    jr nz, jr_052_795d

    jr nz, jr_052_7978

    ld hl, $00ff
    nop
    ei
    and h
    rst $18
    nop
    ld a, a
    add h
    add a
    dec b
    cp $ff
    rst $38
    nop
    rst $38
    jp $00a3


    ld b, $05
    ldh [rNR41], a
    ret nz

    jr nz, jr_052_798b

    jr nz, @+$45

    ld h, b
    and b
    ld bc, $20c0
    ld b, e
    ret nz

    ld hl, $e049
    jr nz, jr_052_79c4

    ldh a, [$30]
    ld hl, sp+$28
    xor h
    ld d, h
    sub $2a
    xor a
    ld d, c
    rst $10

jr_052_79c4:
    jr z, @+$52

    rst $38
    nop
    nop
    ld bc, $898d
    rlca
    db $fd
    inc bc
    rst $28
    rra
    rst $38
    rst $38
    rst $30
    ld hl, sp-$7c
    add a
    ld [$eefd], sp
    ld a, [c]
    rst $38
    rrca
    rst $30
    ld a, a
    and e
    cp a
    ld h, h
    inc d
    inc bc
    inc c
    inc e
    rlca
    inc hl
    rra
    inc a
    ld b, a
    ld b, b
    ld b, e
    ret nz

    rlca
    jr nz, jr_052_79fc

    jr nz, jr_052_797a

    ret nz

    adc a
    add b
    sub a
    add b
    add e
    add e
    rla
    rst $08

jr_052_79fc:
    ldh [$a7], a
    ldh a, [$57]
    rst $38
    dec hl
    ld a, a
    ld [hl], a
    ld a, a
    rst $28
    rst $18
    jp $e5c0


    ld h, b
    di
    ld [hl], b
    db $eb
    ccf
    rst $30
    ccf
    db $e3
    cpl
    ld b, e
    rst $20
    jr nz, jr_052_7a18

    rst $28

jr_052_7a18:
    ret nz

    ld b, h
    rst $38
    nop
    ld [$f03f], sp
    ret nc

    ldh a, [rNR10]
    ret nc

    jr nc, @-$4e

    ld [hl], b
    inc hl
    ldh [rP1], a
    ld b, b
    ld [hl+], a
    ret nz

    ld bc, $8080
    xor c
    nop
    ld d, h
    ld bc, $8080
    xor b
    nop
    nop
    dec b
    ret nz

    ret nz

    ld h, b
    ldh a, [rNR10]
    ldh a, [rSCX]
    ld [$44f8], sp
    inc b
    db $fc
    ld b, h
    cp $02
    inc bc
    rlca
    rst $28
    rra
    ld a, a
    ld [hl+], a
    rst $38
    ld de, $fffd
    rst $30
    ld sp, hl
    cp a
    pop bc
    rst $38
    ld bc, $03fd
    xor $1e

jr_052_7a5c:
    cp $fe
    ld a, [$dcfe]
    db $e4
    rst $00
    and c
    inc bc
    ldh [$60], a
    add b
    add b
    ld a, l
    rst $38
    ld [$1c18], sp
    ld a, [de]
    inc de
    inc c
    ld [$0c0a], sp
    ld b, $48
    inc b
    rlca
    ld [bc], a
    inc bc
    inc b
    ld bc, $0246
    inc bc
    ld [bc], a
    ld bc, $0002
    inc h
    ld bc, $2bec
    dec c
    ld [hl], b
    ld [hl], b
    ld a, h
    ld c, [hl]
    ccf
    ld hl, $707f
    ld a, a
    ld b, b
    ccf
    jr nc, jr_052_7aa4

    ld c, $86
    cp e
    ldh [$30], a
    add b
    nop
    ld b, b
    add b
    jr nc, @-$76

    sbc h
    ld b, [hl]
    rlca
    ret


jr_052_7aa4:
    ld c, c
    db $ec
    ld b, b
    or $44
    dec sp
    and d
    ei
    and b

jr_052_7aad:
    db $dd
    sub b
    cp $50
    rst $38
    ld c, b
    rst $30
    ld b, b
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $38
    sub c
    rst $38
    sub b
    ld a, a
    ld c, b
    ld a, a
    ld b, h
    ccf
    ld [hl+], a
    rra
    ld de, $181f
    rrca
    inc c
    rlca
    ld [bc], a
    sub h
    push af
    ld a, [de]
    ld bc, $0200
    nop
    inc b
    ld bc, $0209
    ld d, $c0
    ldh [$80], a
    jr nz, jr_052_7a5c

    inc hl
    jp $ff1c


    inc bc
    db $fc
    db $fc
    rrca
    rrca
    ld [$070f], sp

jr_052_7ae8:
    rlca
    xor b
    and d
    ldh [$6e], a
    add b
    ldh a, [$f8]
    scf
    ld h, a
    inc e
    jr jr_052_7b3b

    rlca
    xor b
    add b
    ld [hl], h
    ld b, b
    ld a, [hl-]
    jr nz, jr_052_7b7a

    jr jr_052_7aad

    ld b, $d7
    ld bc, $00ea
    db $f4
    ld b, b
    cp h
    jr nz, jr_052_7ae8

    ld [$03ab], sp
    call nc, $f800
    ld b, b
    cp $30
    rst $38
    jr @+$01

    add h
    rst $38
    ret nz

    rst $38
    or b
    ld a, a
    ld c, b
    ccf
    jr nz, jr_052_7b3e

    jr jr_052_7b30

    ld c, $03
    inc bc
    inc b
    inc a
    inc bc
    call nz, $1201
    dec h
    ld [hl+], a
    ld b, l
    ld b, d
    add a
    adc b

jr_052_7b30:
    ld c, $19

jr_052_7b32:
    ld c, $29
    ld [hl], $d5
    or $35
    ld [c], a
    ld h, d
    add b

jr_052_7b3b:
    add d
    nop
    ld [bc], a

jr_052_7b3e:
    ret nz

    ret nz

    jr nc, jr_052_7b32

    ret z

    ret z

    ld [hl], $36
    ld a, [de]
    ld a, [de]
    dec c
    dec c
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    jp $1de2


    rra
    ld bc, $e001
    ldh a, [rP1]
    inc c
    nop
    ld [bc], a
    add h
    di
    inc b
    ret nz

    nop
    jr nc, jr_052_7b63

jr_052_7b63:
    ld [$0085], sp
    ld h, c
    ld bc, $e080
    and e
    adc c
    inc bc
    add b
    nop
    ldh [rP1], a
    ld b, e
    ldh a, [rP1]
    inc bc
    ldh [rP1], a
    db $fc
    nop
    ld b, h

jr_052_7b7a:
    rst $38
    nop
    ld de, $ff8f
    ld bc, $00ff
    add $38
    add b
    ld c, h
    nop
    add h
    ld de, $1194
    inc d
    ld bc, $2308
    ld b, e
    add hl, hl
    ld b, e
    inc b
    ld d, c
    rlca
    ld d, d
    rlca
    and d
    ld l, c
    add hl, bc
    jr c, jr_052_7bd4

    daa
    ccf
    sbc b
    sbc a
    add [hl]
    add [hl]
    add c
    add c
    inc hl
    add b
    rlca
    ld h, b
    ld h, b
    db $10
    db $10
    ld [$0408], sp
    inc b
    ld [hl+], a
    ld [bc], a
    adc h
    nop
    sub l
    rrca
    inc bc
    inc bc
    rlca
    rlca
    dec b
    dec c
    add hl, bc
    dec bc
    ld a, [bc]
    ld a, [de]
    ld [de], a
    ld d, $14
    inc d
    jr jr_052_7bdd

    jp $2301


    add e
    nop
    call z, $c003
    ld b, b
    ld h, b
    jr nz, jr_052_7bf3

    db $10
    rrca
    sub b

jr_052_7bd4:
    adc b
    ret z

    adc e
    db $eb
    call z, $efbc
    jr @+$01

jr_052_7bdd:
    inc c
    db $eb
    ld [de], a
    rst $38
    db $10
    rst $38
    xor a
    nop
    sbc h
    ld [$6080], sp
    ld h, b
    and b
    and b
    ret nc

    ret nc

    ld d, b
    ld d, b
    daa
    jr z, jr_052_7bfc

jr_052_7bf3:
    ld e, b
    ld c, b
    ld d, b
    ld d, b
    or b
    sub b
    ldh [rNR41], a
    ret nz

jr_052_7bfc:
    ld b, b
    inc h
    add b
    ld bc, $0080
    db $f4
    ld hl, $2300
    and e
    nop
    xor e
    and a
    nop
    dec bc
    nop
    ld b, b
    rst $38
    db $ec
    dec l
    inc bc
    ld bc, $0101
    ld bc, $8685
    inc de
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    add hl, bc
    jr @+$25

    ld hl, $437e
    ld a, h
    ld [hl], a
    ld e, b
    ld c, a
    sbc b
    adc a
    ret nc

    sbc a
    ld [hl], b
    ld e, a
    ld b, l
    jr nz, jr_052_7c6f

    ld b, l
    ld b, b
    ld a, a
    rlca
    ld b, d
    ld a, a
    dec h
    ccf
    ld a, [hl+]
    ccf
    dec d
    rra
    adc l
    cp [hl]
    dec c
    inc bc
    ld b, $0c
    ld [$1011], sp
    ld [bc], a
    ld hl, $2324
    inc a
    inc hl
    ld e, b
    ld h, a
    ld b, l
    ld b, b
    ld a, a
    ld b, l
    add b
    rst $38
    ldh [rNR41], a
    ld b, c
    ld a, a
    ld b, d
    ld a, [hl]
    ld [c], a
    cp [hl]
    sbc e
    ld c, $3f
    inc b
    cp $e5
    cp h
    ld [hl], a
    ld e, b
    ccf
    ld l, b
    cpl
    ret nc

    ld e, a
    rst $28
    ldh a, [$3f]
    ret nz

    ld a, a
    add b

jr_052_7c6f:
    rst $38
    nop
    cp $01
    ld [hl], b
    adc a
    nop
    ld c, [hl]
    rst $38
    nop
    rlca
    add b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld l, c
    ldh [$33], a
    ld e, $3e
    ld sp, hl

jr_052_7c88:
    rst $00
    ldh [$1f], a
    add e

jr_052_7c8c:
    ld a, a
    rrca
    rst $38
    ld e, $fe
    inc a
    db $fc
    ld a, b
    ld hl, sp+$7c
    db $fc
    ld a, [$fdfe]
    ei
    push af
    ei
    ld b, c
    rst $38
    ld b, d
    cp $c2
    cp $e4
    inc a
    add sp, $38
    or b
    ld [hl], b
    jr nz, jr_052_7c8c

    ld hl, $43e1
    jp nz, $c447

    ld c, b
    rst $08
    ld [hl], h
    ei
    ret c

    rst $20
    jr nc, jr_052_7c88

    ld b, e
    add b
    ld a, a
    adc a
    reti


    dec c
    jr @+$01

    inc h
    rst $20
    ld h, $e3
    ld l, a
    rst $00
    ld c, a
    push bc
    rst $18
    adc c
    sbc a
    adc c
    xor l
    nop
    ld [hl+], a
    rlca
    ld b, b

jr_052_7cd2:
    ret nz

    pop bc
    pop bc
    ld [bc], a
    inc bc
    ld bc, $8a01
    nop
    daa
    nop
    ld bc, $0084
    dec [hl]
    inc c
    inc bc
    ld [hl-], a
    ld [hl], e
    ld a, [bc]
    sbc e
    adc c
    sbc c
    ld d, c
    ld sp, $31d1
    sub b
    ld [hl], b
    ld b, e
    jr nz, jr_052_7cd2

    db $10
    ld b, b
    ret nz

    ld h, b
    ldh [$58], a
    ld hl, sp+$44
    or $41
    ld sp, hl
    ld b, b
    db $fc
    ld [hl+], a
    cp $20
    cp $21
    ld b, [hl]
    rst $38
    nop
    rrca
    dec c
    rst $38
    inc de
    di
    inc sp
    pop hl
    db $eb
    ld sp, $50fb
    db $fd
    ld c, b
    db $fd
    adc b
    rst $20
    sbc h
    ld l, c
    inc de
    inc bc
    rlca
    ld a, [hl-]
    inc a
    jp $03fc


    db $fc
    ld bc, $c1fe
    cp $30
    ccf
    ld [$440f], sp
    rst $00
    db $e4
    ld h, a
    ld b, e
    ld [c], a
    ld h, e
    ld [$73b2], sp
    cp d
    ld a, e
    sbc [hl]
    ld a, a
    inc e
    rst $38
    inc c
    ld b, h
    rst $38
    ld [$27e0], sp
    db $10
    rst $38
    sub b
    rst $38
    ld c, b
    ld a, a
    daa
    ccf
    add hl, de
    jr jr_052_7d66

    db $10
    rrca
    inc de
    dec b
    ld c, $06
    inc b
    ld [bc], a
    add d
    add e

jr_052_7d55:
    add d
    ld b, c
    ld b, c
    pop bc
    ld b, c
    and c
    pop hl
    db $fc
    sbc [hl]
    rst $38
    add c
    rst $38
    nop
    rst $38
    db $fc
    ei
    adc e

jr_052_7d66:
    ld hl, sp+$08
    ld b, h
    ldh a, [$90]
    ld [bc], a
    ld d, b
    ldh [$60], a
    ld h, a
    inc de
    ld h, b
    ldh [rP1], a
    db $10
    db $10
    ld [$0838], sp
    cp h
    inc b
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    ld a, l
    add e
    add hl, sp
    rst $00
    ld c, l
    ld bc, $43ff
    ld [bc], a
    cp $01
    inc b
    db $fc
    ld b, e
    ld [$03f8], sp
    db $10
    ldh a, [$d0]
    ldh a, [rLY]
    ldh [rNR41], a
    nop
    and b
    ld b, l
    ret nz

jr_052_7d9d:
    ld b, b
    ld b, e
    ld h, b
    jr nz, @+$0f

    and b
    jr nz, jr_052_7d55

    db $10
    ld hl, sp-$78
    sbc b
    add sp, -$18
    jr jr_052_7d9d

    db $10
    ldh [$e0], a
    ld l, c
    rst $38
    db $ec
    daa
    ld [hl+], a
    ld bc, $0202
    nop
    ld bc, $31ec
    inc hl
    ld bc, $0305
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    jp $9f80


    xor e
    inc bc
    inc bc
    ld [bc], a
    ld bc, $8302
    xor c
    add hl, bc
    jr c, jr_052_7e12

    rst $38
    ret nz

    rst $38
    ccf
    cp $ff
    dec c
    ld a, $43
    dec bc
    inc c
    inc b
    add hl, bc
    ld a, [bc]
    ld b, $06
    ld [bc], a
    add d
    db $fd
    adc c
    and l
    ld bc, $0203
    ld b, e
    dec b
    ld b, $01
    inc b
    dec b
    inc hl
    ld [$1003], sp
    ld e, $10
    rra
    ld b, e
    jr nz, jr_052_7e3a

    ld [de], a
    ld [$5f47], sp
    ld b, e
    ld a, $82
    inc a
    inc b
    ld a, b
    ld [$08f8], sp
    ldh a, [$90]
    ld h, b
    ldh [rLCDC], a
    ret nz

    add b
    cp d
    nop
    dec l

jr_052_7e12:
    ldh [$37], a
    rra
    ccf
    push de
    ret nz

    rst $38
    nop
    ld d, l
    nop
    rst $38
    nop
    ld d, l
    xor d
    inc bc
    db $fc
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ldh [rIF], a
    rst $38
    ld [hl], b
    rst $08
    ld e, [hl]
    ld h, e
    ld a, d
    ld b, [hl]
    cp $02
    rst $18
    jr nz, @+$81

    ld b, d
    rra
    inc a
    cp a
    ret nz

jr_052_7e3a:
    dec sp
    scf
    adc [hl]
    pop de
    add d
    dec c
    call $ff03
    nop
    sbc a
    ld h, b
    sbc a
    ld e, h
    inc bc
    add e
    ld bc, $2401
    ld [bc], a
    db $10
    cp $02
    cp $01
    rst $38
    rst $00
    ld sp, hl
    ccf
    jr nz, @+$11

    db $10
    rrca
    ld [$0407], sp
    ld bc, $f802
    ld hl, $8f00
    dec de
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    cp b
    ld c, b
    db $fc
    inc b
    xor h
    ld d, h
    cp $02
    ld b, $fa
    ld [bc], a
    cp $f9
    rlca

jr_052_7e79:
    rst $00
    ld hl, sp-$02
    rst $38
    rst $38
    ccf
    db $fc
    daa
    ld b, e
    db $fc
    inc b
    rla
    ret c

    jr z, jr_052_7e79

    ld sp, $c2c2
    ld [bc], a
    ld [bc], a
    adc h
    adc h
    ld sp, $bf70
    ret nz

    db $fc
    inc bc
    push af
    dec c
    or d
    ld [hl], d
    db $e4
    db $e4
    jr jr_052_7eb5

    adc l
    jp RST_00


    jp $dc00


    nop
    jr nz, @-$3b

    nop
    reti


    inc bc
    sub b
    ld [hl], b
    ldh [$e0], a
    db $f4
    cpl
    nop
    ld [hl-], a
    inc de
    ldh a, [rSVBK]

jr_052_7eb5:
    ld a, c
    adc c
    ld a, [c]
    ld a, [c]
    inc h
    inc h
    ld a, c
    ld e, c
    ld a, [hl]
    ld h, [hl]
    ld l, [hl]
    ld d, d
    or [hl]
    jp z, $e2de

    ld a, h
    inc l
    ld b, e
    ldh a, [rNR10]
    inc bc
    ldh [rNR41], a
    ret nz

    ld b, b
    adc a
    nop
    call c, $0f0d
    rrca
    db $10
    db $10
    ld a, a
    ld a, a
    cp $ab
    xor d
    rst $38
    cp $80
    xor d
    rst $38
    ld b, e
    cp $ab
    ld bc, $7f7f
    db $dd
    nop
    adc c
    dec b
    inc b
    inc b
    ld [$100b], sp
    inc d
    ld b, e
    jr nz, @+$2a

    ld b, e
    ld b, b
    ld d, b
    inc d
    add b
    and b
    add e
    and e
    cp [hl]
    db $fc
    or l
    ld h, b
    ld [$9540], a
    and b
    ld a, [bc]
    jr nz, @+$17

    jr nz, jr_052_7f13

    jr nz, jr_052_7f10

    jr nz, jr_052_7f0f

    add e
    add e

jr_052_7f0f:
    ld [bc], a

jr_052_7f10:
    db $10
    dec b
    db $10

jr_052_7f13:
    add l
    add e
    inc bc
    ld bc, $0408
    inc bc
    adc [hl]
    ld bc, $065c
    ldh [rNR10], a
    ld d, b
    db $10
    ldh a, [rNR10]
    db $10
    call nz, $0081
    ld d, b
    sbc e
    ld bc, $a3ba
    ld [bc], a
    jr jr_052_7f34

    nop
    db $f4
    inc b
    inc c

jr_052_7f34:
    inc b
    ld b, h
    inc c
    ld [$1805], sp
    inc d
    jr nc, @+$26

    add sp, -$3c
    and e
    push hl
    adc e
    add e
    dec b
    ld d, h
    nop
    and b
    ld [$0850], sp
    adc b
    add e
    ld [bc], a
    stop
    ld h, b
    db $f4
    inc hl
    nop
    inc l
    rst $38
    db $ec
    dec hl
    ld [bc], a
    rlca
    rrca
    rrca
    inc l
    rra
    ld bc, $1f0f
    jr z, jr_052_7f71

    ld [hl+], a
    rra
    dec d
    dec de

jr_052_7f66:
    rra
    rla
    rra
    ld a, [de]
    rra
    dec d
    ccf
    ld a, [hl-]
    ccf
    dec [hl]
    ccf

jr_052_7f71:
    ld a, [hl+]
    ccf
    ld [hl], l
    ccf
    ld a, [hl+]
    ld a, a
    ld d, l
    ld a, a
    ld l, d
    ld a, a
    db $ec
    ld a, [hl+]
    add hl, bc
    ld bc, $cf87
    db $fd
    rst $38
    ld [$d5ff], a
    rst $38
    db $eb
    ld a, $ff
    nop
    ld a, a
    adc d
    add a
    ldh a, [rNR41]
    call nc, $0311
    ld [bc], a
    rlca
    inc b
    rrca
    dec c
    rrca
    ld a, [de]
    ccf
    push af
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    db $e4
    inc l
    rst $38
    ld a, e
    inc b
    jr nz, @+$72

    or b
    ld hl, sp+$38
    ld b, e
    db $fc
    inc a
    inc bc
    cp $7e
    cp $fe
    add hl, hl
    rst $38
    ldh a, [rOBP0]
    rst $18
    or b
    nop
    ret nc

    ld [hl+], a
    add b
    dec e
    ld b, b
    ld b, b
    nop
    jr nz, jr_052_7f66

    jr nz, jr_052_7fc8

jr_052_7fc8:
    sub b
    ret nc

    sub b
    ret nz

    adc b
    xor b
    ret z

    ret c

    ret z

    add sp, -$3c
    call c, $fce4
    db $e4
    db $ec
    ld a, [c]
    db $fc
    ld a, [c]
    or $fa
    ld a, [$abfe]
    nop
    or h
    dec b
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    ld d, b
    dec bc
    add b
    ret nz

    ldh [rSVBK], a
    ldh a, [$a8]
    ld hl, sp+$54
    db $fc
    xor d
    cp $57
    ld [hl+], a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
