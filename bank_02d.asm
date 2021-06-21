; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

    ld l, a
    dec b
    add c
    ld a, [hl]
    ld b, d
    cp l
    inc h
    db $db
    ld b, e
    db $18, $e7
    ld b, $24
    db $db
    ld b, d
    cp l
    add c
    ld a, [hl]
    nop
    ld [hl+], a
    rst $38
    adc e
    add e
    dec bc
    ld a, a
    ccf
    ld [c], a
    ld b, d
    call nz, $ce84
    adc b
    reti


    sbc b
    call nc, Call_02d_439c
    rst $10
    sbc a
    ld d, $cb
    rst $20
    add h
    ret c

    rst $10
    and b
    xor a
    ret nz

    cp a
    ret nz

    add b
    rst $38
    cp a
    rst $38
    and b
    rst $38
    db $d3
    rst $20
    ld h, c
    dec de
    ei
    dec b
    db $fd
    xor b
    adc a
    ldh [rNR42], a
    xor [hl]
    or b
    xor h
    or b
    xor b
    or b
    and c
    or b
    and d
    and b
    and l
    and b
    xor e
    and b
    and a
    or b
    dec h
    dec c
    ld d, l
    dec c
    or l
    dec c
    ld [hl], l
    dec c
    push hl
    dec c
    push bc
    dec c
    add l
    dec c
    dec d
    dec c
    add b
    nop
    ld c, c
    ld a, a
    nop
    dec b
    ld a, [hl]
    ld bc, $037d
    ld bc, $4900
    cp $01
    dec b
    ld a, [hl]
    add c
    cp [hl]
    add c
    cp a
    rst $38
    ld c, e
    and b
    ldh [$0b], a
    ldh [$e0], a
    db $dd
    rst $38
    adc c
    db $e3
    add c
    rst $38
    add c
    db $eb
    add c
    ei
    add h
    add e
    nop
    rst $28
    add e
    nop
    add hl, hl
    inc d
    inc e
    inc e
    ld [hl], $36
    ld e, l
    ld e, l
    ld h, e
    ld b, c
    ld a, $22
    inc e
    inc e
    rst $38
    ld a, [hl]
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    add $81
    ld c, e
    cp l
    add e
    inc bc
    pop bc
    cp a
    rst $38
    rst $38
    adc a
    sbc a
    ld [bc], a
    rst $38
    rst $38
    cp a
    ld c, h
    ret nz

    add b
    rlca
    ld a, [hl]
    nop
    cp l
    nop
    db $db
    nop
    rst $20
    nop
    add $81
    nop
    nop
    adc a
    xor a
    inc e
    rst $10
    sbc a
    db $d3
    sbc a
    ret nc

    sbc a
    call c, $df8f
    add e
    rst $00
    add b
    pop bc
    add b
    ret nz

    add b
    cp [hl]
    ldh [$bc], a
    ldh [$b8], a
    ldh [$b1], a
    ldh [$a2], a
    ldh [$9f], a
    rst $38
    ret nz

    ld [hl+], a
    rst $38
    add hl, bc
    dec h
    rrca
    ld d, l
    rrca
    or l
    rrca
    ld [hl], l
    rrca
    push af
    rrca
    and l
    adc a
    and l
    rst $18
    ld bc, $374b
    ld b, e
    and a
    ld d, l
    inc bc
    ld c, e
    scf
    ld bc, $af03
    adc a
    inc bc
    ld a, l
    inc bc
    ld a, [hl]
    ld bc, $00ca
    adc d
    ld [bc], a
    ld a, a
    cp [hl]
    ld bc, $00ca
    sbc h
    rlca
    ld bc, $fe01
    rst $38
    rst $38
    cp c
    db $eb
    cp a
    jp $a300


    ld [$a0e0], sp
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    add c
    db $e3
    ld [hl+], a
    rst $38
    ld bc, $0101
    add h
    add e
    ld [bc], a
    cp $ff
    nop
    ld b, h
    rst $38
    add c
    ld a, [bc]
    sbc a
    cp $a0
    ld [$eac4], a
    rst $08
    sbc $dd
    rst $08
    rst $10
    and e
    sub [hl]
    dec bc
    add b
    rst $38
    cp a
    ldh [$bb], a
    ldh [$b4], a
    rst $38
    cp a
    rst $38
    rst $38
    add b
    xor c
    adc a
    nop
    dec a
    and h
    adc a
    xor h
    xor a
    ld b, $db
    di
    db $eb
    rst $38
    ldh [rIE], a
    rst $38
    inc h
    ret nz

    rlca
    rst $38
    ret nz

    rst $38
    rst $18
    rst $30
    db $d3
    or a
    sbc a
    xor e
    adc a
    inc bc
    rst $38
    ei
    db $fd
    ei
    and e
    add sp, $05
    cp a
    sbc a
    and [hl]
    and b
    xor h
    and b
    add e
    nop
    ld h, h
    ld bc, $a3a0
    and l
    adc a
    ld [bc], a
    dec a
    dec b
    ld a, l
    ld b, h
    dec b
    db $fd
    inc bc
    dec b
    db $fd
    nop
    rst $38
    ld h, c
    nop
    rst $38
    ld c, b
    rst $38
    nop
    ldh [$50], a
    rst $38
    rst $38
    ret nz

    add c
    ld h, b
    ld h, c
    jr jr_02d_41ba

    inc b
    dec b
    adc [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld l, $13
    xor $d3
    dec c
    ld hl, sp-$29
    rst $38
    add d
    ld hl, $2788
    add h
    inc hl
    add d
    ld hl, $2081
    rst $18

jr_02d_41ba:
    rst $38
    sub b
    ld a, a
    db $eb
    rst $38
    ld bc, $01c4
    db $f4
    ld bc, $01e4
    call nz, $8401
    ei
    rst $38
    nop
    rst $38
    ld bc, $fc03
    cp $e1
    ldh a, [$84]
    ret nz

    add b
    ret nz

    add c
    and b
    add a
    sub c
    nop
    rst $38
    ret nz

    ret nz

    ccf
    ccf
    inc c
    rrca
    inc e
    rlca
    ld a, h
    rra
    rst $30
    ld a, a
    push af
    sub c
    nop
    rst $28
    adc [hl]
    adc a
    ld [$ff7f], sp
    jr c, @+$01

    cpl
    ldh a, [rHDMA3]
    db $e3
    ld [hl-], a
    ld b, e
    jp nz, $07b3

    jp $c3b1


    ei
    db $fc
    sub b
    db $ec
    cp b
    ld a, [hl+]
    rst $38
    xor a
    adc a
    nop
    xor $a6
    xor a
    nop
    ld c, l
    and [hl]
    xor a
    ld b, h
    cp a
    sbc a
    ld a, [bc]
    add b
    or b
    cp a
    or l
    and b
    and b
    cp a
    sbc a

jr_02d_421d:
    sbc a
    and b
    xor d
    ld b, h
    db $fd
    ei
    ld c, $03
    dec c
    rst $38
    db $fd
    rlca
    ld d, a
    db $fd
    rst $38
    ld sp, hl
    dec b
    and l
    cp a
    cp a
    add b
    add b
    ld [hl+], a
    cp a
    add h
    add e
    and e
    ld bc, $afb5
    adc a
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld l, h
    inc de
    ld l, [hl]
    ld d, e
    xor $d3
    db $ec
    push de
    inc l
    reti


    jr c, jr_02d_421d

    ldh a, [$e1]
    ld [c], a
    ld bc, $0304
    db $eb
    ret c

    rst $38
    rst $38
    adc e
    add e
    ld bc, $37db
    adc l
    add e
    inc bc
    add a
    adc a
    adc l
    add l
    ld b, e
    rst $08
    rst $00
    ld b, $ac
    and a
    sbc c
    sub a
    adc [hl]
    adc a
    nop
    ld b, h
    rst $38
    push af
    ld c, $c5
    rst $38
    add hl, de
    db $fd
    ld h, c
    ld sp, hl
    add c
    pop hl
    ld bc, $0081
    rst $38
    ld a, a
    rst $38
    cp $a4
    and $0c
    sbc a
    rst $38
    sub b
    rst $38
    cp b
    rst $28
    rst $38
    rst $38
    cp $ff
    ei
    ld b, c
    ld b, c
    ld [hl+], a
    rst $38
    rlca
    pop af
    rst $38
    ld de, $39ff
    rst $28
    rst $38
    rst $38
    ld b, l
    or c
    jp $b301


    jp $02a5


    ld hl, sp+$01
    or b
    jp $ff2f


    dec b
    cp a
    ld [$eebf], a
    xor [hl]
    pop af
    jp Jump_02d_4e00


    dec b
    dec sp
    ldh [$fd], a
    ldh [$7e], a
    nop
    xor a
    xor a
    inc b
    cp d
    and l
    pop hl
    or d
    sub b
    ld [hl+], a
    rst $38
    inc c
    adc e
    rst $38
    adc h
    ei
    or h
    rst $28
    rst $38
    rst $38
    and l
    ld d, l
    rla
    dec c
    add hl, bc
    add [hl]
    rst $18
    ld bc, $fb2d
    and e
    rst $28
    nop
    ret nz

    ld b, [hl]
    add b
    cp a
    dec b
    ret nz

    cp a
    ld a, a
    ld a, a
    inc bc
    ld d, [hl]
    jp Jump_02d_7101


    ld b, l
    db $fd
    inc bc
    ld c, $3d
    add e
    cp l
    jp $83bd


    cp $e0
    cp l
    ret c

    rst $28
    or $f9
    rst $38
    adc [hl]
    inc hl
    adc a
    ld [bc], a
    adc b
    db $ec
    add sp, -$7a
    ld bc, $0710
    add b
    ld h, a
    ldh [$9f], a
    ld hl, sp-$19
    cp $f9
    ld [hl+], a
    rst $38
    ldh [rNR42], a
    cp h
    xor l
    or e
    cp [hl]
    call c, $f1cc
    or a
    cp $e6
    sbc a
    sbc c
    db $eb
    ei
    rst $38
    rst $38
    ld a, l
    pop de
    xor c
    xor c
    or l
    and a
    rst $18
    ld a, c
    cp a
    or a
    sbc e
    ld [hl], e
    ld l, l
    ld l, a
    ccf
    ld a, a
    ld h, b
    ret nz

    ld b, l
    ret nz

    add b
    ld bc, $81be
    ld b, e
    cp a
    add b
    inc b
    db $fc
    cp $fa
    inc bc
    db $fd
    ld b, h
    ld bc, $01ff
    inc bc
    add c
    ld b, e
    inc bc
    ld bc, $8f18
    ld a, a
    ld e, b
    or b
    scf
    ret nc

    ld [hl], a
    ldh a, [$97]
    sub b
    rst $30
    ldh a, [$d7]
    sub b
    or a
    sub b
    db $ed
    ei
    ld [hl], $1f
    db $dd
    dec sp
    sub $37
    push de
    ld b, [hl]
    dec [hl]
    rst $18
    ld c, $b8
    rst $00
    or a
    rst $08
    sbc [hl]
    rst $38
    cp b
    db $fc
    di
    ei
    inc de
    di
    rla
    ldh a, [rIF]
    add e
    inc b
    dec d
    dec bc
    ldh a, [rNR10]
    ld de, $1718
    ld hl, sp-$69
    cp $91
    rst $38
    rra
    rst $38
    or b
    adc a
    and a
    xor a
    nop
    adc $a5
    xor a
    ld bc, $00ff
    call Call_02d_4d02
    ld [bc], a
    nop
    nop
    nop
    add e
    adc c

Call_02d_439c:
    adc c
    sub l
    ld d, l
    cp l
    add e
    db $10
    jp Jump_02d_7fbd


    ld a, a
    or c
    db $eb
    ld l, e
    scf
    cp [hl]
    rst $18
    cp h
    ret c

    xor $f6
    ld sp, hl
    rst $38
    cp $29
    rst $38
    ld b, e
    adc a
    rst $28
    ld b, $89
    ld l, a
    jp hl


    sbc a
    ld sp, hl
    rst $20
    rst $38
    add e
    inc b
    ld e, [hl]
    ld b, $ff
    db $db
    db $fd
    or a
    jp hl


    cp a
    adc c
    ld [hl+], a
    rst $38
    inc bc
    adc c
    rst $38
    call $22bb
    rst $38
    dec b
    xor a
    rst $30
    db $dd
    sub c
    ld a, a
    ld de, $8fa4
    inc d
    reti


    or a
    rst $38
    rst $38
    rst $18
    add b
    and b
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $00
    rst $38
    cp e
    rst $38
    ld b, a
    rst $38
    cp c
    ld a, [hl]
    inc bc
    xor [hl]
    adc a
    ldh [rVBK], a
    rst $10
    cp b
    sub b
    rst $18
    sub l
    cp d
    or b
    rst $18
    push de
    cp d
    sub b
    rst $18
    push af
    ld a, [$8f88]
    rst $18

jr_02d_4408:
    dec [hl]
    dec e
    rst $30
    ld d, l
    cp a
    dec d
    rst $38
    ld d, [hl]
    cp a
    inc e
    rst $38
    ld d, b
    cp l
    jr nz, jr_02d_4408

    or $f4
    cp h
    sbc a
    or $9c
    db $f4
    rst $38
    adc [hl]
    call c, $afc4
    ld h, [hl]
    call nc, $fb3d
    ld l, a
    cpl
    cp e
    ld sp, hl
    ld l, a
    add hl, sp
    xor a
    rst $38
    ld [hl], e
    dec [hl]
    or c
    db $eb
    ld l, d
    scf
    cp h
    rst $18
    inc sp
    ld h, a
    jr c, @-$5e

    inc e
    ret c

    rra
    rst $30
    dec e
    ldh a, [$0d]
    ret c

    rlca
    cp a
    nop
    ld a, [hl]
    and e
    adc a
    ld b, $f8
    dec de
    ld hl, sp-$11
    ld hl, sp+$0f
    ldh a, [$a4]
    adc a
    inc bc
    pop hl
    cp $62
    dec a
    add e
    nop
    and b
    ld [bc], a
    xor [hl]
    pop af
    cp a
    ld b, h
    xor $bb
    ld [bc], a
    ld a, [hl]
    nop
    rst $38
    adc b
    ld bc, $c313
    ld bc, $8320
    nop
    ld e, $87
    nop
    inc d
    ld bc, $ff00
    add l
    nop
    ld e, $0b
    ld h, [hl]
    jp $c3db


    ld e, d
    jp $c3e7


    inc a
    rst $38
    rst $38
    rst $38
    ld c, a
    add b
    ret nz

    ld c, a
    ld bc, $0203
    rst $38
    rst $38
    add b
    ld c, h
    add b
    cp a
    add e
    inc b
    jr nc, jr_02d_44e1

    db $fd
    inc bc
    dec de
    res 7, a
    sbc l
    db $ed
    cp e
    ret


    or a
    jp $c5af


    db $dd
    adc c
    db $fd
    sub a
    push af
    and e
    db $db
    ld e, b
    cp e
    xor b
    ld a, e
    ld c, b
    db $db
    xor b
    db $db
    ld l, b
    ld e, e
    add sp, $43
    ld e, e
    ld l, b
    ld bc, $3f7f
    add e
    inc bc
    ld [hl+], a
    add hl, bc
    and b
    cp a
    and d
    or b
    and l
    or b
    xor e
    or b
    and a
    or b
    and a
    adc a
    add a
    nop
    ld a, b
    dec bc
    db $db
    ld a, [hl-]
    db $dd
    dec [hl]
    sbc $32
    db $db
    dec [hl]
    db $db
    ld [hl], $da
    scf
    ld b, e
    jp c, $af36

    rst $08
    rrca

jr_02d_44e1:
    jr z, jr_02d_44f9

    sub d
    ld h, c
    inc l
    sub b
    sub c
    ld h, [hl]
    ld h, $09
    sbc c
    ld h, b
    ld h, h
    sbc e
    adc c
    jr nc, jr_02d_4541

    rst $38
    nop
    ldh [$27], a
    rst $10
    rst $30
    xor c

jr_02d_44f9:
    cp h
    jp hl


    cp e
    cp a
    xor e
    rst $38
    xor e
    xor l
    cp e
    db $eb
    cp h
    rst $30
    rst $18
    db $eb
    rst $38
    push de
    dec a
    or a
    db $dd
    db $fd
    push de
    rst $18
    push de
    sub l
    db $dd
    rla
    dec a
    rst $28
    ei
    ld a, a
    rst $38
    push de
    xor d
    xor d
    rst $38
    push de
    xor d
    add e
    nop
    dec l
    ld bc, $552a

jr_02d_4524:
    add e
    inc b
    ld l, $0d
    dec c
    xor c
    xor l
    ld sp, hl
    ld e, l
    xor c
    db $fd
    ld sp, hl
    adc l
    ld sp, hl
    db $ed
    reti


    ld l, c
    rst $38
    add h
    nop
    ld b, a
    ld c, b
    rst $38
    add b
    nop
    rst $38
    or b
    adc a
    ld c, e

jr_02d_4541:
    cp a
    add b
    jp Jump_02d_7301


    ld c, e
    db $fd
    inc bc
    add e
    sbc a
    rrca
    push af
    db $db
    rst $10
    adc e
    rst $10
    db $ed
    rst $18
    xor c
    rst $18
    or e
    rst $38
    and l
    db $fd
    set 5, c
    sbc a
    ld b, h
    ld e, e
    ld l, b
    ld a, [bc]
    ld c, b

jr_02d_4561:
    dec sp
    jr jr_02d_45df

    jr z, jr_02d_4561

    ld c, h
    db $fd
    sub [hl]
    cp $23
    adc d
    adc a
    inc b
    ld c, b
    ei
    sbc b
    ei
    jr z, @+$46

    jp c, $0a36

    ld [hl-], a
    call c, $de38
    inc [hl]
    rst $18
    ld [hl-], a
    rst $18
    add hl, sp
    rst $18
    inc [hl]
    adc e
    adc a
    and e
    xor a
    xor a
    rst $08
    rrca
    ld a, a
    ld bc, $03bf
    rst $18
    dec b
    db $ed
    add hl, bc
    db $fd
    rla
    push af
    inc hl
    push af
    ld e, e
    rst $10
    adc e
    xor a
    adc a
    add e
    ld [bc], a
    ld h, b
    add hl, bc
    add c
    jr nz, jr_02d_4524

    ld hl, $2384
    adc b
    daa
    add d
    ld hl, $0286
    ld l, [hl]
    ret z

    ld [bc], a
    ld a, l
    add hl, bc
    ei
    rst $38
    ld b, [hl]
    ld d, e
    xor l
    ld e, e
    ld a, [$947c]
    cp a
    add e
    dec b
    ret z

    dec c
    and $d4
    ld a, l
    ei
    dec a
    ld a, c
    rst $38
    cp c
    cpl
    ld a, a
    xor c
    ei
    ld [hl], e
    dec [hl]
    add l
    dec b
    ld a, [hl-]
    add l
    ld [bc], a
    ld b, b
    add hl, bc
    call c, $f2dc
    xor $f6
    or $e2
    ld [c], a
    call c, $85dc
    adc a

jr_02d_45df:
    add hl, bc
    ld [bc], a
    inc de
    ld [bc], a
    ei
    ld [bc], a
    rst $38
    ld [bc], a
    ei
    inc bc
    inc de
    adc h
    dec b
    inc de
    ld bc, $0000
    adc [hl]
    adc l
    ld bc, $ffff
    add l
    ld b, $80
    ldh [$29], a
    or [hl]
    jp nz, $c4ad

    db $db
    adc c
    rst $30
    sub b
    rst $28
    and b
    rst $38
    ld b, c
    rst $38
    add b
    ld a, a
    add b
    cp a
    ret nz

    ld e, a
    ld h, b
    xor a
    ld sp, $19d7
    db $eb
    dec c
    rst $38
    rst $38
    rst $10
    rst $38
    xor a
    db $fc
    rst $38
    add b
    ldh [$9f], a
    ld l, a
    ld e, a
    ld [$e959], a
    ld e, a
    xor d
    adc a
    ld b, h
    ld a, [c]
    rst $30
    xor a
    xor a
    xor a
    rst $08
    rra
    ld a, [$4d70]
    ld c, h
    and $67
    or l
    add l
    ld a, [$4165]
    ld a, a
    and a
    ccf
    ld e, c
    ld sp, hl
    ld a, a
    rlca
    cp c
    add hl, de
    ld h, a
    pop hl

Call_02d_4644:
    cp e
    and [hl]
    ld b, a
    cp a
    sub e
    pop af
    db $f4
    adc $9a
    sbc a
    add a
    nop
    ld h, b
    nop
    and b
    add h
    inc bc
    jr z, jr_02d_4658

    rst $38

jr_02d_4658:
    rst $38
    ld c, a
    add b
    pop bc
    add [hl]
    nop
    ld [hl], b
    xor b
    sbc a
    inc b
    ld h, l
    inc bc
    sbc e
    ld [bc], a
    and a
    ld b, h
    ld [bc], a
    ld e, e
    dec bc
    and a
    ld [bc], a
    sbc e
    ld [bc], a
    ld h, l
    inc bc
    ret nz

    call nz, $cfc0
    ret nz

    rst $18
    jp $8581


    rlca
    ld e, [hl]
    add hl, bc
    dec sp
    dec sp
    ld h, [hl]
    ld e, [hl]
    ld l, a
    ld l, [hl]
    ld b, a
    ld b, [hl]
    dec sp
    ld a, [hl-]
    add e
    ld bc, $01bb
    nop
    rst $38
    ld c, a
    ld a, l
    inc bc
    ld c, a
    cp [hl]
    add c
    rrca
    rst $18
    ret nz

    cp a
    ret nc

    rst $18
    ldh [$af], a
    ldh a, [$97]
    ld hl, sp+$4b
    db $fc
    ld h, l
    cp [hl]
    sub d
    ld a, a
    add $08
    jp z, $0002

    rst $38
    ld [bc], a
    ld b, l
    rst $38
    nop
    dec b
    xor a
    rst $18
    rst $28
    sbc a
    ldh [$90], a
    add h
    rlca
    ld c, e
    add hl, bc
    add b
    rst $00
    sbc h
    rst $38
    cp l
    push af
    di
    rst $30
    pop af
    rlca
    add l
    rlca
    ld e, d
    inc b
    ld [hl], c
    adc a
    ld sp, hl
    ld [hl], a
    db $fd
    xor a
    xor a
    xor a
    rst $08
    ldh [rVBK], a
    ld h, d
    ld h, e
    sub h
    sub e
    ld c, [hl]
    ld b, e
    sbc d
    add a
    ld a, e
    ld c, a
    xor e
    sbc a
    sbc $ff
    cp $ae
    ld b, [hl]
    rst $00
    dec hl
    jp z, $c2b2

    sbc c
    pop hl
    sub $fa
    db $db
    db $fd
    db $fd
    rst $38
    ld a, a
    ei
    dec sp
    rst $38
    ld e, h
    rst $08
    ld a, c
    call z, $dc6b
    db $ec
    rst $18

jr_02d_46fc:
    rst $38
    ld a, a
    xor d
    ld d, l
    nop
    ld d, l
    ld [hl], d
    rst $38
    db $dd
    db $fd
    ld c, a

jr_02d_4707:
    push bc
    ld e, l

jr_02d_4709:
    rst $38
    rst $08
    push bc
    rst $38
    rst $38
    xor e
    ld d, l
    ld bc, $8055
    ld a, a
    ld a, a
    cp a
    jr nz, @-$1e

    jr nz, jr_02d_4707

    jr nz, jr_02d_46fc

    jr nz, jr_02d_4709

    ld h, b
    and b
    and b
    ld l, [hl]
    and [hl]
    adc a
    nop
    ld d, a
    and e
    sub e
    add hl, bc
    ld b, $05
    dec b
    or [hl]
    adc a
    ld a, a
    ld c, h
    cp b
    dec hl
    db $db
    ld b, e
    ld a, [de]
    ld [$2a05], a
    db $db
    ld c, d
    cp d
    adc d
    ld a, e
    add e
    ld [$0160], sp
    rst $28
    rst $38
    ld b, e
    ld b, h
    ld a, h
    ld b, e
    jr z, @+$3a

    dec de
    db $10
    sub e
    nop
    ld bc, $3f7f
    ld d, l
    ld b, b
    ld c, d
    ld b, b
    ld b, b
    ld d, l
    ld e, a
    ld h, b
    ccf
    ld a, a
    ld a, a
    nop
    inc bc
    ld bc, $fbfd
    ld d, l
    rrca
    ld c, l
    or a
    adc l
    ld d, a
    add e
    ld bc, $0758
    db $fd
    inc bc
    adc c
    ld a, a
    ld b, h
    cp a
    ld h, $db
    ld b, e
    add hl, de
    rst $20
    dec b
    dec h
    db $db
    ld b, e
    cp l
    add c
    ld a, [hl]
    add h
    ld [$1394], sp
    ldh [$2f], a
    ldh a, [$97]
    ld a, [$fc4b]
    dec h
    cp $92
    rst $38
    rst $38
    add c
    rst $00
    sbc l
    cp $bd
    cp $81
    add $84
    add l
    add hl, bc
    rst $00
    sbc h
    rst $38
    db $dd
    ld a, a
    push af
    ei
    adc c
    ld [hl], e
    pop af
    ld b, l
    ld [hl], e
    add c
    ld bc, $8177
    xor a
    xor a
    xor a
    rst $08
    dec de
    ld a, [hl]

jr_02d_47ad:
    ld a, [bc]
    cp [hl]
    ld [bc], a
    sbc $03
    xor $0e
    db $f4
    ld e, $ec
    dec l
    xor h
    ld l, $66
    cpl
    ld a, [hl]
    ret z

    ld a, l
    ret nz

    ld a, e
    ret nz

    ld [hl], a
    ldh a, [$2f]
    ld hl, sp+$37
    db $f4
    and e
    adc a
    ld de, $5555
    ld a, [hl+]
    ld d, l
    rst $38
    ld a, a
    ret z

    db $fd
    ld [hl-], a
    push af
    dec d
    ei
    ld a, [de]
    rst $30
    ld e, $ff
    ld d, l
    ld d, l
    and e
    rlca
    ld h, $0e
    nop
    ld d, l
    xor d
    ld d, l
    cp $ff
    inc bc
    rst $38
    nop
    rst $38
    ld h, b
    jr nz, jr_02d_47ad

    ccf
    jp c, HeaderNewLicenseeCode

    and $05
    db $db
    rlca
    xor l
    inc e
    ld a, [hl]
    nop
    and e
    adc a
    nop
    db $db
    ld b, e
    add b
    rst $20
    and [hl]
    adc a
    jr @+$7c

    ld a, [bc]
    cp d
    ld a, [bc]
    jp c, $ea0a

    ld a, [bc]
    db $eb
    dec bc
    call c, $bf0b
    rrca
    ld a, [hl]
    nop
    jr c, jr_02d_484e

    ld h, h
    ld e, l
    ld l, h
    ld l, h
    ld b, h
    ld b, h
    cp e
    add h
    ld [bc], a
    ld c, e
    ld bc, $007e
    and e
    ld bc, $009e
    jr nz, jr_02d_484b

    rst $38
    rlca
    ld e, b
    rst $20
    ld h, h
    cp e
    jr nz, @+$01

    pop hl
    cp $83
    add hl, bc
    or a
    add e
    inc b
    inc d
    ldh [rNR43], a
    dec e
    rst $20
    dec l
    db $db
    add hl, bc
    rst $38
    adc a
    ld a, a
    ld bc, $827e
    dec a
    call nz, $e81b
    rlca

jr_02d_484b:
    ldh [rTAC], a
    ret c

jr_02d_484e:
    inc bc
    cp h
    ld bc, $007e

jr_02d_4853:
    ret


    ld a, a
    ld h, h
    cp a
    ld [hl-], a
    rst $18
    add hl, de
    rst $28
    inc e
    rst $20
    ld h, $84
    ld a, [bc]
    adc e
    ld [bc], a
    rst $38
    cp h
    rst $38
    add [hl]
    rlca
    ld b, e
    nop
    rst $38
    add h
    add e
    ld bc, $418f
    xor l
    adc a
    xor a
    xor a
    xor a
    rst $08
    rrca
    ld h, e
    scf
    and b
    jr c, jr_02d_4853

    inc a
    rst $30
    rra
    ldh a, [rNR32]
    ret z

    inc e
    or a
    rrca
    ld a, b
    ld b, $a4
    adc a
    ld b, $7c
    rst $28
    ld hl, sp+$0f
    ld hl, sp+$13
    ld hl, sp-$5d
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
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $2322
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $1111
    ld de, $2211
    inc hl
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $1111
    ld de, $0211
    ld [bc], a
    ld [bc], a
    ld [bc], a
    or c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    or c
    ld bc, $0101
    inc bc
    dec h
    ld de, $1c11
    dec e
    ld e, $1f
    inc l
    dec l
    ld l, $2f
    inc a
    dec a
    dec a
    ccf
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc b
    dec b
    add e
    add e
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    dec bc
    ld bc, $1a01
    dec de
    ld de, $0211
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, @+$23

    ld bc, $3001
    ld sp, $1111
    ld b, b
    ld b, c
    inc de
    dec [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    jp nz, $01c3

    ld bc, $d3d2
    ld de, $0c11
    inc c
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    ld bc, $0101
    ld bc, $1111
    ld de, $3411
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    ld bc, $0101
    ld bc, $1111
    ld de, $b111
    ld d, d
    inc l
    cpl
    or c
    ld d, d
    ld c, h
    ld c, a
    or c
    ld d, d
    ld e, h
    ld e, l
    or c
    ld c, $90
    sub c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    or c
    ld bc, $0101
    or c
    ld de, $0311
    dec h
    ld de, $1711
    inc [hl]
    ld de, $9411
    inc h
    ld de, $0111
    ld bc, $1111
    ld de, $1111
    ld de, $a1a0
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    add [hl]
    add a
    inc l
    cpl
    sub [hl]
    sub a
    ld c, h
    ld c, a
    ld a, [hl-]
    dec sp
    ld e, h
    ld e, l
    ld bc, $9001
    sub c
    inc c
    inc c
    inc de
    dec [hl]
    inc h
    inc h
    inc h
    inc h
    ld bc, $0101
    ld bc, $1111
    ld de, $b111
    ld d, d
    ld h, $27
    or c
    ld d, d
    ld de, $b111
    ld d, d
    ld de, $b111
    ld c, $11
    ld de, $8fb7
    or [hl]
    or c
    sub [hl]
    and a
    sub a
    or c
    add [hl]
    and [hl]
    add a
    or c
    or a
    adc a
    or [hl]
    or c
    or a
    adc a
    or [hl]
    or c
    sub [hl]
    and a
    sub a
    or c
    ld c, d
    ld c, e
    and e
    or c
    ld e, d
    ld e, e
    inc bc
    dec h
    inc [hl]
    inc [hl]
    inc [hl]
    inc c
    inc h
    inc h
    inc h
    or c
    and [hl]
    and [hl]
    add a
    or c
    add hl, bc
    adc a
    or [hl]
    or c
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    ld bc, $0101
    ld bc, $1111
    ld de, $3411
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and a
    and a
    and a
    and a
    add e
    ld [bc], a
    ld [bc], a
    add e
    ld [bc], a
    adc d
    adc e
    ld [bc], a
    ld [bc], a
    or b
    or d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc b
    adc c
    or a
    adc a
    sbc b
    sbc d
    or a
    adc a
    adc b
    adc c
    or a
    adc a
    sbc b
    sbc c
    sub [hl]
    and a
    adc a
    or [hl]
    adc h
    adc l
    adc a
    or [hl]
    sbc e
    sbc l
    adc a
    or [hl]
    adc h
    adc l
    and a
    sub a
    sbc h
    sbc l
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    ld bc, $c401
    push bc
    ld de, $d411
    push de
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    xor b
    xor c
    xor d
    xor e
    cp b
    cp c
    cp d
    cp e
    ret z

    ret


    jp z, $d8cb

    reti


    jp c, $aadb

    xor e
    xor h
    xor l
    cp d
    cp e
    cp h
    cp l
    jp z, $cccb

    call $dbda
    call c, $88dd
    adc c
    or a
    adc a
    sbc b
    sbc d
    or a
    adc a
    adc b
    adc c
    or a
    adc a
    sbc b
    sbc d
    or a
    adc a
    adc a
    or [hl]
    adc h
    adc l
    adc a
    or [hl]
    sbc e
    sbc l
    adc a
    or [hl]
    adc h
    adc l
    adc a
    or [hl]
    sbc e
    sbc l

jr_02d_4aa0:
    ld de, $01d8
    ld bc, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0101
    db $dd
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld bc, $1101
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $8e11
    adc [hl]
    or [hl]
    inc [hl]
    adc [hl]
    adc [hl]
    or [hl]
    inc h
    adc [hl]
    adc [hl]
    or [hl]
    ld bc, $a7a7
    sub a
    ld de, $abaa
    xor d
    xor e
    cp d
    cp e
    cp d
    cp e
    jp z, $cacb

    set 3, d
    db $db
    jp c, $b6db

    sub d
    sub e
    or a
    or [hl]
    and d
    and e
    or a
    jr jr_02d_4aa0

    and [hl]
    add hl, de
    and a
    and a
    and a
    and a
    add e
    ld [bc], a
    ld [bc], a
    add e
    ld [bc], a
    adc d
    adc e
    ld [bc], a
    ld [bc], a
    add [hl]
    and [hl]
    and [hl]
    ld [bc], a
    or a
    adc [hl]
    adc [hl]
    add e
    ld [bc], a
    ld [bc], a
    add e
    ld [bc], a
    adc d
    adc e
    ld [bc], a
    and [hl]
    and [hl]
    add a
    ld [bc], a
    adc [hl]
    adc [hl]
    or [hl]
    ld [bc], a
    or [hl]
    sub d
    sub e
    or a
    or [hl]
    and d
    and e
    or a
    or [hl]
    ret nz

    pop bc
    or a
    or [hl]
    ret nc

    pop de
    or a
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    and a
    and a
    and a
    and a
    add e
    ld [bc], a
    ld [bc], a
    add e
    ld [bc], a
    adc d
    adc e
    ld [bc], a
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    ld bc, $0101
    ld bc, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld b, h
    ld b, l
    ld de, $5411
    ld d, l
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $5151
    ld d, c
    ld d, c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld bc, $0101
    ld bc, $1111
    ld de, $3411
    or a
    adc [hl]
    adc [hl]
    inc h
    or a
    adc [hl]
    adc [hl]
    add b
    or a
    adc [hl]
    adc [hl]
    ld a, $96
    and a
    and a
    adc d
    adc e
    adc d
    adc e
    ld b, $07
    ld b, $07
    or b
    or d
    or b
    or d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc d
    adc e
    adc d
    adc e
    ld b, $07
    ld b, $07
    or b
    or d
    or b
    or d
    db $10
    inc c
    inc [hl]
    inc [hl]
    adc d
    adc e
    adc d
    adc e
    ld b, $07
    ld b, $07
    or b
    or d
    or b
    or d
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld de, $1111
    ld de, $1111
    ld de, $ae11
    xor a
    xor [hl]
    xor a
    sbc $df
    sbc $df
    ld bc, $0101
    ld bc, $afae
    xor [hl]
    xor a
    cp [hl]
    cp a
    cp [hl]
    cp a
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    add h
    add l
    jr z, jr_02d_4c1d

    add h
    add l
    jr c, jr_02d_4c31

    sub h
    sub l
    ld a, [hl-]
    dec sp
    add d
    add d
    add d
    add d
    inc h
    inc h
    inc h
    inc h
    add $c7
    add d
    add d
    sub $d7
    add c
    add c
    add d
    add d
    add c
    add c
    jr z, jr_02d_4c3b

    inc h
    inc h
    jr c, jr_02d_4c4f

    add $c7
    ld a, [hl-]
    dec sp
    sub $d7
    add d

jr_02d_4c1d:
    add d
    add d
    add d
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    ld [$a7a7], sp
    add hl, bc
    or [hl]
    ld b, d
    ld b, e
    or a
    or [hl]
    and d
    ld d, e
    or a
    xor [hl]

jr_02d_4c31:
    xor a
    xor [hl]
    xor a
    cp [hl]
    cp a
    cp [hl]
    cp a
    adc $cf
    cp [hl]

jr_02d_4c3b:
    cp a
    sbc $df
    sbc $df
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c

jr_02d_4c4f:
    add c
    inc c
    inc c
    inc [hl]
    ld d, $24
    inc h
    inc h
    sub l
    ld bc, $0101
    ld bc, $1111
    ld de, $0c11
    inc [hl]
    inc [hl]
    inc [hl]
    or c
    and h
    and l
    inc h
    or c
    or h
    or l
    and [hl]
    or c
    sub [hl]
    and a
    and a
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    sbc [hl]
    adc c
    add [hl]
    and [hl]
    sbc b
    sbc d
    or a
    adc a
    adc b
    adc c
    or a
    adc a
    sbc b
    sbc d
    or a
    adc a
    and [hl]
    add a
    adc h
    sbc a
    adc a
    or [hl]
    sbc e
    sbc l
    adc a
    or [hl]
    adc h
    adc l
    adc a
    or [hl]
    sbc e
    sbc l
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld a, d
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
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    sub e
    rlca
    rlca
    rlca
    nop
    rlca
    sub b
    nop
    nop
    rlca
    sub b
    nop
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
    nop
    nop
    nop
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
    rlca
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

Call_02d_4d02:
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld l, a
    rlca
    xor d
    ld d, l
    dec d
    ld [$758a], a
    ld d, l
    xor d
    and a
    add c
    dec b
    rst $38
    rst $38
    add b
    add b
    add c
    add b
    ld [hl+], a
    cp c
    ld bc, $a9a9
    inc h
    add c
    and e
    adc a
    dec de
    db $fd
    ld sp, hl
    dec l
    dec b
    ld c, l
    dec b
    sbc l
    dec b
    dec a
    dec b
    ld a, l
    dec b
    add b
    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    cp a
    ret c

    or e
    call c, $ceb1
    cp c
    add $bf
    ret nz

    and a
    adc a
    ld [bc], a
    push hl
    dec sp
    call $8fa4
    ld bc, $ffff
    dec l
    add b
    ld c, h
    rst $38
    nop
    ld [$ff80], sp
    rst $38
    ccf
    ccf
    ld a, a
    ld b, b
    ldh [$9f], a
    ld b, l
    rst $18
    and b
    inc bc
    ldh [$9f], a
    rst $38
    ret nz

    xor a
    adc a
    ld bc, $ffff

Jump_02d_4e00:
    ld l, l
    nop
    ld bc, $0324
    ld c, c
    inc bc
    ld bc, $bf45
    rst $18
    inc b
    rst $18
    rst $38
    ldh [$bf], a
    rst $38
    ld b, e
    sbc a
    ldh a, [rP1]
    sub l
    ld b, l
    ei
    rst $38
    dec c
    rst $38
    ei
    dec c
    rst $30
    ld sp, hl
    rst $38
    add hl, bc
    rst $38
    db $eb
    rst $18
    ccf
    ccf
    ld e, a
    ld h, b
    ld b, e
    cp a
    ret nz

    rlca
    cp [hl]
    pop bc
    cp h
    jp $c1be


    cp a
    ret nz

    xor a
    adc a
    nop
    rst $38
    ld c, h
    rst $38
    add c
    ld [hl+], a
    rst $38
    nop
    nop
    ld b, e
    sbc a
    ld h, b
    ld c, c
    rst $38
    nop
    add hl, bc
    cp c
    cp c
    add c
    add c
    cp c
    cp c
    add c
    add b
    cp b
    cp b
    push bc
    nop
    ld h, l
    ld b, [hl]
    db $fd
    dec b
    nop
    ld sp, hl
    and [hl]
    nop
    ld l, d
    nop
    rst $38
    jp Jump_02d_4e00


    ld b, $b3
    call c, $d8b7
    rst $18
    ldh [$bf], a
    add e
    nop
    ld a, h
    rlca
    rst $38
    db $fd
    ld h, e
    call $c573
    dec sp
    push hl
    xor b
    adc a
    inc b
    rst $38
    add b
    add $91
    xor c
    adc d
    rst $18
    xor a
    nop
    ld [hl], b
    nop
    cp a
    ld b, e
    rst $38
    sub b
    ld a, [bc]
    cp a
    sbc a
    ret nz

    cp a
    rst $18
    or a
    db $d3
    cp a
    rst $10
    cp a
    rst $18
    and h
    adc a
    ld [bc], a
    rst $38
    di
    rrca
    ld b, a
    ei
    rst $38
    ld a, [bc]
    rst $38
    nop
    ld a, [hl]
    add c
    add c
    rst $38
    add c
    ld a, a
    add c
    rst $38
    ld bc, $bf85
    inc bc
    ld bc, $816b
    sub l
    adc d
    adc a
    ld b, l
    ldh a, [$df]
    ld bc, $ffb0
    and e
    nop
    jp c, $d009

    rst $38
    cp a
    rst $38
    dec bc
    rst $38
    db $eb
    rst $18
    dec bc
    rst $38
    and l
    adc a
    rlca
    ld a, [bc]
    rst $38
    db $fc
    rst $38
    cp a
    ret nz

    sbc a
    ldh [rSCX], a
    add b
    rst $38
    rlca
    rst $00
    rst $38
    ei
    cp a
    ld h, a
    rst $18
    jr c, jr_02d_4f5a

    xor c
    adc a
    dec b
    db $dd
    rst $38
    ld [c], a
    rst $38
    inc e
    cp $22
    add b
    call z, $ac00
    ld bc, $ff00
    ld b, e
    db $db
    inc h
    adc c
    ld bc, $0173
    ld h, c
    rra
    ld b, e
    add c
    ld a, a
    ld b, a
    ld bc, $83ff
    ld bc, $456e
    adc a
    ld [hl], b
    ld b, a
    rst $38
    nop
    xor a
    adc a
    ld bc, $7f81
    ld c, l
    ld bc, $4dff
    rrca
    ldh a, [rP1]
    ldh a, [rOBP0]
    rst $38
    ld bc, $aec5
    ld bc, $ff01
    xor c
    nop
    or b
    ld bc, $bfff
    inc hl
    ret nz

    xor a
    adc a
    rra
    or l
    and b
    jr nz, jr_02d_4f67

    rra
    rra
    jr nz, jr_02d_4f56

    ld a, [hl-]
    dec h
    ld hl, $1f32
    ccf
    nop
    rra
    db $fd
    rlca
    ld d, a
    db $fd
    rst $38
    ld sp, hl
    dec b
    and l
    and l
    ld d, l
    dec d
    dec c
    ld sp, hl
    db $fd
    ld bc, $43f9
    cp e
    rst $08
    dec c
    or l
    call $d9af
    sbc e
    push af
    or a
    db $ed
    rst $38
    call $cdbf
    ret nz

    add b

jr_02d_4f56:
    ld c, l
    add b
    nop
    xor a

jr_02d_4f5a:
    adc a
    xor a
    xor a
    nop
    ld a, [hl]
    ld c, h
    ld bc, $abfe
    nop
    ld l, a
    add l
    ld [bc], a

jr_02d_4f67:
    ld [de], a
    ld c, l
    ld bc, $0000
    cp $88
    and b
    rlca
    adc a
    nop
    adc a
    nop
    adc a
    nop
    rst $38
    nop
    xor [hl]
    adc a
    or b
    nop
    xor a
    ld bc, $3fc1
    add l
    ld [bc], a
    ld d, b
    nop
    nop
    and h
    ld [bc], a
    ld e, a
    nop
    ld bc, $ff31
    ld b, $c0
    rst $38
    rst $18
    rst $30
    db $d3
    rst $38
    rst $10
    ld b, h
    rst $38
    rst $18
    inc b
    ret nz

Jump_02d_4f99:
    or b
    cp a
    rst $38
    inc bc
    ld c, d
    rst $38
    ei
    ld [de], a
    inc bc
    dec c
    rst $38
    ld bc, $0301
    inc bc
    rlca
    dec b
    rrca
    add hl, bc
    dec de
    dec d
    scf
    dec l
    ld a, a
    ld c, l
    cp a
    call $018e
    db $10
    db $10
    ld a, a
    cp l
    res 7, d
    rst $00
    or l
    rst $08
    xor e
    sbc $96
    rst $38
    xor [hl]
    ei
    jp c, $baef

    rst $08
    ld c, a
    ret nz

    add b
    ld c, a
    inc bc
    ld bc, $afaf
    adc [hl]
    rst $08
    nop
    cp $b0
    rst $28
    adc [hl]
    ld bc, $8c6d
    nop
    ld h, h
    nop
    add b
    adc c
    nop
    and b
    ld bc, $0080
    adc l
    adc a
    jp $13b1


    cp a
    ret nz

    cp a
    cp $ff
    ld h, b
    sbc h
    ldh a, [$83]
    di
    call z, $d06f
    rra
    pop de
    rra
    and e
    ld a, $a7
    dec a
    xor a
    adc a
    rlca
    cp a
    add b
    rst $38
    cp a
    ld l, e
    and a
    ld [hl], a
    xor a
    ld b, l
    rst $38
    cp a
    inc bc
    add b
    rst $38
    rst $38
    nop
    dec hl
    rst $38
    inc bc
    nop
    rst $38
    cp $00
    ld b, a
    rst $38
    cp $01
    dec hl
    ld a, [hl+]
    add d
    adc h
    adc l
    ld bc, $020f
    rst $38
    nop
    nop
    adc a
    adc a
    dec b
    ld a, a
    ld a, a
    ld d, e
    ld c, h
    ld e, a
    ld c, h
    add a
    add e
    ld bc, $4d52
    ld b, l
    ld a, l
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    ld bc, $0286
    ld a, [hl+]
    and e
    nop
    sbc [hl]
    adc d
    inc bc
    ld d, l
    nop
    rst $38
    ld c, h
    rst $38
    add b
    inc c
    rst $38
    rst $38
    cp a
    pop bc
    adc c
    rst $30
    or a
    rst $38
    or a
    ret


    add c
    rst $38
    add c
    ret z

    inc b
    sub a
    nop
    nop
    adc e
    inc b
    adc a
    ld a, [bc]
    add b
    rst $38
    add b
    xor d
    rst $30
    db $dd
    push de
    rst $38
    push de
    xor d
    rst $30
    ld b, a
    rst $38
    add b
    inc bc
    xor d
    ld [hl], a
    db $dd
    ld d, l
    add a
    adc a
    ld bc, $febf
    add [hl]
    inc b
    ld [hl+], a
    add h
    cp a
    ld de, $ff81
    and a
    dec h
    and e
    ld [hl+], a
    pop de
    ld de, $10d0
    call z, $836c
    di
    sbc h
    ldh a, [rIE]
    ld h, b
    xor a
    adc a
    ld c, c
    cp $01
    ld [bc], a
    rst $38
    rst $38
    rst $38
    adc e
    ld bc, $840d
    nop
    ld h, c
    adc d
    inc b
    cp [hl]
    and [hl]
    adc a
    ld d, l
    ld a, l
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    inc b
    daa
    add hl, bc
    rst $08
    inc de
    add a
    dec bc
    rst $00
    dec sp
    add a
    dec bc
    rst $08
    inc de
    add e
    sub [hl]
    dec b
    ld e, l
    ld b, e
    ld a, a
    ld a, a
    ld a, l
    inc bc
    cp c
    inc b
    and $6f
    ld bc, $0103
    rst $28
    rst $38
    db $ed
    db $ed
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
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0a06
    ld a, [bc]
    ld a, [bc]
    ld d, $1a
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $1111
    ld de, $5411
    ld d, l
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $1111
    ld de, $5411
    ld d, l
    ld [bc], a
    inc bc
    ld d, b
    ld d, c
    ld [de], a
    inc de
    ld bc, $0101
    ld bc, $1111
    ld de, $0c11
    dec c
    ld de, $1c11
    dec e
    ld de, $0111
    ld bc, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld [$1109], sp
    ld de, $1918
    ld de, $0e11
    rrca
    ld c, $0f
    ld e, $1f
    ld e, $1f
    ld bc, $0101
    ld bc, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld hl, $1121
    ld de, $3131
    ld de, $1111
    ld de, $1111
    ld de, $2111
    ld hl, $1111
    ld sp, $1131
    ld de, $3030
    jr nc, @+$32

    jr nc, jr_02d_51b6

    jr nc, @+$32

    jr nc, jr_02d_51ba

    jr nc, jr_02d_51bc

    jr nc, jr_02d_51be

    jr nc, jr_02d_51c0

    inc b
    dec b
    inc b
    dec b
    inc d
    dec d
    inc d
    dec d
    dec h
    dec h
    dec h
    dec h
    jr nc, jr_02d_51ce

    jr nc, jr_02d_51d0

    jr nc, jr_02d_51d2

    jr nc, jr_02d_51c6

    jr nc, jr_02d_51c8

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl+], a
    jr nc, jr_02d_51e3

    jr nc, jr_02d_51d7

    ld [hl+], a

jr_02d_51b6:
    ld [hl+], a
    jr nc, jr_02d_51db

    ld [hl+], a

jr_02d_51ba:
    ld [hl+], a
    ld [hl+], a

jr_02d_51bc:
    inc h
    ld [hl+], a

jr_02d_51be:
    ld [hl+], a
    ld [hl+], a

jr_02d_51c0:
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    ld [hl-], a
    ld [hl-], a

jr_02d_51c6:
    ld [hl-], a
    ld [hl-], a

jr_02d_51c8:
    jr nc, @+$34

    ld [hl-], a
    ld [hl-], a
    jr nc, @+$32

jr_02d_51ce:
    jr nc, jr_02d_5202

jr_02d_51d0:
    inc [hl]
    ld [hl-], a

jr_02d_51d2:
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a

jr_02d_51d7:
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a

jr_02d_51db:
    jr nc, @+$34

    jr nc, @+$32

    jr nc, jr_02d_51e3

    inc bc
    inc b

jr_02d_51e3:
    dec b
    ld [de], a
    inc de
    inc d
    dec d
    dec h
    dec h
    dec h
    dec h
    jr nc, jr_02d_521e

    jr nc, jr_02d_5220

    jr nc, jr_02d_5222

    jr nc, @+$32

    jr nc, jr_02d_5226

    jr nc, @+$32

    jr nc, jr_02d_522a

    ld hl, $3021
    jr nc, @+$33

    ld sp, $3030

jr_02d_5202:
    jr nc, jr_02d_5234

    jr nc, @+$32

    jr nc, jr_02d_5238

    ld hl, $3021
    jr nc, @+$33

    ld sp, $3030
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf

jr_02d_521e:
    scf
    scf

jr_02d_5220:
    dec [hl]
    dec bc

jr_02d_5222:
    ld bc, $3511
    dec bc

jr_02d_5226:
    ld bc, $3511
    dec bc

jr_02d_522a:
    ld bc, $3511
    dec bc
    ld bc, $1111
    ld de, $0b35

jr_02d_5234:
    ld de, $3511
    dec bc

jr_02d_5238:
    ld de, $3511
    dec bc
    ld de, $3511
    dec bc
    ld de, $2c11
    dec l
    ld de, $3c11
    dec a
    ld de, $2c11
    dec l
    ld de, $3c11
    dec a
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $3b11
    ld de, $3a11
    dec l
    ld l, $2f
    ld de, $3e11
    ccf
    ld de, $2e11
    cpl
    ld de, $3e11
    ccf
    ld de, $1111
    ld de, $0b35
    ld de, $3511
    dec bc
    ld de, $2811
    add hl, hl
    ld de, $3811
    add hl, sp
    ld de, $1111
    ld de, $1111
    ld de, $4011
    ld de, $1111
    ld l, $41
    ld de, $4311
    ld b, l
    ld b, h
    ld b, l
    ld d, e
    ld d, l
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $1111
    ld de, $1111
    ld b, [hl]
    ld b, a
    ld de, $5611
    ld d, a
    ld de, $1111
    ld de, $4411
    ld b, l
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $4544
    ld b, h
    ld b, l
    ld c, b
    ld c, c
    ld c, d
    ld d, l
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $0504
    rlca
    rla
    inc d
    dec d
    inc b
    dec b
    dec h
    dec h
    inc d
    dec d
    jr nc, jr_02d_530e

    dec h
    dec h
    rlca
    rla
    inc b
    dec b
    inc b
    dec b
    inc d
    dec d
    inc d
    dec d
    dec h
    dec h
    dec h
    dec h
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_02d_5324

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_02d_532a

    ld e, b
    ld e, b
    jr nc, jr_02d_532e

    scf
    scf
    jr nc, jr_02d_5332

    jr nc, jr_02d_5334

    jr nc, jr_02d_5336

    jr nc, jr_02d_5338

    ld e, b
    ld e, b
    jr nc, jr_02d_533c

    scf
    scf

jr_02d_530e:
    jr nc, @+$32

    jr nc, jr_02d_5342

    jr nc, jr_02d_5344

    jr nc, jr_02d_535c

    ld b, a
    jr nc, jr_02d_5349

    ld d, [hl]
    ld d, a
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_02d_5332

    ld de, $1111

jr_02d_5324:
    ld de, $1111
    ld de, $1111

jr_02d_532a:
    ld de, $5911
    ld e, d

jr_02d_532e:
    ld c, e
    ld c, h
    ld b, e
    ld b, l

jr_02d_5332:
    ld b, l
    ld b, l

jr_02d_5334:
    ld d, h
    ld d, l

jr_02d_5336:
    ld [bc], a
    inc bc

jr_02d_5338:
    ld d, b
    ld d, c
    ld [de], a
    inc de

jr_02d_533c:
    ld bc, $0101
    ld bc, $5b5b

jr_02d_5342:
    ld e, e
    ld e, e

jr_02d_5344:
    ld e, e
    ld e, e
    ld e, h
    ld e, h
    ld e, h

jr_02d_5349:
    ld c, [hl]
    jr nc, @+$32

    jr nc, jr_02d_537e

    jr nc, @+$32

    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, h
    ld e, h
    ld c, l
    ld e, l
    jr nc, jr_02d_538a

    ld e, [hl]
    ld e, h

jr_02d_535c:
    jr nc, jr_02d_538e

    jr nc, @+$32

    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    ld bc, $0101
    ld bc, $1111
    ld de, $3511
    add c
    ld a, [bc]
    ld a, [bc]
    ld d, $1a
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $1111

jr_02d_537e:
    ld de, $5411
    ld d, l
    ld d, h
    ld d, l
    ld c, a
    ld e, a
    ld d, b
    ld d, c
    dec [hl]
    dec bc

jr_02d_538a:
    ld bc, $3501
    dec bc

jr_02d_538e:
    ld bc, $5411
    ld d, l
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld c, a
    ld e, a
    ld bc, $3501
    dec bc
    ld de, $3511
    dec bc
    jr nc, jr_02d_53d2

    jr nc, jr_02d_53d4

    jr nc, jr_02d_53d6

    jr nc, jr_02d_53d8

    jr nc, jr_02d_53da

    ld hl, $3021
    jr nc, jr_02d_53e0

    ld sp, $3030
    jr nc, jr_02d_53e4

    jr nc, jr_02d_53e6

    jr nc, jr_02d_53e8

    ld hl, $3021
    jr nc, jr_02d_53ee

    ld sp, $3030
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_53d2:
    nop
    nop

jr_02d_53d4:
    nop
    nop

jr_02d_53d6:
    nop
    nop

jr_02d_53d8:
    nop
    nop

jr_02d_53da:
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_53e0:
    nop
    nop
    nop
    nop

jr_02d_53e4:
    nop
    nop

jr_02d_53e6:
    nop
    nop

jr_02d_53e8:
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_53ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor a
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
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
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    ld [hl], c
    nop
    nop
    rlca
    nop
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
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
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
    rlca
    nop
    rlca
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
    rlca
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
    rlca
    rlca
    rlca
    nop
    nop
    ld [hl], c
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    sub e
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
    nop
    nop
    nop
    ld [hl], c
    nop
    nop
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    rlca
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
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    cpl
    rst $38
    rrca
    ld bc, $8300
    nop
    rst $00
    nop
    rst $28
    nop
    rst $30
    nop
    db $e3
    nop
    pop bc
    nop
    add b
    nop
    ld b, e
    rst $38
    add b
    ld bc, $80c0
    ld b, e
    rst $38
    cp a
    dec b
    rst $28
    or b
    add sp, -$49
    xor b
    rst $30
    ld b, e
    db $fd
    inc bc
    ld bc, $0305
    ld b, e
    db $fd
    rst $38
    ld bc, $1fe5
    ld b, e
    dec d
    rst $38
    ld h, d
    ld bc, $ffff
    ld h, c
    ld c, b
    rst $38
    nop
    rra
    ld [$febf], a
    cp c
    ld sp, hl
    or b
    db $e3
    or b
    cp $b1
    push hl
    cp d
    ldh a, [$bf]
    ei
    cp [hl]
    xor a
    db $fd
    ld [hl], a
    sbc l
    xor a
    dec e
    ld d, a
    xor l
    add a
    ld a, l
    rrca
    db $fd
    ld b, a
    dec a
    xor a
    ld a, l
    adc h
    xor h
    dec b
    nop
    rst $38
    nop
    ld a, a
    ld a, a
    add b
    ld c, h
    add b
    cp a
    inc bc
    cp $fe
    inc bc
    ld bc, $fd4b
    inc bc
    dec h
    rst $38
    ld [bc], a
    push de
    rst $38
    xor d
    call nz, $0181
    add e
    db $fc
    dec h
    rst $38
    ld [bc], a
    ld d, l
    rst $38
    xor e
    push bc
    add c
    nop
    ld bc, $8027
    nop
    rst $38
    add $80
    ld b, a
    ld bc, $0903
    rst $38
    rst $38
    ld a, l
    inc bc
    dec a
    inc bc
    dec e
    inc bc
    and c
    sbc a
    ld b, h
    and c
    sub e
    ld [de], a
    sbc a
    cp a
    add b
    cp a
    sbc a
    and b
    xor l
    and b
    xor d
    db $fd
    inc bc
    db $fd
    rrca
    push af
    rla
    push af
    scf
    push af
    ld [hl], a
    ld b, l
    push af
    rst $30
    nop
    rst $38
    ld h, c
    adc d
    nop
    ld [hl], d
    rra
    rst $38
    rst $38
    cp $01
    ld a, l
    add d
    cp d
    ld b, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld e, l
    and d
    cp [hl]
    ld b, c
    ld a, a
    add b
    and a
    rst $38
    and b
    rst $38
    xor a
    ldh a, [$a7]
    rst $38
    xor b
    rst $30
    and a
    rst $38
    ldh [rIE], a
    ld h, c
    nop
    push af
    and h
    adc a
    add h
    add l
    and d
    adc a
    adc h
    cp e
    add e
    adc e
    ldh [$30], a
    nop
    sbc a
    cp a
    sbc a
    ret nz

    add c
    rst $38
    pop bc
    rst $38
    rst $38
    cp a
    or a
    ret nc

    ret c

    rst $30
    rst $38
    ld a, a
    ld sp, hl
    db $fd
    ld a, c
    inc bc
    add c
    ld a, a
    add e
    ld a, a
    rst $38
    db $fd
    db $fd
    inc de
    inc de
    rst $38
    rst $38
    cp $ff
    nop
    ld b, b
    add b
    add b
    ccf
    nop
    ld b, b
    rra
    ld d, [hl]
    nop
    ld b, b
    nop
    ld b, b
    ccf
    ld b, b
    ld c, a
    cp a
    add b
    ld c, a
    db $fd
    inc bc
    ld a, [bc]
    add a
    ld hl, sp-$71
    ldh a, [rIE]
    rst $38
    ldh a, [$80]
    ldh [$80], a
    ret nz

    add l
    nop
    jp HeaderLogo


    rst $38
    ld bc, $ffff
    add hl, hl
    ld bc, $ff01
    rst $38
    adc e
    nop
    jp nz, $ff23

    rlca
    dec e
    inc bc
    dec c
    inc bc
    dec b
    inc bc
    rst $38
    rst $38
    add e
    add l
    ld bc, $ffff
    ld c, a
    rst $38
    nop
    ld [$01d1], sp
    and c
    ld bc, $0145
    adc l
    ld bc, $a31d
    xor e
    rrca
    ld bc, $ff01
    or b
    cp l
    or b
    cp d
    or b
    cp l
    and b
    xor d
    and b
    xor l
    cp a
    cp a
    and b
    ld [hl+], a
    cp a
    ld b, h
    push af
    rst $30
    inc de
    rst $38
    db $ed
    rst $38
    push de
    rst $38
    and l
    rst $38
    dec h
    rst $38
    db $fd
    ei
    rst $38
    ld a, [hl]
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    add $81
    adc a
    adc a
    inc bc
    xor a
    ret nz

    xor b
    ldh a, [rLYC]
    xor [hl]
    ld a, [$ee09]
    ld a, d
    ld a, [hl]
    ld a, [hl-]
    rra
    rrca
    push af
    inc bc
    inc de
    rrca
    ld b, l
    cp e
    xor a
    ld b, $ba
    xor a
    cp h
    xor [hl]
    ldh a, [$f8]
    nop
    jp $2000


    ld bc, $003f
    ld b, e
    ld hl, $1400
    jr nz, jr_02d_5794

jr_02d_5794:
    dec sp
    nop
    ld a, [hl+]
    nop
    rst $38
    nop
    cp a
    nop
    ld b, b
    inc d
    ld l, b
    ld [bc], a
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    db $f4
    nop
    inc d
    ld c, a
    jr nz, jr_02d_5809

    ld c, a
    inc b
    ld a, [$3f17]
    ccf
    ld b, c
    ld l, e
    add e
    cp a
    add e
    db $eb
    add e
    cp a
    add e
    xor e
    add e
    cp a
    add e
    and e
    sub $92
    rrca
    adc c
    sbc c
    rra
    ld de, $431f
    ld hl, $033f
    ld h, c
    ld e, a
    ld b, c
    ld a, a
    xor a
    adc a
    ld [bc], a
    cp $fc
    add e
    xor h
    xor a
    rrca
    rrca
    rrca
    dec de
    dec de
    ld [hl], $32
    scf
    ld sp, $7177
    ld d, a
    ld [hl], c
    rst $10
    pop de
    sub a
    db $d3
    xor a
    adc a
    ld [bc], a
    rst $38
    ld a, a
    adc a
    ld b, l
    sbc a
    or b
    ld bc, $b09d
    ld b, e
    sbc a
    cp a
    inc b
    adc a
    rst $38
    rst $38
    ldh [$e0], a
    ld b, [hl]
    ccf
    jr nz, @+$45

    ldh [rIE], a
    nop
    ret nz

    or b
    adc a
    and d
    xor a
    ld b, h

jr_02d_5809:
    dec c
    ei
    ld bc, $0dbb
    ld b, e
    ei
    db $fd
    nop
    di
    ld l, a
    db $10
    rst $38
    nop
    inc b
    inc bc
    ld [bc], a
    ld sp, hl
    inc b
    ld bc, $51f4
    inc b
    ld bc, $b194
    db $fc
    ld bc, $4300
    cp d
    nop
    ld b, $03
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    ld h, h
    inc bc
    dec d
    nop
    ld de, $4400
    ldh a, [rP1]
    ld bc, $e010
    ld h, e
    rrca
    ld a, a
    ld a, a
    db $dd
    add $b4
    sbc b
    db $eb
    or b
    ld [$e5b5], a
    cp d
    ldh [$bf], a
    db $f4
    cp a
    and e
    adc a
    ld c, $dd
    add hl, sp
    rst $10
    dec l
    adc a
    ld h, l
    rla
    db $ed
    rlca
    db $fd
    rla
    db $fd
    add c
    db $e3
    add b
    ld [hl+], a
    cp a
    rrca
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ld a, a
    xor e
    ld d, l
    ld d, l
    xor e
    pop bc
    cp a
    add c
    rst $38
    add c
    ld a, a
    add h
    ld bc, $84b1
    ld bc, $af0b
    adc a
    xor e
    xor a
    inc de
    xor d
    push de
    push de
    xor d
    jr c, jr_02d_58a5

    inc l
    jr nc, jr_02d_5897

    db $10
    inc de
    inc e
    inc c
    rrca
    dec bc
    rrca
    inc c
    rrca
    rlca
    rlca
    xor a
    adc a
    ld h, l
    add hl, bc

jr_02d_5897:
    inc bc
    inc bc
    dec bc
    inc c
    inc e
    db $10
    ld [$3810], sp
    jr nz, @-$4e

    adc a
    ld c, $c0

jr_02d_58a5:
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    jr c, jr_02d_58ac

jr_02d_58ac:
    inc e
    nop
    ld c, $00
    rlca
    nop
    inc bc
    or b
    adc a
    ld [bc], a
    rst $38
    nop
    rst $38
    ld a, b
    jp Jump_02d_4f99


    ret nz

    nop
    ld c, [hl]
    inc bc
    nop
    ld bc, $dfff
    dec h
    ldh [$09], a
    rst $38
    ldh [rIE], a
    rst $28
    ld sp, hl
    db $eb
    cp a
    xor a
    ei
    rst $38
    xor c
    adc a
    inc bc
    rst $38
    rst $30
    rst $38
    push af
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
    db $fd
    rst $30
    ld a, [bc]
    rlca
    push af
    rst $38
    db $fd
    rlca
    rlca
    db $fd
    rst $38
    ld sp, hl
    ld bc, $9f01
    ld [bc], a
    jr nz, jr_02d_5904

    sbc a
    rst $38
    ldh [$ea], a
    or b
    xor a
    and b
    xor d
    cp a
    and b

jr_02d_5904:
    cp a
    add e
    inc bc
    rst $00
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
    pop hl
    ldh [$bb], a
    cp b
    rst $28
    xor [hl]
    rst $38
    ei
    jp z, $df8a

    adc a
    adc h
    adc b
    db $fd
    add sp, -$7a
    nop
    db $10
    ld de, $f780
    ldh [$bb], a
    cp b
    db $fd
    xor h
    rst $38
    ei
    db $fc
    cp b
    xor a
    xor [hl]
    rst $38
    ei
    adc [hl]
    ld a, [$a58f]
    ld bc, $03b0
    rst $38
    ld [$ef8f], a
    ld b, e
    adc a
    jp hl


    dec b
    rst $28
    ld sp, hl
    cp a
    jp hl


    xor a
    ld sp, hl
    add e
    inc bc
    ret


    dec b
    nop
    add b
    nop
    rst $18
    rra
    ldh [rDMA], a
    jr nz, @-$17

    inc b
    and b
    jr nz, jr_02d_5961

    nop

jr_02d_5961:
    inc bc
    xor b
    adc a
    nop
    push hl
    ld [hl+], a
    inc b
    inc b
    ccf
    jr nz, @-$3f

    cpl
    ld hl, sp+$43
    cpl
    rst $38
    add hl, bc
    jr z, @+$01

    ccf
    ret nz

    nop
    add b
    nop
    db $fd
    inc b
    rst $38
    xor b
    adc a
    nop
    ld bc, $0484
    ld e, c
    dec c
    ldh [rIE], a
    ld hl, sp-$61
    sbc $e7
    ei
    push de
    or $fd
    adc a
    db $fd
    cp a
    rst $08
    ld b, a
    rrca
    rst $38
    and e
    ld bc, $e06d
    ld [hl+], a
    sbc a
    ld a, a
    rst $00
    ld a, a
    xor b
    rst $18
    cp e
    call z, $ddaa
    cp c
    adc $fb
    db $ec
    cp b
    rst $38
    cp [hl]
    rst $28
    xor d
    rst $38
    pop de
    rst $38
    db $f4
    rst $38
    adc l
    rst $38
    cp a
    rst $08
    xor c
    rst $18
    cp c
    rst $08
    xor c
    rst $18
    adc c
    add h
    ld bc, $4349
    db $10
    ldh [rSB], a
    rrca
    ldh a, [$85]
    ld bc, $8346
    adc a
    ld b, e
    inc b
    inc bc
    ld bc, $07f8
    add l
    adc a
    sbc a
    inc b
    ret nz

    rst $28
    rst $38
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
    nop
    nop
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
    ld bc, $5d5c
    ld e, h
    ld e, l
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $0101
    ld bc, $2201
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld de, $1111
    ld de, $0101
    ld bc, $2201
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$0709], sp
    rlca
    jr @+$1b

    inc h
    dec h
    jr jr_02d_5a83

    ld de, $1811
    add hl, de
    ld de, $0701
    rlca
    ld [$2409], sp
    dec h
    ld c, $0f
    ld de, $2011
    ld hl, $0101
    jr jr_02d_5a99

    ld bc, $0101

