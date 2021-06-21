; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

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
    rst $38
    rst $38
    add hl, sp
    ld a, h
    xor d
    nop
    rst $18
    nop
    ld a, d
    add l
    push af
    ld a, [bc]
    ld a, [$bf05]
    ld b, b
    db $eb
    add b
    sub $c1
    ld a, a
    ldh a, [$5f]
    ld hl, sp+$3e
    db $ed
    ld e, l
    or $7e
    db $eb
    db $fd
    rst $10
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
    jr nc, jr_006_4043

jr_006_4043:
    rst $38
    xor d
    nop
    rst $10
    nop
    xor e
    nop
    nop
    rst $38
    db $eb
    nop
    rst $30
    nop
    db $eb
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    dec e
    ld a, [de]
    ld l, d
    ld [hl], l
    ld bc, $0601
    rlca
    inc e
    dec de
    ld l, d
    ld [hl], l
    call nc, $aaab
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
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
    add b
    add b
    ld h, b
    ldh [$58], a
    cp b
    ld l, $d6
    ld d, l
    xor e
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld a, [hl+]
    push de
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
    ldh [$60], a
    ld e, b
    cp b
    xor [hl]
    ld d, [hl]
    rst $38
    rst $38
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
    rst $38
    add c
    rst $38
    rst $38
    ld e, a
    and b
    ld a, a
    cp a
    ld h, b
    cp a
    ld l, a
    cp a
    ld l, b
    cp b
    ld l, b
    cp b
    ld l, b
    cp b
    ld l, a
    cp b
    ld a, [$fe05]
    db $fd
    ld b, $fd
    or $fd
    ld d, $1d
    ld d, $1d
    ld d, $1d
    or $1d
    nop
    nop
    ld bc, $4800
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr jr_006_4100

    inc h
    inc h
    ld b, d
    ld b, d
    ld h, [hl]
    ld h, [hl]
    ld a, d
    ld e, [hl]
    ld [hl], d
    ld c, [hl]
    ld a, h
    inc b
    ld a, h
    inc b
    ld a, h
    inc b
    ld a, h
    inc b
    ld a, h
    inc b
    ld a, h
    inc b
    ld a, h
    inc b

jr_006_4100:
    ld a, h
    inc b
    push hl
    ld l, $e5
    ld l, $e5
    ld l, $e5
    ld l, $e5
    ld l, $e5
    ld l, $e5
    ld l, $e5
    ld l, $eb
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
    ld a, [hl]
    add c
    cp l
    ld b, d
    db $db
    inc h
    rst $20
    jr @-$17

    jr @-$23

    inc h
    cp l
    ld b, d
    ld a, [hl]
    add c
    ret z

    push af
    add e
    ld a, [$76ae]
    rst $18
    xor h
    or $54
    db $ec
    pop hl
    db $db
    jp nz, $81ed

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
    push de
    xor d
    xor d
    push de
    push de
    xor d
    xor d
    push de
    push de
    xor d
    xor d
    push de
    push de
    xor d
    xor d
    push de
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    xor e
    ld d, l
    ld d, [hl]

jr_006_416f:
    xor a
    cp c

jr_006_4171:
    ld e, a
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_006_417d:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, l
    xor d
    xor d
    push de
    ld [hl], l
    ld [$fd9a], a
    ld d, l
    xor e
    xor e
    ld d, l
    ld d, l
    xor e
    xor e
    ld d, l
    ld d, l
    xor e
    xor e
    ld d, l
    ld d, l
    xor e
    xor e
    ld d, l
    rst $38
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
    cpl
    cp a
    cpl
    or b
    jr z, jr_006_416f

    jr z, jr_006_4171

    cpl
    or b
    jr nz, jr_006_417d

    ccf
    cp a
    rst $38
    ret nz

    db $f4
    db $fd
    db $f4
    dec c
    inc d
    db $ed
    inc d
    db $ed
    db $f4
    dec c
    inc b
    db $fd
    db $fc
    db $fd
    rst $38
    inc bc
    ld a, a
    inc b
    ld a, h
    inc b
    ld a, h
    inc b
    ld a, a
    inc b
    ld a, [hl]
    dec b
    ld a, [hl]
    dec b
    ld a, a
    inc bc
    ld a, a
    nop
    db $eb
    ld bc, $4297
    xor [hl]
    ld c, $df
    inc e
    db $76
    or h
    db $ec
    ld h, c
    db $db
    ld b, d
    db $ed
    add c
    ld a, $20
    ld a, $20
    ld a, $20
    ld a, $20
    ld a, $20
    ld a, $20
    ld a, $20
    ld a, $20
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
    rst $00
    rst $38
    inc a
    rst $38
    rst $38
    nop
    rst $38
    inc a
    jp $8166


    jp $c381


    jp $e7a5


    db $db
    and $67
    rst $38
    inc a
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp e
    xor a
    ld d, a
    rst $18
    ld a, a
    xor $7f
    push af
    ccf
    ld [$f75d], a
    ld a, a
    db $eb
    db $fd
    rst $10
    push de
    xor d
    xor e
    push de
    sub $af
    cp c
    rst $18
    rst $20
    cp $9f
    ld hl, sp+$7f
    ld a, b
    ld [$6708], sp
    cp $9f
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    push af
    pop bc
    ei
    ret nz

    db $76
    ld h, d
    xor a
    xor h
    ld d, [hl]
    ld b, h
    db $ed
    add b
    jp nc, $e982

    add c
    rst $20
    ld a, [hl]
    ld sp, hl
    rra
    cp $07
    rst $38
    ld bc, $001f
    rlca
    nop

jr_006_428e:
    ld bc, $0000
    nop
    ld d, l
    xor e
    xor e
    push de
    ld [hl], l
    db $eb

jr_006_4298:
    sbc e
    db $fd
    rst $20
    ld a, a
    ld sp, hl
    rra
    cp $1e
    db $10
    db $10
    rlca
    rlca
    rra
    jr jr_006_42df

    jr nz, jr_006_4309

    ld b, b
    ld h, b
    ld b, b
    ld e, b
    ld b, b
    ld b, a
    ld b, b
    ld h, b
    ld b, b
    ret nz

    ret nz

    ldh a, [$30]
    jr c, @+$0a

    inc c
    inc b

jr_006_42ba:
    inc c
    inc b
    inc [hl]
    inc b
    call nz, $0c04
    inc b
    xor d
    nop
    ld b, c
    inc d
    xor d
    ld b, c
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld b, c
    inc d
    xor b
    ld l, d
    ld d, l
    ld a, h
    add d
    cp $57
    ld a, a
    rst $28

jr_006_42df:
    rst $38
    ld e, l
    ld a, a
    xor d
    jr z, jr_006_42ba

    db $fc
    and d
    cp $55
    rst $38
    ld a, [$55fe]
    db $fc
    db $ec
    ld a, [hl]
    cp l
    ld e, b
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
    jr nz, jr_006_428e

    db $10
    dec b
    ld [$5000], sp

jr_006_4309:
    ld bc, $8a20
    inc b
    db $10
    jr nz, jr_006_4298

    nop
    ld d, c
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    inc a
    rst $20
    ld a, $e5
    ld h, [hl]
    and l
    ld h, h
    and l
    nop
    sbc b
    rst $38
    rst $38
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
    rst $38
    add c
    rst $38
    rst $38
    add c
    rst $38
    jp Jump_006_667e


    cp l
    inc a
    db $db
    cp [hl]
    ei
    ld a, l
    rst $20
    or $df
    jp hl


    cp a
    rst $38
    xor e
    ld d, l
    ld e, a
    cp e
    cpl
    ld e, l
    or a
    dec hl
    ld e, a
    ld e, l
    xor a
    ld e, $f7
    db $fc
    db $eb
    inc sp
    xor a
    ld b, c
    rst $18
    ld [hl], e
    xor $7e
    push af
    dec a
    ld [$f75c], a
    ld a, a
    db $eb
    db $fd
    rst $10
    push de
    add c
    ld hl, sp-$1e
    pop af
    call nc, $8dda
    db $e4
    sbc d
    ld a, [$78b5]
    rst $28
    ccf
    rst $10
    push de
    xor e
    ld b, h
    ld e, [hl]
    sbc b
    dec a
    ld e, l
    cp d
    inc a
    ld d, a
    ld a, h
    xor a
    dec sp
    rst $30
    rst $38
    pop hl
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
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
    ld e, b
    ld h, b
    ld b, a
    ld a, b
    ld b, e
    ld a, h
    ld b, e
    ld a, h
    inc hl
    ld a, h
    dec de
    inc a
    rlca
    rra
    nop
    rlca
    inc [hl]
    inc c
    call nz, $843c
    ld a, h
    add h
    ld a, h
    adc b
    ld a, h
    or b
    ld a, b
    ret nz

    ldh a, [rP1]
    ret nz

jr_006_43c2:
    cp $20
    ld a, $20
    ld a, $20
    cp $20
    ld a, [hl]
    and b
    ld a, [hl]
    and b
    cp $c0
    cp $00
    xor h

jr_006_43d3:
    cpl
    ld b, d
    rla
    xor d
    ld b, d
    ld d, [hl]
    ld [bc], a
    and l
    inc c
    ld e, d
    inc c
    and [hl]
    rrca
    ld d, c
    rlca
    ld a, [hl+]
    ldh [rHDMA5], a
    ret nz

    ld [$d540], a
    ld b, b
    ld l, d
    jr nc, jr_006_43c2

    jr c, jr_006_4457

    ld a, [c]
    sub l
    ldh [rIE], a
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
    pop hl

jr_006_4403:
    rst $38
    xor e
    inc bc
    ld e, l
    inc e
    cp [hl]
    ld l, b
    ld a, l
    jr nz, jr_006_4403

    ld e, h
    ld e, l
    ld l, e
    ld [$d575], a
    xor e
    xor d
    add b
    ld [hl], l
    ld [hl], b
    xor d
    jr c, jr_006_4478

    jr z, jr_006_43d3

    ld e, h
    ld b, l
    db $fc
    xor h
    ld a, [hl]
    ld d, a
    cp $ff
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
    and [hl]
    and [hl]
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

jr_006_4457:
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
    nop
    nop
    inc a
    inc a
    ld a, a
    ld a, a
    add b
    rst $38
    add b
    add b
    add b
    sub d
    add b
    sbc d
    add b
    add b
    nop
    nop
    inc a
    inc a

jr_006_4478:
    cp $fe
    ld bc, $01ff
    ld bc, $d901
    ld bc, $01d1
    ld bc, $abd5
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
    ccf
    rst $38
    rst $38
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
    rrca

jr_006_44c5:
    rrca
    jr @+$1a

    jr @+$1a

    jr @+$1a

    rra
    jr jr_006_44e7

    jr jr_006_44e9

    jr jr_006_44eb

    jr jr_006_44c5

jr_006_44d5:
    ldh a, [rNR23]
    jr jr_006_44f1

    jr jr_006_44f3

    jr jr_006_44d5

    jr jr_006_44f7

    jr jr_006_44f9

    jr jr_006_44fb

    jr @+$01

jr_006_44e5:
    rst $38
    nop

jr_006_44e7:
    nop
    rst $38

jr_006_44e9:
    nop
    rst $38

jr_006_44eb:
    nop
    nop
    rst $38
    db $db
    inc h
    cp l

jr_006_44f1:
    ld b, d
    ld a, [hl]

jr_006_44f3:
    add c
    db $dd
    ld [hl+], a
    xor d

jr_006_44f7:
    ld d, l
    ld [hl], l

jr_006_44f9:
    adc d
    xor e

jr_006_44fb:
    ld d, h
    push de
    ld a, [hl+]
    xor [hl]
    ld d, c
    ld d, l
    xor d
    cp e
    ld b, h
    jp nz, $b0ff

    rst $38
    ld l, d
    rst $38
    ld d, a
    ld a, a
    cp e
    ccf
    ld e, [hl]
    ccf
    and l
    ld e, $53
    rrca
    xor d
    cp $53
    cp $ae
    db $fc
    ld [hl], l
    db $fc
    ld a, [$75fc]
    ld hl, sp-$60
    ld a, d
    push bc
    ldh a, [rP1]
    nop
    nop
    ld b, h
    nop
    xor d
    ld l, h
    sub d
    inc [hl]
    ld c, d
    or l
    ld c, d
    db $d3
    inc l
    ld h, [hl]
    jr @+$01

    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    db $db
    inc h
    cp l
    ld b, d
    ld a, [hl]
    add c
    push de
    ld sp, hl
    ld l, e
    ld [hl], d
    or [hl]
    or l
    ld e, l
    jp c, $dd9a

    ld h, l
    and $d2
    ld a, e
    xor c
    push af
    ld [hl], d
    ld c, [hl]
    ld [hl], d
    ld c, [hl]
    ld [hl], d
    ld c, [hl]
    ld [hl], d
    ld c, [hl]
    ld [hl], d
    ld c, [hl]
    inc [hl]
    ld l, [hl]
    jr jr_006_459e

    nop
    jr jr_006_44e5

    sbc d
    add b
    sbc d
    add b
    add b
    ld a, a
    ld a, a
    inc a
    inc h
    inc h
    rst $20
    jr @+$01

    nop
    nop
    ld bc, $0129
    xor c
    ld bc, $fe01
    cp $3c
    inc h
    inc h
    rst $20
    jr @+$01

    nop
    nop
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

jr_006_459e:
    xor h
    rst $38
    ld d, a
    ei
    xor a
    ld sp, hl
    jr jr_006_45be

    jr @+$1a

    jr jr_006_45c2

    jr @+$1a

    jr @+$1a

    jr @+$1a

    jr @+$1a

    jr @+$1a

    rst $38
    nop
    stop
    stop
    stop
    rst $38
    nop

jr_006_45be:
    ld bc, $0100
    nop

jr_006_45c2:
    ld bc, $1f00
    jr @+$1a

    jr @+$1a

    jr @+$1a

    jr @+$21

    jr @+$21

    rra
    rra
    db $10
    rra
    rra

jr_006_45d4:
    ld hl, sp+$18
    jr jr_006_45f0

    jr jr_006_45f2

    jr jr_006_45f4

    ld hl, sp+$18
    ld hl, sp-$08
    ld hl, sp+$08
    ld hl, sp-$08
    ld a, [hl]
    add c
    cp l
    ld b, d
    db $db
    inc h
    rst $20
    jr jr_006_45d4

    jr @-$23

    inc h

jr_006_45f0:
    cp l
    ld b, d

jr_006_45f2:
    ld a, [hl]
    add c

jr_006_45f4:
    nop
    rst $38
    rst $38
    nop
    rst $38
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
    inc hl
    inc hl
    inc hl
    inc hl
    add hl, sp
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    add hl, sp
    inc hl
    dec b
    ld b, $07
    rlca
    dec d
    ld d, $17
    rla
    dec h
    ld h, $0b
    inc c
    dec e
    ld a, [de]
    dec de
    inc e
    rlca
    rlca
    ld [$1709], sp
    rla
    jr jr_006_4657

    ld a, [bc]
    ld a, [bc]
    jr z, @+$2b

    ld a, [de]
    ld a, [de]