jr_02d_5a83:
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
    ld bc, $0701

jr_02d_5a99:
    rlca
    rlca
    rlca
    inc h
    dec h
    inc h
    dec h
    jr @+$1b

    ld de, $1801
    add hl, de
    ld de, $1801
    add hl, de
    rlca
    rlca
    inc h
    dec h
    inc h
    dec h
    ld bc, $1801
    add hl, de
    ld bc, $1801
    add hl, de
    rlca
    rlca
    jr jr_02d_5ad5

    inc h
    dec h
    inc h
    dec h
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld [$1009], sp
    db $10
    jr jr_02d_5ae3

    ld de, $1811
    add hl, de
    ld de, $5c01
    ld e, l
    ld e, h
    ld e, l
    db $10

jr_02d_5ad5:
    db $10
    ld [$1109], sp
    ld de, $1918
    ld bc, $1811
    add hl, de
    rlca
    rlca
    rlca

jr_02d_5ae3:
    rlca
    inc h
    dec h
    inc h
    dec h
    ld de, $1111
    ld de, $0101
    ld bc, $5c01
    ld e, l
    inc c
    dec c
    db $10
    db $10
    inc e
    dec e
    ld de, $1111
    ld de, $0101
    ld bc, $5c01
    ld e, l
    ld a, [bc]
    dec bc
    db $10
    db $10
    ld a, [de]
    dec de
    ld de, $1111
    ld de, $0101
    ld bc, $5c01
    ld e, l
    ld e, h
    ld e, l
    db $10
    db $10
    ld [$1109], sp
    ld de, $1918
    ld bc, $1801
    add hl, de
    ld de, $1111
    ld de, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0605
    dec b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $5c
    ld e, l
    ld e, h
    ld e, l
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, e
    ld bc, $4301
    ld b, e
    ld bc, $4343
    ld b, h
    ld b, e
    ld b, e
    inc [hl]
    inc [hl]
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    ld l, $2f
    inc [hl]
    ld b, d
    ld bc, $0101
    ld b, d
    ld b, d
    ld bc, $4401
    ld b, d
    ld b, d
    ld bc, $3434
    ld b, d
    ld b, d
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    inc b
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    ld b, [hl]
    ld b, [hl]
    ld b, b
    ld b, c
    ld b, [hl]
    ld b, [hl]
    ld a, $3f
    ld b, d
    ld b, d
    inc [hl]
    inc [hl]
    ld bc, $4242
    ld b, l
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, b
    ld b, c
    ld b, a
    ld b, a
    ld a, $3f
    ld b, a
    ld b, a
    inc [hl]
    inc [hl]
    ld b, e
    ld b, e
    ld b, l
    ld b, e
    ld b, e
    ld bc, $0101
    ld b, d
    ld b, d
    ld bc, $0101
    ld b, d
    ld bc, $0101
    ld bc, $0101
    ld bc, $4301
    ld b, e
    ld bc, $4301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $3001
    ld sp, $3332
    inc h
    dec h
    inc h
    dec h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld h, $27
    ld b, h
    ld b, h
    ld [hl], $37
    ld b, h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    jr z, @+$2b

    ld bc, $2801
    add hl, hl
    ld bc, $2801
    add hl, hl
    ld bc, $2801
    add hl, hl
    ld bc, $0101
    ld bc, $2928
    ld bc, $2801
    add hl, hl
    ld bc, $2801
    add hl, hl
    ld bc, $2801
    add hl, hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    ld bc, $1401
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld bc, $1401
    inc d
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
    ld bc, $0801
    add hl, bc
    ld bc, $0e01
    rrca
    ld bc, $2001
    ld hl, $0101
    jr @+$1b

    ld e, h
    ld e, l
    ld [bc], a
    inc bc
    db $10
    db $10
    ld [de], a
    inc de
    ld de, $1111
    ld de, $0101
    ld bc, $0201
    inc bc
    ld e, h
    ld e, l
    ld [de], a
    inc de
    db $10
    db $10
    ld de, $1111
    ld de, $0101
    ld bc, $0101
    ld bc, $1918
    ld bc, $1801
    add hl, de
    ld bc, $1801
    add hl, de
    ld bc, $1801
    add hl, de
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    db $10
    db $10
    ld c, b
    ld c, c
    ld de, $4a11
    ld c, e
    ld bc, $4e01
    ld c, a
    rla
    dec [hl]
    ld e, h
    ld e, l
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $0101
    ld bc, $0201
    inc bc
    rla
    dec [hl]
    ld [de], a
    inc de
    db $10
    db $10
    ld de, $1111
    ld de, $0101
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld de, $1111
    ld de, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [$0107], sp
    ld bc, $2524
    ld bc, $5001
    ld d, c
    ld bc, $5201
    ld d, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0801
    add hl, bc
    ld bc, $1801
    add hl, de
    ld bc, $1801
    add hl, de
    ld d, h
    ld d, l
    jr @+$1b

    ld d, [hl]
    ld d, a
    jr @+$1b

    ld bc, $2401
    dec h
    ld bc, $0101
    ld bc, $3938
    ld bc, $1501
    ld d, $18
    add hl, de
    ld de, $1801
    add hl, de
    ld de, $1801
    add hl, de
    ld de, $1801
    add hl, de
    ld de, $0101
    ld bc, $5554
    ld bc, $5601
    ld d, a
    ld bc, $5401
    ld d, l
    ld bc, $5601
    ld d, a
    ld bc, $0101
    ld bc, $0101
    ld bc, $5401
    ld d, l
    ld bc, $5601
    ld d, a
    ld bc, $0101
    ld bc, $5554
    ld bc, $5601
    ld d, a
    ld bc, $0101
    ld bc, $0101
    ld bc, $3801
    add hl, sp
    ld bc, $0501
    ld b, $01
    ld bc, $0605
    ld bc, $1501
    ld d, $01
    ld bc, $5d5c
    ld e, h
    ld e, l
    db $10
    db $10
    db $10
    db $10
    jr c, jr_02d_5db3

    jr c, jr_02d_5db5

    dec d
    ld d, $15
    ld d, $01
    ld bc, $3938
    ld bc, $0501
    ld b, $01
    ld bc, $0605
    ld bc, $1501
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $5958
    ld bc, $5a01
    ld e, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0907
    ld bc, $2401
    dec h
    ld bc, $0201
    inc bc
    rla