Call_006_4644:
    ld a, [de]
    inc a
    inc hl
    inc hl
    inc hl
    inc hl
    add hl, sp
    inc hl
    inc hl
    inc hl
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, e

jr_006_4657:
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld de, $1111
    ld de, $1111
    ld de, $4811
    ld c, c
    scf
    scf
    ld e, b
    ld e, c
    scf
    scf
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    scf
    scf
    scf
    scf
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
    ld b, [hl]
    ld b, a
    add hl, sp
    add hl, sp
    ld d, [hl]
    ld d, a
    rlca
    rlca
    rlca
    rlca
    rla
    rla
    rla
    rla
    inc hl
    ld [hl-], a
    ld a, [bc]
    inc hl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
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
    ld b, $53
    ld d, e
    dec d
    jr c, jr_006_46df

    ld [de], a
    dec d
    jr c, jr_006_46e3

    ld [de], a
    dec d
    ld d, $17
    rla
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a

jr_006_46df:
    ld [de], a
    ld [de], a
    ld [de], a
    rla

jr_006_46e3:
    rla
    rla
    rla
    ld d, e
    ld d, e
    ld [$1209], sp
    ld [de], a
    jr c, jr_006_4707

    ld [de], a
    ld [de], a
    jr c, jr_006_470b

    rla
    rla
    jr jr_006_470f

    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    dec h

jr_006_4707:
    ld h, $0a
    ld a, [bc]
    rrca

jr_006_470b:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rrca

jr_006_470f:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld [hl+], a
    cpl
    ccf
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    jr z, jr_006_4753

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rra
    dec bc
    inc c
    ld a, [bc]
    rra
    dec de
    inc e
    ld a, [de]
    inc a
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    dec hl
    inc d
    inc d
    ld a, [hl-]
    dec sp
    inc d
    inc d
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]

jr_006_4753:
    dec sp
    ld a, [hl-]
    dec sp
    inc d
    inc d
    ld a, [hl+]
    dec hl
    inc d
    inc d
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld c, a
    ld c, a
    inc hl
    inc hl
    ld c, a
    ld c, a
    inc hl
    inc hl
    ld c, a
    ld c, a
    inc hl
    inc hl
    ld c, a
    ld c, a
    add hl, sp
    inc hl
    inc hl
    inc hl
    ld c, a
    ld c, a
    add hl, sp
    inc hl
    ld c, a
    ld c, a
    inc hl
    inc hl
    ld c, a
    ld c, a
    inc hl
    inc hl
    ld c, a
    ld c, a
    ld a, [hl+]
    dec hl
    inc d
    inc d
    ld a, [hl-]
    dec sp
    inc d
    inc d
    ld a, [hl+]
    dec hl
    inc d
    inc d
    ld a, [hl-]
    dec sp
    inc d
    inc d
    inc d
    inc d
    ld a, [hl+]
    dec hl
    inc d
    inc d
    ld a, [hl-]
    dec sp
    inc d
    inc d
    ld a, [hl+]
    dec hl
    inc d
    inc d
    ld a, [hl-]
    dec sp
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
    scf
    scf
    scf
    scf
    ld c, $0e
    inc hl
    inc hl
    ld d, l
    ld d, l
    inc hl
    inc hl
    ld c, $0e
    inc hl
    inc hl
    ld d, l
    ld d, l
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    add hl, sp
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc d
    inc d
    inc d
    inc sp
    inc d
    inc d
    inc d
    inc sp
    inc d
    inc d
    inc d
    inc sp
    inc sp
    inc sp
    inc sp
    inc d
    inc d
    inc d
    ld d, h
    inc d
    inc d
    inc d
    ld d, h
    inc d
    inc d
    inc d
    ld d, h
    inc sp
    inc sp
    inc sp
    inc sp
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
    ld c, h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, d
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, d
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, h
    ld e, a
    ld e, a
    ld e, a
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, l
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, d
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, d
    ld e, a
    ld e, a
    ld e, a
    ld e, l
    ld hl, $2323
    db $10
    inc hl
    inc hl
    inc hl
    db $10
    inc hl
    inc hl
    inc hl
    db $10
    ld hl, $2323
    db $10
    jr nz, @+$22

    jr nz, jr_006_485a

    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    jr nz, jr_006_4864

    jr nz, jr_006_4866

    daa
    daa
    ld de, $2711
    daa
    ld de, $2711
    ld [hl], $37
    scf
    ld [hl], $37
    scf
    scf
    ld de, $2411
    inc h

jr_006_485a:
    ld de, $2411
    inc h
    scf
    scf
    inc [hl]
    inc h
    scf
    scf

jr_006_4864:
    scf
    inc [hl]

jr_006_4866:
    db $10
    inc hl
    inc hl
    ld hl, $2310
    inc hl
    inc hl
    db $10
    inc hl
    inc hl
    inc hl
    db $10
    inc hl
    inc hl
    ld hl, $2310
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10
    daa
    daa
    ld de, $2711
    daa
    ld de, $2711
    daa
    ld de, $2711
    daa
    ld de, $1111
    ld de, $2424
    ld de, $2411
    inc h
    ld de, $2411
    inc h
    ld de, $2411
    inc h
    ld de, $1111
    ld de, $1111
    ld de, $3711
    inc de
    ld de, $1311
    daa
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    dec [hl]
    scf
    ld de, $2411
    dec [hl]
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1414
    inc d
    inc sp
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
    inc sp
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
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    scf
    inc [hl]
    inc b
    inc b
    dec b
    ld b, $07
    rlca
    dec d
    ld d, $17
    rla
    dec h
    ld h, $0a
    ld [hl+], a
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
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
    ld b, b
    ld b, c
    dec l
    ld l, $50
    ld d, c
    dec a
    ld a, $40
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    inc l
    inc l
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    inc l
    inc l
    dec l
    ld l, $2c
    inc l
    dec a
    ld a, $2d
    ld l, $2c
    inc l
    dec a
    ld a, $2c
    inc l
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    inc l
    inc l
    dec l
    ld l, $2c
    inc l
    dec a
    ld a, $40
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    inc l
    inc l
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    inc l
    inc l
    ld b, b
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    rrca
    ld [hl-], a
    ld a, [bc]
    ld a, [bc]
    rrca
    ld c, e
    ld c, e
    ld c, e
    rrca
    ld c, e
    ld c, e
    ld c, e
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    inc hl
    inc hl
    inc hl
    inc hl
    add hl, sp
    inc hl
    inc hl
    inc hl
    dec b
    ld b, $07
    rlca
    dec d
    ld d, $17
    rla
    inc hl
    inc hl
    inc hl
    inc hl
    add hl, sp
    inc hl
    inc hl
    inc hl
    rlca
    rlca
    ld [$1709], sp
    rla
    jr @+$1b

    ld [hl-], a
    ld c, e
    ld c, e
    ld [hl-], a
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    dec bc
    inc c
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e
    ld a, [de]
    ld a, [de]
    ld bc, $0201
    ld de, $1111
    inc h
    ld [bc], a
    ld de, $2411
    inc h
    ld de, $2411
    inc h
    dec h
    ld h, $32
    ld [hl+], a
    ld e, h
    rla
    rla
    rla
    rrca
    ld [hl+], a
    dec bc
    inc c
    dec e
    ld a, [de]
    dec de
    inc e
    ld [hl-], a
    ld [hl-], a
    jr z, jr_006_4a03

    rla
    rla
    rla
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld [hl+], a
    rra
    ld a, [de]
    ld a, [de]
    ld a, [de]
    inc a
    ld de, $011e
    ld bc, $271e
    ld de, $2711
    daa
    ld de, $2711
    daa
    ld de, $0111
    ld bc, $0101
    ld de, $1111
    ld de, $1111
    ld de, $1111

jr_006_4a03:
    ld de, $1111
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    inc l
    inc l
    inc l
    inc l
    ld b, b
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    inc l
    inc l
    ld b, b
    ld b, c
    scf
    inc [hl]
    ld d, b
    ld d, c
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
    db $10
    inc hl
    inc hl
    ld hl, $2310
    inc hl
    inc hl
    db $10
    inc hl
    inc hl
    inc hl
    ld hl, $2020
    jr nz, jr_006_4a78

    inc hl
    inc hl
    db $10
    inc hl
    inc hl
    inc hl
    db $10
    inc hl
    inc hl
    inc hl
    db $10
    jr nz, jr_006_4a84

    jr nz, @+$23

    inc hl
    inc hl
    inc hl
    inc hl
    add hl, sp
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    dec hl
    ld c, a
    ld c, a
    ld a, [hl-]
    dec sp
    ld c, a
    ld c, a
    add hl, sp
    add hl, sp

jr_006_4a78:
    dec c
    inc h
    add hl, sp
    add hl, sp
    dec c
    inc h
    add hl, sp
    add hl, sp
    dec c
    inc h
    add hl, sp
    add hl, sp

jr_006_4a84:
    dec c
    inc h
    jr nz, jr_006_4aa8

    jr nz, jr_006_4aab

    inc hl
    inc hl
    inc hl
    db $10
    inc hl
    inc hl
    inc hl
    db $10
    ld hl, $2323
    db $10
    ld hl, $2020
    jr nz, jr_006_4aab

    inc hl
    inc hl
    inc hl
    db $10
    inc hl
    inc hl
    inc hl
    db $10
    inc hl
    inc hl
    ld hl, $2323

jr_006_4aa8:
    inc hl
    inc hl
    add hl, sp

jr_006_4aab:
    inc hl
    inc hl
    inc hl
    ld c, a
    ld c, a
    ld a, [hl+]
    dec hl
    ld c, a
    ld c, a
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, sp
    dec c
    inc h
    add hl, sp
    add hl, sp
    dec c
    inc h
    add hl, sp
    add hl, sp
    dec c
    inc h
    ld [hl], $37
    scf
    inc [hl]
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld b, b
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    inc l
    inc l
    inc l
    inc l
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    inc l
    inc l
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    inc l
    inc l
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    inc l
    inc l
    inc l
    inc l
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    inc l
    inc l
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [bc]
    ld c, e
    ld c, e
    ld [hl-], a
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld a, [bc]
    ld [hl-], a
    dec bc
    inc c
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld c, $0e
    ld b, [hl]
    ld b, a
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, a
    ld de, $1111
    ld de, $1111
    ld de, $3711
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    daa
    inc l
    inc l
    inc l
    daa
    inc l
    inc l
    inc l
    daa
    inc l
    inc l
    inc l
    daa
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc h
    inc l
    inc l
    inc l
    inc h
    inc l
    inc l
    inc l
    inc h
    inc l
    inc l
    inc l
    inc h
    daa
    inc l
    inc l
    inc l
    daa
    inc l
    inc l
    inc l
    daa
    inc l
    inc l
    inc l
    ld [hl], $37
    scf
    scf
    inc l
    inc l
    inc l
    inc h
    inc l
    inc l
    inc l
    inc h
    inc l
    inc l
    inc l
    inc h
    scf
    scf
    scf
    inc [hl]
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
    inc b
    inc b
    ld [hl], $37
    ld hl, $2323
    ld hl, $2310
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10
    db $10
    inc hl
    inc hl
    db $10
    ld hl, $2323
    ld hl, $2323
    ld c, $0e
    inc hl
    inc hl
    ld d, l
    ld d, l
    inc hl
    inc hl
    ld c, $0e
    inc hl
    inc hl
    ld d, l
    ld d, l
    inc l
    inc l
    ld b, b
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    dec l
    ld l, $40
    ld b, c
    dec a
    ld a, $50
    ld d, c
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    inc l
    inc l
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc l
    inc l
    ld a, [hl+]
    dec hl
    inc l
    inc l
    ld a, [hl-]
    dec sp
    inc d
    inc d
    inc d
    ld d, h
    inc d
    inc d
    inc d
    ld d, h
    inc d
    inc d
    inc d
    ld d, h
    inc d
    inc d
    inc d
    ld d, h
    inc sp
    inc d
    inc d
    inc d
    inc sp
    inc d
    inc d
    inc d
    inc sp
    inc d
    inc d
    inc d
    inc sp
    inc d
    inc d
    inc d
    ld [hl-], a
    ld a, [bc]
    jr z, jr_006_4c93

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rra
    dec bc
    inc c
    ld [hl-], a
    rra
    dec de
    inc e
    ld a, [de]
    inc a
    ld a, [hl+]
    dec hl
    inc sp
    inc sp
    ld a, [hl-]
    dec sp
    inc d
    inc d
    ld a, [hl+]
    dec hl
    inc d
    inc d
    ld a, [hl-]
    dec sp
    inc d
    inc d
    rrca
    ld a, [bc]
    ld [hl-], a
    ld [hl-], a
    rrca
    ld c, e
    ld c, e
    ld c, e
    rrca
    ld [hl-], a
    ld a, [bc]
    ld [hl-], a
    rrca

jr_006_4c93:
    ld c, e
    ld c, e
    ld c, e
    ld [hl-], a
    ld a, [bc]
    ld [hl-], a
    rra
    ld c, e
    ld c, e
    ld c, e
    rra
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    rra
    ld c, e
    ld c, e
    ld c, e
    rra
    inc sp
    inc sp
    ld a, [hl+]
    dec hl
    inc d
    inc d
    ld a, [hl-]
    dec sp
    inc d
    inc d
    ld a, [hl+]
    dec hl
    inc d
    inc d
    ld a, [hl-]
    dec sp
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld b, b
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    inc l
    inc l
    ld b, b
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    inc l
    inc l
    inc l
    inc l
    ld b, b
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    inc l
    inc l
    ld b, b
    ld b, c
    inc l
    inc l
    ld d, b
    ld d, c
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld de, $2411
    inc h
    ld de, $2411
    inc h
    ld c, b
    ld c, c
    inc [hl]
    inc h
    ld e, b
    ld e, c
    scf
    inc [hl]
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rla
    rla
    rla
    rla
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rra
    ld c, e
    ld c, e
    ld c, e
    rra
    ld b, d
    ld b, e
    ld c, e
    rra
    ld c, d
    ld c, d
    ld a, [de]
    inc a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rra
    ld c, e
    ld c, e
    ld c, e
    rra
    ld b, h
    ld b, l
    ld c, e
    rra
    ld c, d
    ld c, d
    ld a, [de]
    inc a
    inc l
    inc l
    inc l
    inc l
    inc l
    inc bc
    inc l
    inc bc
    inc bc
    inc l
    inc bc
    inc l
    inc l
    inc l
    inc l
    inc l
    dec d
    jr c, jr_006_4d6b

    ld [de], a
    dec d
    jr c, jr_006_4d6f

    ld [de], a
    dec d
    ld d, $17
    rla
    dec h
    ld h, $22
    ld [hl+], a
    ld [de], a
    ld [de], a
    jr c, jr_006_4d83

    ld [de], a

jr_006_4d6b:
    ld [de], a
    jr c, @+$1b

    rla

jr_006_4d6f:
    rla
    jr @+$1b

    ld [hl+], a
    ld [hl+], a
    jr z, jr_006_4d9f

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld c, $0e
    ld c, $0e
    ld d, l

jr_006_4d83:
    ld d, l
    ld d, l
    ld d, l
    ld sp, $3131
    ld sp, $1414
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
    jr nc, jr_006_4dd1

    jr nc, jr_006_4dd3

    add hl, sp
    jr nc, jr_006_4dd6

    jr nc, jr_006_4dcf

jr_006_4d9f:
    add hl, sp
    ld b, [hl]
    ld b, a
    add hl, sp
    jr nc, jr_006_4dfb

    ld d, a
    ld e, $01
    ld bc, $2702
    ld de, $2411
    daa
    ld de, $2411
    ld [hl], $37
    scf
    inc [hl]
    jr nc, jr_006_4df1

    jr nc, jr_006_4df3

    add hl, sp
    jr nc, jr_006_4df6

    jr nc, jr_006_4def

    add hl, sp
    jr nc, jr_006_4dfb

    add hl, sp
    jr nc, jr_006_4dfe

    jr nc, jr_006_4dd6

    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    rrca
    ld c, e
    ld c, e
    ld c, e
    rrca

jr_006_4dcf:
    ld c, e
    dec bc

jr_006_4dd1:
    inc c
    dec e

jr_006_4dd3:
    ld a, [de]
    dec de
    inc e

jr_006_4dd6:
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld [hl-], a
    ld a, [bc]
    ld [hl-], a
    rra
    ld c, e
    ld c, e
    ld c, e
    rra
    ld c, e

jr_006_4def:
    ld c, e
    ld c, e

jr_006_4df1:
    rra
    ld a, [de]

jr_006_4df3:
    ld a, [de]
    ld a, [de]
    inc a

jr_006_4df6:
    ld [hl-], a
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    ld c, e

jr_006_4dfb:
    ld c, e
    ld c, e
    ld c, e

jr_006_4dfe:
    ld a, [bc]
    ld [hl-], a
    ld [hl-], a
    ld a, [bc]
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
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
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    nop
    nop
    ld a, e
    rlca
    and e
    and e
    rlca
    rlca
    nop
    nop
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
    jr jr_006_4e4c

    jr jr_006_4e4e

    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_006_4e4c:
    rlca
    rlca

jr_006_4e4e:
    rlca
    rlca
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, hl
    rlca
    rlca
    add hl, hl
    rlca
    rlca
    rlca
    halt
    halt
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    rlca
    add hl, hl
    rlca
    add hl, hl
    add hl, hl
    rlca
    add hl, hl
    rlca
    and e
    and e
    rlca
    rlca
    rlca
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
    rlca
    nop
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
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    nop
    nop
    rlca
    ld [de], a
    rlca
    nop
    rlca
    rlca
    nop
    ld [de], a
    ld [de], a
    nop
    rlca
    rlca
    nop
    ld [de], a
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
    rlca
    or d
    rlca
    nop
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
    or d
    rlca
    nop
    or d
    or d
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
    and e
    rlca
    rlca
    rlca
    add hl, hl
    add hl, hl
    add hl, hl
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
    rlca
    ld [hl], b
    and b
    rlca
    and b
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
    rlca
    and h
    rlca
    rlca
    rlca
    nop
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
    rlca
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
    nop
    and e
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
    nop
    rlca
    nop
    rlca
    ld [de], a
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
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
    add hl, hl
    rlca
    add hl, hl
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, hl
    rlca
    add hl, hl
    rlca
    add hl, hl
    add hl, hl
    rlca
    rlca
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
    nop
    nop
    rlca
    rlca
    nop
    rlca
    ld a, e
    rlca
    rlca
    rlca
    rlca
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
    nop
    nop
    rlca
    rlca
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    nop
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
    rlca
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    rlca

jr_006_4fff:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    jr nc, jr_006_5049

jr_006_5049:
    nop
    nop
    ld b, h
    nop
    xor d
    ld l, h
    sub d
    jr z, jr_006_50a6

    db $10
    ld l, h
    add $38
    ld l, h
    db $10
    xor b
    nop
    ld d, l
    jr nz, jr_006_4fff

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

jr_006_50a6:
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

jr_006_5130:
    db $db
    daa
    db $db
    daa
    db $db
    daa
    db $db
    daa
    xor d
    nop
    ld b, c
    inc d
    xor b
    ld l, d
    ld d, l
    ld a, h
    add d
    cp $57
    ld a, a
    rst $28
    rst $38
    ld e, l
    ld a, a
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
    xor d
    jr z, jr_006_5130

    db $fc
    and d
    cp $55
    rst $38
    ld a, [$55fe]
    db $fc
    db $ec
    ld a, [hl]
    cp l
    ld e, b
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

jr_006_51b8:
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
    ld a, [hl+]
    ldh [rHDMA5], a
    ret nz

    ld [$d540], a
    ld b, b
    ld l, d
    jr nc, jr_006_51b8

    jr c, jr_006_524d

    ld a, [c]
    sub l
    ldh [$a9], a
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
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld e, $1a
    ld l, $2a
    ld a, [hl]
    ld l, d
    cp [hl]
    xor d
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld h, b
    ldh [$50], a
    ret nc

    ld e, b
    ld hl, sp+$54
    db $f4
    ld d, [hl]
    cp $55
    db $fd
    ld sp, $3110
    db $10
    ld sp, $3110
    db $10
    ld sp, $3110
    db $10
    ld sp, $3110
    db $10
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

jr_006_524d:
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
    ld a, h
    adc b
    ld a, h
    adc b
    ld a, h
    adc b
    ld a, h
    adc b
    ld a, h
    adc b
    ld a, h
    adc b
    ld a, h
    adc b
    ld a, h
    adc b
    rst $38
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
    cp a
    ld b, b
    rst $38
    ld a, a
    rst $38
    ld d, b
    rst $38
    ld e, a
    jp c, $d777

    ld a, d
    jp c, $d777

    ld a, d
    db $fd
    ld [bc], a
    rst $38
    cp $ff
    ld a, [bc]
    rst $38
    ld a, [$5eeb]
    ld e, e
    xor $eb
    ld e, [hl]
    ld e, e
    xor $da
    ld [hl], a
    rst $10
    ld a, d
    jp c, $d277

    ld a, a
    rst $18
    ld a, a
    rst $18
    ld [hl], b
    rst $38
    ld a, a
    rst $38
    ret nz

    db $eb
    ld e, [hl]
    ld c, e
    cp $4b
    cp $4b
    cp $fb
    cp $fb
    ld c, $ff
    cp $ff
    inc bc
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

jr_006_52c2:
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
    rst $28
    ld d, c
    ld a, h
    ld [hl], e
    cp l
    ld h, $7d
    ld e, a
    rst $20
    sbc a
    push af
    db $db
    ld a, h
    ld h, e
    rst $30
    sbc b
    ld [bc], a

jr_006_52f9:
    cp $0f
    cp $a4
    db $fc
    sbc d
    cp $ed
    rst $38
    rst $10
    rst $38
    ld l, $fe
    ld d, l
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    cp $91
    sub b
    pop af
    sub b
    pop af
    ldh a, [$03]
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

jr_006_5325:
    adc c
    sbc e
    adc c
    nop
    ld [hl], d
    nop
    rst $08
    nop
    or b
    rrca
    ld b, b
    jr jr_006_52f9

    jr nc, jr_006_52c2

    ld hl, $2498
    inc de
    nop
    ld h, a
    nop
    ld e, h
    nop
    dec bc
    ldh a, [rTMA]
    jr jr_006_5325

    inc c
    ld [hl], c
    inc c
    sub c
    inc c
    pop de
    ret nz

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


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    rst $38
    add hl, bc
    adc c
    ld a, a
    adc c
    ld a, a
    adc a
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

jr_006_53cc:
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
    inc h
    sub e
    inc hl
    sbc b
    jr nz, jr_006_53cc

    db $10
    rst $08
    ld c, $e1
    ld bc, $00a0
    ld e, d
    nop
    rr b
    and e
    nop
    rst $20
    nop
    rrca
    ld [bc], a
    db $fc
    inc a
    pop bc
    ldh [$03], a
    nop
    ld c, $00
    push af
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


    xor h
    cpl
    ld b, d
    rla
    xor d
    ld b, d
    ld d, [hl]
    ld [bc], a
    and l
    inc c
    ld e, d
    inc c
    and [hl]
    rrca
    ld d, c
    rlca
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
    ccf
    rst $38
    rst $38
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
    call c, Call_006_4644
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
    jp c, $75aa

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
    ld sp, $3110
    db $10
    ld sp, $3110
    db $10
    sbc a
    rst $38
    add b
    sub b
    ldh [$9f], a
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    ld a, h
    adc b
    ld a, h
    adc b
    ld a, h
    adc b
    ld a, h
    adc b
    ld sp, hl
    rst $38
    ld bc, $0709
    ld sp, hl
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
    jr c, jr_006_5610

    nop
    ld a, $00
    rst $38
    nop
    rrca
    jr c, jr_006_55e4

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
    ld a, [hl]
    ld a, [hl]
    cp l
    cp l
    db $db
    db $db
    rst $20
    rst $20
    rst $20
    rst $20
    db $db
    db $db
    cp l
    cp l
    ld a, [hl]
    ld a, [hl]
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

jr_006_55e4:
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_006_5610:
    rst $38
    rst $38
    ld a, h
    ld h, e
    ld a, h
    ld d, e
    ld l, h
    ld c, e
    ld l, a
    ld b, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    ld a, $fe
    ld a, $fa
    ld [hl], $f2
    or $e2
    ld c, h
    ld b, b
    ld l, h
    ld b, b
    ld [hl], h
    ld b, b
    ld a, b
    jr nz, jr_006_56bb

    jr nc, jr_006_56ad

    jr c, jr_006_56b3

    inc a
    ld l, h
    inc a
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
    rst $38
    rst $38
    cp [hl]
    rst $38
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
    rst $38
    rst $38
    ld a, a
    rst $38
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
    rst $38
    rst $38
    cp $ff
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
    rst $38
    rst $38
    ld a, a
    db $fd
    ld [hl-], a
    ld [bc], a
    ld [hl], $02
    ld l, $02
    ld e, $04
    ld e, $0c
    ld d, $1c
    ld a, $34
    ld a, $34
    ld l, h
    inc a
    ld l, h
    inc a
    ld l, h
    inc a
    ld h, h
    inc a
    ld e, h
    ld d, h
    ld l, h
    ld c, h
    ld h, h
    ld b, h
    ld l, b
    ld b, b
    cp a
    cp $be

jr_006_56ad:
    cp $be
    cp $be
    cp $82

jr_006_56b3:
    cp $be
    jp nz, $81ff

    rst $38
    rst $38
    rst $38

jr_006_56bb:
    ld a, [hl]
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $42
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $02
    cp $fe
    ld [bc], a
    rst $38
    ld bc, $ffff
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    jp $ff7d


    ld b, c
    rst $38
    add c
    rst $38
    rst $38
    ld a, $34
    ld a, $34
    ld a, $34
    ld l, $34
    ld a, [hl+]
    ld a, [hl-]
    ld [hl], $32
    ld h, $22
    ld d, $02
    ld c, h
    ld b, b
    ld l, h
    ld b, b
    ld [hl], h
    ld b, b
    ld a, b
    jr nz, jr_006_578b

    db $10
    ld a, b
    jr jr_006_578b

    inc d
    ld [hl], e
    inc de
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
    rst $38
    rst $38
    ld [hl-], a
    ld [bc], a
    ld [hl], $02
    ld l, $02
    ld e, $04
    ld e, $08
    ld e, $18
    ld l, $68
    adc $c8
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
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    dec d
    rra
    dec d
    rra
    rra
    dec d
    rra
    dec d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    ld hl, sp-$58
    ld hl, sp-$08
    xor b
    ld hl, sp-$58
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld a, [de]
    ld [hl], b
    ld e, $74
    dec de
    ld [hl], l
    ld a, [de]
    ld [hl], l
    ld a, [de]
    ld l, l
    ld a, [de]
    ld [hl], a
    rrca
    ld a, a
    nop
    nop

jr_006_578b:
    nop
    nop
    nop
    nop
    rst $38
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    rst $38
    rst $38
    rst $38
    nop
    ld c, $58
    ld c, $78
    ld l, $d8
    ld l, $d8
    ld l, $d8
    ld [hl], $d8
    xor $f0
    cp $00
    dec d
    nop
    xor d
    ld b, c
    rst $30
    ld [$00ff], sp
    ld a, a
    add b
    cp $01
    push de
    nop
    ld a, [hl+]
    ld b, b
    ld a, [hl]
    rra
    ld [hl], l
    ld e, $7a
    dec e
    ld [hl], l
    ld e, $72
    dec d
    ld [hl], c
    ld [de], a
    ld [hl], d
    ld de, $1271
    push af
    ret c

    ld a, [$75dd]
    ld a, a
    xor d
    xor a
    ld b, a
    ld b, a
    call nz, $c884
    adc a
    rst $28
    adc a
    ld a, e
    adc a
    ld a, l
    adc a
    ld a, e
    adc a
    ld a, [hl]
    adc a
    ld a, d
    adc a
    ld a, [hl]
    adc a
    ld a, e
    adc a
    ld a, l
    adc a
    ld a, [hl]
    ld a, [hl]
    cp l
    cp l
    db $db
    db $db
    rst $20
    rst $20
    rst $20
    rst $20
    db $db
    db $db
    cp l
    cp l
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    cp l
    cp l
    db $db
    db $db
    rst $20
    rst $20
    rst $20
    rst $20