jr_02d_5db3:
    dec [hl]
    ld [de], a

jr_02d_5db5:
    inc de
    db $10
    db $10
    ld de, $1111
    ld de, $0101
    ld bc, $0701
    rlca
    ld [$2409], sp
    dec h
    jr jr_02d_5de1

    ld de, $1811
    add hl, de
    ld bc, $1801
    add hl, de
    ld bc, $0e01
    rrca
    ld bc, $2001
    ld hl, $0707
    jr jr_02d_5df5

    inc h
    dec h
    inc h
    dec h
    nop

jr_02d_5de1:
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
    rlca
    rlca
    rlca
    ld [hl], c
    ld [hl], c
    nop
    nop
    rlca

jr_02d_5df5:
    rlca
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
    sub b
    sub b
    sub b
    nop
    sub b
    sub b
    nop
    sub b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    sub b
    sub b
    sub b
    nop
    sub b
    sub b
    nop
    sub b
    sub b
    sub b
    rlca
    rlca
    sub b
    nop
    rlca
    rlca
    nop
    sub b
    sub b
    sub b
    nop
    nop
    rlca
    ld a, d
    nop
    nop
    rlca
    ld a, d
    nop
    nop
    rlca
    rlca
    nop
    sub b
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
    nop
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
    ld [hl], b
    ld [hl], b
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
    nop
    nop
    nop
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
    nop
    halt
    halt
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    sub b
    nop
    sub b
    rlca
    ld [hl], c
    nop
    nop
    ld [hl], c
    rlca
    nop
    nop
    nop
    sub b
    nop
    sub b
    rlca
    rlca
    nop
    sub e
    rlca
    rlca
    nop
    nop
    ld [hl], c
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
    sub b
    nop
    ld [hl], d
    nop
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    nop
    rlca
    sub b
    nop
    sub b
    nop
    nop
    nop
    nop
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
    ld [hl], d
    nop
    nop
    nop
    sub b
    nop
    rlca
    rlca
    nop
    nop
    sub b

jr_02d_5ed9:
    sub b
    nop
    sub b
    nop
    sub b
    sub b
    sub b
    db $e3
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
    ld [hl], b
    ld [de], a
    ld [hl], b
    ld [de], a
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_02d_5f23

jr_02d_5f23:
    nop
    nop
    ld b, h
    nop
    xor d
    ld l, h
    sub d
    jr z, jr_02d_5f80

    db $10
    ld l, h
    add $38
    ld l, h
    db $10
    xor b
    nop
    ld d, l
    jr nz, jr_02d_5ed9

    ld [$0014], sp
    xor d
    nop
    ld d, l
    ld [bc], a
    ld a, [bc]
    nop
    inc d
    nop
    nop
    nop
    ld b, c
    nop
    ld [$0000], sp
    nop
    add b
    nop
    ld bc, $0000
    nop
    ld b, b
    nop
    nop
    nop
    cp $00
    cp $00
    nop
    nop
    rst $28
    nop
    rst $28
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    xor d
    xor d
    ld [$8aea], a
    adc d
    adc h
    adc h
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    and h
    and h
    xor [hl]
    xor [hl]
    jp z, $acca

    xor h

jr_02d_5f80:
    and [hl]
    and [hl]
    db $dd
    jp nz, $c2dd

    db $dd
    jp nz, $c2dd

    ldh [$df], a
    rst $38
    rst $38
    ret nz

    cp a
    rst $38
    rst $38
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    inc bc
    rst $38
    rst $38
    rst $38
    inc bc
    db $fd
    rst $38
    rst $38
    db $dd
    jp nz, $c2dd

    db $dd
    jp nz, $c2dd

    db $dd
    jp nz, $c2dd

    db $dd
    jp nz, $c2dd

    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    ld a, a
    ld a, a
    ret nz

    ret nz

    db $dd
    jp nz, $c2dd

    db $dd
    jp nz, $c2dd

    db $dd
    jp nz, $c2dd

    rst $38
    rst $38
    nop
    nop
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    cp $fe
    rlca
    inc bc
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    ld l, a
    pop de
    db $fc
    ld [hl], e
    ld a, l
    and [hl]
    db $fd
    ld e, a
    rst $20
    sbc a
    push af
    db $db
    db $fc
    ld h, e
    rst $30
    sbc b
    nop
    cp $00
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    inc bc
    cp $0e
    rst $38
    and a
    db $fc
    sbc e
    cp $ed
    rst $38
    rst $10
    rst $38
    cpl
    cp $55
    rst $38
    ld c, $48
    ld c, $48
    ld e, $48
    cp [hl]
    ld c, b
    ld a, $c8
    ld [hl], $d8
    xor $f0
    cp $00
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    inc h
    rst $20
    inc h
    rst $20
    rst $20
    rst $20
    rst $38
    inc a
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    adc c
    adc c
    jp c, $abda

    xor e
    adc d
    adc d
    adc d
    adc d
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    scf
    scf
    xor d
    xor d
    or d
    or d
    xor d
    xor d
    xor d
    xor d
    ld [hl], b
    ld [de], a
    ld [hl], b
    ld [de], a
    ld [hl], b
    ld [de], a
    ld [hl], b
    ld [de], a
    ld [hl], b
    ld [de], a
    ld [hl], b
    ld [de], a
    ld [hl], b
    ld [de], a
    ld [hl], b
    ld [de], a
    xor d
    nop
    stop
    nop
    nop
    stop
    xor d
    nop
    ld bc, $0000
    nop
    ld bc, $0e00
    ld c, b
    ld c, $48
    ld c, $48
    ld c, $48
    ld c, $48
    ld c, $48
    ld c, $48
    ld c, $48
    rst $38
    cp $03
    cp $0f
    ld [bc], a
    rst $38
    cp $0f
    cp $ff
    cp $ff
    cp $0f
    cp $a9
    ld bc, $2256
    and d
    ld a, [bc]
    rla
    inc b
    cp a
    dec e
    ld l, l
    dec hl
    ld a, [hl-]
    ccf
    ld a, $27
    xor b
    add b
    push de
    ld h, b
    ld [c], a
    ld c, b
    inc [hl]
    ldh [$3a], a
    ld hl, sp+$15
    cp $5e
    db $fc
    db $e4
    db $fc
    rst $18
    cp d
    rst $18
    cp [hl]
    ei
    cp $f3
    cp $03
    ld a, $07
    ld c, $07
    rlca
    rlca
    rlca
    ld a, a
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    ret nz

    ld a, a
    rst $38
    ld [hl], b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    push de
    xor e
    ld b, h
    ld e, [hl]
    ld hl, sp-$1b
    db $fd
    ld a, [$fbfc]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    nop
    nop
    nop
    ld a, d
    ld a, d
    jp nz, $dbc2

    db $db
    ret


    ret


    ld a, c
    ld a, c
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld d, c
    ld d, c
    ld e, e
    ld e, e
    rst $18
    rst $18
    sub l
    sub l
    sub l
    sub l
    nop
    nop
    ld a, c
    rst $18
    ld a, c
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld b, b
    ld hl, sp+$60
    ldh a, [$e0]
    ldh [$e0], a
    ldh [rIE], a
    rst $38
    rst $38
    add c
    ret


    add c
    ret


    add c
    ret


    add c
    ret


    add c
    ret


    add c
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    ld a, a
    cp a
    ccf
    ld a, a
    cp a
    ccf
    ld a, a
    ld a, d
    cp a
    dec [hl]
    rst $18
    ld a, [$fdcf]
    rst $38
    db $fc
    cp $fc
    db $fd
    db $fd
    cp $fc
    rst $38
    xor h
    rst $38
    ld d, a
    ei
    xor a
    ld sp, hl
    inc e
    rst $38
    pop bc
    db $e3
    add d
    ret nz

    ld d, l
    add b
    ld l, d
    push bc
    ld [hl], l
    jp z, $c57a

    ccf
    ret nz

    inc e
    rst $38
    jp $80e7


    inc bc
    ld d, l
    inc bc
    dec hl
    add l
    push af
    dec bc
    ld a, [$be07]
    ld b, e
    xor d
    ld d, l
    ld d, [hl]
    xor e
    xor [hl]
    ld e, a
    ld d, a
    or h
    and [hl]
    ld h, h
    ld h, h
    pop hl
    jp $e542


    jp $ff1c


    pop bc
    db $e3
    add d
    nop
    ld d, l
    nop
    ld a, [hl+]
    add l
    push af
    ld a, [bc]
    ld a, [$bf05]
    ld b, b
    xor d
    ld d, l
    push de
    ld [$757a], a
    ld e, l
    ld a, [$ed3a]
    ld e, a
    or $7e
    db $eb
    db $fd
    rst $10
    ld h, e
    di
    sub h
    sub h
    sbc e
    sbc e
    push de
    or l
    jp c, $e6ba

    or [hl]
    rst $20
    xor [hl]
    db $d3
    or [hl]
    nop
    nop
    cp $00
    cp $00
    nop
    nop
    rst $28
    nop
    rst $28
    nop
    nop
    nop
    ld a, [hl]
    nop
    or h
    sbc h
    ld a, [c]
    adc [hl]
    ld a, [$7ece]
    add $7f
    pop hl
    ld a, a
    ldh a, [$7f]
    db $fc
    ld h, a
    rst $38
    inc bc
    inc bc
    rrca
    dec c
    dec sp
    add hl, sp
    db $db
    ret


    sbc e
    adc c
    sbc e
    adc c
    sbc e
    adc c
    sbc e
    adc c
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld [$00fd], sp
    rst $28
    sub b
    cp [hl]
    ld bc, $04fb
    rst $38
    ld b, b
    add hl, hl
    add hl, sp
    ld c, a
    ld [hl], c
    ld e, a
    ld [hl], e
    ld a, [hl]
    ld h, e
    rst $38
    add [hl]
    rst $38
    ld c, $ff
    ld a, $e7
    cp $c0
    ret nz

    or b
    ldh a, [$9c]
    call c, $dbb3
    or l
    reti


    or a
    reti


    or a
    reti


    or a
    reti


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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $18
    ld a, a
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [$50]
    rst $38
    ld d, b
    db $fd
    ld [bc], a
    rst $38
    cp $03
    cp $ff
    ld a, [$0a0f]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    ei
    ld c, $7f
    ld e, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld e, a
    ld [hl], b
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ret nz

    ld a, [$0afe]
    or $0a
    or $0a
    or $fa
    ld b, $02
    cp $fe
    cp $ff
    inc bc
    rst $30
    rst $08
    ret


    cp $72
    ld a, [hl]
    xor a
    xor h
    ld b, [hl]
    ld b, h
    push bc
    add b
    jp nz, $e186

    adc a
    db $eb
    nop
    sub [hl]
    ld b, c
    xor a
    nop
    rst $18
    nop
    ld a, d
    add l
    push af
    ld a, [bc]
    ld a, [$bf05]
    ld b, b
    ei
    xor a
    ld [hl], l
    rst $18
    ld a, e
    rst $28
    ld a, [hl]
    rst $30
    ld a, [hl+]
    rst $38
    ld d, [hl]
    rst $38
    ld l, e
    rst $38
    push de
    rst $38
    ret z

    rst $38
    ld d, d
    ld a, a
    or [hl]
    ccf
    ccf
    dec e
    ld a, a
    inc b
    ld a, [hl]
    ld [$06bb], sp
    ld c, a
    ld bc, $ff03
    ld c, e
    cp $ec
    db $fc
    dec a
    ld hl, sp+$7e
    and b
    ld a, [hl]
    sub b
    ld c, h
    ldh a, [$f1]
    nop
    db $e3
    rst $38
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
    sbc e
    adc c
    sbc e
    adc c
    sbc e
    adc c
    sbc e
    adc c
    sbc e
    adc c
    sbc e
    adc c
    sbc e
    adc c
    sbc e
    adc c
    rst $38
    rst $38
    jr c, jr_02d_6340

    adc a
    rrca
    add $87
    inc hl
    db $e3
    sub e
    di
    ld c, c
    ld [hl], c
    add hl, hl
    add hl, sp
    add $cf
    add hl, hl
    add hl, hl
    ld e, c
    ld e, c
    ld l, l
    ld l, e
    ld a, l
    ld e, e
    ld [hl], l
    ld l, a
    ld h, l
    rst $30
    ld c, c
    rst $28
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    push de
    xor e
    ld b, h
    ld e, [hl]
    sbc a
    daa
    ld e, a
    cp a
    ccf
    ld e, a
    ld a, a
    cp a