Jump_006_5804:
    db $db
    db $db
    cp l
    cp l
    ld a, [hl]
    ld a, [hl]
    db $e3
    rst $38
    rst $38
    inc bc
    rst $38
    dec c
    ei
    dec a
    reti


    db $eb
    adc e
    db $dd
    sbc c
    xor e
    adc e
    db $dd
    sbc c
    xor e
    rst $38
    rst $38
    ld a, [hl]
    ld bc, $7cf0
    sbc e
    adc a
    rst $28
    sub h
    sbc c
    rst $38
    xor d
    rst $38
    rst $28
    rst $38
    db $eb
    nop
    rst $38
    rst $38
    rst $28
    ld e, $9d
    di
    ld [hl], a
    rst $28
    ld a, [hl-]
    rst $38
    rst $08
    rst $38
    ld a, a
    rst $38
    db $fd
    cp $3b
    add a
    ld a, l
    cp $aa
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rrca
    di
    ld hl, sp-$22
    xor a
    ld l, l
    db $d3
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    jr @+$01

    and h
    ei
    ld e, a
    ld a, h
    rst $38
    cp e
    rst $38
    ld l, a
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $f3
    ld l, c
    cp l
    sbc e
    xor $67
    cp d
    rst $20
    ld d, d
    cp a
    jp nc, $eadf

    rst $18
    db $eb
    ret nz

    or $31
    sbc a
    call c, $dbb3
    or l
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    sbc c
    xor e
    set 3, a
    rst $38
    cpl
    rst $28
    ccf
    rst $38
    cpl
    bit 3, a
    sbc c
    xor e
    ld c, e
    ld e, l
    cp l
    db $fd
    and [hl]
    db $fd
    cp h
    db $fd
    and b
    db $fd
    cp $fd
    cp l
    adc a
    db $ed
    sbc h
    push af
    rst $38
    ld a, a
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    adc a
    sbc a
    ld a, [hl]
    ld l, c
    and a
    rst $10
    ld d, e
    ld_long $ffff, a
    adc a
    ld a, a
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    cp $ff
    rst $38
    db $fc
    ei
    rst $38
    rst $38
    rst $30
    ldh a, [$f7]
    rst $38
    jp c, Jump_006_74cf

    ccf
    ld [bc], a
    db $fd
    rst $38
    rst $38
    ld e, $ff
    pop af
    pop af
    rra
    ld [hl], $6b
    rst $38
    ld d, l
    xor a
    db $eb
    rra
    or l
    ld c, $de
    sbc a
    ld a, [$9f97]
    cp [hl]
    sbc e
    or [hl]
    cp [hl]
    rra
    db $d3
    ld a, [hl]
    ld e, a
    cp $ae
    ei
    pop af
    rst $18
    di
    rst $18
    or e
    rst $18
    push af
    ei
    push de
    ei
    or a
    ld sp, hl
    push af
    db $db
    or a
    reti


    bit 3, l
    reti


    ld l, e
    db $eb
    dec a
    db $dd
    ld l, a
    sbc a
    db $dd
    sbc a
    cp l
    rst $08
    ld e, l
    sbc e
    ret


    cp b
    ld hl, sp-$15
    call c, $bbdc
    db $dd
    cp a
    ld a, [$efbf]
    cp a
    cp a
    db $fd
    cp l
    db $e4
    rst $38
    rst $38
    and b
    rst $38
    rst $38
    rst $38
    sbc e
    or $ff
    rst $38
    dec hl
    rst $18
    rst $38
    rst $38
    ld [hl], a
    rst $28
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    rst $38
    rst $38
    rst $08
    cp a
    rst $38
    rst $38
    adc a
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    xor l
    ld h, e
    rst $38
    rst $38
    db $fd
    ld hl, sp-$01
    rst $38
    db $fd
    ei
    rst $38
    rst $38
    add hl, de
    rst $30
    rst $38
    rst $38
    cp [hl]
    ld h, c
    rst $38
    rst $38
    ld e, $fd
    rst $38
    rst $38
    db $ec
    jp $ffff


    sub [hl]
    cp a
    reti


    xor c
    xor [hl]
    ld sp, hl
    xor c
    rst $38
    ld a, [$def7]
    rst $18
    sub d
    rst $18
    or a
    reti


    rst $30
    reti


    or a
    ld sp, hl
    or l
    ei
    rst $30
    reti


    push af
    db $db
    push af
    db $db
    or l
    db $db
    pop af
    jp c, $f5c0

    pop af
    ld a, d
    add sp, -$43
    ret


    ld e, d
    ret nc

    sub l
    pop de
    sub d
    jp hl


    adc b
    adc e
    rst $30
    adc e
    cp $ff
    rst $38
    ld a, c
    ld a, $87
    rst $38
    call c, $abff
    rst $38
    ld d, l
    xor a
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    db $10
    rst $28
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    sbc l
    ld [hl], a
    rst $38
    rst $38
    rst $38
    nop
    jr c, @+$01

    rst $28
    rst $10
    ld d, d
    xor b
    inc h
    ret nc

    rst $38
    rst $38
    ret nz

    cp a
    rst $38
    rst $38
    rst $38
    nop
    sbc h
    ld h, e
    rst $38
    rst $38
    add e
    nop
    nop
    nop
    rst $38
    rst $38
    dec [hl]
    jp z, $ffff

    rst $38
    nop
    cp $fe
    inc bc
    rst $38
    xor d
    ld d, l
    dec d
    ld a, [hl+]
    cp $ff
    nop
    rst $38
    rst $38
    rst $38
    cp $01
    add b
    ld a, a
    rst $38
    rst $38
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


    scf
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl-], a
    inc sp
    ld e, b
    ld e, b
    ld b, d
    ld b, e
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
    ld sp, $3636
    ld [hl], $41
    ld c, b
    ld c, b
    ld c, b
    ld b, c
    ld c, b
    ld c, b
    ld c, b
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld [hl], $36
    ld [hl], $34
    ld c, b
    ld c, b
    ld c, b
    ld b, h
    ld c, b
    ld c, b
    ld c, b
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
    ld b, $06
    ld b, b
    ld b, b
    ld b, $06
    ld b, b
    ld b, b
    ld b, $06
    ld b, b
    ld b, b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld e, d
    ld e, d
    ld b, b
    ld b, b
    ld e, c
    ld e, c
    ld b, b
    ld b, b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, b
    ld b, b
    ld e, d
    ld e, d
    ld b, b
    ld b, b
    ld e, c
    ld e, c
    ld b, $06
    ld b, b
    ld b, b
    ld b, $06
    ld b, b
    ld b, b
    ld b, $06
    ld b, b
    ld b, b
    ld b, $06
    ld b, b
    ld b, b
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
    rlca
    rlca
    rlca
    inc e
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
    ld a, [de]
    rlca
    rlca
    rlca
    db $10
    ld de, $1111
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [de]
    dec de
    scf
    jr c, jr_006_5d5c

    ld [bc], a

jr_006_5d5c:
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
    jr c, jr_006_5d7c

    ld [bc], a

jr_006_5d7c:
    add hl, sp
    ld a, [hl-]
    rlca

Call_006_5d7f:
    rlca
    rlca
    inc e
    rlca
    rlca
    rlca
    inc e
    jr jr_006_5da1

    rlca
    inc e
    rla
    rla
    ld [bc], a
    ld d, $10
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

jr_006_5da1:
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
    jr c, jr_006_5dbc

    ld [bc], a

jr_006_5dbc:
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
    jr c, jr_006_5e04

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

jr_006_5e04:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    inc a
    inc a
    inc a
    inc a
    and b
    and c
    and d
    and e
    or b
    or c
    or d
    or e
    xor b
    xor c
    xor d

jr_006_5e1d:
    xor e
    inc a
    inc a
    inc a
    inc a
    and h
    and l
    and [hl]
    and a
    or h
    or l
    or [hl]
    or a
    xor h
    xor l
    xor [hl]
    xor a
    ld b, c
    ld d, e
    ld d, e
    ld d, e
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld [hl+], a
    ld b, c
    sub h
    sub l
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    ld d, e
    ld d, e
    ld d, e
    ld b, h
    ld d, d
    ld d, d
    ld d, d
    ld d, h
    sub l
    sub [hl]
    ld b, h
    dec h
    ld d, d
    ld d, d
    ld d, h
    ld d, l
    ld [hl+], a
    ld b, c
    sub h
    sub l
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    ld [hl+], a
    ld b, c
    sub h
    sub l
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    sub l
    sub [hl]
    ld b, h
    dec h
    ld d, d
    ld d, d
    ld d, h
    ld d, l
    sub l
    sub [hl]
    ld b, h
    dec h
    ld d, d
    ld d, d
    ld d, h
    ld d, l
    ld b, c
    ld d, e
    ld d, e
    ld d, e
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld a, [de]
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc b
    sbc b
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    daa
    jr z, jr_006_5e1d

    sub l
    add hl, hl
    ld a, [hl+]
    sbc b
    sbc b
    ld [hl+], a
    ld b, c
    sub h
    sub l

jr_006_5e92:
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    dec sp
    ld a, [de]
    daa
    jr z, jr_006_5ed6

    sub a
    add hl, hl
    ld a, [hl+]
    sub l
    sub [hl]
    ld b, h
    dec h
    ld d, d
    ld d, d
    ld d, h
    ld d, l
    sub l
    sub [hl]
    inc e
    dec a
    sbc b
    sbc b
    sbc c
    dec a
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    sub h
    sub l
    sub l
    sub [hl]
    sbc b
    sbc b
    sbc b
    sbc b
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f

jr_006_5ed6:
    ld sp, $5353
    ld d, e
    ld b, c
    ld d, e
    ld d, e
    ld d, e
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    ld d, e
    ld d, e
    ld d, e
    inc [hl]
    ld d, e
    ld d, e
    ld d, e
    ld b, h
    ld b, c
    ld d, e
    ld d, e
    ld d, e
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld a, [de]
    sub l
    daa
    jr z, jr_006_5e92

    sbc b
    add hl, hl
    ld a, [hl+]
    ld d, e
    ld d, e
    ld d, e
    ld b, h
    ld d, d
    ld d, d
    ld d, d
    ld d, h
    sub l
    sub l
    sub [hl]
    inc e
    sbc b
    sbc b
    sbc b
    sbc c
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
    ld de, $0e0e
    ld c, $0e
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
    cp b
    cp c
    cp d
    cp e
    sbc h
    ld d, c
    ld d, d
    ld d, d
    dec sp
    sbc e
    daa
    jr z, jr_006_5fc6

    sub a
    add hl, hl
    ld a, [hl+]
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
    cp h
    cp l
    cp [hl]
    cp a
    ld d, d
    ld d, d
    ld d, d
    ld d, h

jr_006_5fc6:
    sub l
    sub [hl]
    inc e
    dec a
    sbc b
    sbc b
    sbc c
    dec a
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
    dec b
    dec b
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
    ld b, $06
    ld e, $1f
    inc de
    dec d
    ld a, $3f
    ld b, l
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
    inc de
    dec d
    dec b
    dec b
    ld b, l
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
    inc de
    dec d
    ld e, $1f
    ld b, l
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
    inc de
    dec d
    dec b
    dec b
    ld b, l
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
    inc a
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
    inc a
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

Call_006_630a:
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
    sbc d
    sbc d
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
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    scf
    jr c, jr_006_63a4

    dec de
    add hl, sp
    ld a, [hl-]
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, [hl]
    ld c, a
    ld b, $06
    ld e, [hl]
    ld e, a
    ld c, l
    inc d
    inc d
    inc d
    inc d
    inc d

jr_006_63a4:
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
    ld [hl], $36
    ld [hl], $36
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    add b
    add c
    add c
    add c
    add e
    add h
    sub e
    add l
    adc c
    adc d
    adc e
    adc h
    sub b
    sub c
    sub c
    sub c
    add c
    add c
    add c
    add d
    add [hl]
    sub e
    add a
    adc b
    adc l
    adc e
    adc [hl]
    adc a
    sub c
    sub c
    sub c
    sub d
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_006_6434

    jr jr_006_6436

    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    inc h
    daa
    add hl, hl
    daa
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_006_6434:
    rlca
    rlca

jr_006_6436:
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
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
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    dec d
    dec d
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec d
    dec d
    rlca
    rlca
    dec d
    dec d
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
    add hl, hl
    daa
    daa
    add hl, hl
    add hl, hl
    daa
    daa
    add hl, hl
    daa
    nop
    nop
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
    rlca
    rlca
    rlca
    ld [hl], c
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
    rlca
    rlca
    rlca
    rlca
    dec d
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
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
    dec d
    ld [de], a
    nop
    nop
    dec d
    dec d
    dec d
    nop
    dec d
    dec d
    nop
    nop
    dec d
    dec d
    nop
    dec d
    nop
    dec d
    nop
    ld [de], a
    dec d
    nop
    dec d
    nop
    dec d
    dec d
    dec d
    dec d
    nop
    dec d
    nop
    dec d
    nop
    nop
    ld [de], a
    dec d
    dec d
    nop
    dec d
    dec d
    nop
    nop
    dec d
    dec d
    nop
    dec d
    dec d
    dec d
    ld [de], a
    nop
    dec d
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
    ld a, e
    rlca
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    add hl, hl

jr_006_65e7:
    add hl, hl
    add hl, hl
    add hl, hl
    rlca
    rlca
    ld [hl], c
    rlca
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    ld l, a
    inc de
    ld d, h
    ld bc, $03aa
    ld e, [hl]
    rrca
    or h
    inc d
    ld h, h
    inc h
    pop hl
    ld h, b
    ld b, d
    ld b, d
    jp $1cc1


    rst $38
    pop bc
    db $e3
    ld h, e
    ldh [rNR43], a
    add l
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld b, b
    nop
    ld d, l
    nop
    ld [$75c0], a
    ld [hl], b
    ld a, [$6958]
    xor h
    or $56
    ld l, e
    ld [$d7d5], a
    xor e
    add c
    ld e, [hl]
    ld b, h
    daa
    rlca
    cp a
    rra
    ld e, a
    rra
    cp a
    ld b, e
    ccf
    rst $38
    nop
    rst $38
    add e
    adc a
    dec b
    push hl
    ldh [$fa], a
    ld hl, sp-$05
    ld hl, sp-$5d
    adc l
    ldh [$3a], a
    db $fd
    db $fd
    inc c
    inc bc
    inc d
    inc c
    jr nc, @+$12

    ld h, b
    jr nz, jr_006_65e7

    ld b, b
    ret nz

    ld b, b
    ld bc, $8740
    add c

jr_006_666e:
    ld a, [de]
    ldh [rNR14], a
    jr nc, jr_006_668b

    ld [$043c], sp
    ld a, [de]
    ld c, $7f
    ld b, $fa
    cpl
    push af
    ld e, a

Jump_006_667e:
    dec c
    nop
    ld a, [de]
    nop
    inc [hl]
    nop
    ld l, c
    nop
    db $d3
    nop
    and a
    nop
    ld c, [hl]

jr_006_668b:
    nop
    sbc l
    nop
    rst $38
    ld a, [hl]
    rst $38
    cp l

jr_006_6692:
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    add $81
    ldh [rNR50], a
    cp [hl]
    ld [de], a
    ld e, a

jr_006_669e:
    dec [hl]
    cp a
    ld d, $17
    inc de
    or l
    dec d
    ld d, [hl]
    ld d, $17
    inc de
    dec d
    dec d
    xor b
    nop
    ld d, l
    jr nz, jr_006_6692

    ret z

    db $f4
    jr nz, jr_006_669e

    and b
    push af
    and d
    ld l, d
    jr nz, jr_006_666e

    and b
    nop
    ld [$7f7f], sp
    ld [hl], a
    ld h, $7f
    dec b
    ld a, e
    rst $38
    ld a, a
    ld a, [hl]
    nop
    cp a
    ld [hl+], a
    rst $38
    nop
    rst $30
    jp $8581


    add [hl]
    ld b, e
    rst $38
    nop
    ld a, [bc]
    ldh [$7f], a
    add b
    rst $38
    rst $38
    nop
    cpl
    nop
    add b
    ld a, a
    ld a, a
    xor d
    adc a
    nop
    db $fc
    and e
    adc a
    jr nc, @+$01

    rrca
    rst $08
    rst $00
    ld hl, sp-$32
    ld [hl], d
    ld a, [hl]
    xor h
    xor h
    ld b, h
    ld b, h
    add h
    add b
    add d
    add [hl]
    add c
    adc a
    ld h, c
    ld bc, $0041
    adc e
    nop
    inc h
    ldh [rNR43], a
    xor e
    xor a
    ld d, l
    rst $18
    db $eb
    ld l, a
    ld [hl], a
    or $ab
    ld a, [hl]
    ld d, a
    cp $eb
    ld a, a
    push de
    rst $38
    cp a
    cp a
    ld a, a
    ld a, a
    ccf
    ccf
    cp a
    ccf
    ld a, a
    ccf
    cp d
    ccf
    push de
    rra
    jp z, $ffcf

    db $fd
    cp $a4
    adc l
    ldh [$37], a
    rst $38
    db $fc
    xor a
    db $fc
    ld d, e
    ei
    xor c
    ld sp, hl
    adc a
    add d
    rst $08
    add l
    rst $38
    add d
    ld a, a
    call nz, $ecbb
    ld e, l
    ld a, a
    xor e
    ld a, $15
    rra
    ld l, e
    cp a
    sub l
    ld a, a
    ld [$d63f], a
    ld a, a
    cp l
    ei
    reti


    ccf
    sub [hl]
    ld a, [hl]
    push hl
    ld hl, sp+$3a
    nop
    ld [hl], h
    nop
    add sp, $00
    ret nc

    nop
    and b
    nop
    ld b, c
    nop
    add e
    nop
    ld b, $00
    add e
    nop
    or b
    dec d
    and d
    ld [$0014], sp
    xor d
    nop
    ld d, l
    ld [bc], a

Jump_006_676d:
    ld a, [bc]
    nop
    inc d
    nop
    or [hl]
    ld d, $57
    inc sp
    or l
    dec d
    ld e, $1a
    xor e
    ld bc, $8f85
    rrca
    cp b
    or b
    cp l
    inc l
    or e
    cp e
    cp [hl]
    xor [hl]
    ld a, $3c
    cp l
    cp d
    cp d
    or b
    db $f4
    ldh [rNR43], a
    ld a, a
    nop
    rst $18
    ld [hl+], a
    ld a, a
    ld [bc], a

jr_006_6795:
    rst $38
    ld a, a
    rst $28
    ld b, e
    ld a, a
    rst $38
    xor b
    nop
    cp $01
    ei
    rst $28
    and e
    nop
    rst $10
    inc b
    ld a, a
    rst $38
    rst $38
    ld b, a
    rst $28
    ld b, a
    ld a, a
    rst $38
    nop
    nop
    jp $0301


    ld [bc], a
    rst $38
    cp $ff
    xor l
    adc a
    ldh [$64], a
    nop
    ccf
    nop
    sbc a
    nop
    rst $20
    jr nz, jr_006_6795

    db $10
    db $eb
    ld [$00f5], sp
    db $fc
    nop
    cp $81
    pop af
    jp nz, $c4e0

    jp nz, $45c0

    ret nc

    ld c, d
    ld h, b
    dec [hl]
    jr c, jr_006_67f7

    rra
    rlca
    ld b, d
    ldh [$38], a
    inc a
    ld [$143c], sp
    ld a, h
    ld [$2dbc], sp
    ld a, h
    ld e, [hl]
    rst $38
    rst $20
    pop hl
    xor e
    xor e
    ld d, l
    ld e, a
    dec hl
    cpl
    sub a
    ld [hl], $4b
    ld e, $af
    inc c
    rra

jr_006_67f7:
    ld hl, sp-$02
    ldh [$09], a
    nop
    rra
    rrca
    jr c, jr_006_683e

    ld [hl], h
    dec a
    add sp, $7e
    ld d, h
    ld a, l
    rst $08
    ld a, d
    di
    push af
    ldh a, [$e0]
    inc a
    jr c, jr_006_683d

    inc a
    ld [hl], $5e
    dec sp
    cp [hl]
    ld b, a
    ld b, a
    add e
    add e
    add a
    add c
    rst $38
    rst $38
    rst $18
    ret nz

    cp a
    ld c, c
    add b
    rst $38
    nop
    sbc a
    and [hl]
    adc a
    ld [$fd05], sp
    rrca
    db $fd
    rra
    db $fd
    ccf
    db $fd
    rst $38
    ld b, l
    xor l
    jp nc, $ab47

    call nc, $a903
    sub $95
    ld l, e
    ld c, e
    or l

jr_006_683d:
    ld c, e

jr_006_683e:
    ldh [rNR44], a
    sub l
    ld l, e
    xor c
    ld bc, $2256
    and l
    dec c
    dec d
    dec b
    xor l
    dec b
    ld e, [hl]
    inc c
    ccf
    dec a
    ld [hl], a
    ld a, l
    xor b
    add b
    push de
    ld h, b
    ld [c], a
    xor b
    db $fc
    xor h
    ld a, [c]
    jp nc, $ecef

    ld l, [hl]
    ld l, h
    xor [hl]
    xor [hl]
    rst $38
    rst $38
    ld b, l
    cp a
    ldh [rSB], a
    cp [hl]
    and $85
    add e
    ld bc, $ffff
    ld c, [hl]
    rst $38
    nop
    and [hl]
    sbc a
    ld bc, $c7dd
    add l
    add e
    ld c, l
    rst $38
    nop
    ld bc, $ff00
    adc a
    nop
    sub b
    ldh a, [$3f]
    adc a
    ld [$3c00], sp
    nop
    adc c
    nop
    ld h, b
    nop
    rst $30
    nop
    ld b, e
    rst $20
    nop
    rlca
    sbc e
    nop
    call c, $9df0

jr_006_6898:
    ld sp, hl
    sbc [hl]
    ld hl, sp-$7c
    add e
    ld a, [bc]
    ldh a, [$9f]
    rst $38
    sbc a
    cp a
    rst $18
    dec a
    ld a, a
    dec a
    rst $38
    dec a
    and e
    ld bc, $e056
    ld [hl+], a
    ld a, l
    dec sp
    db $fd
    di
    db $fd
    pop hl
    rst $38
    cp $ff
    xor e
    jp nc, $fefd

    push bc
    cp $ff
    cp $ac
    pop de
    cp $ff
    add c
    rst $38
    ld a, a
    rst $38
    bit 6, l
    cp a
    ld a, a
    and c
    ld a, a
    rst $38
    ld a, a
    dec bc
    push af
    and e
    adc a
    ldh [$27], a
    rst $28
    ld a, h
    rst $10
    db $fd
    xor l
    rst $38
    call c, $fdff
    ld a, a
    ld e, a
    ld a, a
    ccf
    ccf
    rra
    rrca
    call z, $ffcc
    ld l, [hl]
    cp $ae
    cp $ce
    ld a, [hl]
    db $ec
    cp l
    xor $fa
    ld hl, sp-$0c
    ldh [$98], a
    ldh [$b0], a
    ret nz

    rst $38
    rst $38
    add b
    rst $38
    add l
    add a
    add e
    ld [bc], a
    ei
    ld bc, $0000
    adc e
    add a
    ld c, a
    xor l
    jp nc, $d54f

    dec hl
    inc c
    db $eb
    nop
    sub h
    ld b, c
    xor d
    nop
    ret c

    nop
    jr nz, jr_006_6898

    ld b, b
    nop
    add b
    ld h, d
    ld b, $eb
    nop
    ld d, $41
    xor a
    nop
    ld a, [de]
    xor b
    adc a
    inc b
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
    adc a
    inc bc
    db $10
    inc e
    ret nc

    rst $28
    rst $38
    cp a
    db $d3
    rst $28
    db $fd
    cp h
    rst $10
    db $ed
    db $fc
    cp a
    db $d3
    rst $28
    cp a
    rst $38
    inc bc
    rst $38
    db $fd
    rst $38
    jp $bdff


    ld a, a
    and e
    rst $38
    dec a
    rst $38
    db $e3
    push bc
    ld bc, $8cff
    add d
    add hl, bc
    cp l
    rst $18
    adc a
    rst $30
    add e
    rst $38
    and c
    rst $38
    sbc c
    rst $38
    ld b, l
    cp a
    rst $18
    add e
    ld [bc], a
    call z, $bf0d
    ret nc

    sbc a
    ld hl, sp-$71
    rst $30
    add e
    db $fd
    jp $e7ff


    cp l
    db $dd
    rst $00
    and a
    adc a
    dec b
    add c
    rst $38
    jp $a7ff


    db $fd
    xor a
    xor a
    ld b, l
    xor l
    jp nc, $ac01

    db $d3
    ld b, e
    xor a
    ret nc

    dec bc
    and b
    rst $18
    cp a
    ret nz

    rst $38
    cp $fd
    dec b
    ei
    dec b
    rlca
    ei
    add a
    add l
    xor a
    adc a
    ld b, l
    push de
    dec hl
    ld bc, $eb15
    and a
    xor a
    sbc a
    inc bc
    db $10
    dec bc
    db $e3
    ld a, a
    db $e3
    or [hl]
    db $eb
    ld [hl], a
    db $eb
    or [hl]
    db $eb
    ld [hl], a
    xor d
    rst $30
    add e
    nop
    call c, Call_006_630a
    rst $38
    and d
    rst $30
    ld l, e
    rst $30
    xor d
    rst $30
    db $eb
    rst $30
    ld l, e
    add h
    adc a
    ld c, a
    sbc a
    ldh [rLYC], a
    rrca
    pop af
    ld b, e
    rra
    pop hl
    dec b
    ccf
    pop bc
    ld a, a
    add c
    rst $38
    ld bc, $0f4f
    pop af
    call nz, $ec01
    add e
    nop
    and $01
    rst $38
    ccf
    add h
    inc bc
    rrc l
    sbc a
    rst $28
    rst $18
    ld [hl], a
    db $ed
    ld h, e
    ld a, [c]
    daa
    or $2f
    or $1f
    rst $38
    rrca
    add e
    nop
    push af
    ld a, [bc]
    adc a
    rst $38
    ld hl, sp-$01
    rst $38
    adc a
    adc e
    adc h
    adc h
    rst $38
    adc h
    ld [hl+], a
    rst $38
    xor a
    adc a
    add hl, de
    ld sp, hl
    rst $30
    ld a, [$b2ef]
    rst $00
    call z, $6c67
    rst $30
    ld l, b
    rst $38
    ldh a, [rIE]
    ld bc, $c0fe
    rst $38
    cp e
    rst $38
    rst $38
    cp a
    cp l
    call nz, $fb84
    ld b, l
    add b
    rst $38
    ld bc, $fd03
    and e
    dec b
    inc a
    inc bc
    rst $30
    ld de, $ef11
    xor e
    adc a
    nop
    cp e
    xor c
    adc a
    and h
    xor a
    nop
    db $ed
    xor b
    xor a
    ldh [$ac], a
    ld c, e
    ld [de], a
    xor l
    dec b
    call nc, Call_006_7624
    cp d
    reti


    ld c, [hl]
    add h
    add a
    add e
    add [hl]
    adc h
    jp nz, Jump_006_71fb

    xor c
    ret c

    ld d, l
    db $ec
    scf
    ld a, l
    call $8f4b
    add l
    sub $8b
    xor $93
    dec b
    dec de
    jr nz, jr_006_6a91

    ld c, h
    ld b, h
    sub [hl]
    adc h
    db $eb
    sub [hl]

jr_006_6a73:
    add $63
    res 0, h
    dec d
    add d
    ld [hl], d
    ld [hl], b
    call z, Call_006_728c
    ld b, d

jr_006_6a7f:
    dec e
    add hl, sp
    ld h, a
    dec h
    rst $00
    ld b, d
    ld l, e
    push bc
    rst $30
    ld c, c
    dec c
    nop
    dec de
    ld bc, $6276
    cp d
    sub d

jr_006_6a91:
    or h
    sub h

jr_006_6a93:
    xor l
    sbc h
    push de
    adc [hl]
    jp c, $fa47

    ret nz

    ld [hl], h
    jr nz, jr_006_6af7

    ld sp, $32d6
    db $dd
    inc [hl]
    sub a
    ld [hl], h
    xor a
    ld a, h
    dec h
    cp $4a
    ld b, $93
    add hl, bc
    and b
    sub c
    pop bc
    ld h, b
    ld c, e
    ret nz

    ld d, [hl]
    pop bc
    dec l
    db $e3
    cp e
    ld h, [hl]
    jr z, jr_006_6abb

jr_006_6abb:
    ld b, h
    jr jr_006_6a7f

    and h
    ld b, d
    db $e4
    ld c, h
    jp nz, $828d

    ld e, h
    ld b, d
    reti


    ld b, h
    dec a
    jr nc, jr_006_6b37

    ld e, e
    push bc
    adc h
    adc l
    ret nz

    or e
    call nz, $ea55
    xor e
    ld [hl], l
    rst $10

jr_006_6ad8:
    ld a, [hl-]
    ld e, e
    jr c, jr_006_6a93

    db $ed
    ld [c], a
    ld [hl], a
    dec [hl]
    sub d
    sbc h
    adc d
    call nz, $a68d
    call z, Call_006_78cd
    db $dd
    rst $08
    ld [hl], d
    cp c
    xor c
    ld [hl], b
    ld l, d
    nop
    jr z, jr_006_6a73

    ld de, $2400
    ld h, d

jr_006_6af7:
    dec b
    and l
    rst $18
    ld e, d
    db $fd
    and c
    ld a, b
    adc c
    adc a
    ldh [rNR51], a
    rst $28
    ld h, c
    rst $18
    or [hl]
    ld a, [hl-]
    sbc l
    or l
    rra
    ld [hl], a
    ld l, $6d
    ld e, e
    jp c, $3571

    inc hl
    cp d
    inc e
    push hl
    cp [hl]
    db $d3
    adc $a6
    rra
    ld e, l
    dec sp
    inc sp
    push hl
    ld l, l
    jp $e65b


    ld c, c
    nop
    ld [de], a
    inc c
    xor h
    rra
    ld b, e
    ld a, a
    ccf
    ldh [$b8], a
    cp a
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    sub l
    jr nz, jr_006_6ad8

    ld a, b