jr_02d_6340:
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp l
    ld b, b
    rst $30
    ld [$81fe], sp
    rst $18
    nop
    rst $38
    ld bc, $08f5
    cp a
    ld b, b
    xor e
    ret nz

    sub $81
    rst $28
    add b
    sbc a
    ret nz

    ld a, d
    push bc
    rst $10
    db $eb
    cp b
    rst $38
    rst $08
    rst $38
    ld [$9503], a
    ld b, e
    xor l
    inc bc
    db $dd
    inc bc
    ld a, d
    add l
    sub e
    rst $28
    cp l
    rst $38
    ld b, e
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    inc a
    rst $20
    inc h
    rst $20
    inc h
    rst $20
    nop
    rst $38
    nop
    call c, Call_02d_4644
    ld b, h
    ld b, l
    ld b, h
    ld a, [hl]
    ld h, h
    ld e, l
    ld b, h
    ld e, [hl]
    ld d, h
    ld e, a
    ld d, h
    ld a, a
    ld e, h
    ld a, a
    add l
    pop af
    ret c

    ld [c], a
    pop af
    add $5a
    push bc
    ld h, h
    jp c, Jump_02d_75aa

    ret c

    ccf
    rst $20
    rra
    ld e, h
    ld [c], a
    ld a, b
    inc a
    ld c, b
    inc a
    sub a
    ld a, h
    ld c, e
    cp h
    xor [hl]
    ld a, l
    ld e, [hl]
    rst $38
    ld sp, hl
    rst $20
    rst $38
    xor e
    ld d, l
    ld e, a
    cp e
    cpl
    ld e, [hl]
    or a
    ld a, [hl+]
    ld e, a
    ld e, h
    xor a
    jr @+$01

    ldh [$fe], a
    nop
    nop
    ccf
    ld a, a
    nop
    add b
    cp a
    cp a
    cp a
    and b
    and b
    xor l
    and b
    and l
    and b
    and b
    nop
    nop
    db $fc
    cp $00
    ld bc, $fdfd
    db $fd
    dec b
    dec b
    dec d
    dec b
    ld d, l
    dec b
    dec b
    rst $18
    cp d
    rst $10
    cp [hl]
    rst $18
    cp [hl]
    rst $18
    cp [hl]
    db $db
    cp [hl]
    rst $28
    cp [hl]
    rst $20
    xor [hl]
    db $d3
    or [hl]
    sbc e
    adc e
    sbc h
    adc a
    cp a
    cp a
    ret nz

    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, l
    db $db
    ld l, l
    ei
    ld a, l
    ei
    ld a, l
    ei
    ld e, l
    ei
    ld [hl], l
    rst $38
    ld h, l
    rst $30
    ld c, c
    rst $28
    rst $30
    reti


    scf
    ld sp, hl
    rst $38
    db $fd
    inc bc
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    call nc, $eaff
    rst $38
    push af
    rst $38
    ld [$fdff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    inc c
    di
    ldh a, [$ef]
    ld hl, $475c
    reti


    rst $08
    or d
    adc [hl]
    or h
    sbc h
    add e
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    nop
    ccf
    inc c
    sbc a
    ld [de], a
    di
    ld h, $e3
    add hl, hl
    pop hl
    dec e
    pop de
    ld c, $ee
    nop
    ld a, [c]
    ld [hl], h
    ld c, h
    ld [hl], h
    ld c, h
    ld [hl], h
    ld c, h
    ld [hl], h
    ld c, h
    jr c, jr_02d_64ea

    nop
    ld a, $00
    rst $38
    nop
    rrca
    jr c, jr_02d_64be

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld a, h
    rst $00
    rst $38
    inc e
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    cpl
    rra
    ld a, b
    ld a, $36
    ld a, l
    ld l, c
    cp $56
    ld a, l
    ld c, d
    rst $38
    ld sp, hl
    rst $30
    add sp, -$10
    ld a, d
    inc a
    ld l, h
    ld a, $97
    ld a, [hl]
    ld a, d
    cp a

jr_02d_64be:
    rst $00
    ld b, a
    add e
    add e
    reti


    add a
    and b
    cp a
    and b
    cp a
    ldh [$a0], a
    rst $38
    cp a
    ldh [$a0], a
    ldh [$bf], a
    ld b, b
    rst $38
    nop
    nop
    dec b
    db $fd
    dec b
    db $fd
    rlca
    dec b
    rst $38
    db $fd
    rlca
    dec b
    rlca
    db $fd
    ld [bc], a
    rst $38
    nop
    nop
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b

jr_02d_64ea:
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    jr nz, jr_02d_6535

    ccf
    jr nz, jr_02d_6538

    jr nz, jr_02d_6536

    inc h
    inc sp
    inc l
    inc hl
    inc a
    ld [hl+], a
    inc a
    jr nz, jr_02d_6540

    inc b
    db $fc
    db $fc
    inc b
    db $ec
    inc b
    call z, $8c04
    inc b
    inc b
    inc c
    inc e
    inc b
    inc h
    inc c
    call nc, $eac1
    and c
    db $dd
    sbc b
    rst $00
    add a
    ret nz

    add b
    pop bc
    add b
    pop bc
    add b
    ret nz

    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    adc a
    nop
    rra
    nop
    ccf
    nop
    db $fd

jr_02d_6535:
    ld [bc], a

jr_02d_6536:
    db $fd
    ld [bc], a

jr_02d_6538:
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    rst $38

jr_02d_6540:
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ei
    inc b
    rst $38
    rst $38
    ei
    inc b
    cp $04
    nop
    nop
    ld h, [hl]
    nop
    ld h, a
    ld bc, $0167
    ld bc, $6701
    ld bc, $0167
    ld h, a
    ld bc, $0000
    rst $38
    rst $38
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld e, d
    ld e, d
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $e3
    db $e3
    sub $d6
    sub $d6
    and $e6
    jp $2ec3


    ld e, b
    cp $fe
    ld bc, $9d01
    sbc l
    ld sp, $3131
    ld sp, $3131
    sbc l
    sbc l
    xor e
    ld a, a
    push de
    ld a, a
    reti


    ccf
    pop hl
    rst $38
    pop bc
    ccf
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    ld [bc], a
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $00
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    cp [hl]
    nop
    ld a, h
    nop
    nop
    rst $38
    push af
    nop
    db $eb
    nop
    rst $10
    nop
    adc a
    nop
    rra
    nop
    ld a, $00
    ld a, h
    nop
    inc b
    db $fc
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    inc c
    inc h
    jr c, jr_02d_6614

    jr nc, jr_02d_6628

    jr nz, jr_02d_6626

    inc h
    jr nc, jr_02d_661d

    jr nz, jr_02d_662f

    ld [hl+], a
    inc a
    ccf
    rst $38
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    jp nz, $7a00

    add l
    db $f4
    dec bc
    rla
    nop
    rst $38
    rst $38
    ld d, h
    inc c
    or h
    inc c
    ld [hl], h
    inc c
    db $f4
    inc c
    inc b
    db $fc
    inc b
    db $fc
    db $f4
    inc c
    db $fc
    rst $38

jr_02d_6614:
    ret nz

    add b
    ret nz

    add b
    pop bc
    add b
    pop bc
    add b
    pop bc

jr_02d_661d:
    add b
    pop bc
    add b
    call nc, $e880
    add d
    ld a, a
    nop

jr_02d_6626:
    rst $38
    nop

jr_02d_6628:
    rst $20
    nop
    rst $08
    nop
    sbc a
    nop
    nop

jr_02d_662f:
    ccf
    nop

jr_02d_6631:
    ld a, a
    nop
    rst $38
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    dec a
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc b
    db $fc
    nop
    push af
    nop
    rst $20
    nop
    ccf
    call nz, $cf30
    jr nz, jr_02d_6631

    nop
    rst $38
    ld bc, $ef01
    ld bc, $0101
    rst $38
    nop
    sbc c
    ld h, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    and l
    ld h, [hl]
    inc h
    rst $20
    rst $20
    rst $20
    rst $38
    inc a
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    and l
    ld h, [hl]
    inc h
    rst $20
    rst $20
    rst $20
    rst $38
    inc a
    ld bc, $0101
    ld a, l
    ld bc, $fe01
    cp $a6
    ld h, h
    ld h, $e4
    and $e4
    cp $3c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    xor c
    ld a, a
    push de
    ld a, a
    inc bc
    cp $07
    db $fc
    rrca
    ld a, [$f61b]
    inc sp
    xor $63
    sbc $c3
    cp [hl]
    inc bc
    cp $7f
    ld b, b
    ld a, a
    jr nz, jr_02d_6728

    ld d, b
    ld c, a
    ld l, b
    ld d, a
    ld h, h
    ld e, e
    ld h, d
    ld e, l
    ld h, c
    ld e, [hl]
    ld h, b
    ld c, d
    ld c, b
    ld d, $10
    ld [$16f8], a
    db $10
    xor $00
    cp $00
    cp $fe
    ld bc, $e301
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
    rrca
    add $06
    ldh [$c0], a
    ldh a, [$d5]
    ret nz

    dec hl
    jr nz, jr_02d_6718

    jr jr_02d_6704

    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_6704:
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld [bc], a

jr_02d_6718:
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld [bc], a

jr_02d_671d:
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
    rst $38

jr_02d_6728:
    nop
    rst $38
    nop
    rst $38
    ei
    inc b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    ld a, [hl]
    call nc, $d87c
    jr c, jr_02d_671d

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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$63]
    ld h, b
    rlca
    inc bc
    rrca
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    cp a
    ret nz

    cp a
    rst $38
    rst $38
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $fd03
    inc bc
    db $fd
    rst $38
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    xor $98
    db $ed
    sbc c
    ld [$ed9b], a
    sbc c
    ld [$eb9b], a
    sbc e
    ld de, $11ff
    rst $38
    ld a, l
    inc de
    cp l
    sub e
    ld e, l
    db $d3
    cp l
    sub e
    ld e, l
    db $d3
    db $dd
    db $d3
    ld [$ed9a], a
    sbc c
    ld [$ed9b], a
    sbc c
    xor $98
    rst $28
    sbc b
    rst $28
    sbc a
    ld [hl], b
    ld [hl], b
    ld e, l
    ld d, e
    cp l
    sub e
    ld e, l
    db $d3
    cp l
    sub e
    ld a, l
    inc de
    db $fd
    inc de
    db $fd
    di
    ld c, $0e
    ld d, d
    sub d
    ld l, b
    adc b
    ld d, a
    sbc a
    ld l, b
    adc b
    ld [hl], a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    add b
    add b
    and b
    nop
    ret nc

    nop
    add sp, $00
    db $f4
    nop
    ld a, [$fd00]
    nop
    cp $00
    rst $38
    add b
    dec b
    nop
    ld a, [bc]
    ld bc, $0314
    jr z, jr_02d_67e5

    ld d, b
    rrca