jr_006_6b37:
    ei
    db $fc
    db $fc
    cp $fd
    cp $f8
    db $fc
    ld a, [$fdfc]
    cp $5c
    ld [c], a
    adc l
    sub d
    or $89
    ld l, a
    db $f4
    sub l
    cp d
    jp z, $f59d

    ld c, [hl]
    xor a
    ld a, d
    cp d
    ld b, a
    jp nc, $ea2d

    dec d
    ld a, d
    add a
    or l
    ld c, l
    db $db
    dec l
    db $dd
    rst $28
    ld a, e
    or [hl]
    cp d
    pop bc
    sbc a

jr_006_6b66:
    jr nz, jr_006_6bd7

    sub b
    cp a
    call z, Call_006_73de
    ld h, a
    add hl, sp
    sub e
    inc e
    dec c
    ld c, $9d
    jp $a7c9


    pop hl
    sbc a
    pop af
    adc a
    di
    ld c, [hl]
    ld [hl], a
    call z, $b6ee
    dec a
    ld e, e
    ld a, c
    ld b, a
    ld [hl], a
    add hl, hl
    ld h, [hl]
    add hl, hl
    rst $08
    ld b, c
    sbc [hl]
    add e
    cp [hl]
    add h
    ld a, h
    ld c, b
    ld l, b
    ld e, b
    ld c, d
    ld sp, hl
    ld d, a
    ldh a, [$ee]
    pop hl
    ld e, h
    jp $e799


    ld b, d
    cp $be
    ld a, h
    xor a
    ld a, h
    or h
    ld l, a
    ld [hl+], a
    di
    ld h, e
    pop hl
    sub l
    add d
    ld l, $01
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    jp c, Jump_006_7544

    ret z

    ld [hl], d
    jr z, jr_006_6b66

    db $f4
    ld [$6f7a], a
    xor c
    sbc l
    ld a, e
    adc l
    ld c, e
    ld e, l
    add hl, sp
    ld hl, sp+$64
    push bc
    add d
    sbc h
    rst $20
    or $73
    ld e, l
    ld l, [hl]
    and e
    ld [hl], c
    ld e, [hl]
    ccf
    reti


    inc c
    ld a, [c]
    ret nz

jr_006_6bd7:
    ld sp, $e5f8
    jp $80c8


    call nc, $baf8
    db $ec
    ld l, l
    or $01
    nop
    inc b
    add h
    inc b
    dec de
    add e
    inc b
    inc c
    ld [bc], a
    ld [$4000], sp
    ld l, b
    nop

jr_006_6bf2:
    ld [bc], a
    and h
    adc a
    ld h, c
    ldh [rNR42], a
    ld l, d
    rst $38
    add h

jr_006_6bfb:
    rrca

jr_006_6bfc:
    ld l, [hl]
    rra
    or a
    ld [hl], e
    ld a, [de]
    add a
    db $ed
    ld e, $33
    ld a, c
    ld l, [hl]
    sbc a
    rst $38
    ld b, [hl]
    push bc
    add e
    ld a, c
    rst $20
    db $dd
    cp [hl]
    sbc d
    add a
    ld a, [$b507]
    adc $ea
    db $fd
    rst $38
    ld a, a
    add h
    ld bc, $07cc
    ld a, a
    cp a
    ld a, a
    ld d, a
    cpl
    dec h
    inc bc
    sub c
    call nz, $fa01
    ld b, e
    db $fd
    cp $e0
    and a
    or $f8
    add sp, -$0e
    jp nc, $88e0

    nop
    ld d, c
    nop
    cp d
    ld de, $3a6f
    ld e, e
    ld h, l
    and l
    ld b, e
    dec l
    ld b, e
    ld e, d
    ld h, a
    xor l
    sbc [hl]
    ld a, d
    jr nc, jr_006_6bf2

    ret c

    rra
    dec hl
    sub a
    inc l
    ld l, d
    sbc h
    db $d3
    db $fc
    xor b
    rra
    dec d
    ld c, $30
    jr c, jr_006_6bfb

    ld b, a
    ld [hl], l
    and d
    db $dd
    ld h, e
    ld [$c457], a
    cp [hl]
    add hl, de
    db $fc
    xor d
    ld [hl], c
    ld [$2100], sp
    ld h, b
    jr nc, jr_006_6bfc

    push de
    call z, $b23c
    xor $49
    or e

jr_006_6c73:
    push bc
    sbc $ba
    ld l, c
    jr c, @-$4b

    jr nc, @+$79

    ld d, b
    sbc $71
    ld l, h
    ld c, e
    db $dd
    adc a
    scf
    sub d
    rst $28
    and d
    or l
    ld l, [hl]
    cp d
    ld h, l
    ld [hl], l
    ret z

    ld h, b
    ret c

    call nc, $9eb8
    ld [hl], b
    xor e
    ld [hl], b
    ld sp, $fff0
    nop
    ld a, h
    add e
    ld a, h
    call nz, $68b9
    ld e, e
    jr nc, jr_006_6ccf

    add hl, de
    ld d, b
    ccf
    xor c
    ld e, a
    add hl, bc
    add a
    dec e
    rlca
    add hl, sp
    adc a
    or d
    ld e, [hl]
    db $ed
    inc a
    ld d, [hl]
    db $ec
    adc e
    add $1a
    add [hl]
    ld [hl], h
    dec hl
    db $e3
    ld b, l
    pop bc
    add d
    or b
    pop bc
    ld l, d
    ldh a, [$75]
    ld e, b
    jp z, Jump_006_676d

    ccf
    push de
    cp b
    xor d
    inc e
    dec d
    ld c, $8e
    dec b
    ld e, l

jr_006_6ccf:
    adc d
    ld a, [hl-]
    cp $f6
    call z, Call_006_78bf
    ld h, c
    ld [bc], a
    inc b
    nop
    jr nz, jr_006_6d3e

    ld [bc], a
    dec b
    nop
    ld [hl+], a
    ld h, [hl]
    ld [$0034], sp
    ld b, b
    ld [$0420], sp
    inc b
    jr nz, jr_006_6c73

    add e
    rlca
    cp h
    ldh [$28], a
    nop
    ld [$447f], a
    rrca
    inc l
    ld e, $b6
    ld b, d
    dec de
    add [hl]
    xor $1d
    dec [hl]
    ld a, e
    ld l, [hl]
    sbc a
    sbc e
    ld b, $e5
    jp Jump_006_73bd


    cpl
    ld e, $2d
    dec de
    db $dd
    dec hl
    sbc e
    cp $6f
    inc e
    nop
    add b
    nop
    add b
    rst $38
    add b
    cp b
    rst $38
    add l
    add a
    nop
    cp a
    and [hl]
    add a
    add a
    add a
    ldh [$81], a
    add hl, sp
    rst $38
    cp $81
    ld [hl], e
    ld h, b
    or c
    sub b
    xor b
    sub b
    db $f4
    adc b
    ld e, e
    ld b, h
    xor l
    ld [hl+], a
    ld a, [hl]
    add hl, de
    sub a
    rrca
    ld a, h
    adc a
    call nc, $ad7e
    ld a, [hl]
    rst $18

jr_006_6d3e:
    ld a, $ea
    ccf
    rst $10
    ld l, l
    or h
    rst $08
    rst $38
    sbc c
    push hl
    ld a, [hl]
    ld a, [hl+]
    rlca
    ld d, [hl]
    dec c
    xor h
    add hl, de
    ret c

    inc sp
    xor c
    rst $38
    ld b, a
    ld a, [hl]
    or [hl]
    ld l, h
    ld c, d
    add $16
    adc d
    rst $28
    sbc l
    ld [hl], l
    ei
    cp d
    add $6d
    sbc h
    ld a, [$7970]
    daa
    ld [hl], d
    ld e, a
    cp a
    adc l
    ld l, l
    dec de
    srl [hl]
    sbc h
    or $6e
    ld h, e
    sbc l
    ld bc, $e85b
    xor [hl]
    push bc
    ld d, l
    adc [hl]
    xor c
    ld e, $5e
    ccf
    xor e
    ld [hl], l
    ld d, l
    add sp, -$16
    add b
    ld d, [hl]
    adc a
    or h
    ld c, $6f
    dec e
    db $d3
    ld [hl-], a
    cpl
    pop hl
    sub h
    ei
    ld l, c
    rst $38
    rst $18
    ld h, $7c
    inc b
    ld a, [$f808]
    dec d
    db $ed
    cp d
    ld a, [$f410]
    and c
    ld [$5440], a
    add b
    add l
    rlca
    add b
    ldh [rOBP1], a
    sbc l
    rst $20
    or $73
    db $dd
    ld l, [hl]
    jr nz, jr_006_6e25

    ld e, [hl]
    ccf
    ld [$d5be], a
    ld h, h
    add e
    jp nz, $8121

    db $d3
    add b
    cp $01
    call z, Call_006_723f
    di
    adc d
    jr nz, jr_006_6def

jr_006_6dc7:
    ld b, d
    rst $10
    ld a, [bc]
    sbc e
    ret


    ld l, c
    db $db
    or h
    ld a, e
    ld l, c
    rst $18
    sub [hl]
    adc a
    ld b, [hl]
    inc l
    adc d
    ld b, [hl]
    sub l
    add e
    add hl, hl
    rlca
    ld e, d
    rlca
    cp e
    add a
    pop af
    adc a
    push hl
    sbc e
    sub l
    ld a, [hl]
    xor d
    ld b, a
    push de
    db $e3
    ld l, h
    inc sp
    inc [hl]
    sbc a
    sbc e

jr_006_6def:
    rst $08
    ld d, h
    di
    xor l
    ld h, d
    sub l
    ld [$00d0], sp
    cp e
    adc [hl]
    ld [$00e7], sp
    push af
    add [hl]
    add a
    ldh [rVBK], a
    sbc e
    rst $38
    inc sp
    inc sp
    ld c, h
    ld c, h
    sbc b
    adc b

jr_006_6e0a:
    rst $28
    sbc b
    ret


    cp [hl]

jr_006_6e0e:
    sub $b1
    xor l
    ld [c], a
    ld a, e
    ld b, h
    ld c, c
    ret nz

    ld a, h
    inc a
    rst $00
    inc hl
    adc [hl]
    ld b, b
    inc e
    add b
    jr c, jr_006_6e20

jr_006_6e20:
    rst $10
    jr nz, jr_006_6dc7

    ld c, b
    rrca

jr_006_6e25:
    rrca
    ld a, e
    ld [hl], b
    sub a
    add b
    ld l, $01
    ld e, l
    ld [bc], a
    ld a, [$f504]
    ld a, [bc]

jr_006_6e32:
    db $eb
    inc d
    rst $08
    add $a9
    ld l, c
    ld d, e
    sub c
    add l
    inc bc
    add hl, bc
    inc bc
    sub d
    ld [bc], a
    push bc
    inc hl
    cp c
    ld b, a
    ld [hl-], a
    inc sp
    ld c, [hl]
    ld c, h
    sbc h
    adc b
    jp hl


    sbc b
    res 7, b
    sub $b1
    db $ed
    and d
    add e
    cp a
    dec c
    ld h, b
    jr nz, jr_006_6e32

    jr c, jr_006_6e0e

    ld b, h
    ld l, [hl]
    add d
    rst $18
    ld [bc], a
    sbc [hl]
    ld [hl+], a
    dec sp
    ld b, [hl]
    adc b
    nop
    add b
    inc c
    inc b
    and a
    jr jr_006_6eb9

    jr nz, jr_006_6e0a

    nop
    ld a, [hl-]
    ld bc, $0874
    add sp, $10
    adc b
    ld bc, $e086
    dec hl
    ld bc, $62ad
    ld e, [hl]
    pop bc
    ld d, h
    db $eb
    xor c
    rst $30
    db $d3
    cp [hl]
    xor l
    rst $18
    ld c, l
    ei
    or d
    ld a, l
    rst $08
    add c
    sbc a
    ld bc, $0b75
    ld l, d
    sub a
    push bc
    ld a, $9d
    ld a, [hl]
    and h
    ld a, a
    db $db
    rst $20
    and l
    set 3, e
    rst $20
    ld l, e
    or a
    ld e, d
    ld [hl], $d3
    ld a, $ad
    add h
    adc a
    rrca
    push bc
    or e

jr_006_6eaa:
    rrca
    jp $07bb


    ld a, [$f706]
    dec bc
    dec l
    sub $9a
    rst $38
    db $fd
    ld h, e
    adc a

jr_006_6eb9:
    sbc a
    rrca
    sub d
    rst $38
    ld a, [bc]
    cp $4c
    cp [hl]
    and l
    sbc $d2
    ld l, a
    dec sp
    or $ce
    db $fd
    sub l
    ld c, d
    ld a, a
    ldh [$3f], a
    ld d, l
    ld l, d
    ld l, d
    ld d, l
    sub l
    ld [$fc83], a
    add h
    ei
    ld h, h
    ld a, e
    sbc b
    rra
    daa
    rlca
    ld [hl], e
    adc h
    add sp, $1f
    call $9237
    ld l, a
    dec h
    rst $18
    ld c, e
    cp a
    dec d
    ld a, [$f0ea]
    sub a
    ld l, b
    ld c, $f1
    ld b, l
    ld a, [$fca3]
    ld d, h
    ei
    db $e4
    ei
    ld e, [hl]
    ccf
    and l
    inc bc
    ld [hl], c
    adc a
    pop hl
    rra
    jp z, $9336

    ld l, [hl]
    ld h, $dc
    ld c, h
    cp b
    ld a, [hl-]
    ldh a, [$d1]
    ldh [$89], a
    cp a
    add hl, bc
    ld [hl], h
    ld a, e
    sbc [hl]
    rrca
    inc hl
    ld bc, $8e74
    db $e3
    ld e, $8b
    sbc a
    add [hl]
    ld bc, $1080
    ld bc, $06a0
    ld b, c
    jr jr_006_6eaa

    ld h, b
    ld b, $80
    dec c
    ld [bc], a
    ld a, [de]
    nop
    inc [hl]
    ld b, b
    ld l, c
    add b
    add [hl]
    nop
    adc b
    db $ec
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc d
    add hl, de
    sbc d
    sbc d
    add hl, de
    sbc d
    add hl, de
    add hl, de
    sbc d
    add hl, de
    add hl, de
    add hl, de
    xor d
    add hl, de
    add hl, de
    sbc d
    sbc d
    sbc d
    add hl, de
    add hl, de
    sbc d
    add hl, de
    add hl, de
    sbc d
    add hl, de
    add hl, de
    ld a, [bc]
    dec bc
    sbc d
    add hl, de
    ld a, [de]
    dec de
    adc b
    adc c
    adc d
    adc e
    sbc b
    sbc c
    sbc d
    sbc d
    xor b
    xor c
    sbc d
    sbc e
    xor b
    xor c
    sbc d
    sbc d
    adc d
    adc e
    adc d
    adc e
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc e
    sbc d
    sbc d
    xor d
    xor d
    sbc e
    sbc d
    adc d
    adc e
    adc h
    adc l
    sbc d
    sbc d
    sbc h
    sbc l
    sbc d
    sbc d
    xor h
    xor l
    sbc d
    sbc d
    xor h
    xor l
    sbc d
    xor e
    sbc e
    xor d
    add hl, de
    add hl, de
    add hl, de
    sbc e
    add hl, de
    add hl, de
    ld a, [hl+]
    dec hl
    sbc d
    add hl, de
    ld a, [hl-]
    dec sp
    xor b
    xor c
    sbc d
    sbc e
    xor b
    xor c
    sbc d
    sbc d
    xor b
    xor c
    sbc d
    sbc d
    xor b
    xor c
    sbc d
    sbc e
    xor d
    xor d
    xor d
    sbc d
    xor d
    add hl, de
    add hl, de
    sbc d
    xor d
    add hl, de
    add hl, de
    sbc e
    sbc d
    xor d
    sbc d
    add hl, de
    sbc d
    sbc d
    xor h
    xor l
    sbc d
    sbc d
    xor h
    xor l
    sbc e
    sbc d
    xor h
    xor l
    sbc d
    sbc d
    xor h
    xor l
    ret nz

    pop bc
    jp nz, $d0c3

    pop de
    jp nc, $c0d3

    pop bc
    jp nz, $d0c3

    pop de
    jp nc, $a8d3

    xor c
    sbc d
    sbc e
    xor b
    xor c
    sbc d
    sbc d
    cp b
    cp c
    cp d
    cp d
    ret z

    ret


    jp z, $9aca

    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    cp d
    cp e
    cp d
    cp d
    jp z, $cacb

    jp z, $9a9b

    xor h
    xor l
    sbc d
    sbc d
    xor h
    xor l
    cp d
    cp e
    cp h
    cp l
    jp z, $cccb

    call $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc e
    ld [de], a
    sbc d
    sbc e
    and b
    and c
    sbc d
    ld [de], a
    or b
    or c
    sbc d
    sbc d
    sbc d
    sbc d
    sbc e
    xor d
    sbc d
    sbc d
    and d
    and e
    xor d
    sbc d
    or d
    or e
    xor d
    sbc d
    ld [de], a
    sbc e
    xor d
    ld [de], a
    sbc e
    xor e
    sbc e
    sbc e
    add b
    add c
    xor [hl]
    xor a
    sub b
    sub c
    cp [hl]
    cp a
    sbc d
    sbc e
    ld [de], a
    xor d
    sbc e
    ld [de], a
    xor d
    sbc e
    call nz, $04c5
    dec b
    call nc, $14d5
    dec d
    ret nz

    pop bc
    jp nz, $d0c3

    pop de
    jp nc, $c4d3

    push bc
    sbc e
    add hl, de
    call nc, $aad5
    add hl, de
    call nz, $c4c5
    push bc
    call nc, $d4d5
    push de
    add hl, de
    add hl, de
    sbc d
    sbc d
    add hl, de
    xor d
    add hl, de
    add hl, de
    call nz, $c4c5
    push bc
    call nc, $d4d5
    push de
    add hl, de
    sbc d
    call nz, $19c5
    add hl, de
    call nc, $19d5
    sbc d
    sbc d
    xor d
    xor d
    add hl, de
    sbc d
    xor d
    adc [hl]
    adc a
    add hl, de
    sbc d
    sbc [hl]
    sbc a
    add hl, de
    add hl, de
    call nz, $19c5
    sbc d
    call nc, $19d5
    add hl, de
    call nz, $19c5
    add hl, de
    call nc, $aad5
    add hl, de
    add h
    add l
    add [hl]
    add a
    sub h
    sub l
    sub [hl]
    sub a
    and h
    and l
    and [hl]
    and a
    or h
    or l
    or [hl]
    or a
    xor d
    add hl, de
    add d
    add e
    sbc e
    add hl, de
    sub d
    sub e
    xor d
    add hl, de
    call nz, $abc5
    add hl, de
    call nc, $9ad5
    add hl, de
    adc [hl]
    adc a
    sbc d
    add hl, de
    sbc [hl]
    sbc a
    xor d
    add hl, de
    add hl, de
    sbc d
    sbc e
    sbc e
    sbc d
    sbc d
    call nz, $aac5
    xor d
    call nc, $9ad5
    add hl, de
    ret nz

    pop bc
    jp nz, $d0c3

    pop de
    jp nc, $19d3

    add hl, de
    sbc e
    sbc e
    add hl, de
    add hl, de
    add hl, de
    sbc e
    ret nz

    pop bc
    jp nz, $d0c3

    pop de
    jp nc, $19d3

    sbc e
    call nz, $aac5
    xor d
    call nc, $c4d5
    push bc
    ld b, $07
    call nc, $16d5
    rla
    add $c7
    add $c7
    sub $d7
    sub $d7
    add $c7
    add $c7
    sub $d7
    sub $d7
    call nz, $9ac5
    add hl, de
    call nc, $19d5
    add hl, de
    xor d
    add hl, de
    add hl, de
    add hl, de
    xor d
    add hl, de
    xor d
    add hl, de
    add hl, de
    sbc e
    sbc e
    xor d
    add hl, de
    add hl, de
    xor d
    xor d
    add d
    add e
    add hl, de
    xor d
    sub d
    sub e
    add hl, de
    add hl, de
    xor d
    add hl, de
    ld b, $07
    add hl, de
    add hl, de
    ld d, $17
    add hl, de
    xor d
    add hl, de
    sbc e
    add hl, de
    add hl, de
    xor d
    add hl, de
    sbc e
    add hl, de
    add hl, de
    xor d
    xor d
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    sbc e
    call nz, $19c5
    add hl, de
    call nc, $99d5
    sbc d
    add hl, de
    xor d
    xor c
    sbc d
    xor d
    add hl, de
    xor c
    sbc e
    xor d
    xor e
    ret z

    cp d
    cp d
    cp d
    add hl, de
    add hl, de
    add hl, de
    xor d
    add hl, de
    add hl, de
    xor d
    xor d
    xor d
    sbc e
    sbc e
    sbc e
    cp d
    cp d
    cp d
    cp d
    sbc e
    add hl, de
    xor d
    xor h
    add hl, de
    xor d
    sbc e
    xor h
    sbc e
    xor d
    sbc e
    xor h
    cp d
    cp d
    cp d
    call $1998
    add hl, de
    add hl, de
    sbc b
    add hl, de
    xor d
    add hl, de
    sbc b
    add hl, de
    add hl, de
    add hl, de
    sbc b
    xor d
    add hl, de
    xor d
    sbc e
    sbc e
    sbc e
    sbc h
    add hl, de
    sbc d
    sbc e
    sbc h
    sbc d
    xor d
    sbc e
    sbc h
    xor d
    add hl, de
    sbc e
    sbc h
    sbc d
    add hl, de
    add hl, de
    sbc d
    add hl, de
    sbc e
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    xor d
    xor e
    add hl, de
    sbc e
    ld b, d
    ld b, e
    adc d
    adc e
    xor d
    add hl, de
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    inc c
    dec c
    inc c
    dec c
    inc e
    dec e
    inc e
    dec e
    inc c
    dec c
    inc c
    dec c
    inc e

Jump_006_71fb:
    dec e
    inc e
    dec e
    add d
    add e
    add $c7
    sub d
    sub e
    sub $d7
    add $c7
    add $c7
    sub $d7
    sub $d7
    add $c7
    add $c7
    sub $d7
    sub $d7
    add d
    add e
    add $c7
    sub d
    sub e
    sub $d7
    add $c7
    add d
    add e
    sub $d7
    sub d
    sub e
    add $c7
    add $c7
    sub $d7
    sub $d7
    add $c7
    add $c7
    sub $d7
    sub $d7
    add $c7
    add d
    add e
    sub $d7
    sub d
    sub e
    ld d, d

Call_006_723f:
    ld d, d
    ld d, d
    ld d, d
    ld d, e
    ld d, e
    jr z, jr_006_7299

    inc c
    dec c
    ld a, $38
    inc e
    dec e
    jr z, jr_006_72a2

    ld d, d
    ld d, d
    ld d, d
    ld d, d
    inc l
    dec l
    dec l
    ld l, $49
    ld c, $0f
    ld c, d
    ld c, b
    ld e, $1f
    ld c, e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, e
    add hl, hl
    ld d, e
    ld d, e
    add hl, sp
    ccf
    inc c
    dec c
    ld d, [hl]
    add hl, hl
    inc e
    dec e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    inc c
    dec c
    inc c
    dec c
    inc e
    dec e
    inc e
    dec e
    inc c
    dec c
    ld a, $54
    inc e
    dec e
    ld c, h
    ld c, l
    inc c
    dec c
    ld e, h
    ld e, l
    inc e
    dec e

Call_006_728c:
    inc e
    dec e
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    jr c, jr_006_72c3

    cpl
    add hl, sp
    ld d, a
    ld b, a
    ld b, a

jr_006_7299:
    ld b, a
    inc e
    dec e
    inc e
    dec e
    ld d, l
    ccf
    inc c
    dec c

jr_006_72a2:
    ld c, [hl]
    ld c, a
    inc e
    dec e
    ld e, [hl]
    ld e, a
    inc c
    dec c
    inc e
    dec e
    inc e
    dec e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    xor d
    add hl, de
    xor e
    xor d
    ld [de], a
    ld a, [bc]
    dec bc
    xor d
    ld [de], a
    ld a, [de]
    dec de
    sbc e
    xor d
    sbc e
    sbc d
    xor d

jr_006_72c3:
    add hl, de
    xor d
    xor d
    ld [de], a
    add hl, de
    ld a, [hl+]
    dec hl
    xor d
    ld [de], a
    ld a, [hl-]
    dec sp
    sbc b
    sbc c
    sbc d
    sbc d
    xor b
    xor c
    sbc d
    sbc d
    cp b
    cp c
    xor [hl]
    xor a
    ret z

    ret


    cp [hl]
    cp a
    sbc d
    sbc d
    sbc h
    sbc l
    sbc d
    sbc d
    xor h
    xor l
    xor [hl]
    xor a
    cp h
    cp l
    cp [hl]
    cp a
    call z, $88cd
    adc c
    adc h
    adc l
    sbc b
    sbc c
    sbc h
    sbc l
    cp b
    cp c
    cp h
    cp l
    ret z

    ret


    call z, $26cd
    daa
    inc c
    dec c
    ld [hl], $37
    inc e
    dec e
    ld b, l
    ld b, [hl]
    inc c
    dec c
    inc e
    dec e
    inc e
    dec e
    inc c
    dec c
    inc c
    dec c
    inc e
    dec e
    inc e
    dec e
    inc c
    dec c
    inc c
    dec c
    inc e
    dec e
    inc e
    dec e
    sbc d
    sbc d
    sbc d
    sbc d
    sbc e
    sbc d
    sbc d
    sbc d
    add b
    add c
    cp c
    cp d
    sub b
    sub c
    ret


    jp z, $3434

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
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
    nop
    nop
    nop
    ld [hl], d
    rlca
    or d
    rlca
    nop
    or d
    or d
    nop
    nop
    or d
    rlca
    nop
    rlca
    nop
    nop
    nop
    ld [hl], d
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
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    ld a, e
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
    ld h, b
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
    ld h, b
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
    inc hl
    inc hl
    inc hl

Jump_006_73bd:
    inc hl
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
    nop
    nop
    rlca
    rlca
    and l
    rlca
    rlca
    and e
    and e
    rlca
    rlca
    and h
    rlca
    rlca
    rlca
    rlca
    and c
    rlca
    and c

Call_006_73de:
    and b
    rlca
    and b
    rlca
    nop
    nop
    ld [hl], b
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
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    rlca
    inc hl
    inc hl
    rlca
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
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
    nop
    rlca
    rlca
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    ld [hl], d
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
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    inc hl
    inc hl
    inc hl
    ld [hl], d
    jr nc, @+$01

    ld h, h
    ld bc, $00ff
    add a
    add a
    ld b, e
    add c
    ld a, a
    ld b, e
    sub c
    ld l, a
    ld bc, $7f81
    ld b, e
    adc c
    ld [hl], a
    ld de, $7f81
    rst $38
    rst $38
    sbc a
    sbc a
    sub a
    sbc b
    rst $38
    rst $38
    ret nc

    cp a
    sbc a
    rst $38
    ld hl, sp-$10
    ret z

    ldh a, [$a3]
    adc a
    dec b
    ld sp, hl
    add hl, bc
    rst $38
    rst $38
    dec c
    ei
    and a
    adc a
    ld a, [hl+]
    add b
    ld [bc], a
    rst $38
    rst $38
    add b
    or b
    adc a
    nop
    ld bc, $0343
    ld [bc], a
    add hl, bc
    rst $38
    inc b
    rst $38
    dec e
    dec a
    dec hl
    ld a, [hl-]
    ccf
    cp $27
    and l
    adc a
    inc de
    ccf
    ldh [$3f], a
    jr c, jr_006_74a4

    inc a
    ld e, h
    db $fc
    rst $20
    db $fc
    ret nz

    rst $38
    sbc a
    ldh [$bf], a
    ret nz

    cp b
    rst $00
    and a
    ret c

    add e
    add a
    ld bc, $c0bf

jr_006_74a4:
    and e
    adc a
    dec b
    ld sp, hl
    rlca
    ld de, $e1ef
    rra
    and l
    adc a
    ld bc, $7f9f
    ld b, l
    and b
    ld h, b
    add hl, bc
    cp a
    ld h, b
    cp a
    ld l, a
    ld sp, hl
    db $eb
    cp a
    xor a
    ld sp, hl
    rst $38
    ld b, l
    dec b
    rlca
    dec c
    db $fd
    rlca
    db $fd
    rst $30
    rst $38
    rst $30
    db $fd
    push af
    ld e, d
    inc h
    and l

Jump_006_74cf:
    ld b, d
    ld b, d
    sbc c
    ld b, e
    sbc c
    inc h
    dec b
    ld b, d
    sbc c
    and l
    ld b, d
    ld e, d
    inc h
    ld h, c
    dec c
    ld e, h
    ld h, e
    ld [bc], a
    ld h, c
    nop
    ld h, b
    db $10
    ld h, b
    nop
    ld [hl], b
    db $10
    ld h, b
    jr nz, jr_006_752c

    ld h, c
    ld de, $fe02
    nop
    cp $88
    ld b, [hl]
    inc c
    add d
    inc b
    sbc d
    db $76
    adc b
    ld c, $70
    rst $38
    rst $38
    ret nz

    ret nz

    ld c, e
    cp a
    add b
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld c, h
    rst $38
    nop
    ld bc, $03ff
    ld c, h
    inc bc
    db $fd
    ld a, [bc]
    rst $18
    ldh [$a0], a
    ret nz

    ret nz

    add b
    rst $00
    add b
    ret c

    add b
    ldh [rLY], a
    add b
    ret nz

    and e
    adc a
    inc b
    rlca
    ld bc, $01ef
    rra
    and [hl]
    adc a
    nop
    ret nz