jr_02d_67e0:
    and b
    rra
    ld b, b
    ccf
    add c

jr_02d_67e5:
    ld a, a
    jr nz, jr_02d_67e0

    db $10
    cp $e8
    rrca
    ld d, $17
    db $eb
    ld sp, hl
    ld d, $f0
    ld c, d
    ld hl, sp-$06
    ld hl, sp+$3c
    jr jr_02d_6811

    nop
    nop
    add b
    nop
    ldh a, [$80]
    rst $38
    ldh a, [$7f]
    ld a, a
    rrca
    jr nc, jr_02d_6815

    nop
    nop
    nop
    nop
    inc a
    jr jr_02d_6825

    nop
    nop
    nop
    nop

jr_02d_6811:
    rst $38
    nop
    rst $38
    rst $38

jr_02d_6815:
    rst $38
    inc a
    jr jr_02d_6831

    nop
    nop
    ld bc, $0f00
    ld bc, $0eff
    rst $38
    ldh a, [rIE]
    nop

jr_02d_6825:
    rst $38
    inc b
    rra
    ld [$177f], sp
    ldh a, [rBCPS]
    add sp, -$69
    rst $18
    ld l, b

jr_02d_6831:
    adc a
    ld d, d
    sbc a
    ld e, a
    sbc a
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    add c
    rst $00
    add c
    adc e
    add c
    sub a
    add c
    xor a
    add c
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    add c
    push bc
    add c
    adc e
    add c
    sub a
    add c
    xor a
    add c
    rst $18
    add c
    or c
    adc a
    pop bc
    cp a
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
    rst $18
    add c
    rst $08
    or c
    add e
    db $fd
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
    ld b, h
    rst $38
    ld b, h
    rst $38
    push de
    ld c, [hl]
    push de
    ld c, [hl]
    push hl
    ld e, [hl]
    push bc
    ld e, [hl]
    push bc
    ld e, [hl]
    push bc
    ld e, [hl]
    push hl
    ld e, [hl]
    push de
    ld c, [hl]
    push de
    ld c, [hl]
    push de
    ld c, [hl]
    rst $20
    rst $18
    ld b, h
    ld e, h
    ld b, h
    ld e, h
    jr c, jr_02d_68ce

    ld e, a
    ld h, b
    ccf
    jr nz, jr_02d_68ba

    db $10
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    daa
    jr c, @+$31

    jr nc, @+$41

    jr nz, jr_02d_68ec

    ccf
    ccf
    jr nz, jr_02d_68f0

    ccf
    ldh [$e0], a
    nop
    nop
    add b
    ld a, a
    nop
    rst $38

jr_02d_68ba:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc b
    db $fc
    inc b
    db $fc
    db $f4
    inc c
    db $fc
    db $fc

jr_02d_68ce:
    db $fc
    inc b
    db $fc
    db $fc
    rlca
    rlca
    nop
    nop
    ld [bc], a
    cp $04
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld c, h

jr_02d_68e9:
    ld [$101a], sp

jr_02d_68ec:
    inc a
    jr nz, jr_02d_68e9

    ld b, b

jr_02d_68f0:
    db $fc
    add b
    ld a, [$fc80]
    add b
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
    db $fd
    db $fc
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    nop
    nop
    nop
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
    nop
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    ld d, l
    nop
    cp a
    ld a, a
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    ldh a, [$f0]
    add hl, hl
    jr jr_02d_699f

    inc c
    ld [hl-], a
    ld c, $51
    rrca
    ld sp, $510f
    rrca
    ld sp, $fa0f
    add b
    db $fc
    add b
    ld a, [$fc80]
    add b
    ld a, [$fd80]
    add b
    cp $80
    rst $38
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
    add b
    nop
    ld b, b
    nop
    dec b
    inc b
    dec c
    inc c
    dec c
    inc c
    dec d
    inc d
    dec d
    ld d, $17
    ld d, $15
    rla
    dec d
    ld d, $a0
    ld h, b
    or b
    ld [hl], b
    or b
    ld [hl], b
    xor b
    ld l, b
    xor b
    ld l, b
    add sp, $68
    xor b
    add sp, -$58
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_699f:
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld d, c
    rrca
    ld sp, $510f
    rrca
    ld sp, $510f
    rrca
    and c
    rra
    ld b, c
    ccf
    add c
    ld a, a
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
    nop
    rst $38
    rst $38
    rst $38
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ret nc

    ld d, b
    ld d, b
    ret nc

    and b
    and b
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    rrca
    inc c

jr_02d_69e9:
    inc bc
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    adc a
    add b
    ld c, a
    ld b, b
    cpl
    jr nz, jr_02d_6a1c

    db $10
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    rrca
    ld a, [c]
    ld c, $f4
    inc c
    ld hl, sp+$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr nc, jr_02d_69e9

    ldh a, [rIF]

jr_02d_6a1c:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [de]
    cp a
    and l
    db $eb
    ld b, d
    sub $ed
    xor h
    cp h
    ld d, [hl]
    or $ab
    db $dd
    rst $30
    ld [$a8bd], a
    add sp, $14
    cp [hl]
    cp b
    db $fd
    ld l, h
    ld l, [hl]
    ld b, e
    call nc, $eaa1
    ld e, b
    cp h
    xor [hl]
    db $fc
    cp l
    cp a
    sbc [hl]
    jp nz, $fec3

    rst $38
    cp a
    ret c

    rst $30
    cp a
    rst $38
    ld b, e
    cp $3f
    ld a, a
    db $fc
    db $f4
    or $0c
    ld c, $fc
    db $f4
    db $fc
    rst $08
    cp h
    rst $30
    db $fc
    ld [$f6fc], sp
    ld hl, sp-$01
    nop
    cp l
    ld a, [hl]
    rst $20
    ld b, d
    jp $c342


    ld b, d
    jp $e742


    ld b, d
    cp l
    ld a, [hl]
    nop
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    nop
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    db $76
    jr @+$74

    inc e
    ld [hl], d
    inc e
    db $76
    jr @+$78

    jr @+$74

    inc e
    ld [hl], d
    inc e
    db $76
    jr @+$70

    jr jr_02d_6ae7

    jr c, jr_02d_6ae9

    jr c, jr_02d_6b0b

    jr jr_02d_6b0d

    jr jr_02d_6aef

    jr c, jr_02d_6af1

    jr c, jr_02d_6b13

    jr jr_02d_6aa7

jr_02d_6aa7:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $76
    jr jr_02d_6b2b

    inc e
    ld [hl], d
    inc e
    ld [hl], a
    jr jr_02d_6b30

    ld e, $68
    rra
    ld [hl], a
    rrca
    ld a, a
    nop
    inc b
    inc b
    ld a, [$be0e]
    ld b, h
    nop
    and b
    xor h
    ld b, d
    add sp, $05
    inc b
    ld a, [bc]
    ld a, d
    inc b
    nop
    nop
    xor $00
    nop
    nop
    rst $38
    nop
    sbc c
    ld h, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_02d_6ae7:
    nop
    nop

jr_02d_6ae9:
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_6aef:
    nop
    nop

jr_02d_6af1:
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

jr_02d_6b0b:
    dec b
    dec b

jr_02d_6b0d:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_02d_6b13:
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

jr_02d_6b2b:
    dec b
    dec b
    inc bc
    dec b
    inc bc

jr_02d_6b30:
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
    inc de
    dec d
    inc de
    dec d
    inc de
    dec d
    inc de
    dec d
    ld a, $3f
    ld a, $3f
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
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
    ld sp, $3232
    ld [hl-], a
    ld b, c
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, c
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, h
    ld d, d
    ld d, d
    ld d, d
    ld d, h
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
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    ld b, $00
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    ld e, d
    ld e, d
    ld b, b
    ld b, b
    ld e, c
    ld e, c
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    ld b, b
    ld b, b
    ld e, d
    ld e, d
    ld b, b
    ld b, b
    ld e, c
    ld e, c
    nop
    nop
    ld b, b
    ld b, b
    ld b, $00
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
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
    jr c, jr_02d_6c36

    ld [bc], a

jr_02d_6c36:
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
    jr c, jr_02d_6c56

    ld [bc], a

jr_02d_6c56:
    add hl, sp
    ld a, [hl-]
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    scf
    jr c, @+$09

    rlca
    add hl, sp
    ld a, [hl-]
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1111
    dec c
    ld c, $0e
    ld c, $0d
    ld c, $0e
    ld c, $0a
    dec bc
    dec bc
    dec bc
    ld de, $1111
    ld [de], a
    ld c, $0e
    ld c, $0f
    ld c, $0e
    ld c, $0f
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
    jr c, jr_02d_6c96

    ld [bc], a

jr_02d_6c96:
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
    jr c, jr_02d_6cde

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
    ld c, $0e

jr_02d_6cde:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    jp c, $dcdc

    call c, $d8da
    ret c

    ret c

    jp c, $d9d9

    reti


    db $dd
    rst $18
    rst $18
    rst $18
    ld l, $56
    ld b, d
    ld b, e
    ld d, b
    jr nc, @+$35

    ld d, e
    ld d, b
    ld hl, $531d
    ld d, b
    ld h, $26
    ld d, e
    ld d, b
    ld hl, $531d

jr_02d_6d0c:
    ld d, b
    ld h, $26
    ld d, e
    ld d, b
    ld hl, $531d
    ld d, b
    ld h, $26
    ld d, e
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld h, $26
    ld h, $26
    rlca
    rlca
    rlca
    rlca
    call c, $dcdc
    call c, $d9d9
    ret c

    ret c

    scf
    jr c, jr_02d_6d0c

    reti


    add hl, sp
    ld a, [hl-]
    rst $18
    rst $18
    ld d, b
    ld hl, $531d
    ld d, b
    ld h, $26
    ld d, e
    ld d, b
    ld hl, $211d
    ld d, b
    ld h, $26
    ld h, $2e
    ld d, [hl]
    ld b, d
    ld b, e
    dec e
    jr nc, @+$35

    ld d, e
    dec e
    ld hl, $531d
    ld h, $26
    ld h, $53
    ld a, [de]
    rlca
    rlca
    rlca
    ld a, [de]
    rlca
    rlca
    rlca
    ld a, [de]
    ld h, $26
    ld h, $1a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc e
    rlca
    rlca
    rlca
    inc e
    ld h, $26
    ld h, $1c
    rlca
    rlca
    rlca
    inc e
    ld d, b
    ld hl, $211d
    ld d, b
    ld h, $26
    ld h, $50
    ld hl, $211d
    ld d, b
    ld h, $26
    ld h, $1d
    ld hl, $531d
    ld h, $26
    ld h, $53
    dec e
    ld hl, $531d
    ld h, $26
    ld h, $53
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
    rlca
    rlca
    ld bc, $0202
    ld [bc], a
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
    ld d, b
    ld hl, $211d
    ld d, b
    ld d, e
    dec [hl]
    dec [hl]
    ld d, b
    ld d, e
    dec [hl]
    dec [hl]
    jr nz, jr_02d_6deb

    ld b, $06
    dec e
    ld hl, $531d
    ld d, b
    ld hl, $531d
    ld d, b
    ld hl, $531d
    jr nz, jr_02d_6df7

    dec e
    dec h
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
    ld e, b
    ld e, b
    ld e, b

jr_02d_6deb:
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

jr_02d_6df7:
    inc d
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b

Jump_02d_6e00:
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
    rlca
    rlca
    rlca
    inc e
    rlca
    rlca
    rlca
    inc e
    jr jr_02d_6e3b

    rlca
    inc e
    rla
    rla
    ld [bc], a
    ld d, $58
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

jr_02d_6e3b:
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
    dec b
    dec b
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld e, d
    ld e, d
    ld e, [hl]
    ld e, a
    ld e, c
    ld e, c
    nop
    nop
    ld e, d
    ld e, d
    ld b, $00
    ld e, c
    ld e, c
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    ld e, $1f
    ld e, $1f
    ld a, $3f
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
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    ld c, e
    ld c, b
    ld c, e
    ld c, b
    add hl, hl
    ld a, [hl+]
    ld d, l
    ld d, a
    ld c, e
    ld c, b
    dec [hl]
    dec [hl]
    add hl, hl
    ld a, [hl+]
    dec b
    dec b
    ld b, a
    ld c, b
    dec b
    dec b
    add hl, hl
    ld a, [hl+]
    dec b
    dec b
    ld b, a
    ld c, b
    dec b
    dec b
    dec sp
    ld c, h
    ld e, e
    ld e, e
    ld c, e
    ld c, h
    ld e, e
    ld e, e
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, h
    dec a
    dec b
    dec b
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
    dec b
    dec b
    call c, $dcdc
    db $db
    ret c

    ret c

    ret c

    db $db
    add a
    adc b
    adc c
    adc d
    sub a
    sbc b
    sbc c
    sbc d
    ld e, h
    ld c, h
    ld c, h
    ld c, h
    dec a
    inc d
    inc d
    inc d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    inc d
    inc d
    inc d
    inc d
    ld e, d

Jump_02d_7101:
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld c, l
    inc d
    inc d
    dec sp
    inc d
    inc d
    inc d
    dec sp
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, h
    ld c, h
    ld c, h
    ld e, l
    dec a
    inc d
    inc d
    dec sp
    dec a
    inc d
    inc d
    dec sp
    dec a
    inc d
    inc d
    dec sp
    ld b, $06
    db $10
    ld de, $0606
    ld a, [bc]
    dec bc
    ld b, $06
    ld a, [de]
    dec de
    ld b, $06
    ld bc, $0602
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $4e
    ld c, a
    ld b, $06
    ld e, [hl]
    ld e, a
    ld b, $06
    call nc, $2fd5
    sbc $d6
    rst $10
    sbc $2f
    call nc, $2fd5
    sbc $d6
    rst $10
    cpl
    cpl
    db $10
    ld de, $1211
    ld a, [bc]
    dec bc
    dec bc
    inc c
    ld a, [de]
    dec de
    dec de
    inc e
    ld bc, $0202
    ld d, $3b
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    dec b
    dec hl
    inc l
    inc l
    dec hl
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    inc l
    inc l
    dec l
    dec b
    inc a
    inc a
    dec a
    dec l
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    ld c, e
    ld c, h
    ld c, h
    ld c, e
    ld c, h
    ld c, h
    ld c, h
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
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
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld c, h
    ld c, h
    inc a
    inc a
    ld c, h
    dec sp
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld c, h
    ld c, h
    inc a
    inc a
    dec a
    ld c, h
    inc l
    inc l
    inc l
    inc l
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld c, h
    ld c, h
    ld b, l
    ld [hl+], a
    ld c, h
    ld c, h
    daa
    jr z, jr_02d_7264

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
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld c, [hl]
    ld c, a
    cpl
    cpl

jr_02d_7264:
    ld e, [hl]
    ld e, a
    cpl
    cpl
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld e, d
    ld e, d
    ld c, [hl]
    ld c, a
    ld e, c
    ld e, c
    ld e, [hl]
    ld e, a
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
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld a, [de]
    dec de
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    inc e
    dec de
    dec de
    dec de
    inc e
    dec de
    dec de
    dec de
    inc e
    dec de
    dec de
    dec de
    inc e
    ld [hl], $36
    ld [hl], $36
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_02d_730e

    jr jr_02d_7310

    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop

Jump_02d_7301:
    nop

Call_02d_7302:
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

jr_02d_730e:
    rlca
    rlca

jr_02d_7310:
    rlca
    rlca
    rlca
    rlca
    halt
    halt
    nop
    nop
    rlca
    ld [hl], b
    nop
    nop
    ld [hl], b
    rlca
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
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    dec d
    dec d
    nop
    nop
    daa
    daa
    daa
    add hl, hl
    daa
    daa
    add hl, hl
    add hl, hl
    daa
    daa
    add hl, hl
    daa
    rlca
    rlca
    rlca
    rlca
    daa
    add hl, hl
    daa
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    daa
    add hl, hl
    daa
    dec d
    nop
    nop
    nop
    daa
    add hl, hl
    daa
    daa
    add hl, hl
    add hl, hl
    daa
    daa
    add hl, hl
    daa
    daa
    daa
    nop
    nop
    dec d
    dec d
    nop
    nop
    rlca
    nop
    dec d
    dec d
    rlca
    rlca
    nop
    rlca
    nop
    nop
    dec d
    dec d
    dec d
    dec d
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
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop

Call_02d_7401:
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
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    and e
    and e
    rlca
    rlca
    and e
    and e
    rlca
    rlca
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    and e
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    ld a, e
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    add hl, hl
    add hl, hl
    rlca
    rlca
    add hl, hl
    add hl, hl
    rlca
    rlca
    add hl, hl
    add hl, hl
    rlca
    rlca
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
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
    rlca
    ld a, e
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
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
    ld l, a
    ldh [rNR52], a
    rst $38
    nop
    db $ed
    ld [de], a
    ld a, a
    add b
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    xor a
    ld d, b
    rst $38
    nop
    ccf
    rst $38
    ld d, l
    ret nz

    cp a
    add b
    db $fc
    add b
    cp b
    add b
    ld hl, sp-$80
    db $fd
    add b
    ld [c], a
    add b
    db $fc
    rst $38
    ld a, [$fd07]
    inc bc
    ld a, l
    ld b, h
    inc bc
    dec a
    dec bc
    ld a, l
    inc bc
    adc l
    inc bc
    rst $38
    ld d, l
    xor d
    rst $38
    nop
    inc sp
    nop
    inc sp
    and a
    add e
    jr nc, @+$01

    ld b, $1f
    ld [hl], c
    ld h, b
    cp a
    rst $38
    or c
    ldh [$85], a
    add e
    ld [hl+], a
    rst $38
    dec b
    ld e, $fb
    pop hl
    cp a
    rst $38
    cp e
    add [hl]
    add e
    ld [bc], a
    rst $38
    rst $38
    ret nz

    ld b, h
    cp a
    rst $38
    ld b, e
    jp hl


    xor c
    inc bc
    rst $38
    cp a
    ret nz

    cp a
    and a
    adc a
    inc bc
    rst $38
    db $fd
    rst $38
    add l
    and l
    adc a
    ldh [rWX], a
    rst $38
    rst $38
    sub a
    nop
    ld bc, $06ff
    cp $fb
    ld sp, hl
    xor [hl]
    and [hl]
    sbc h
    sbc b
    add b
    add b
    rst $38
    rst $38
    rst $28
    ld h, h
    cp b
    sbc a
    ldh [$7f], a
    rst $38
    rst $38
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld a, [hl-]
    dec sp
    ld a, a
    adc [hl]
    sub e
    ld [hl], c
    db $fd
    rla
    ld a, a
    sbc a
    cp [hl]
    ld c, a
    cp l
    ld b, d
    call $f632
    add hl, bc
    ld a, e
    add h
    sbc l
    ld h, d
    cp $1d
    ld h, a
    and d
    cp e
    ld l, [hl]
    cp [hl]
    ld a, a
    call c, $f63f
    add hl, bc
    rst $38
    ld [hl], $dd
    ld c, c
    ld c, c
    rst $38
    ret


    ld a, a
    or $3f
    cp $01
    add e
    nop
    inc e
    nop
    rst $38
    add e
    add d
    inc b
    rst $38