jr_006_752c:
    ld b, e
    cp a
    rst $38
    ld a, [bc]
    xor d
    ld a, [$eaaa]
    xor d
    rst $28
    xor a
    rst $38
    cp a
    ret nz

    cp a
    and h
    adc a
    ld b, $95
    rst $38
    sub l
    sub a
    sub l
    sbc a

Jump_006_7544:
    sbc l
    and e
    adc a
    rra
    rst $20
    ld b, c
    ld h, h
    ld h, e
    dec a
    ld h, $fd
    ld e, a
    rst $20
    sbc a
    pop af
    reti


    ld a, b
    ld h, c
    rst $38
    inc a
    inc bc
    cp $0e
    adc $84
    call z, $fe9b
    db $ed
    rst $38
    db $d3
    rst $38
    ld h, $fe
    cp a
    db $fc
    ld c, a
    cp a
    ret nz

    ld b, l
    db $fd
    inc bc
    ld b, e
    db $ed
    inc de
    ld b, e
    db $dd
    inc hl
    ld bc, $639d
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
    ld [bc], a
    nop
    or e
    nop
    ld b, e
    pop hl
    nop
    dec d
    di
    nop
    rst $38
    nop
    cp l
    nop
    rst $38
    nop
    ld b, b
    ld bc, $7200
    ld b, b
    ld [$0a70], sp
    db $76
    add hl, bc
    ld l, a
    db $10
    ld a, a
    ld b, b
    ld h, c
    ld b, e
    ld a, $00
    add hl, bc
    ld l, [hl]
    db $10
    sbc $20
    cp $00
    adc [hl]
    ld [hl], b
    ld d, $8a
    ld h, c
    ld c, e
    cp a
    add b
    inc bc
    ret nz

    rst $38
    rst $38
    rst $38
    adc $01
    ld e, $00
    rst $38
    adc $01
    ld l, $00
    rst $38
    ld c, a
    ret nz

    add b
    ld b, l
    inc bc
    ld bc, $1302
    ld bc, $4413
    ld bc, $0923
    ld h, e
    ld bc, $80c0
    rst $38
    cp a
    db $e4
    cp a
    or $ad
    ld b, e
    db $ed
    and h
    ld [bc], a
    rst $38
    cp a
    ret nz

    and h
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
    rra
    di
    ld [hl], e
    ld c, [hl]
    ld c, [hl]
    ld h, $42
    ld sp, hl
    ld h, $cb
    ld a, c
    ld h, $31
    db $76
    ld d, e
    call c, Call_006_5d7f
    ld e, h
    or l
    and $67
    ld b, a
    ld l, c
    add hl, de
    push de
    ld [bc], a
    xor d
    ld d, $5d
    adc a
    ld a, e
    adc $83
    ld bc, $0b30

Call_006_7624:
    and b
    ret nz

    and a
    ret nz

    sbc b
    ldh [$a0], a
    ret nz

    call z, $d280
    adc h
    and l
    adc a
    inc d
    db $ed
    inc bc
    ld de, $690f
    rlca
    ld h, l
    inc bc
    dec b
    inc bc
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
    nop
    ld e, [hl]
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
    ld b, e
    ld d, h
    xor e
    ld bc, $04fb
    add e
    add e
    add e
    add l
    ld bc, $ab54
    ld h, c
    inc bc
    ld h, h
    ld b, b
    ld a, b
    nop
    ld b, e
    ld [hl], b
    ld [$7405], sp
    ld [$1c63], sp
    ld b, b
    ccf
    ld h, c
    dec c
    ld b, d
    ld [bc], a
    nop
    ld b, b
    ld h, b
    add b
    add b
    jr nz, jr_006_76c5

    jr c, @-$7c

    ld a, h
    nop
    sub $83
    jp $e708


    ld e, h
    rst $00
    ld e, h
    sbc e
    ld b, h
    ld d, a
    jr c, jr_006_770e

    add e
    ld [bc], a
    add hl, de
    adc d
    ld [bc], a
    dec c
    add e
    ld bc, $8312
    db $d3
    inc b
    di
    ld l, $ef
    ld [hl+], a
    call $9fa6
    ld bc, $f0f1
    add a
    nop
    ld [hl-], a
    ld [bc], a
    sub b
    rst $38
    sbc a
    ld [hl+], a
    rst $38
    ld bc, $0fcf
    add a
    nop
    ld b, d
    and l
    adc a
    ld b, $ff
    cp a
    db $e3
    and c
    rst $20
    and c
    rst $28
    ld b, e
    and c
    rst $38
    dec bc

jr_006_76c5:
    rst $38
    ret nz

    add b
    ld a, a
    ld a, a
    rst $38
    db $fd
    adc a
    add l
    sbc a
    add l
    cp a
    xor b
    adc a
    ldh [rNR43], a
    cp [hl]
    pop hl
    ld h, a
    ld h, d
    ld a, l
    ld a, [hl]
    and d
    db $fc
    ret c

    ld c, a
    ld l, a
    ld e, a
    ld a, l
    ld a, a
    inc de
    rra
    dec a
    ld sp, hl
    db $d3
    dec a
    rst $30
    ld c, a
    ld c, h
    and $e6
    cp $ff
    db $fd
    sbc c
    rst $38
    rst $08
    rst $38
    jp nc, $cc8c

    ld b, h
    add b
    pop bc
    dec bc
    ret nz

    add b
    ret c

    add b
    reti


    add b
    ret nz

    add b
    dec b
    inc bc
    call $4303
    dec h
    jp $c500


    ld b, h

jr_006_770e:
    inc bc
    dec e
    rlca
    dec b
    inc bc
    rst $38
    rst $38
    ldh [$df], a
    rst $38
    rst $38
    add l
    ld bc, $020c
    cp a
    rst $38
    rst $38
    jp $868c


    ld [bc], a
    dec e
    inc h
    rst $38
    ld e, $07
    reti


    inc b
    ld h, e
    ld [$a412], sp
    sub l
    ld b, b
    xor c
    ld [bc], a
    ld c, b
    dec h
    add $10
    sbc e
    jr nz, jr_006_773a

jr_006_773a:
    ld d, [hl]
    db $10
    ld c, [hl]
    ld b, d
    inc h
    ld h, a
    jr jr_006_7781

    ld b, b
    rra
    jr nz, jr_006_778d

    ld e, b
    ld h, c
    add e
    adc l
    add hl, bc
    inc h
    jr jr_006_778e

    add b
    nop
    ld b, b
    ret nz

    nop
    ld a, [c]
    ld [bc], a
    rst $00
    nop
    ld [de], a
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
    ld bc, $0384
    ld [de], a
    ld [$fe01], sp
    ld b, $fb
    ld sp, hl
    xor $e6
    call c, $2398
    rst $38
    rlca
    db $ed
    ld h, a
    cp l
    sbc e
    db $fd
    ld h, e

jr_006_7781:
    rst $38
    rst $38
    ld b, e
    rlca
    inc bc
    add hl, bc
    rst $38
    rst $38
    add c
    ld a, a
    rst $38
    ld a, a

jr_006_778d:
    ret nz

jr_006_778e:
    ld b, b
    ret nz

    ld e, a
    ld b, e
    call z, $0353
    ret nz

    ld e, a
    pop bc
    ld e, [hl]
    add e
    nop
    ld l, $01
    inc bc
    inc bc
    ld b, l
    inc bc
    ei
    ldh [$33], a
    jp $e33b


    dec de
    rst $28
    scf
    daa
    jr c, jr_006_77be

    inc e
    rst $30
    rra
    di
    inc e
    add hl, bc
    inc c
    rlca
    rlca
    rst $38
    nop
    rst $38
    ld h, b
    ld a, b
    ld e, b
    ld d, [hl]
    db $76

jr_006_77be:
    db $dd
    and l
    db $ed
    ld [hl], c
    ld h, d
    ld e, l
    ldh a, [rIE]
    ld sp, hl
    xor a
    rst $38
    rlca
    dec de
    add hl, de
    ld a, l
    ld l, e
    ei
    and [hl]
    ld h, a
    sbc [hl]
    ld a, l
    ei
    or e
    sbc a
    ld d, a
    inc a
    adc c
    nop
    sub b
    dec b
    sbc l
    ld [c], a
    cp e
    add $af
    sbc $8b
    nop
    and b
    ld b, $d5
    dec sp
    ld l, l
    di
    di
    ldh [$f3], a
    ld b, a
    ldh [rIE], a
    ld [hl+], a
    rst $38
    ld bc, $ff7f
    ld c, d
    rst $38
    rlca
    ld b, $ff
    rst $20
    db $e3
    cp $ff
    nop
    rst $38
    add e
    ld [bc], a
    jr jr_006_7804

jr_006_7804:
    nop
    adc b
    add a
    inc b
    sbc h
    nop
    call z, $e440
    ld h, d
    dec de
    rra
    ld h, b
    rrca
    jr nc, jr_006_781b

    nop
    rst $08
    nop
    rst $00
    nop
    rst $00
    ld [bc], a

jr_006_781b:
    adc [hl]
    nop
    ld [$e000], sp
    nop
    ld sp, hl
    nop
    db $fc
    nop
    ld a, $40
    add a
    ld hl, sp-$71
    ldh a, [$89]
    nop
    ld d, b
    add h
    inc b
    inc e
    nop
    ld bc, $02a9
    ld l, $83
    sbc c
    rlca
    cp a
    sbc c
    and a
    xor l
    and a
    cp h
    cp a
    sbc c
    and l
    inc b
    ld e, $18
    rlca
    inc bc
    ld a, l
    ld [hl], e
    rst $38
    ld [hl], c
    db $fd
    inc bc
    ei
    ld d, a
    di
    rrca
    cp $ff
    db $fc
    inc bc
    jp $cf5c


    ld d, b
    ret nz

    ld e, a
    ret nz

    ld b, b
    rst $38
    add [hl]
    nop
    add hl, hl
    ld b, e
    di
    dec bc
    jp Jump_006_5804


    ld bc, $ffff
    add l
    adc a
    and e
    inc b
    ld h, b
    ldh [$33], a
    ld [$ebf8], sp
    db $fc
    add hl, bc
    cp $11
    cp $e2
    db $fc
    rst $38
    nop
    ld c, e
    ld [hl], a
    ld [hl], b
    ld a, a
    sbc b
    rst $38
    ld l, l
    ld [hl], e
    ld d, l
    ld c, [hl]
    rst $28
    cp l
    rst $38
    cp $f7
    rra
    xor a
    ld a, a
    inc sp
    db $fd
    cp $ce
    adc d
    ld a, [c]
    dec hl
    db $fd
    ld a, c
    rst $38
    ccf
    rst $38
    ld l, a
    db $fc
    sbc a
    rst $38
    cp e
    rst $38
    or a
    ei
    xor h
    di
    add l
    nop
    sbc d
    rla
    cp a
    ret nz

    db $dd
    db $e3
    cp l
    jp $936d


    db $dd
    scf
    cp l
    ld a, a
    ld e, c
    rst $38
    push af
    dec de
    db $ed
    inc de
    rst $38
    rst $38
    pop bc
    add c

Call_006_78bf:
    rst $38
    add c
    ld b, e
    db $fd
    add e
    dec b
    rst $38
    add c
    pop bc
    cp a
    rst $38
    rst $38
    xor a
    adc a

Call_006_78cd:
    ld c, a
    xor d
    ld d, l
    dec b
    sbc a
    nop
    dec de
    inc b
    ccf
    nop
    ld b, e
    ld a, a
    nop
    inc bc
    ld a, l
    ld [bc], a
    ld a, [hl]
    ld b, c
    ld h, c
    dec c
    ld a, $c0
    db $fc
    ld [bc], a
    sbc $20
    ld [c], a
    inc e
    and $18
    db $fc
    nop
    ld [hl], d
    add d
    ld h, c
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    ld b, d
    ld b, e
    dec hl
    inc l
    ld d, d
    ld d, e
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld [bc], a
    ld [bc], a
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    dec b
    ld b, $3b
    inc a
    dec d
    ld d, $4b
    ld c, h
    dec h
    ld h, $5b
    ld e, h
    dec [hl]
    ld [hl], $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    jr nc, jr_006_7991

    ld sp, $0132
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1001
    ld de, $1211
    jr nz, jr_006_7995

    ld hl, $3022
    ld sp, $3231
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c

jr_006_7991:
    dec c
    dec c
    dec c
    dec c

jr_006_7995:
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    jr nc, @+$33

    ld sp, $0d32
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    jr nc, @+$33

    ld sp, $1d32
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    jr nc, @+$33

    ld sp, $2d32
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    jr nc, @+$33

    ld sp, $3d32
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    jr nc, @+$33

    ld sp, $4d32
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    jr nc, @+$33

    ld sp, $5d32
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    inc bc
    inc b
    ld bc, $1301
    inc d
    ld bc, $2301
    inc h
    ld bc, $3301
    inc [hl]
    ld bc, $0301
    inc b
    ld bc, $0901
    ld a, [bc]
    ld bc, $1901
    ld a, [de]
    ld bc, $3301
    inc [hl]
    ld bc, $0301
    inc b
    ld bc, $2901
    ld a, [hl+]
    ld bc, $3901
    ld a, [hl-]
    ld bc, $3301
    inc [hl]
    ld bc, $0301
    inc b
    ld bc, $4901
    ld c, d
    ld bc, $5901
    ld e, d
    ld bc, $3301
    inc [hl]
    ld bc, $4401
    ld b, l
    ld b, b
    ld b, c
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2827
    ld bc, $3701
    jr c, @+$03

    ld bc, $5646
    ld bc, $0101
    ld bc, $0101
    ld b, a
    ld c, b
    ld bc, $5701
    ld e, b
    ld bc, $4601
    ld d, [hl]
    ld bc, $0101
    ld bc, $0101
    rlca
    ld [$0101], sp
    rla
    jr @+$03

    ld bc, $1817
    ld bc, $4601
    ld d, [hl]
    ld c, [hl]
    ld c, a
    ld b, b
    ld b, c
    ld e, [hl]
    ld e, a
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    ld b, b
    ld b, c
    ld e, $1f
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $2e01
    cpl
    ld b, b
    ld b, c
    ld a, $3f
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, d
    nop
    nop
    rlca
    rlca
    sub a
    sub c
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    sub l
    ld a, d
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
    nop
    rlca
    nop
    rlca
    rlca
    ld a, d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