Jump_02d_75aa:
    rst $30
    rst $38
    rst $20
    rst $38
    ld b, e
    rst $30
    rst $28
    ld bc, $ffff
    ld h, c
    ld [bc], a
    ld sp, hl
    nop
    sbc a
    ld h, d
    ld bc, $ffaa
    and e
    add c
    ldh [rNR42], a
    ld h, h
    sbc e
    jp nz, $c0bf

    xor a
    jp nc, $e4af

    rst $18
    ret nz

    cp a
    ret nc

    cp a
    jp nc, $a4af

    rst $18
    pop bc
    add b
    ret nz

    add b
    pop hl
    add b
    di
    add b
    rst $38
    add b
    cp a
    ret nz

    ld b, b
    rst $38
    ccf
    rst $38
    ld b, e
    dec b
    inc bc
    rlca
    dec c
    inc bc
    sbc l
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    and d
    adc a
    xor h
    nop
    ld b, e
    inc bc
    ld d, l
    rst $38
    rst $38
    xor d
    add e
    rst $38
    dec b
    and $19
    ld a, e
    add h
    cp e
    ld b, h
    add l
    nop
    jp z, $8002

    add b
    add b
    inc h
    rst $38
    ld bc, $e1b3
    ld b, e
    xor l
    di
    ld bc, $bfff
    add e
    nop
    dec c
    dec b
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    adc a
    ld b, e
    rlca
    rst $38
    inc c
    rst $38
    rst $38
    cp a
    rst $38
    xor a
    ldh a, [$af]
    ld a, [c]
    xor a
    pop af
    and b
    rst $38
    cp a
    add e
    nop
    ld a, a
    nop
    ld a, a
    xor a
    adc a
    ldh [$30], a
    add b
    rst $38
    sbc c
    rst $38
    xor l
    rst $20
    cp h
    rst $20
    sbc c
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    xor d
    rst $38
    dec sp
    rst $28
    xor c
    db $fd
    xor e
    db $fd
    add hl, sp
    rst $28
    cp e
    rst $38
    ld [bc], a
    rst $38
    db $fd
    rst $38
    xor e
    cp $7b
    adc b
    sbc l
    ld a, [hl]
    cp $39
    ld [hl], a
    db $fc
    xor a
    ld a, d
    or a
    ld c, l
    jp z, $f637

    add hl, bc
    sbc c
    ld b, h
    rst $38
    add c
    dec bc
    rst $38
    rst $38
    cp e
    ld b, h
    sub l
    ld b, b
    db $ed
    dec sp
    or $09
    ret nz

    cp a
    and e
    nop
    sub a
    nop
    xor c
    and e
    nop
    sbc b
    nop
    rst $38
    add e
    push hl
    nop
    ld bc, $d5c3
    inc bc
    rst $38
    dec d
    rst $38
    dec b
    and [hl]
    adc a
    rlca
    rst $38
    inc a
    and $e6
    cp l
    db $fd
    and l
    push hl
    add l
    add e
    ld bc, $ffff
    add l
    ld bc, $0761
    pop hl
    di
    cp a
    rst $38
    cp a
    pop hl
    rst $38
    cp a
    add h
    adc l
    nop
    nop
    adc e
    ld bc, $e054
    ld hl, $ff3f
    ld e, a
    ret nz

    and [hl]
    sbc c
    cp e
    add h
    ei
    add h
    db $fd
    add d
    adc l
    or d
    or [hl]
    adc c
    db $fc
    rst $38
    cp $03
    push hl
    dec de
    ld a, c
    add a
    cp c
    ld b, a
    cp l
    ld b, e
    call $f533
    dec bc
    rst $38
    rst $38
    add e
    or d
    add hl, bc
    ld b, l
    rst $38
    and $df
    ld h, l
    rst $18
    cp d
    rst $38
    ld d, l
    rst $38
    and l
    adc a
    add hl, bc
    ld h, e
    rst $38
    or d
    rst $28
    ld [hl], e
    rst $28
    cp [hl]
    rst $38
    ld d, l
    rst $38
    add e
    ld bc, $0071
    or a
    ld b, [hl]
    ld l, a
    daa
    add e
    nop
    cp $a2
    pop hl
    ld b, h
    rst $38
    daa
    inc bc
    db $fd
    daa
    dec h
    daa
    and e
    rst $28
    inc b
    rst $18
    ldh [$f0], a
    cp a
    xor a
    ld b, h
    rst $28
    cp [hl]
    dec b
    cp a
    xor $bf
    db $ec
    cp a
    rst $28
    xor a
    adc a
    db $10
    add b
    ld a, a
    rst $38
    nop
    add b
    nop
    rst $38
    nop
    add b
    ld a, a
    add c
    ld a, [hl]
    adc c
    db $76
    add l
    ld a, d
    nop
    call nz, Call_02d_7401
    add e
    adc a
    dec b
    add b
    rst $38
    and b
    rst $18
    ld b, b
    cp a
    adc e
    adc a
    inc bc
    add b
    rst $38
    add c
    cp $84
    ld bc, $8aea
    ld bc, $af7f
    adc a
    and [hl]
    ld bc, $0860
    rlca
    db $fd
    rst $38
    dec b
    rlca
    db $fd
    rlca
    rst $38
    db $fd
    and l
    ld [bc], a
    add d
    ld [bc], a
    db $e4
    db $e4
    cp a
    jp Jump_02d_6e00


    ld [bc], a
    add b
    rst $38
    rst $38
    adc a
    ld bc, $0350
    cp e
    add h
    db $dd
    and d
    add e
    ld [bc], a
    inc [hl]
    ld [bc], a
    cp e
    add h
    cp l
    add h
    ld [bc], a
    dec sp
    inc bc
    ld a, c
    add a
    sbc l
    ld h, e
    adc e
    ld [bc], a
    ld b, h
    and e
    ld [bc], a
    ld e, [hl]
    ld bc, $55aa
    xor c
    add c
    add e
    ld bc, $8d40
    nop
    ld b, h
    rlca
    add h
    rst $38
    rst $38
    db $fc
    db $fc
    add h
    add a
    add a
    call nz, Call_02d_7302
    and e
    ld [bc], a
    inc de
    add e
    add e
    ld [bc], a
    cp a
    cp l
    add a
    and l
    rst $28
    ld b, $bb
    db $ec
    cp a
    rst $28
    cp e
    db $ec
    cp l
    ld b, e
    rst $28
    rst $38
    ld [bc], a
    rst $38
    ret nz

    rst $38
    and l
    adc a
    ld [bc], a
    db $fd
    rst $30
    sbc l
    xor b
    adc a
    ldh [$2b], a
    add e
    ld a, h
    and c
    ld e, [hl]
    sbc c
    ld h, [hl]
    add a
    ld a, b
    add b
    ld a, a
    xor d
    ld d, l
    sub l
    ld l, d
    add b
    ld a, a
    add e
    db $fc
    adc a
    ldh a, [$1f]
    ldh [$5f], a
    and b
    ld b, b
    cp a
    ld l, d
    sub l
    push de
    xor d
    add b
    rst $38
    ld b, l
    cp d
    ld [hl], e
    adc h
    ld a, c
    add [hl]
    ld a, e
    add h
    add c
    cp $aa
    ld d, l
    add d
    adc a
    and h
    ld bc, $09ef
    cp a
    ld [$eaba], a
    xor d
    ld [$efaf], a
    cp a
    rst $38
    add l
    ld bc, $43ee
    db $fd
    sub a
    inc bc
    sub l
    sub a
    sbc l
    sbc a
    add e
    ld bc, $0df2
    db $dd
    ld a, $e7
    ld [hl+], a
    ei
    ld h, $eb
    ld [hl], $ff
    rst $38
    rst $08
    jr nc, @-$03

    inc c
    add e
    inc bc
    ld a, l
    ld bc, $3ee3
    add e
    adc a
    rlca
    db $eb
    ld [hl], $32
    rst $28
    sbc [hl]
    ld a, a
    pop bc
    ld a, $9f
    inc bc
    jr nc, jr_02d_7835

    ld d, l
    xor d
    xor d
    nop
    ld a, [hl+]
    add b
    cp e
    nop
    ld a, [hl+]
    add b
    xor d
    nop
    ld a, a
    add b
    xor d

jr_02d_7835:
    nop
    add e
    adc a
    ld [bc], a
    xor d
    nop
    cp e
    jp $0281


    nop
    rst $38
    nop
    add h
    adc a
    ld e, $01
    xor e
    nop
    cp d
    ld bc, $00ab
    xor d
    ld bc, $00ff
    xor d
    ld bc, $bfc0
    rst $18
    cp a
    ret nc

    or b
    rst $10
    ldh a, [$d7]
    or b
    sub $b1
    call nc, $94b3
    di
    ret nz

    cp a
    add h
    inc bc
    ld a, d
    ld [$0700], sp
    ld hl, sp+$1e
    pop hl
    inc c
    di
    ld [$87f7], sp
    adc a
    ldh [rNR42], a
    rst $38
    nop
    inc a
    jp $f708


    nop
    rst $38
    jp nz, $f8bf

    rst $38
    ld a, [bc]
    rrca
    db $ec
    rrca
    add sp, $0f
    ld l, b
    adc a
    ld a, [hl+]
    rst $08
    inc l
    rst $08
    nop
    rst $38
    cp $01
    nop
    ld bc, $01ff
    add c
    ld a, a
    ld b, l
    add c
    rst $38
    ld e, $00
    add b
    ret nz

    rst $38
    and b
    rst $38
    ret nc

    rst $38
    jp hl


    rst $38
    rst $30
    cp $fb
    db $fc
    ld [c], a
    rst $38
    ld bc, $0700
    rst $38
    dec de
    ld sp, hl
    ld l, a
    db $e3
    cp e
    adc a
    rst $28
    ccf
    or c
    rst $38
    pop af
    ld b, e
    rst $38
    nop
    ld b, [hl]
    add c
    nop
    dec b
    ld c, $85
    ld a, [bc]
    adc e
    ld c, $85
    xor a
    adc a
    ld [bc], a
    rst $38
    rst $38
    sub a
    add h
    xor $02
    rst $38
    rst $38
    db $ec
    add [hl]
    add a
    inc b
    nop
    rst $38
    rst $38
    rst $38
    ld d, l
    xor b
    add c
    ld [bc], a
    pop hl
    cp a
    pop hl
    ld b, e
    or a
    db $ed
    nop
    cp a
    add e
    nop
    ld a, e
    ld [bc], a
    cp a
    ret nz

    ld a, a
    and e
    adc a
    ld [bc], a
    db $dd
    or a
    db $dd
    xor c
    adc a
    ld [bc], a
    ld a, [hl+]
    add b
    xor $88
    inc b
    ld b, a
    ld b, $2a
    add b
    xor d
    ld d, l
    xor d
    nop
    xor $88
    inc b
    ld d, a
    ld b, $aa
    nop
    xor d
    ld d, l
    xor e
    nop
    xor $88

jr_02d_7910:
    inc b
    ld h, a
    dec b
    xor e
    nop
    xor d
    ld d, l
    call nc, $43b3
    sub $b1
    rrca
    call nc, $d4f3
    or e
    ret nc

    or b
    rst $18
    cp a
    and h
    rst $18
    ld [$1cf7], sp
    db $e3
    ld [bc], a
    db $fd
    rst $00
    inc b
    sbc c
    dec b
    and h
    rst $18
    nop
    rst $38
    jr @-$17

    add e
    inc b
    adc h
    add a
    adc a
    ld b, $2a
    rst $08
    jr z, jr_02d_7910

    ld a, [hl+]
    rst $08
    inc c
    ld b, e
    rst $28
    ld [$0f0a], sp
    ld a, [$a4ff]
    rst $18
    ld de, $b5ef
    rr c
    rst $20
    ld b, e
    sub c
    rst $28
    rrca
    add hl, hl
    rst $10
    push de
    xor e
    add c
    rst $38
    adc e
    rst $38
    cpl
    rst $38
    or c
    rst $38
    rst $10
    ld sp, hl
    or a
    ld sp, hl
    add e
    add e
    ld bc, $ffd1
    ld b, e
    add hl, de
    rst $30
    ld b, e
    reti


    scf
    rlca
    rst $18
    scf
    db $dd
    dec a
    rst $30
    ld [hl], l
    rst $38
    push de
    add e
    inc b
    or $00
    ld h, [hl]
    ld b, e
    add c
    ld b, d
    dec b
    cp l
    ld h, [hl]
    sbc c
    nop
    add c
    nop
    rst $00
    nop
    push af
    ld [bc], a
    rst $38
    xor d
    ld d, l
    call nz, $0085
    rst $38
    rst $28
    rst $38
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
    nop
    nop
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
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld de, $1111
    ld de, $1111
    ld de, $0a11
    dec bc
    ld d, b
    ld d, b
    ld a, [de]
    dec de
    ld d, b
    ld d, b
    ld b, $07
    rlca
    jr nz, jr_02d_79e3

    rla
    rla
    jr nc, jr_02d_79f2

    daa
    daa
    jr z, @+$33

    scf
    scf
    jr c, jr_02d_79ea

    ld de, $1111
    ld de, $1111
    ld de, $5050
    ld d, b

jr_02d_79e3:
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, h
    ld b, l

jr_02d_79ea:
    ld b, l
    ld b, [hl]
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, l
    ld b, [hl]

jr_02d_79f2:
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    db $10
    db $10
    db $10
    db $10
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    db $10
    db $10
    db $10
    db $10
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    ld bc, $1401
    inc d
    db $10
    db $10
    db $10
    db $10
    ld bc, $0101
    ld bc, $0404
    ld bc, $1401
    inc d
    ld bc, $1101
    ld de, $1111
    ld de, $1111
    ld de, $5050
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld de, $1111
    ld de, $1111
    ld de, $2311
    ld [hl+], a
    ld [hl+], a
    inc h
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    ld b, h
    ld b, l
    inc hl
    ld [hl+], a
    ld d, h
    ld d, l
    ld b, d
    dec d
    ld [bc], a
    inc bc
    ld b, d
    dec d
    ld [de], a
    inc de
    inc sp
    ld [hl-], a
    ld [hl+], a
    inc h
    ld [bc], a
    inc bc
    dec d
    ld b, e
    ld [de], a
    inc de
    dec d
    ld b, e
    ld b, h
    ld b, l
    ld [hl-], a
    inc [hl]
    ld d, h
    ld d, l
    inc hl
    inc h
    ld d, c
    ld h, $33
    inc [hl]
    ld d, l
    ld d, [hl]
    dec h
    ld h, $44
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    dec h
    ld d, c
    ld d, c
    ld h, $54
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld [bc], a
    inc bc
    ld b, l
    ld b, [hl]
    ld [de], a
    inc de
    ld d, l
    ld d, [hl]
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld de, $1111
    ld de, $1111
    ld de, $2311
    ld [hl+], a
    ld [hl+], a
    inc h
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    ld b, h
    ld b, l
    ld [bc], a
    inc bc
    ld d, h
    ld d, l
    ld [de], a
    inc de
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    dec l
    ld c, e
    ld b, l
    ld b, [hl]
    dec a
    ld e, e
    ld d, l
    ld d, [hl]
    ld d, c
    ld h, $44
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    inc hl
    inc h
    ld b, l
    ld b, [hl]
    ld b, d
    ld b, e
    ld d, l
    ld d, [hl]
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    inc sp
    inc [hl]
    ld d, h
    ld d, l
    inc hl
    inc h
    ld de, $2911
    ld a, [hl+]
    inc hl
    inc h
    add hl, sp
    ld a, [hl-]
    ld a, $3f
    ld d, d
    ld d, e
    jr jr_02d_7b01

    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld b, h
    ld b, l
    dec hl
    inc l
    ld d, h
    ld d, l
    dec sp
    inc a
    ld b, l

jr_02d_7b01:
    ld b, [hl]
    dec h
    ld d, c
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    dec h
    ld d, c
    inc hl
    inc h
    ld d, l
    ld d, [hl]
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    dec h
    ld h, $54
    ld d, l
    ld d, l
    ld d, [hl]
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
    ld b, h
    ld b, l
    ld b, d
    dec d
    ld d, h
    ld d, l
    inc sp
    ld [hl-], a
    ld b, l
    ld b, [hl]
    dec h
    ld d, c
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    dec d
    ld b, e
    ld [bc], a
    inc bc
    ld [hl-], a
    inc [hl]
    ld [de], a
    inc de
    ld d, c
    ld h, $44
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    inc hl
    inc h
    inc hl
    inc h
    ld a, $3f
    ld a, $3f
    ld a, $3f
    ld a, $3f
    jr jr_02d_7b6f

    jr jr_02d_7b71

    ld b, h
    ld b, l
    ld b, l
    ld b, [hl]
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld [bc], a
    inc bc
    inc hl
    ld [hl+], a
    ld [de], a
    inc de
    ld b, d
    dec d
    ld b, h
    ld b, l
    ld b, l
    ld b, [hl]
    ld d, h
    ld d, l
    ld d, l

jr_02d_7b6f:
    ld d, [hl]
    ld [hl+], a

jr_02d_7b71:
    inc h
    ld b, h
    ld b, l
    dec d
    ld b, e
    ld d, h
    ld d, l
    ld b, h
    ld b, l
    dec h
    ld d, c
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld b, h
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld b, l
    ld b, [hl]
    ld c, h
    ld c, l
    ld d, l
    ld d, [hl]
    ld e, h
    ld e, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld bc, $1401
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld bc, $1401
    inc d
    ld bc, $1101
    ld de, $1111
    ld de, $1111
    ld de, $0b0a
    ld b, h
    ld b, l
    ld a, [de]
    dec de
    ld d, h
    ld d, l
    ld d, b
    ld d, b
    inc b
    inc b
    ld d, b
    ld d, b
    ld [hl], $36
    ld d, b
    ld d, b
    ld [hl], $36
    ld d, b
    ld d, b
    inc d
    inc d
    ld de, $1111
    ld de, $1111
    ld de, $0111
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld c, h
    ld c, l
    ld d, b
    ld d, b
    ld e, h
    ld e, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld de, $2311
    inc h
    inc hl
    inc h
    ld e, $1f
    ld [$2e09], sp
    cpl
    ld d, d
    ld d, e
    jr jr_02d_7c61

    db $10
    db $10
    db $10
    db $10
    ld c, $0e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1010
    db $10
    db $10
    ld c, $01
    ld bc, $010e

jr_02d_7c61:
    ld bc, $0101
    ld bc, $0101
    ld bc, $5050
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rrca
    rrca
    ld e, a
    ld e, a
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld e, a
    ld e, a
    rrca
    rrca
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rrca
    rrca
    rrca
    rrca
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld de, $1111
    ld de, $1111
    ld de, $2311
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc c
    ld de, $1111
    ld de, $1111
    ld de, $2211
    ld [hl+], a
    ld [hl+], a
    inc h
    dec c
    ld [hl-], a
    rlca
    inc [hl]
    ld b, d
    dec d
    dec d
    ld [hl-], a
    inc hl
    inc h
    ld d, c
    ld d, c
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    inc sp
    inc [hl]
    ld d, h
    ld d, l
    ld b, d
    dec d
    dec d
    ld [hl-], a
    inc hl
    inc h
    ld d, c
    ld d, c
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    inc sp
    inc [hl]
    ld d, h
    ld d, l
    ld [hl-], a
    inc e
    dec e
    ld b, e
    ld d, c
    ld d, c
    ld d, c
    ld h, $02
    inc bc
    ld b, h
    ld b, l
    ld [de], a
    inc de
    ld d, h
    ld d, l
    inc sp
    inc [hl]
    ld b, l
    ld b, [hl]
    inc sp
    inc [hl]
    ld d, l
    ld d, [hl]
    dec h
    ld h, $44
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld d, b
    ld d, b
    ld b, c
    ld b, c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld d, b
    ld d, b
    ld b, c
    ld b, c
    ld d, b
    ld d, b
    ld c, h
    ld c, l
    ld d, b
    ld d, b
    ld e, h
    ld e, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    sub h
    nop
    rlca
    rlca
    sub [hl]
    sub [hl]
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
    ld [hl], b
    nop
    nop
    ld [hl], b
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    sub b
    nop
    sub b
    nop
    rlca
    rlca
    sbc a
    sub c
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
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
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    sub c
    sub c
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
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
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
    nop
    nop
    ld [hl], b
    nop
    rlca
    rlca
    sub h
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [hl], d
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
    and e
    and e
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
    nop
    nop
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    ld [hl], d
    nop
    nop
    inc b
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
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld [hl], b
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02d_7fbd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
