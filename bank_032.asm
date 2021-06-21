; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    ld hl, $d3fa
    ld e, $05

jr_032_4005:
    ld a, [hl]
    and a
    jr z, jr_032_4012

    ld c, l
    ld b, h
    push hl
    push de
    call Call_032_404a
    pop de
    pop hl

jr_032_4012:
    ld bc, $0004
    add hl, bc
    dec e
    jr nz, jr_032_4005

    ret


    ld hl, $d3fa
    ld e, $05

jr_032_401f:
    ld a, [hl]
    and a
    jr z, jr_032_402c

    ld bc, $0004
    add hl, bc
    dec e
    jr nz, jr_032_401f

    scf
    ret


jr_032_402c:
    ld c, l
    ld b, h
    ld hl, $0000
    add hl, bc
    ld a, [$d419]
    ld [hl+], a
    ld a, [$d41a]
    ld [hl+], a
    ld a, [$d41b]
    ld [hl+], a
    ld a, [$d41c]
    ld [hl], a
    ret


Call_032_4043:
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


Call_032_404a:
    ld hl, $0000
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $405a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add $40
    db $eb
    ld b, b
    di
    ld b, b
    dec l
    ld b, c
    ld b, c
    ld b, c
    ld d, l
    ld b, c
    ld [hl], c
    ld b, c
    adc e
    ld b, c
    and l
    ld b, c
    or e
    ld b, c
    ld [$7b41], a
    ld b, e
    xor b
    ld b, e
    ld b, l
    ld b, l
    sbc c
    ld b, l
    ccf
    ld b, [hl]
    ld h, d
    ld b, [hl]
    inc d
    ld b, d
    add c
    ld b, d
    adc c
    ld b, [hl]
    add hl, bc
    ld b, a
    add sp, $4b
    ld a, [c]
    ld c, e
    db $fd
    ld c, e
    ld [$144c], sp
    ld c, h
    jr nz, jr_032_40dc

    jr nc, @+$4e

    nop
    ld c, e
    inc a
    ld c, h
    ld d, l
    ld c, h
    ld sp, hl
    ld c, h
    ld [bc], a
    ld c, l
    ld h, c
    ld b, a
    xor $49
    and a
    ld b, a
    dec b
    ld c, b
    scf
    ld c, b
    ld a, [hl+]
    ld c, c
    push af
    ld b, d
    or l
    ld c, c
    rlca
    ld b, [hl]
    ld a, [hl-]
    ld c, d
    call z, Call_032_644a
    ld c, c
    rst $20
    ld c, b
    pop hl
    ld c, h
    add hl, de
    ld c, c
    jp nz, $ce45

    ld b, l
    inc bc
    ld b, [hl]
    ld h, c
    ld c, h
    and d
    ld c, h
    ld a, [hl-]
    ld c, l
    call Call_032_4043
    ret


Call_032_40ca:
    ld hl, $0001
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_032_40d7:
    pop de
    ld hl, $0001
    add hl, bc

jr_032_40dc:
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_032_40e5:
    ld hl, $0001
    add hl, bc
    inc [hl]
    ret


    ld de, $40f1
    jp Jump_032_40fb


    db $e4
    dec de
    ld de, $40f9
    jp Jump_032_40fb


    db $e4
    nop

Jump_032_40fb:
    ld a, $01
    ld [$d419], a
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_032_410a

    dec [hl]
    ret


jr_032_410a:
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_032_4120

    call Call_032_4043
    ret


jr_032_4120:
    dec a
    ld [hl], a
    and $01
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    ld [$cfc7], a
    ret


    ld de, $413d
    call Call_032_4d57
    jr c, jr_032_4139

    ld [$cfc7], a
    ret


jr_032_4139:
    call Call_032_4043
    ret


    db $e4
    ldh [$d0], a
    rst $38
    ld de, $4151
    call Call_032_4d57
    jr c, jr_032_414d

    ld [$cfc7], a
    ret


jr_032_414d:
    call Call_032_4043
    ret


    db $e4
    db $f4
    ld hl, sp-$01
    ld de, $4168
    call Call_032_4d57
    jr c, jr_032_4164

    ld [$cfc7], a
    ld [$cfc9], a
    ret


jr_032_4164:
    call Call_032_4043
    ret


    db $e4
    ld hl, sp-$04
    ld hl, sp-$1c
    sub b
    ld b, b
    sub b
    cp $cd
    ld e, c
    ld d, b
    jr nz, jr_032_417b

    ld de, $4185
    jr jr_032_417e

jr_032_417b:
    ld de, $4188

jr_032_417e:
    call Call_032_4d57
    ld [$cfc8], a
    ret


    db $e4
    sub b
    cp $f0
    ret nz

    cp $cd
    ld e, c
    ld d, b
    jr nz, jr_032_4195

    ld de, $419f
    jr jr_032_4198

jr_032_4195:
    ld de, $41a2

jr_032_4198:
    call Call_032_4d57
    ld [$cfc8], a
    ret


    db $e4
    ret c

    cp $f0
    call z, $11fe
    xor a
    ld b, c
    call Call_032_4d57
    ld [$cfc7], a
    ret


    dec de
    ld h, e
    add a
    cp $cd
    rst $10
    ld b, b
    ret nz

    ld b, c
    push hl
    ld b, b
    push hl
    ld b, b
    push hl
    ld b, b
    db $e3
    ld b, c
    call Call_032_40e5
    push bc
    call Call_032_5038
    jr nz, jr_032_41d1

    ld hl, $c4ac
    ld bc, $0707
    jr jr_032_41d7

jr_032_41d1:
    ld hl, $c51a
    ld bc, $0606

jr_032_41d7:
    call $0fb6
    pop bc
    xor a
    ldh [$d5], a
    ld a, $01
    ldh [$d4], a
    ret


    xor a
    ldh [$d4], a
    call Call_032_4043
    ret


    call Call_032_5042
    jr z, jr_032_41f3

    call Call_032_4043
    ret


jr_032_41f3:
    call Call_032_5038
    jr nz, jr_032_41fd

    ld de, $4210
    jr jr_032_4200

jr_032_41fd:
    ld de, $420c

jr_032_4200:
    ld a, e
    ld [$d41a], a
    ld a, d
    ld [$d41b], a
    call Call_032_43ed
    ret


    nop
    ld sp, $ff00
    inc bc
    nop
    inc bc
    rst $38
    call Call_032_40d7
    inc hl
    ld b, d
    ld e, d
    ld b, d
    push hl
    ld b, b
    push hl
    ld b, b
    push hl
    ld b, b
    ld a, d
    ld b, d
    call Call_032_5042
    jr z, jr_032_4230

    ld hl, $d40e
    inc [hl]
    call Call_032_4043
    ret


jr_032_4230:
    call Call_032_40e5
    push bc
    call Call_032_5038
    jr nz, jr_032_4242

    ld a, $b8
    ld [$d419], a
    ld a, $84
    jr jr_032_4249

jr_032_4242:
    ld a, $b9
    ld [$d419], a
    ld a, $30

jr_032_4249:
    ld [$d41a], a
    ld a, $40
    ld [$d41b], a
    xor a
    ld [$d41c], a
    call Call_032_42ee
    pop bc
    ret


    call Call_032_40e5
    push bc
    call Call_032_5038
    jr nz, jr_032_426b

    ld hl, $c524
    ld bc, $0107
    jr jr_032_4271

jr_032_426b:
    ld hl, $c51a
    ld bc, $0106

jr_032_4271:
    call $0fb6
    ld a, $01
    ldh [$d4], a
    pop bc
    ret


    xor a
    ldh [$d4], a
    call Call_032_4043
    ret


    call Call_032_40d7
    sub b
    ld b, d
    rst $00
    ld b, d
    push hl
    ld b, b
    push hl
    ld b, b
    push hl
    ld b, b
    rst $20
    ld b, d
    call Call_032_5042
    jr z, jr_032_429d

    ld hl, $d40e
    inc [hl]
    call Call_032_4043
    ret


jr_032_429d:
    call Call_032_40e5
    push bc
    call Call_032_5038
    jr nz, jr_032_42af

    ld a, $ba
    ld [$d419], a
    ld a, $84
    jr jr_032_42b6

jr_032_42af:
    ld a, $bb
    ld [$d419], a
    ld a, $30

jr_032_42b6:
    ld [$d41a], a
    ld a, $40
    ld [$d41b], a
    xor a
    ld [$d41c], a
    call Call_032_42ee
    pop bc
    ret


    call Call_032_40e5
    push bc
    call Call_032_5038
    jr nz, jr_032_42d8

    ld hl, $c510
    ld bc, $0207
    jr jr_032_42de

jr_032_42d8:
    ld hl, $c51a
    ld bc, $0206

jr_032_42de:
    call $0fb6
    ld a, $01
    ldh [$d4], a
    pop bc
    ret


    xor a
    ldh [$d4], a
    call Call_032_4043
    ret


Call_032_42ee:
    ld hl, $49a1
    ld a, $33
    rst $08
    ret


    call Call_032_40d7
    ld [bc], a
    ld b, e
    dec e
    ld b, e
    push hl
    ld b, b
    push hl
    ld b, b
    ld h, l
    ld b, e
    call Call_032_40e5
    call Call_032_5038
    ld [hl], a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_032_4315

    ld a, $09
    jr jr_032_4317

jr_032_4315:
    ld a, $08

jr_032_4317:
    ld hl, $0003
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_032_433e

    ld hl, $c518
    ld de, $0806

jr_032_432b:
    push de
    push hl

jr_032_432d:
    inc hl
    ld a, [hl-]
    ld [hl+], a
    dec d
    jr nz, jr_032_432d

    pop hl
    ld de, $0014
    add hl, de
    pop de
    dec e
    jr nz, jr_032_432b

    jr jr_032_4355

jr_032_433e:
    ld hl, $c4b3
    ld de, $0807

jr_032_4344:
    push de
    push hl

jr_032_4346:
    dec hl
    ld a, [hl+]
    ld [hl-], a
    dec d
    jr nz, jr_032_4346

    pop hl
    ld de, $0014
    add hl, de
    pop de
    dec e
    jr nz, jr_032_4344

jr_032_4355:
    xor a
    ldh [$d5], a
    ld a, $01
    ldh [$d4], a
    call Call_032_40e5
    ld hl, $0003
    add hl, bc
    dec [hl]
    ret


    xor a
    ldh [$d4], a
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_032_4377

    ld hl, $0001
    add hl, bc
    ld [hl], $01
    ret


jr_032_4377:
    call Call_032_4043
    ret


    call Call_032_5038
    jr nz, jr_032_4385

    ld de, $439e
    jr jr_032_4388

jr_032_4385:
    ld de, $4394

jr_032_4388:
    ld a, e
    ld [$d41a], a
    ld a, d
    ld [$d41b], a
    call Call_032_43ed
    ret


    ld [bc], a
    ld sp, $0102
    ld sp, $0001
    ld sp, $ff00
    dec b
    nop
    dec b
    inc b
    nop
    inc b
    inc bc
    nop
    inc bc
    rst $38
    call Call_032_5038
    jr nz, jr_032_43b2

    ld de, $43d7
    jr jr_032_43b5

jr_032_43b2:
    ld de, $43c1

jr_032_43b5:
    ld a, e
    ld [$d41a], a
    ld a, d
    ld [$d41b], a
    call Call_032_43ed
    ret


    nop
    ld sp, $fe00
    ld h, [hl]
    nop
    ld bc, $0131
    cp $44
    ld bc, $3102
    ld [bc], a
    cp $22
    ld [bc], a
    db $fd
    nop
    nop
    rst $38
    inc bc
    nop
    inc bc
    cp $77
    inc bc
    inc b
    nop
    inc b
    cp $55
    inc b
    dec b
    nop
    dec b
    cp $33
    dec b
    db $fd
    nop
    nop
    rst $38

Call_032_43ed:
    call Call_032_40d7
    ld a, [$e543]
    ld b, b
    push hl
    ld b, b
    ld a, [hl+]
    ld b, h
    inc [hl]
    ld b, h

jr_032_43fa:
    ld hl, $0003
    add hl, bc
    ld e, [hl]
    ld d, $00
    inc [hl]
    ld a, [$d41a]
    ld l, a
    ld a, [$d41b]
    ld h, a
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_032_4434

    cp $fe
    jr z, jr_032_4425

    cp $fd
    jr z, jr_032_441d

    call Call_032_4458

jr_032_441d:
    call Call_032_40e5
    ld a, $01
    ldh [$d4], a
    ret


jr_032_4425:
    call Call_032_443b
    jr jr_032_43fa

    xor a
    ldh [$d4], a
    ld hl, $0001
    add hl, bc
    ld [hl], $00
    ret


jr_032_4434:
    xor a
    ldh [$d4], a
    call Call_032_4043
    ret


Call_032_443b:
    push bc
    inc hl
    ld a, [hl+]
    ld b, a
    and $0f
    ld c, a
    ld a, b
    swap a
    and $0f
    ld b, a
    ld e, [hl]
    ld d, $00
    ld hl, $449c
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $0fb6
    pop bc
    ret


Call_032_4458:
    push bc
    push hl
    ld e, [hl]
    ld d, $00
    ld hl, $44a8
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld b, a
    and $0f
    ld c, a
    ld a, b
    swap a
    and $0f
    ld b, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    inc hl
    ld a, [hl+]
    ld [$d419], a
    push de
    ld e, [hl]
    ld d, $00
    ld hl, $449c
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de

jr_032_4484:
    push bc
    push hl
    ld a, [$d419]
    ld b, a

jr_032_448a:
    ld a, [de]
    add b
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_032_448a

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_032_4484

    pop bc
    ret


    ld a, [de]
    push bc
    ld b, e
    push bc
    ld l, h
    push bc
    xor h
    call nz, $c4d5
    cp $c4
    ld h, [hl]
    cp d
    ld b, h
    ld b, h
    sbc $44
    ld [hl+], a
    xor $44
    ld [hl], a
    ld a, [c]
    ld b, h
    ld d, l
    inc hl
    ld b, l
    inc sp
    inc a
    ld b, l
    nop
    ld b, $0c
    ld [de], a
    jr jr_032_44de

    ld bc, $0d07
    inc de
    add hl, de
    rra
    ld [bc], a
    ld [$140e], sp
    ld a, [de]
    jr nz, jr_032_44d0

    add hl, bc
    rrca
    dec d

jr_032_44d0:
    dec de
    ld hl, $0a04
    db $10
    ld d, $1c
    ld [hl+], a
    dec b
    dec bc
    ld de, $1d17
    inc hl

jr_032_44de:
    nop
    inc c
    ld [de], a
    ld e, $02
    ld c, $14
    jr nz, @+$05

    rrca
    dec d
    ld hl, $1105
    rla
    inc hl
    nop
    ld e, $05
    inc hl
    nop
    rlca
    ld c, $15
    inc e
    inc hl
    ld a, [hl+]
    ld bc, $0f08
    ld d, $1d
    inc h
    dec hl
    ld [bc], a
    add hl, bc
    db $10
    rla
    ld e, $25
    inc l
    inc bc
    ld a, [bc]
    ld de, $1f18
    ld h, $2d
    inc b
    dec bc
    ld [de], a
    add hl, de
    jr nz, jr_032_453b

    ld l, $05
    inc c
    inc de
    ld a, [de]
    ld hl, $2f28
    ld b, $0d
    inc d
    dec de
    ld [hl+], a
    add hl, hl
    jr nc, jr_032_4524

jr_032_4524:
    rlca
    dec d
    inc hl
    ld a, [hl+]
    ld bc, $1608
    inc h
    dec hl
    inc bc
    ld a, [bc]
    jr jr_032_4557

    dec l
    dec b
    inc c
    ld a, [de]
    jr z, @+$31

    ld b, $0d
    dec de
    add hl, hl

jr_032_453b:
    jr nc, jr_032_453d

jr_032_453d:
    dec d
    ld a, [hl+]
    inc bc
    jr jr_032_456f

    ld b, $1b
    jr nc, @-$31

    rst $10
    ld b, b
    ld c, [hl]
    ld b, l
    ld d, a
    ld b, l
    ld h, c
    ld b, l
    call Call_032_40e5
    ld de, $0202
    call Call_032_4f69

jr_032_4557:
    ldh a, [$c6]
    and a
    ret z

    push bc
    call Call_032_4565
    pop bc
    ret


    call Call_032_4f0a
    ret


Call_032_4565:
    ld hl, $d422
    ld de, $d423
    ld c, $3f
    ld a, [hl]
    push af

jr_032_456f:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_032_456f

    pop af
    ld [hl], a
    ld de, $d200
    ld hl, $d422
    ld bc, $0000

jr_032_4580:
    ldh a, [$c7]
    cp e
    jr nc, jr_032_458b

    push hl
    add hl, bc
    ld a, [hl]
    pop hl
    jr jr_032_458c

jr_032_458b:
    xor a

jr_032_458c:
    ld [de], a
    ld a, c
    inc a
    and $3f
    ld c, a
    inc de
    ld a, e
    cp $5f
    jr c, jr_032_4580

    ret


    call Call_032_40d7
    and d
    ld b, l
    cp d
    ld b, l
    cp [hl]
    ld b, l
    call Call_032_40e5
    call Call_032_4eca
    ld a, $42
    ldh [$c6], a
    xor a
    ldh [$c7], a
    ld a, $5e
    ldh [$c8], a
    ld de, $0202
    call Call_032_4f2e
    ret


    call Call_032_4fef
    ret


    call Call_032_4f0a
    ret


    call Call_032_4eca
    ld a, $42
    call Call_032_4ede
    call Call_032_4043
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld e, a
    add $04
    ld [hl], a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and $f0
    swap a
    xor $ff
    add $04
    ld d, a
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    ld [$d419], a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    cp $20
    jr nc, jr_032_45fc

    inc [hl]
    inc [hl]
    call Call_032_4f9a
    ret


jr_032_45fc:
    call Call_032_4eca
    call Call_032_4043
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    db $10
    ld b, [hl]
    ld l, $46
    dec sp
    ld b, [hl]
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    ldh [$c6], a
    xor a
    ldh [$c7], a
    ld a, $5f
    ldh [$c8], a
    ld de, $0605
    call Call_032_4f2e
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    inc [hl]
    and $03
    ret nz

    call Call_032_4fef
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    ld c, b
    ld b, [hl]
    ld e, d
    ld b, [hl]
    ld e, [hl]
    ld b, [hl]
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ede
    ld de, $0605
    call Call_032_4f2e
    ret


    call Call_032_4fef
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    ld l, e
    ld b, [hl]
    add c
    ld b, [hl]
    add l
    ld b, [hl]
    call Call_032_40e5
    call Call_032_4eca
    ld a, $42
    call Call_032_4ede
    ld hl, $0003
    add hl, bc
    ld e, [hl]
    ld d, $02
    call Call_032_4f2e
    ret


    call Call_032_4fef
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    sbc b
    ld b, [hl]
    xor a
    ld b, [hl]
    rst $08
    ld b, [hl]
    cp l
    ld b, [hl]
    jp hl


    ld b, [hl]
    dec b
    ld b, a
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0002
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    cp $10
    jr nc, jr_032_46cb

    inc [hl]
    call Call_032_46ea
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_032_46cb

    dec [hl]
    call Call_032_46ea
    ret


jr_032_46cb:
    call Call_032_40e5
    ret


    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld d, $02
    call Call_032_505d
    ld hl, $0003
    add hl, bc
    add [hl]
    call Call_032_46ea
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    add $04
    ld [hl], a
    ret


Call_032_46ea:
    ld e, a
    xor $ff
    inc a
    ld d, a
    ld h, $d2
    ldh a, [$c7]
    ld l, a
    ldh a, [$c8]
    sub l
    srl a
    push af

jr_032_46fa:
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    dec a
    jr nz, jr_032_46fa

    pop af
    ret nc

    ld [hl], e
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    ld [de], a
    ld b, a
    ld [hl-], a
    ld b, a
    ld e, l
    ld b, a
    call Call_032_40e5
    call Call_032_4eca
    ld a, $42
    call Call_032_4ede
    ld hl, $0003
    add hl, bc
    ld e, [hl]
    ld d, $02
    call Call_032_4f2e
    ld h, $d2
    ldh a, [$c8]
    ld l, a
    ld [hl], $00
    dec l
    ld [hl], $00
    ret


    ldh a, [$c8]
    ld l, a
    ld h, $d2
    ld e, l
    ld d, h
    dec de

jr_032_473a:
    ld a, [de]
    dec de
    ld [hl-], a
    ldh a, [$c7]
    cp l
    jr nz, jr_032_473a

    ld [hl], $90
    ldh a, [$c8]
    ld l, a
    ld a, [hl]
    cp $01
    jr c, jr_032_4752

    cp $90
    jr z, jr_032_4752

    ld [hl], $00

jr_032_4752:
    dec l
    ld a, [hl]
    cp $02
    ret c

    cp $90
    ret z

    ld [hl], $00
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    ld l, d
    ld b, a
    add c
    ld b, a
    and e
    ld b, a
    call Call_032_40e5
    call Call_032_4eca
    ld a, $42
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0002
    add hl, bc
    ld [hl], $01
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and $3f
    ld d, a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    cp d
    ret nc

    call Call_032_501b
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    rlca
    rlca
    and $03
    ld hl, $0002
    add hl, bc
    add [hl]
    ld [hl], a
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    or d
    ld b, a
    rst $08
    ld b, a
    sbc $47
    ld bc, $cd48
    push hl
    ld b, b
    call Call_032_4eca
    ld a, $42
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0002
    add hl, bc
    ld [hl], $02
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_032_47d9

    dec [hl]
    ret


jr_032_47d9:
    ld [hl], $10
    call Call_032_40e5
    ldh a, [$c7]
    ld l, a
    ldh a, [$c8]
    sub l
    dec a
    ld hl, $0002
    add hl, bc
    cp [hl]
    ret c

    ld a, [hl]
    push af
    and $07
    jr nz, jr_032_47f6

    ld hl, $0001
    add hl, bc
    dec [hl]

jr_032_47f6:
    pop af
    call Call_032_501b
    ld hl, $0002
    add hl, bc
    inc [hl]
    inc [hl]
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    db $10
    ld c, b
    ld l, c
    ld c, b
    adc b
    ld c, b
    inc sp
    ld c, b
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    call Call_032_5038
    jr nz, jr_032_482f

    ld a, $02
    jr jr_032_4831

jr_032_482f:
    ld a, $fe

jr_032_4831:
    ld [hl], a
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    ld b, d
    ld c, b
    ld l, c
    ld c, b
    adc b
    ld c, b
    ld h, l
    ld c, b
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ef4
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    call Call_032_5038
    jr nz, jr_032_4861

    ld a, $02
    jr jr_032_4863

jr_032_4861:
    ld a, $fe

jr_032_4863:
    ld [hl], a
    ret


    call Call_032_4f0a
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    cp $f8
    jr z, jr_032_4876

    cp $08
    jr nz, jr_032_4879

jr_032_4876:
    call Call_032_40e5

jr_032_4879:
    call Call_032_48a5
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0003
    add hl, bc
    add [hl]
    ld [hl], a
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_032_4893

    call Call_032_40e5

jr_032_4893:
    call Call_032_48a5
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    xor $ff
    inc a
    ld hl, $0003
    add hl, bc
    add [hl]
    ld [hl], a
    ret


Call_032_48a5:
    push af
    ld a, [$cfc3]
    or a
    jr nz, jr_032_48b3

    ld a, [$cfc2]
    cp $cd
    jr z, jr_032_48b7

jr_032_48b3:
    pop af
    jp Jump_032_500b


jr_032_48b7:
    ldh a, [$c7]
    ld d, a
    ldh a, [$c8]
    sub d
    ld d, a
    ld h, $d2
    ldh a, [$d0]
    or a
    jr nz, jr_032_48d0

    ldh a, [$c7]
    or a
    jr z, jr_032_48d6

    dec a
    ld l, a
    ld [hl], $00
    jr jr_032_48d6

jr_032_48d0:
    ldh a, [$c8]
    dec a
    ld l, a
    ld [hl], $00

jr_032_48d6:
    ldh a, [$d0]
    ld l, a
    ldh a, [$c7]
    sub l
    jr nc, jr_032_48e0

    xor a
    dec d

jr_032_48e0:
    ld l, a
    pop af

jr_032_48e2:
    ld [hl+], a
    dec d
    jr nz, jr_032_48e2

    ret


    call Call_032_40d7
    or $48
    ld l, c
    ld c, b
    adc b
    ld c, b
    ld a, [c]
    ld c, b
    call Call_032_4f0a
    ret


    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    call Call_032_5038
    jr nz, jr_032_4915

    ld a, $fe
    jr jr_032_4917

jr_032_4915:
    ld a, $02

jr_032_4917:
    ld [hl], a
    ret


    call Call_032_40d7
    or $48
    ld l, c
    ld c, b
    add hl, hl
    ld c, c
    adc b
    ld c, b
    ld h, $49
    call Call_032_4f0a
    ret


    call Call_032_40d7
    inc sp
    ld c, c
    ld c, d
    ld c, c
    ld h, b
    ld c, c
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld d, $08
    call Call_032_505d
    call Call_032_500b
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    add $04
    ld [hl], a
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    ld l, l
    ld c, c
    add l
    ld c, c
    or c
    ld c, c
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    xor a
    ld hl, $0002
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld d, $06
    call Call_032_505d
    push af
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld d, $02
    call Call_032_505d
    ld e, a
    pop af
    add e
    call Call_032_500b
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    add $08
    ld [hl], a
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    add $02
    ld [hl], a
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    cp [hl]
    ld c, c
    jp z, $da49

    ld c, c
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ede
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    cp $20
    ret nc

    inc [hl]
    ld d, a
    ld e, $04
    call Call_032_4f2e
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_032_49ea

    dec [hl]
    ld d, a
    ld e, $04
    call Call_032_4f2e
    ret


jr_032_49ea:
    call Call_032_4f0a
    ret


    call Call_032_40d7
    rst $30
    ld c, c
    inc d
    ld c, d
    ld [hl], $4a
    call Call_032_40e5
    call Call_032_4eca
    ld a, $42
    call Call_032_4ef4
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0002
    add hl, bc
    ld [hl], $01
    ld hl, $0003
    add hl, bc
    ld [hl], $20
    ret


    ld hl, $0002
    add hl, bc
    ld a, [hl]
    cp $38
    ret nc

    push af
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld d, $10
    call Call_032_5066
    add $10
    ld d, a
    pop af
    add d
    call Call_032_501b
    ld hl, $0003
    add hl, bc
    inc [hl]
    inc [hl]
    ret


    call Call_032_4f0a
    ret


    call Call_032_40d7
    ld c, c
    ld c, d
    ld l, a
    ld c, d
    ld [hl], b
    ld c, d
    adc b
    ld c, d
    ld l, a
    ld c, d
    xor h
    ld c, d
    call Call_032_40e5
    ld a, $e4
    call Call_032_4ecb
    ld a, $47
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ldh a, [$c7]
    ld l, a
    ld h, $d2

jr_032_4a60:
    ldh a, [$c8]
    cp l
    jr z, jr_032_4a69

    xor a
    ld [hl+], a
    jr jr_032_4a60

jr_032_4a69:
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ret


    call Call_032_4ab0
    jr nc, jr_032_4a79

    call Call_032_4a9a
    ret


jr_032_4a79:
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ldh a, [$c7]
    inc a
    ldh [$c7], a
    call Call_032_40e5
    ret


    call Call_032_4ab0
    jr nc, jr_032_4a96

    call Call_032_4a9a
    ldh a, [$c8]
    dec a
    ld l, a
    ld [hl], e
    ret


jr_032_4a96:
    call Call_032_40e5
    ret


Call_032_4a9a:
    ld e, a
    ldh a, [$c7]
    ld l, a
    ldh a, [$c8]
    sub l
    srl a
    ld h, $d2

jr_032_4aa5:
    ld [hl], e
    inc hl
    inc hl
    dec a
    jr nz, jr_032_4aa5

    ret


    call Call_032_4f19
    ret


Call_032_4ab0:
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    inc [hl]
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    ld hl, $4ac7
    add hl, de
    ld a, [hl]
    cp $ff
    ret


    nop
    ld b, b
    sub b
    db $e4
    rst $38
    call Call_032_40d7
    db $d3
    ld c, d
    push hl
    ld c, d
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ede
    ld hl, $0002
    add hl, bc
    ld [hl], $40
    ret


    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_032_4afc

    dec [hl]
    srl a
    srl a
    srl a
    and $0f
    ld d, a
    ld e, a
    call Call_032_4f2e
    ret


jr_032_4afc:
    call Call_032_4f0a
    ret


    ldh a, [$e6]
    and a
    jr nz, jr_032_4b7a

    call Call_032_40d7
    ld c, $4b
    ld [hl+], a
    ld c, e
    ld h, b
    ld c, e
    call Call_032_40e5
    ld a, $e4
    call Call_032_4ecb
    ld a, $47
    ldh [$c6], a
    xor a
    ldh [$c7], a
    ld a, $60
    ldh [$c8], a
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld e, a
    and $07
    ret nz

    ld a, e
    and $18
    sla a
    swap a
    sla a
    ld e, a
    ld d, $00
    push bc
    call Call_032_5038
    jr nz, jr_032_4b4d

    ld hl, $4bd8
    add hl, de
    ld a, [hl+]
    ld [$cfc9], a
    ld d, a
    ld e, [hl]
    ld bc, $2f30
    jr jr_032_4b5b

jr_032_4b4d:
    ld hl, $4be0
    add hl, de
    ld d, [hl]
    inc hl
    ld a, [hl]
    ld [$cfc9], a
    ld e, a
    ld bc, $3728

jr_032_4b5b:
    call Call_032_4b6c
    pop bc
    ret


    call Call_032_4f19
    ld a, $e4
    ld [$cfc7], a
    ld [$cfc9], a
    ret


Call_032_4b6c:
    ld hl, $d200

jr_032_4b6f:
    ld [hl], d
    inc hl
    dec b
    jr nz, jr_032_4b6f

jr_032_4b74:
    ld [hl], e
    inc hl
    dec c
    jr nz, jr_032_4b74

    ret


jr_032_4b7a:
    ld de, $4b81
    call Call_032_40ca
    jp hl


    add a
    ld c, e
    sub c
    ld c, e
    jp z, $cd4b

    push hl
    ld b, b
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld e, a
    and $07
    ret nz

    ld a, e
    and $18
    sla a
    swap a
    sla a
    ld e, a
    ld d, $00
    call Call_032_5038
    jr nz, jr_032_4bbb

    ld hl, $4bd8
    add hl, de
    ld a, [hl+]
    push hl
    call Call_032_4e7f
    pop hl
    ld a, [hl]
    call Call_032_4e52
    ret


jr_032_4bbb:
    ld hl, $4bd8
    add hl, de
    ld a, [hl+]
    push hl
    call Call_032_4e52
    pop hl
    ld a, [hl]
    call Call_032_4e7f
    ret


    ld a, $e4
    call Call_032_4e52
    ld a, $e4
    call Call_032_4e7f
    call Call_032_4043
    ret


    db $e4
    db $e4
    ld hl, sp-$70
    db $fc
    ld b, b
    ld hl, sp-$70
    db $e4
    db $e4
    sub b
    ld hl, sp+$40
    db $fc
    sub b
    ld hl, sp+$11
    rst $28
    ld c, e
    call Call_032_4d77
    ret


    db $e4
    ld l, h
    cp $11
    ld sp, hl
    ld c, e
    call Call_032_4d77
    ret


    db $e4
    sub b
    ld b, b
    rst $38
    ld de, $4c04
    call Call_032_4d77
    ret


    db $e4
    ld hl, sp-$04
    rst $38
    ld de, $4c0f
    call Call_032_4d77
    ret


    db $e4
    sub b
    ld b, b
    sub b
    cp $11
    dec de
    ld c, h
    call Call_032_4d77
    ret


    db $e4
    ld hl, sp-$04
    ld hl, sp-$02
    ld de, $4c27
    call Call_032_4d77
    ret


    db $e4
    ld hl, sp-$04
    ld hl, sp-$1c
    sub b
    ld b, b
    sub b
    cp $11
    scf
    ld c, h
    call Call_032_4d77
    ret


    db $e4
    db $fc
    db $e4
    nop
    cp $11
    ld b, e
    ld c, h
    call Call_032_4d77
    ret


    db $e4
    sub b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    sub b
    db $e4
    rst $38
    ld de, $4c5c
    call Call_032_4d77
    ret


    nop
    ld b, b
    sub b
    db $e4
    rst $38
    call Call_032_40d7
    ld l, b
    ld c, h
    add l
    ld c, h
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0002
    add hl, bc
    ld [hl], $01
    ld hl, $0003
    add hl, bc
    ld [hl], $20
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_032_4c9e

    dec [hl]
    and $01
    ret nz

    ld hl, $0002
    add hl, bc
    ld a, [hl]
    xor $ff
    inc a
    ld [hl], a
    call Call_032_500b
    ret


jr_032_4c9e:
    call Call_032_4f0a
    ret


    call Call_032_40d7
    xor e
    ld c, h
    jp $dd4c


    ld c, h
    call Call_032_40e5
    call Call_032_4eca
    ld a, $43
    ldh [$c6], a
    xor a
    ldh [$c7], a
    ld a, $37
    ldh [$c8], a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    cp $40
    jr nc, jr_032_4cdd

    ld d, $06
    call Call_032_505d
    call Call_032_500b
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    add $02
    ld [hl], a
    ret


jr_032_4cdd:
    call Call_032_4f0a
    ret


    call Call_032_4d0b
    jr c, jr_032_4cea

    bit 7, a
    jr z, jr_032_4ceb

jr_032_4cea:
    xor a

jr_032_4ceb:
    push af
    call $045a
    pop af
    ldh [$d0], a
    xor $ff
    inc a
    ld [$d314], a
    ret


    call Call_032_4d0b
    jr nc, jr_032_4cff

    xor a

jr_032_4cff:
    ldh [$cf], a
    ret


    call Call_032_4d0b
    jr nc, jr_032_4d08

    xor a

jr_032_4d08:
    ldh [$d0], a
    ret


Call_032_4d0b:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_032_4d18

    call Call_032_4043
    scf
    ret


jr_032_4d18:
    dec [hl]
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and $0f
    jr z, jr_032_4d2a

    dec [hl]
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and a
    ret


jr_032_4d2a:
    ld a, [hl]
    swap a
    or [hl]
    ld [hl], a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    xor $ff
    inc a
    ld [hl], a
    and a
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    cp $40
    jr nc, jr_032_4d53

    ld d, $06
    call Call_032_505d
    ldh [$cf], a
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    add $02
    ld [hl], a
    ret


jr_032_4d53:
    xor a
    ldh [$cf], a
    ret


Call_032_4d57:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_032_4d69

    dec [hl]
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    call Call_032_4eb2
    ret


jr_032_4d69:
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0001
    add hl, bc
    ld [hl], a
    call Call_032_4eac
    ret


Call_032_4d77:
    ldh a, [$e6]
    and a
    jr nz, jr_032_4dd4

    push de
    ld de, $4d85
    call Call_032_40ca
    pop de
    jp hl


    adc e
    ld c, l
    xor d
    ld c, l
    ret


    ld c, l
    call Call_032_40e5
    ld a, $e4
    call Call_032_4ecb
    ld a, $47
    call Call_032_4ede
    ldh a, [$c8]
    inc a
    ldh [$c8], a
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld [hl], $00
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and $0f
    jr z, jr_032_4db5

    dec [hl]
    ret


jr_032_4db5:
    ld a, [hl]
    swap a
    or [hl]
    ld [hl], a
    call Call_032_4eac
    jr c, jr_032_4dc3

    call Call_032_500b
    ret


jr_032_4dc3:
    ld hl, $0003
    add hl, bc
    dec [hl]
    ret


    call Call_032_4f19
    ld a, $e4
    ldh [rBGP], a
    call Call_032_4043
    ret


jr_032_4dd4:
    push de
    ld de, $4ddd
    call Call_032_40ca
    pop de
    jp hl


    rst $20
    ld c, l
    ld [bc], a
    ld c, [hl]
    ld hl, $2a4e
    ld c, [hl]
    ld c, c
    ld c, [hl]
    call Call_032_5038
    jr nz, jr_032_4df2

    call Call_032_40e5
    call Call_032_40e5

jr_032_4df2:
    call Call_032_40e5
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld [hl], $00
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and $0f
    jr z, jr_032_4e0d

    dec [hl]
    ret


jr_032_4e0d:
    ld a, [hl]
    swap a
    or [hl]
    ld [hl], a
    call Call_032_4eac
    jr c, jr_032_4e1b

    call Call_032_4e52
    ret


jr_032_4e1b:
    ld hl, $0003
    add hl, bc
    dec [hl]
    ret


    ld a, $e4
    call Call_032_4e52
    call Call_032_4043
    ret


    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and $0f
    jr z, jr_032_4e35

    dec [hl]
    ret


jr_032_4e35:
    ld a, [hl]
    swap a
    or [hl]
    ld [hl], a
    call Call_032_4eac
    jr c, jr_032_4e43

    call Call_032_4e7f
    ret


jr_032_4e43:
    ld hl, $0003
    add hl, bc
    dec [hl]
    ret


    ld a, $e4
    call Call_032_4e7f
    call Call_032_4043
    ret


Call_032_4e52:
    ld h, a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, h
    push bc
    push af
    ld hl, $d080
    ld de, $d000
    ld b, a
    ld c, $01
    call $0d50
    ld hl, $d0c8
    ld de, $d048
    pop af
    ld b, a
    ld c, $01
    call $0d50
    pop bc
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


Call_032_4e7f:
    ld h, a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, h
    push bc
    push af
    ld hl, $d088
    ld de, $d008
    ld b, a
    ld c, $01
    call $0d50
    ld hl, $d0c0
    ld de, $d040
    pop af
    ld b, a
    ld c, $01
    call $0d50
    pop bc
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


Call_032_4eac:
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    inc [hl]

Call_032_4eb2:
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_032_4ec8

    cp $fe
    jr nz, jr_032_4ec6

    ld a, [de]
    ld hl, $0003
    add hl, bc
    ld [hl], $00

jr_032_4ec6:
    and a
    ret


jr_032_4ec8:
    scf
    ret


Call_032_4eca:
    xor a

Call_032_4ecb:
    ld hl, $d100
    ld e, $99

jr_032_4ed0:
    ld [hl+], a
    dec e
    jr nz, jr_032_4ed0

    ld hl, $d200
    ld e, $91

jr_032_4ed9:
    ld [hl+], a
    dec e
    jr nz, jr_032_4ed9

    ret


Call_032_4ede:
    ldh [$c6], a
    call Call_032_5038
    jr nz, jr_032_4eea

    ld de, $0036
    jr jr_032_4eed

jr_032_4eea:
    ld de, $2f5e

jr_032_4eed:
    ld a, d
    ldh [$c7], a
    ld a, e
    ldh [$c8], a
    ret


Call_032_4ef4:
    ldh [$c6], a
    call Call_032_5038
    jr nz, jr_032_4f00

    ld de, $0036
    jr jr_032_4f03

jr_032_4f00:
    ld de, $2d5e

jr_032_4f03:
    ld a, d
    ldh [$c7], a
    ld a, e
    ldh [$c8], a
    ret


Call_032_4f0a:
    xor a
    ldh [$c7], a
    ldh [$c8], a
    call Call_032_4eca
    xor a
    ldh [$c6], a
    call Call_032_4043
    ret


Call_032_4f19:
    xor a
    ldh [$c6], a
    ld a, $e4
    ldh [rBGP], a
    ld [$cfc7], a
    ld [$cfc9], a
    ldh [$c7], a
    ldh [$c8], a
    call Call_032_4eca
    ret


Call_032_4f2e:
    push bc
    xor a
    ld [$d419], a
    ld a, e
    ld [$d41a], a
    ld a, d
    ld [$d41b], a
    ld a, $80
    ld [$d41c], a
    ld bc, $d200

jr_032_4f43:
    ldh a, [$c7]
    cp c
    jr nc, jr_032_4f58

    ldh a, [$c8]
    cp c
    jr c, jr_032_4f58

    ld a, [$d41b]
    ld d, a
    ld a, [$d419]
    call Call_032_505d
    ld [bc], a

jr_032_4f58:
    inc bc
    ld a, [$d41a]
    ld hl, $d419
    add [hl]
    ld [hl], a
    ld hl, $d41c
    dec [hl]
    jr nz, jr_032_4f43

    pop bc
    ret


Call_032_4f69:
    push bc
    xor a
    ld [$d419], a
    ld a, e
    ld [$d41a], a
    ld a, d
    ld [$d41b], a
    ld a, $40
    ld [$d41c], a
    ld bc, $d422

jr_032_4f7e:
    ld a, [$d41b]
    ld d, a
    ld a, [$d419]
    call Call_032_505d
    ld [bc], a
    inc bc
    ld a, [$d41a]
    ld hl, $d419
    add [hl]
    ld [hl], a
    ld hl, $d41c
    dec [hl]
    jr nz, jr_032_4f7e

    pop bc
    ret


Call_032_4f9a:
    push bc
    ld [$d41c], a
    ld a, e
    ld [$d41a], a
    ld a, d
    ld [$d41b], a
    call Call_032_4fe4
    ld hl, $d200
    add hl, de
    ld c, l
    ld b, h

jr_032_4faf:
    ld a, [$d41c]
    and a
    jr z, jr_032_4fe1

    dec a
    ld [$d41c], a
    push af
    ld a, [$d41b]
    ld d, a
    ld a, [$d41a]
    push hl
    call Call_032_505d
    ld e, a
    pop hl
    ldh a, [$c8]
    cp c
    jr c, jr_032_4fcf

    ld a, e
    ld [bc], a
    inc bc

jr_032_4fcf:
    ldh a, [$c7]
    cp l
    jr nc, jr_032_4fd6

    ld [hl], e
    dec hl

jr_032_4fd6:
    ld a, [$d41a]
    add $04
    ld [$d41a], a
    pop af
    jr jr_032_4faf

jr_032_4fe1:
    pop bc
    and a
    ret


Call_032_4fe4:
    ldh a, [$c7]
    ld e, a
    ld a, [$d419]
    add e
    ld e, a
    ld d, $00
    ret


Call_032_4fef:
    push bc
    ldh a, [$c7]
    ld l, a
    inc a
    ld e, a
    ld h, $d2
    ld d, h
    ldh a, [$c8]
    sub l
    and a
    jr z, jr_032_5009

    ld c, a
    ld a, [hl]
    push af

jr_032_5001:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_032_5001

    pop af
    ld [hl], a

jr_032_5009:
    pop bc
    ret


Call_032_500b:
Jump_032_500b:
    push af
    ld h, $d2
    ldh a, [$c7]
    ld l, a
    ldh a, [$c8]
    sub l
    ld d, a
    pop af

jr_032_5016:
    ld [hl+], a
    dec d
    jr nz, jr_032_5016

    ret


Call_032_501b:
    push af
    ld e, a
    ldh a, [$c7]
    ld l, a
    ldh a, [$c8]
    sub l
    sub e
    ld d, a
    ld h, $d2
    ldh a, [$c7]
    ld l, a
    ld a, $90

jr_032_502c:
    ld [hl+], a
    dec e
    jr nz, jr_032_502c

    pop af
    xor $ff

jr_032_5033:
    ld [hl+], a
    dec d
    jr nz, jr_032_5033

    ret


Call_032_5038:
    ld hl, $0002
    add hl, bc
    ldh a, [$e4]
    and $01
    xor [hl]
    ret


Call_032_5042:
    ld hl, $0002
    add hl, bc
    ldh a, [$e4]
    and $01
    xor [hl]
    jr nz, jr_032_5053

    ld a, [$c66f]
    and $60
    ret


jr_032_5053:
    ld a, [$c66a]
    and $60
    ret


    ldh a, [$e7]
    and a
    ret


Call_032_505d:
    ld e, a
    ld hl, $6765
    ld a, $33
    rst $08
    ld a, e
    ret


Call_032_5066:
    ld e, a
    ld hl, $676b
    ld a, $33
    rst $08
    ld a, e
    ret


    sbc e
    ld d, d
    jp $d555


    ld d, l
    dec b
    ld d, [hl]
    dec hl
    ld d, [hl]
    ld d, c
    ld d, [hl]
    sub [hl]
    ld h, l
    ret c

    ld d, a
    or b
    ld e, b
    inc a
    ld e, e
    and [hl]
    ld e, l
    sub l
    ld e, l
    call z, $bd66
    ld e, e
    ld a, [hl]
    ld l, c
    ldh a, [$5d]
    ld [hl], $5c
    and $6b
    xor b
    ld h, e
    ld l, a
    ld e, [hl]
    inc d
    ld h, b
    inc de
    ld l, h
    ld b, d
    ld e, d
    ld [hl], a
    ld d, [hl]
    and a
    ld d, [hl]
    ld a, $57
    call $2956
    ld d, a
    adc l
    ld h, d
    pop de
    ld h, d
    add hl, sp
    ld h, h
    ld c, h
    ld h, h
    ld a, l
    ld h, h
    rst $28
    ld h, d
    rlca
    ld h, e
    ld [hl], $60
    ld sp, $a863
    ld l, b
    ld e, h
    ld h, e
    ld b, c
    ld l, h
    or h
    ld h, h
    rst $00
    ld h, h
    rst $20
    ld h, h
    ld e, [hl]
    ld h, c
    ld l, $5e
    xor e
    ld h, b
    rst $10
    ld h, b
    inc c
    ld e, l
    db $f4
    ld h, b
    ld [hl], $5c
    inc h
    ld l, h
    sub [hl]
    ld e, h
    and c
    ld d, a
    ld [hl+], a
    ld e, b
    inc b
    ld h, h
    ld a, c
    ld e, c
    or h
    ld e, c
    ld a, [hl+]
    ld e, d
    cp l
    ld e, b
    add sp, $58
    add hl, hl
    ld l, b
    dec a
    ld e, c
    add b
    ld e, l
    ld l, d
    ld e, l
    adc e
    ld h, [hl]
    and b
    ld h, [hl]
    add d
    ld h, e
    xor d
    ld l, e
    ld l, c
    ld l, e
    daa
    ld l, d
    ld h, b
    ld l, c
    db $eb
    ld e, [hl]
    inc de
    ld e, a
    ld e, d
    ld e, d
    push de
    ld l, b
    ld a, h
    ld e, d
    ld a, [c]
    ld e, d
    dec [hl]
    ld e, l
    dec [hl]
    ld e, l
    dec [hl]
    ld e, l
    ld h, h
    ld h, l
    sub e
    ld h, d
    ld de, $e558
    ld d, a
    ld d, e
    ld e, e
    ld h, [hl]
    ld e, e
    add h
    ld e, e
    sbc d
    ld e, e
    sbc l
    ld e, h
    adc d
    ld h, b
    sbc b
    ld h, b
    ld c, e
    ld h, d
    ld b, d
    ld l, e
    ld e, b
    ld h, b
    dec e
    ld l, e
    ret c

    ld h, e
    ret c

    ld l, c
    ld [hl], h
    ld l, d
    sbc [hl]
    ld l, c
    ld b, l
    ld l, d
    ld c, a
    ld e, [hl]
    call z, $ac67
    ld h, l
    dec b
    ld h, c
    sbc d
    ld e, [hl]
    xor a
    ld e, [hl]
    ld e, [hl]
    ld l, b
    adc d
    ld h, a
    add hl, sp
    ld l, c
    dec de
    ld h, c
    inc c
    ld l, b
    ld a, [bc]
    ld l, d
    push bc
    ld l, d
    adc [hl]
    ld h, c
    xor $63
    ld l, d
    ld h, c
    or l
    ld e, a
    db $fc
    ld e, a
    ld d, d
    ld l, e
    sbc e
    ld d, d
    ld d, e
    ld e, h
    ld d, l
    ld e, a
    push hl
    ld h, a
    rla
    ld h, h
    dec sp
    ld l, e
    or d
    ld l, d
    ld h, c
    ld e, b
    pop hl
    ld l, d
    dec c
    ld e, [hl]
    inc c
    ld h, [hl]
    ccf
    ld h, [hl]
    ld a, [de]
    ld h, l
    ld l, h
    ld h, b
    push de
    ld h, c
    ld l, d
    ld h, [hl]
    add l
    ld e, a
    db $fc
    ld d, [hl]
    sub a
    ld l, b
    ld b, h
    ld l, b
    jr z, jr_032_51eb

    add b
    ld h, l
    ld d, e
    ld l, b
    sbc $65
    and c
    ld h, a
    ld c, l
    ld h, l
    ld e, $59
    db $ed
    ld h, c
    dec [hl]
    ld e, l
    nop
    ld h, a
    ld l, h
    ld l, b
    scf
    ld h, d
    inc hl
    ld h, d
    inc h
    ld h, [hl]
    ld [hl], d
    ld e, h
    cp h
    ld e, l
    or $65
    ld [de], a
    ld h, d
    jp nc, $645c

    ld d, a
    db $ed
    ld l, c
    rla
    ld l, [hl]
    pop af
    ld h, a
    ld a, e
    ld d, a
    db $fc
    ld e, l
    inc a
    ld h, a
    ld d, l
    ld l, h
    ld h, c
    ld l, h
    ld a, e
    ld l, h
    or l
    ld l, h
    reti


    ld l, h
    ei
    ld l, h
    dec de
    ld l, l
    jr nc, @+$6f

    ld l, e
    ld l, l
    add [hl]
    ld l, l
    pop af
    ld l, l
    add hl, bc
    ld l, c
    ld c, e
    ld l, [hl]
    add h
    ld l, [hl]
    sub a
    ld l, [hl]
    sub $6e
    ld [c], a
    ld l, [hl]
    ld c, $6f
    inc sp
    ld l, a
    ld [hl], e
    ld l, a
    add h
    ld l, a
    or h
    ld l, a
    rst $08
    ld l, a
    ld d, c
    ld [hl], b
    ld h, a
    ld [hl], b

jr_032_51eb:
    ld l, a
    ld [hl], b
    sub d
    ld [hl], b
    or b
    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [rSVBK]
    inc de
    ld [hl], c
    ld c, h
    ld [hl], c
    adc h
    ld [hl], c
    sbc l
    ld [hl], c
    cp h
    ld [hl], c
    call c, $1071
    ld [hl], d
    dec l
    ld [hl], d
    ld [hl], h
    ld [hl], d
    cp e
    ld [hl], d
    push de
    ld [hl], d
    push af
    ld [hl], d
    dec c
    ld [hl], e
    jr z, jr_032_5284

    ld c, l
    ld [hl], e
    add [hl]
    ld [hl], e
    and c
    ld [hl], e
    rst $18
    ld [hl], e
    dec b
    ld [hl], h
    rla
    ld [hl], h
    jr z, jr_032_5293

    ld h, h
    ld [hl], h
    adc b
    ld [hl], h
    pop bc
    ld [hl], h
    ld sp, hl
    ld [hl], h
    ld e, $75
    dec a
    ld [hl], l
    ld a, l
    ld [hl], l
    xor d
    ld [hl], l
    ret nz

    ld [hl], l
    sbc $75
    rst $28
    ld [hl], l
    cp $75
    dec de
    db $76
    ld e, [hl]
    db $76
    adc [hl]
    db $76
    or [hl]
    db $76
    call c, $0376
    ld [hl], a
    add hl, sp
    ld [hl], a
    ld e, d
    ld [hl], a
    xor b
    ld [hl], a
    db $db
    ld [hl], a
    ld a, [hl-]
    ld a, b
    ld e, d
    ld a, b
    or e
    ld a, b
    rst $08
    ld a, b
    ld a, [hl]
    ld [hl], a
    jp hl


    ld a, b
    rla
    ld a, c
    ld b, b
    ld a, c
    ld a, d
    ld a, c
    add $79
    db $db
    ld a, c
    dec de
    ld a, d
    ld l, d
    ld a, d
    add h
    ld a, d
    sbc e
    ld d, d
    sbc e
    ld d, d
    sbc e
    ld d, d
    sbc h
    ld d, d
    pop bc
    ld d, d
    pop de
    ld d, e
    add e
    ld d, h
    adc l
    ld d, h
    and e
    ld d, h
    or h
    ld d, h
    push bc
    ld d, h
    jp c, $f854

    ld d, h
    ld [$1e55], sp

jr_032_5284:
    ld d, l
    inc sp
    ld d, l
    ld d, b
    ld d, l
    ld e, h
    ld d, l
    add b
    ld d, l
    add c
    ld d, l
    sub d
    ld d, l
    and b
    ld d, l

jr_032_5293:
    xor [hl]
    ld d, l
    or l
    ld d, l
    cp h
    ld d, l
    ld [hl], h
    ld d, l
    rst $38
    jp nc, $1f1e

    ret nc

    or [hl]
    ld b, b
    ld h, b
    ld [bc], a
    ld [bc], a
    ret nc

    or [hl]
    ld b, b

jr_032_52a8:
    ld d, b
    ld [bc], a
    ld b, b
    ret nc

    or a
    adc b
    jr z, jr_032_52c5

    ret nc

    or a
    adc b
    jr z, jr_032_52df

    ret nc

    or a
    adc b
    jr z, jr_032_52f9

    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    add b
    rst $38
    ld hl, sp+$00
    ld a, [c]
    ld d, d

jr_032_52c5:
    ld hl, sp+$01
    ld b, a
    ld d, e

jr_032_52c9:
    ld hl, sp+$02
    dec b
    ld d, e
    ld hl, sp+$04
    ld h, $53
    jp nc, $070b

    ldh [rNR30], a
    jr z, jr_032_52a8

    dec d
    ld b, h
    ld e, h
    ld b, b

jr_032_52dc:
    inc h
    ret nc

    dec d

jr_032_52df:
    adc b
    ld b, c
    nop
    rst $10
    ld [bc], a
    rlca
    db $10
    ldh [rSB], a
    add hl, hl
    ret nc

    inc e
    adc b
    ld b, b
    db $10
    db $10
    db $fc
    sub d
    ld d, e
    jp nc, $010b

    ldh [rNR30], a
    jr z, jr_032_52c9

jr_032_52f9:
    ld d, $40
    ld e, h
    jr nz, jr_032_5312

    ret nc

    ld bc, $2870
    nop
    jr nz, @+$01

    jp nc, $070b

    ldh [rNR30], a
    jr z, jr_032_52dc

    dec d
    ld b, h
    ld e, h
    ld b, b
    inc h
    ret nc

jr_032_5312:
    dec d
    adc b
    ld b, c
    nop
    rst $10
    ld [bc], a
    rlca
    db $10
    ldh [rSB], a
    add hl, hl
    ret nc

    inc e

jr_032_531f:
    adc b
    ld b, b
    db $10
    db $10
    db $fc
    sub d
    ld d, e
    jp nc, $070b

    ldh [rNR30], a
    jr z, @-$2e

    dec d
    ld b, h
    ld e, h
    ld b, b
    inc h
    ret nc

    dec d
    adc b
    ld b, c
    nop
    rst $10
    ld [bc], a
    rlca
    db $10
    ldh [rSB], a
    add hl, hl
    ret nc

    inc e
    adc b
    ld b, b
    db $10
    db $10
    db $fc
    sub d
    ld d, e

jr_032_5347:
    db $d3
    dec bc
    rlca
    ld de, $1ae0
    jr z, jr_032_531f

    dec d
    ld b, b
    ld e, h
    jr nz, jr_032_5378

    ret nc

    dec d
    adc b
    ld b, c
    nop
    rst $10
    ld [bc], a
    rlca
    db $10
    ldh [rSB], a
    add hl, hl
    ret nc

    inc e
    adc b
    ld b, b
    db $10
    jr jr_032_5347

    ld bc, $d0a5
    dec hl
    adc b
    jr c, jr_032_539e

    ret nc

    dec hl
    adc b
    jr c, @+$33

    ret nc

    dec hl
    adc b
    jr c, jr_032_53aa

jr_032_5378:
    ret nc

    dec hl
    adc b
    jr c, jr_032_53b0

    ret nc

    dec hl
    adc b
    jr c, jr_032_53b6

jr_032_5382:
    ret nc

    dec hl
    adc b
    jr c, jr_032_53bc

jr_032_5387:
    ret nc

    dec hl
    adc b
    jr c, jr_032_53c2

    ret nc

    dec hl
    adc b
    jr c, jr_032_53c8

    ld b, b
    ldh a, [$0c]
    nop
    nop
    nop
    ld [$02d6], sp
    db $10
    ldh [rSB], a
    dec d

jr_032_539e:
    sub $01
    jr nz, jr_032_5382

    ld bc, $20ae
    jr nz, jr_032_53c7

    ld [$00f9], sp

jr_032_53aa:
    jr nc, jr_032_5387

    ei
    ld bc, $53bc

jr_032_53b0:
    ei
    ld [bc], a
    cp [hl]
    ld d, e
    sub $01

jr_032_53b6:
    ldh [rSB], a
    or e
    db $fc
    xor d
    ld d, e

jr_032_53bc:
    db $f4
    rst $38
    rst $10
    ld bc, $e00b

jr_032_53c2:
    ld bc, $d029
    inc e
    adc b

jr_032_53c7:
    ld b, b

jr_032_53c8:
    db $10
    ld [bc], a
    ldh a, [$0b]
    nop
    nop
    nop
    jr nz, @+$01

    ld hl, sp+$00
    ld [hl], c
    ld d, h
    ld hl, sp+$01
    inc e
    ld d, h
    ld hl, sp+$02
    ld a, [$d153]
    rlca
    cp $a7
    ld a, h
    ldh a, [$2b]
    nop
    ld bc, $e000
    nop
    add hl, hl
    ret nc

    dec de
    jr nc, jr_032_544e

    nop
    ldh a, [$0b]
    nop
    ld bc, $8000
    inc b
    cp $b7
    ld a, h
    rst $38
    pop de
    rlca
    cp $a7
    ld a, h
    ldh a, [$2a]
    nop
    ld bc, $0100
    ldh a, [$0a]
    nop
    ld bc, $0400
    ldh [rP1], a
    add hl, hl
    ret nc

    dec de
    jr nc, jr_032_5472

    nop
    ret c

    ld a, [hl+]
    ld h, b
    ret c

    ld a, [hl+]
    cp $b7
    ld a, h
    rst $38
    pop de
    ld de, $01f0
    nop
    inc b
    inc bc
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ldh [rP1], a
    ld e, [hl]
    ret nc

    ld l, l
    jr nc, jr_032_548f

    nop
    inc b
    ldh [rP1], a
    ld e, [hl]
    ret nc

    ld l, l
    jr nc, jr_032_5498

    ld [$e004], sp
    nop
    ld e, [hl]
    ret nc

    ld l, l
    jr nc, jr_032_54a1

    db $10
    inc b
    ldh [rP1], a
    ld e, [hl]

jr_032_5446:
    ret nc

    ld l, l
    jr nc, jr_032_54aa

    jr jr_032_5450

    ldh [rP1], a

jr_032_544e:
    ld e, [hl]
    ret nc

jr_032_5450:
    ld l, l
    jr nc, @+$62

    jr nz, jr_032_5459

    ldh [rP1], a
    ld e, [hl]
    ret nc

jr_032_5459:
    ld l, l
    jr nc, @+$62

    jr z, jr_032_5462

    ldh [rP1], a

jr_032_5460:
    ld e, [hl]
    ret nc

jr_032_5462:
    ld l, l
    jr nc, jr_032_54c5

    jr nc, jr_032_546b

    ldh [rP1], a
    ld e, [hl]
    ret nc

jr_032_546b:
    ld l, l
    jr nc, @+$62

    jr c, @+$22

    rst $38
    pop de

jr_032_5472:
    rlca
    ldh [rP1], a
    add hl, hl
    ret nc

    inc e
    inc l
    ld h, b
    nop
    inc b
    ldh a, [$0b]
    nop
    ld bc, $2000
    rst $38
    ldh [rP1], a
    add hl, hl
    ldh a, [$0c]
    nop
    ld bc, $2000
    rst $38
    pop de
    add hl, de

jr_032_548f:
    ldh [rP1], a
    cpl
    ret nc

    ld d, d
    inc l
    jr c, jr_032_54ac

    ret nc

jr_032_5498:
    ld d, d
    inc l
    jr c, jr_032_5446

    ret nc

    ld d, d
    inc l
    jr c, jr_032_5460

jr_032_54a1:
    ld h, b
    rst $38
    pop de
    add hl, de
    ldh [rP1], a
    ld c, b
    ret nc

    ld d, h

jr_032_54aa:
    ld b, b
    ld d, b

jr_032_54ac:
    nop
    jr z, jr_032_54ac

    inc bc
    xor b
    ld d, h
    jr nz, @+$01

    pop de
    inc bc
    ldh [rP1], a
    ld h, h
    ret nc

    db $10
    jr c, jr_032_5515

    db $10
    inc b
    db $fd
    inc bc
    or [hl]
    ld d, h
    ld b, $ff

jr_032_54c5:
    pop de
    inc c
    ldh [rP1], a
    dec bc
    ret nc

    ld d, l
    ld b, b
    jr c, jr_032_54cf

jr_032_54cf:
    ld [$00e0], sp
    dec bc
    ret nc

    ld d, l
    jr nc, jr_032_550f

    nop
    ld [$d1ff], sp
    ld [de], a
    ldh [rNR31], a
    ld c, e
    ret nc

    ld b, l
    add b
    jr nc, jr_032_54e6

    ld b, $e0

jr_032_54e6:
    dec de
    ld c, e
    ret nc

    ld b, l
    adc b
    ld b, b
    inc bc
    ld b, $e0
    dec de
    ld c, e
    ret nc

    ld b, l
    adc b

jr_032_54f4:
    jr nz, jr_032_54fa

    db $10
    rst $38
    pop de
    ld a, [bc]

jr_032_54fa:
    ret nc

    ld a, [hl+]
    inc l

jr_032_54fd:
    ld l, [hl]
    nop
    ldh [rP1], a
    ld e, [hl]
    db $10
    ldh [rP1], a
    ld e, [hl]
    db $10
    rst $38
    pop de
    add hl, de

jr_032_550a:
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop

jr_032_550f:
    ldh [rP1], a
    ld d, [hl]
    ret nc

    ld e, c
    inc d

jr_032_5515:
    ld e, b
    ld b, d
    ret nc

    ld e, c
    ld c, h
    ld e, b
    jp nz, $ff80

    pop de
    inc hl
    ldh [rP1], a
    jr nc, jr_032_54f4

    ld a, [hl]
    ld b, b
    ld c, h
    nop
    jr nz, jr_032_550a

    nop
    jr nc, jr_032_54fd

    ld a, [hl]
    inc h
    ld c, b
    nop
    jr nz, @+$01

    pop de
    rrca
    ret nc

    and d
    ld e, b
    nop
    nop
    ld [$a2d0], sp
    ld c, b
    nop
    ld bc, $d008
    and d
    jr c, jr_032_5545

jr_032_5545:
    ld [bc], a
    ldh [rSB], a
    ld b, $08
    db $fd
    ld b, $46
    ld d, l
    ld [$d1ff], sp
    dec h
    ldh [rP1], a
    ld d, c
    ret nc

    sub l
    ld b, h
    ld d, b
    nop
    jr z, @+$01

    pop de
    inc de
    ldh a, [$0e]
    nop
    nop
    nop
    ldh [rSB], a
    ld d, e
    ret nc

    ld a, $84
    ld c, b
    nop
    ld b, $fd
    ld b, $66
    ld d, l
    ret c

    ld c, $01
    rst $38
    pop de
    ld bc, $00e0
    ld sp, $04d0
    inc l
    ld h, b
    nop
    db $10
    rst $38
    rst $38
    ldh a, [$09]
    nop
    nop
    nop
    dec b
    ldh a, [$0a]
    nop
    nop
    nop
    dec b
    db $fd
    inc bc
    add c
    ld d, l
    rst $38
    cp $c2
    ld a, h
    ldh a, [$33]
    nop
    nop
    nop

jr_032_559a:
    jr z, jr_032_559a

    jp nc, $017c

    rst $38
    cp $c2
    ld a, h
    ldh a, [$34]
    nop
    nop
    nop

jr_032_55a8:
    jr z, jr_032_55a8

    jp nc, $017c

    rst $38
    ldh a, [rNR41]
    jr nz, jr_032_55b4

    jr nz, @+$2a

jr_032_55b4:
    rst $38
    ldh a, [$35]
    nop
    nop
    nop
    jr z, @+$01

    ldh a, [$1f]
    jr nz, @+$04

    ld b, b
    jr z, @+$01

    pop de
    ld bc, $01e0
    ld sp, $08d0
    adc b
    jr c, jr_032_55cd

jr_032_55cd:
    ld b, $d0
    ld bc, $3888
    nop
    db $10
    rst $38
    pop de
    ld bc, $01e0
    ld c, c
    ret nc

    ld [$2888], sp
    nop
    ld b, $d0
    ld bc, $2888
    nop
    ld b, $e0
    ld bc, $d049
    ld [$2c88], sp
    nop
    ld b, $d0
    ld bc, $2c88
    nop
    ld b, $e0
    ld bc, $d049
    ld [$3088], sp
    nop
    ld b, $d0
    ld bc, $3088
    nop
    db $10
    rst $38
    pop de
    ld bc, $01f8
    dec de
    ld d, [hl]
    ldh [rSB], a
    ld b, h
    ret nc

    ld [$3090], sp
    nop
    ld b, $d0
    ld bc, $3090
    nop
    ld [$e0ff], sp
    ld bc, $d044
    ld [$3078], sp
    nop
    ld b, $d0
    ld bc, $3078
    nop
    ld [$d1ff], sp
    ld bc, $01f8
    ld b, c
    ld d, [hl]
    ldh [rSB], a
    inc sp
    ret nc

    ld b, $90
    jr nc, jr_032_5639

jr_032_5639:
    ld b, $d0
    ld bc, $3090
    nop
    ld [$e0ff], sp
    ld bc, $d033
    ld b, $78
    ld b, b
    nop
    ld b, $d0
    ld bc, $4078
    nop
    ld [$d1ff], sp
    ld bc, $1ff0
    ld b, b
    ld [bc], a
    nop
    jr nc, @-$0e

    ld bc, $0800
    inc bc
    ldh [rSB], a
    inc [hl]
    ret nc

    ld b, $88
    jr c, jr_032_5666

jr_032_5666:
    ret nc

    nop
    adc b
    jr c, jr_032_566b

jr_032_566b:
    ld b, $d0
    ld b, $88
    jr c, jr_032_5671

jr_032_5671:
    ld b, $fd
    inc bc
    ld e, [hl]
    ld d, [hl]
    rst $38
    pop de
    ld bc, $01e0
    ld b, a
    ret nc

    rlca
    adc b
    jr z, jr_032_5681

jr_032_5681:
    ld b, $d0
    ld bc, $2888
    nop
    ld b, $e0
    ld bc, $d047
    rlca
    adc b
    inc l
    nop
    ld b, $d0
    ld bc, $2c88
    nop
    ld b, $e0
    ld bc, $d047
    rlca
    adc b
    jr nc, jr_032_569f

jr_032_569f:
    ld b, $d0
    ld bc, $3088
    nop
    db $10
    rst $38
    pop de
    ld bc, $01f8
    cp l
    ld d, [hl]
    ldh [rSB], a
    dec a
    ret nc

    rlca
    sub b
    jr nc, jr_032_56b5

jr_032_56b5:
    ld b, $d0
    ld bc, $3090
    nop
    ld [$e0ff], sp
    ld bc, $d03d
    rlca
    ld a, b
    ld b, b
    nop
    ld b, $d0
    ld bc, $4078
    nop
    ld [$d1ff], sp
    ld bc, $01f8
    pop af
    ld d, [hl]
    ldh [rSB], a
    ld b, [hl]
    ret nc

    rlca
    ld [hl], b
    ld c, b
    nop
    ret nc

    rlca
    ld h, h
    inc a
    nop
    rst $10
    ld bc, $d702
    ld [bc], a
    ld [bc], a
    jr @-$1e

    ld bc, $d03d
    inc b
    adc b
    jr nc, jr_032_56ef

jr_032_56ef:
    db $10
    rst $38
    ld [$00e0], sp
    dec a
    ret nc

    inc b
    inc l
    ld e, b
    nop
    db $10
    rst $38
    pop de
    ld bc, $1ff0
    ld b, b
    ld [bc], a
    nop
    ld hl, sp+$01
    ld e, $57
    jr nz, @-$1e

    ld bc, $d046
    rlca
    ld [hl], b
    ld c, b
    nop
    rst $10
    ld bc, $1002
    ldh [rSB], a
    dec a
    ret nc

    inc b
    adc b
    jr nc, jr_032_571c

jr_032_571c:
    db $10
    rst $38
    db $10
    ldh [rP1], a
    dec a
    ret nc

    inc b
    inc l
    ld e, b
    nop
    db $10
    rst $38
    pop de
    ld bc, $01e0
    dec a
    ret nc

    rlca
    ld [hl], b
    jr c, jr_032_5733

jr_032_5733:
    rst $10
    ld bc, $0c03
    ret nc

    ld bc, $3088
    nop
    db $10
    rst $38
    pop de
    ld bc, $1ff0
    ld b, b
    ld [bc], a
    nop
    ld b, e
    ldh a, [rSB]
    nop
    ld [$e003], sp
    ld bc, $d03e
    rlca
    adc b
    jr c, jr_032_5753

jr_032_5753:
    ret nc

    nop
    adc b
    jr c, jr_032_5758

jr_032_5758:
    ld b, $d0
    rlca
    adc b
    jr c, jr_032_575e

jr_032_575e:
    ld b, $fd
    inc bc
    ld c, e
    ld d, a
    rst $38
    pop de
    ld bc, $1ff0
    jr nz, jr_032_576b

    nop

jr_032_576b:
    ldh [rSB], a
    ld b, l
    ret nc

    add hl, bc
    adc b
    jr c, jr_032_5773

jr_032_5773:
    ld b, $d0
    ld bc, $3888
    nop
    db $10
    rst $38
    pop de
    ld bc, $1ff0
    ld b, b
    ld [bc], a
    nop
    jr nc, @-$0e

    ld bc, $0800
    inc bc
    ldh [rSB], a
    ld b, l
    ret nc

    add hl, bc
    adc b
    jr c, jr_032_5790

jr_032_5790:
    ret nc

    nop
    adc b
    jr c, jr_032_5795

jr_032_5795:
    ld b, $d0
    add hl, bc
    adc b
    jr c, jr_032_579b

jr_032_579b:
    ld b, $fd

jr_032_579d:
    inc bc
    adc b
    ld d, a
    rst $38
    pop de

jr_032_57a2:
    inc bc
    ldh [rNR30], a
    ld d, b
    ret nc

    dec bc
    ld b, b
    ld h, b
    ld [de], a
    inc b
    ldh [rNR30], a
    ld d, b
    ret nc

    dec bc
    ld b, b
    ld h, h
    inc d
    inc b
    ldh [rNR30], a
    ld d, b
    ret nc

    dec bc
    ld b, b
    ld d, h
    inc de
    db $10
    sub $01
    sub $02
    sub $03
    ldh [rSB], a
    ld d, b
    ret nc

    dec bc
    ld a, b
    ld b, h
    jr nc, jr_032_579d

    dec bc
    add h
    ld b, h
    jr nc, jr_032_57a2

    dec bc
    sub b
    ld b, h
    jr nc, jr_032_57f7

    rst $38
    jp nc, $0301

    ret nc

    ld a, [bc]
    adc b
    jr c, jr_032_5823

    cp $cc
    ld a, e
    db $10
    rst $38
    pop de
    inc bc
    ldh [rNR30], a
    ld d, b
    ret nc

    ld c, $40
    ld e, b
    inc b
    ld [bc], a
    ldh [rNR30], a
    ld d, b
    ret nc

    ld c, $40
    ld h, b

jr_032_57f7:
    inc bc
    ld [bc], a
    ldh [rNR30], a
    ld d, b
    ret nc

    ld c, $40
    ld e, b
    inc bc
    ld [bc], a
    ldh [rNR30], a
    ld d, b
    ret nc

    ld c, $40
    ld h, b
    inc b
    ld [bc], a
    db $fd
    ld [bc], a
    rst $20
    ld d, a
    ld h, b
    rst $38
    pop de
    inc bc
    ldh [rNR30], a
    ld d, b
    ret nc

    inc c
    ld b, b
    ld e, h
    nop
    inc bc
    db $fd
    db $10
    inc de
    ld e, b
    ld b, b
    rst $38
    pop de

jr_032_5823:
    inc bc
    ldh [rNR30], a
    ld d, b
    ret nc

    dec c
    ld b, b
    ld e, h
    inc bc
    ld [bc], a
    ret nc

    dec c
    ld c, e
    ld d, [hl]
    dec b
    ld [bc], a
    ret nc

    dec c
    ld d, l
    ld d, c
    rlca
    ld [bc], a
    ret nc

    dec c
    ld h, b
    ld c, h
    add hl, bc
    ld [bc], a
    ret nc

    dec c
    ld l, d
    ld b, a
    dec bc
    ld [bc], a
    ret nc

    dec c
    ld [hl], h
    ld b, d
    inc c
    ld [bc], a
    ret nc

    dec c
    ld a, [hl]
    dec a
    ld a, [bc]
    ld [bc], a
    ret nc

    dec c
    adc b
    jr c, jr_032_585e

    db $10
    ldh [rSB], a
    ld d, b
    db $10
    db $fd
    ld b, $57

jr_032_585e:
    ld e, b
    db $10
    rst $38
    pop de
    inc bc
    ldh [rNR30], a
    ld d, b
    ret nc

    rrca
    ld b, b
    ld e, h
    rlca
    ld b, $fd
    ld a, [bc]
    ld h, e
    ld e, b
    ldh [rSB], a
    ld d, b
    ld [$0afd], sp
    ld [hl], b
    ld e, b
    sub $01
    sub $02
    sub $03
    sub $04
    sub $05
    sub $06
    sub $07
    sub $08
    sub $09
    sub $0a
    ld [bc], a
    ldh [rSB], a
    ld d, b
    ret nc

    rrca
    adc b
    jr c, jr_032_5896

    ret nc

jr_032_5896:
    rrca
    adc b
    jr c, jr_032_589c

    ret nc

    rrca

jr_032_589c:
    adc b
    jr c, jr_032_58a2

    ret nc

    rrca
    adc b

jr_032_58a2:
    jr c, @+$06

    ret nc

    rrca
    adc b
    jr c, jr_032_58ae

    db $10
    db $fd
    ld [bc], a
    adc l
    ld e, b

jr_032_58ae:
    jr nz, @+$01

    jp nc, $0a01

    ret nc

    ld a, [bc]
    adc b
    jr c, jr_032_58fb

    cp $df
    ld a, e
    jr nz, @+$01

    pop de
    ld a, [bc]
    ldh [rNR30], a
    ld e, [hl]
    ret nc

    inc de
    ld b, b
    ld e, h
    inc b
    inc b
    db $fd
    dec b
    cp a
    ld e, b
    ret nc

    add hl, hl
    adc b
    ld c, d
    db $10
    ldh [rNR30], a
    ld e, [hl]
    ret nc

    inc de
    ld b, b
    ld e, h
    inc b
    inc b
    db $fd
    rrca
    pop de
    ld e, b
    jr nc, @-$1e

    ld bc, $085e
    ldh [rSB], a
    ld e, [hl]
    ld [$d1ff], sp
    ld a, [bc]
    ldh [rNR30], a
    ld e, [hl]
    ret nc

    ld de, $5840
    ld h, e
    ld [bc], a
    ldh [rNR30], a
    ld e, [hl]
    ret nc

    ld de, $5040
    ld h, h

jr_032_58fb:
    ld [bc], a
    ldh [rNR30], a
    ld e, [hl]
    ret nc

    ld de, $6040
    ld h, e
    ld [bc], a
    db $fd
    inc bc
    ld [$f058], a
    inc bc
    nop
    ld [$2000], sp
    ret nc

    add hl, hl
    adc b
    ld c, d
    db $10
    add b
    ldh [rSB], a
    ld e, [hl]
    ld [$01e0], sp
    ld e, [hl]
    jr @+$01

    pop de
    dec c
    ldh [$82], a
    ld c, e
    ret nc

    ld hl, $5c40
    pop bc
    ld b, $e0
    add d
    ld c, e
    ret nc

    ld hl, $5c40
    pop hl
    ld b, $e0
    add d
    ld c, e
    ret nc

    ld hl, $5c40
    pop de
    add b
    jr nz, @+$01

    pop de
    dec c
    ldh [rSCY], a
    ld d, c
    ret nc

    ld hl, $5c40
    sub d
    ld b, $e0
    ld b, d
    ld d, c
    ret nc

    ld hl, $5c40
    or e
    ld b, $e0
    ld b, d
    ld d, c
    ret nc

    ld hl, $5c40
    db $f4
    ld [$03fd], sp
    ccf
    ld e, c
    ld b, b
    push hl
    ldh a, [$30]
    nop
    nop
    nop
    ld bc, $cafe
    ld a, h
    ldh a, [$31]
    inc e
    nop
    nop
    inc de
    cp $d2
    ld a, h
    ldh a, [$32]
    nop
    nop
    nop
    ld [$f0ff], sp
    jr nc, jr_032_597c

jr_032_597c:
    nop
    nop
    pop de
    inc b
    cp $ca
    ld a, h
    ldh [rSCY], a
    ld c, e
    ret nc

    inc h
    ld b, b

jr_032_5989:
    ld e, b
    nop
    ld [$24d0], sp
    ld b, b
    ld c, h
    nop
    ld [$24d0], sp
    ld b, b
    ld d, d
    nop
    jr jr_032_5989

    ld sp, $001c
    nop
    ld [$31f0], sp
    ld [$0000], sp
    ld [$31f0], sp
    jr nc, jr_032_59a8

jr_032_59a8:
    nop

jr_032_59a9:
    jr nz, jr_032_59a9

    jp nc, $f07c

    ld [hl-], a
    nop
    nop
    nop
    db $10
    rst $38
    ldh a, [$30]
    nop
    nop
    nop
    pop de
    inc b
    cp $ca
    ld a, h
    ldh [rSB], a
    ld d, d
    ret nc

    dec h
    ld l, h
    ld c, b
    nop
    ldh a, [$31]
    inc e
    nop
    nop
    ld [$01e0], sp
    ld d, d
    ret nc

    dec h
    ld [hl], h
    ld c, b
    nop
    ldh a, [$31]
    ld [$0000], sp
    ld [$01e0], sp
    ld d, d
    ret nc

    dec h
    ld a, h
    ld c, b
    nop
    ldh a, [$31]
    jr nc, jr_032_59e6

jr_032_59e6:
    nop
    ld [$01e0], sp
    ld d, d
    ret nc

    dec h
    add h
    ld c, b
    nop
    ldh a, [$31]
    inc e
    nop
    nop
    ld [$01e0], sp
    ld d, d
    ret nc

    dec h
    adc h
    ld c, b
    nop
    ldh a, [$31]
    ld [$0000], sp
    ld [$01e0], sp
    ld d, d
    ret nc

    dec h
    sub h
    ld c, b
    nop
    ldh a, [$31]
    jr nc, jr_032_5a10

jr_032_5a10:
    nop
    ld [$01e0], sp
    ld d, d
    ret nc

    dec h
    sbc h
    ld c, b
    nop
    ldh a, [$31]
    inc e
    nop
    nop

jr_032_5a1f:
    jr nz, jr_032_5a1f

    jp nc, $f07c

    ld [hl-], a
    nop
    nop
    nop
    db $10
    rst $38
    pop de
    dec c
    ldh a, [$0d]
    nop
    nop
    nop
    ret nc

    ld [hl+], a
    ld e, b
    ld l, b
    ld [$01e0], sp

jr_032_5a38:
    ld d, e
    jr nz, jr_032_5a38

    inc b
    ld [hl], $5a
    sub $01
    jr c, @+$01

    pop de
    inc d
    ldh [rSB], a
    inc a
    ret nc

    ld b, b
    ld [hl], h
    inc [hl]
    add b
    inc b
    ldh [rSB], a
    inc a
    ret nc

    ccf
    add b
    inc a
    nop
    inc b
    sub $01
    inc b
    rst $38
    pop de
    ld b, $e0
    ld b, d
    inc a
    ret nc

    ld c, d
    jr nc, jr_032_5ab3

    jr nz, @+$0a

    ldh [rSCY], a
    inc a
    ret nc

    ld c, d
    jr nc, @+$52

    jr nc, @+$0a

    ldh [rSCY], a
    inc a
    ret nc

    ld c, d
    jr nc, @+$52

    jr z, jr_032_5a97

    ldh [rSB], a
    ld d, l
    add b
    rst $38
    pop de
    ld b, $e0
    nop
    inc a
    ret nc

    inc d
    jr nc, jr_032_5ad5

    jr z, @-$2e

    inc d
    jr nc, @+$52

    ld e, h
    ret nc

    inc d
    jr nc, jr_032_5adf

    db $10
    ret nc

    inc d
    jr nc, jr_032_5ae4

    add sp, -$30
    inc d

jr_032_5a97:
    jr nc, @+$52

    sbc h
    ret nc

    inc d
    jr nc, jr_032_5aee

    ret nc

    ld b, $d0
    inc d
    jr nc, jr_032_5af4

    inc e
    ret nc

    inc d
    jr nc, @+$52

    ld d, b
    ret nc

    inc d
    jr nc, @+$52

    call c, $14d0
    jr nc, @+$52

jr_032_5ab3:
    sub b
    ld d, b
    ldh [rSCY], a
    inc a
    sub $03
    ld [bc], a
    ldh [rSCY], a
    inc a
    sub $05
    ld [bc], a
    ldh [rSCY], a
    inc a
    sub $07
    ld [bc], a
    ldh [rSCY], a
    inc a
    sub $09
    ld [bc], a
    ldh [rSCY], a
    inc a
    sub $01
    ld [bc], a
    ldh [rSCY], a

jr_032_5ad5:
    inc a
    sub $02
    ld [bc], a
    ldh [rSCY], a
    inc a
    sub $04
    ld [bc], a

jr_032_5adf:
    ldh [rSCY], a
    inc a
    sub $06

jr_032_5ae4:
    ld [bc], a

jr_032_5ae5:
    ldh [rSCY], a
    inc a
    sub $08

jr_032_5aea:
    ld [bc], a
    ldh [rSCY], a
    inc a

jr_032_5aee:
    sub $0a
    ld b, b
    rst $38
    ld hl, sp+$00

jr_032_5af4:
    jr nc, jr_032_5b51

    pop de
    ld [de], a
    ldh [rP1], a
    ld d, l
    ret nc

    dec a
    jr nc, jr_032_5b53

    nop
    ret nc

    inc a
    jr nc, jr_032_5b58

    nop
    ret nc

    inc a
    jr nc, @+$56

    ld [$3cd0], sp
    jr nc, jr_032_5b62

    db $10
    ret nc

    inc a
    jr nc, @+$56

    jr jr_032_5ae5

    inc a
    jr nc, jr_032_5b6c

    jr nz, jr_032_5aea

    inc a
    jr nc, jr_032_5b71

    jr z, @-$2e

    inc a
    jr nc, jr_032_5b76

    jr nc, jr_032_5af4

    inc a
    jr nc, jr_032_5b7b

    jr c, jr_032_5b91

    ldh a, [rSC]
    nop
    inc b
    ld [bc], a
    ld b, b
    rst $38
    pop de
    db $10
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    cp $39
    ld a, e
    jr nc, @+$01

    jp nc, $0501

    ret nc

    ld a, [bc]
    adc b
    jr c, @+$45

    ldh a, [rSB]
    nop
    ld [$e002], sp
    ld bc, $d04d
    cpl
    sbc b
    ld b, h
    nop

jr_032_5b51:
    ld b, b
    rst $38

jr_032_5b53:
    jp nc, $0805

    ret nc

    inc [hl]

jr_032_5b58:
    adc b
    jr c, @+$04

    db $10
    ldh [rSB], a
    ld d, [hl]
    ret nc

    inc sp
    adc b

jr_032_5b62:
    jr c, jr_032_5b64

jr_032_5b64:
    ld h, b
    rst $38
    jp nc, $0805

    ret nc

    ld [hl-], a
    adc b

jr_032_5b6c:
    jr c, @+$04

    db $10
    ldh a, [rSB]

jr_032_5b71:
    nop
    inc b

jr_032_5b73:
    ld [bc], a
    ldh [rSB], a

jr_032_5b76:
    ld d, [hl]
    ret nc

    ld sp, $3888

jr_032_5b7b:
    nop
    ld b, b
    ldh a, [rSB]
    nop
    inc b
    ld [bc], a
    ld b, b
    rst $38
    pop de
    dec b
    ldh a, [rSB]
    nop
    inc b
    inc bc
    ldh [rSB], a
    ld d, [hl]
    ret nc

    jr nc, @-$76

jr_032_5b91:
    jr c, jr_032_5b93

jr_032_5b93:
    inc d
    pop af
    dec de
    sub $01
    ld h, b
    rst $38
    pop de
    dec b
    ldh a, [rSB]
    nop
    ld b, $20
    ldh [rSB], a
    ld c, l
    ret nc

    ld l, $78
    ld b, h
    nop
    db $10
    ldh [rSB], a
    ld c, l
    ret nc

    cpl
    sbc b
    ld b, h
    nop
    db $10
    ldh [rSB], a
    ld c, l
    ret nc

    dec l
    adc b
    ld b, h
    nop
    jr nc, @+$01

    ld hl, sp+$01
    or l
    ld e, a
    pop de
    inc d
    ldh a, [rTMA]
    nop
    ld bc, $f000
    ld bc, $0400
    ld [bc], a
    ldh [rSB], a
    scf
    ret nc

    ld b, d
    sbc b
    jr z, jr_032_5bd8

    inc b
    ldh [rSB], a

jr_032_5bd8:
    scf
    ret nc

    ld b, d
    adc b
    jr c, jr_032_5be1

    inc b
    ldh [rSB], a

jr_032_5be1:
    scf
    ret nc

    ld b, d
    sbc b
    ld b, b
    inc bc
    inc b
    ldh [rSB], a
    scf
    ret nc

    ld b, c
    ld a, b
    jr z, jr_032_5b73

    inc b
    ldh [rSB], a
    scf
    ret nc

    ld b, c
    ld a, b
    ld b, b
    add e
    inc b

jr_032_5bfa:
    db $fd
    inc bc
    ret z

    ld e, e
    jr @+$01

    jp nc, $0114

    ldh [$0c], a
    scf
    ret nc

    ld b, e
    ld b, b
    ld d, b
    inc bc
    ld [$0ce0], sp
    scf
    ret nc

    ld b, e
    ld b, b
    ld e, b
    ld [bc], a
    ld [$0ce0], sp
    scf
    ret nc

    ld b, e
    ld b, b
    ld h, b
    inc b
    ld [$02fd], sp
    inc bc
    ld e, h
    jr nz, jr_032_5bfa

    ld bc, $02d6
    sub $03
    sub $04
    sub $05
    sub $06
    ret nc

    ld bc, $3888
    nop
    db $10
    rst $38
    jp nc, $0113

    ldh [rSB], a
    scf
    ret nc

    ld a, $88
    ld c, b
    nop
    ld b, $fd
    add hl, bc
    add hl, sp
    ld e, h
    ret nc

    ld bc, $4090
    jr jr_032_5c54

    ret nc

    ld bc, $2080
    jr jr_032_5c62

    rst $38
    pop de

jr_032_5c54:
    ld [$01f0], sp
    nop
    ld [$f824], sp
    ld bc, $5c63
    cp $8f
    ld a, e
    db $10

jr_032_5c62:
    rst $38
    cp $62
    ld a, e
    dec b
    ldh a, [$09]
    nop
    ld bc, $fd00
    ld [bc], a
    ld h, e
    ld e, h
    db $10
    rst $38
    pop de
    ld [$1ff0], sp
    ld h, b
    inc b
    db $10
    ldh a, [rSB]
    nop
    ld [$f824], sp
    ld bc, $5c87
    cp $8f
    ld a, e
    db $10
    rst $38
    cp $62
    ld a, e
    dec b
    ldh a, [$09]
    nop
    ld bc, $fd00
    ld [bc], a
    add a
    ld e, h
    db $10
    rst $38
    pop de
    inc c
    cp $35
    ld a, h
    ld b, b
    rst $38
    pop de
    add hl, bc
    ldh a, [$1f]
    ld h, b
    ld bc, $e000
    ld bc, $d01b
    ld e, $80
    ld b, b
    ld b, b
    ld [bc], a
    ldh [rSB], a
    dec de
    ret nc

    dec e
    ld a, b
    ld b, h
    jr nc, jr_032_5cb8

    ldh [rSB], a

jr_032_5cb8:
    dec de
    ret nc

    ld e, $98
    ld b, h
    jr nc, jr_032_5cc1

    ldh [rSB], a

jr_032_5cc1:
    dec de
    ret nc

    dec e
    sub b
    ld b, b
    ld b, b
    ld [bc], a
    ldh [rSB], a
    dec de
    ret nc

    ld e, $88
    ld b, h
    jr nc, jr_032_5d31

    rst $38
    pop de
    add hl, bc
    ldh a, [$1f]
    ret nz

    ld bc, $e000
    ld bc, $d01b
    ld e, $80
    ld b, b
    ld b, b
    inc b
    ldh [rSB], a
    dec de
    ret nc

    dec e
    ld a, b
    ld b, h
    jr nc, jr_032_5cef

    ldh [rSB], a
    dec de
    ret nc

jr_032_5cef:
    ld e, $98
    ld b, h
    jr nc, jr_032_5cf8

    ldh [rSB], a
    dec de
    ret nc

jr_032_5cf8:
    dec e
    sub b
    ld b, b
    ld b, b
    inc b
    ldh [rSB], a
    dec de
    ret nc

    ld e, $88
    ld b, h
    jr nc, jr_032_5d16

    db $fd
    inc b
    reti


    ld e, h
    ld h, b
    rst $38
    pop de
    ld c, $e0
    ld b, d
    ld e, h
    ret nc

    inc hl
    ld b, b
    ld e, h
    nop

jr_032_5d16:
    ld [$23d0], sp
    ld b, b
    ld e, h
    ld bc, $d008
    inc hl
    ld b, b
    ld e, h
    ld [bc], a
    ld [$23d0], sp
    ld b, b
    ld e, h
    nop
    ld [$23d0], sp
    ld b, b
    ld e, h
    ld [bc], a
    ld [$04fd], sp

jr_032_5d31:
    ld de, $405d
    rst $38
    pop de
    rrca
    ldh [rSB], a
    ld b, e
    ret nc

    ld h, $68
    stop
    inc b
    ldh [rSB], a
    ld b, e
    ret nc

    ld h, $88
    stop
    inc b
    ldh [rSB], a
    ld b, e
    ret nc

    ld h, $70
    stop
    inc b
    ldh [rSB], a
    ld b, e
    ret nc

    ld h, $80
    stop
    inc b
    ldh [rSB], a
    ld b, e
    ret nc

    ld h, $78
    stop
    inc b
    db $fd
    ld [bc], a
    scf
    ld e, l

jr_032_5d68:
    ld h, b

jr_032_5d69:
    rst $38
    pop de
    db $10
    ldh a, [$1f]
    jr nc, jr_032_5d74

    db $10
    ldh a, [rSB]
    nop

jr_032_5d74:
    ld [$f040], sp
    ld b, $00
    ld [bc], a
    nop
    cp $39
    ld a, e
    jr nc, @+$01

    pop de
    db $10
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ldh a, [rTIMA]
    nop
    ld [bc], a
    nop
    ld b, b
    cp $39
    ld a, e
    jr nc, jr_032_5d68

    dec b
    ld b, b
    rst $38
    pop de
    ld [bc], a
    ldh [rSB], a
    ld [hl], $d0
    scf
    sbc b
    jr z, jr_032_5d9f

jr_032_5d9f:
    ret nc

    add hl, sp
    ld a, b
    ld c, b
    nop
    jr nz, @+$01

    pop de
    ld [bc], a
    ldh [rSB], a
    dec [hl]
    ret nc

    scf
    sub b
    jr nc, jr_032_5db0

jr_032_5db0:
    ret nc

    scf
    adc h
    inc l
    nop

jr_032_5db5:
    ret nc

    scf
    adc b
    jr z, jr_032_5dba

jr_032_5dba:
    jr nz, @+$01

    pop de
    ld [bc], a
    ld hl, sp+$01
    reti


    ld e, l
    ldh [rSB], a
    dec [hl]
    ret nc

jr_032_5dc6:
    scf
    sub b
    jr nc, jr_032_5dca

jr_032_5dca:
    ret nc

    scf
    adc h
    inc l

jr_032_5dce:
    nop
    ret nc

    scf
    adc b

jr_032_5dd2:
    jr z, jr_032_5dd4

jr_032_5dd4:
    ldh [rSB], a
    dec [hl]
    jr nz, @+$01

    ldh [rSB], a
    dec [hl]
    ret nc

    jr c, jr_032_5e57

    jr nc, jr_032_5de1

jr_032_5de1:
    ret nc

    jr c, jr_032_5e60

    inc l
    nop
    ret nc

    jr c, jr_032_5d69

    jr z, jr_032_5deb

jr_032_5deb:
    ldh [rSB], a
    dec [hl]
    jr nz, @+$01

    pop de
    ld [bc], a
    ldh [rSB], a
    jr c, jr_032_5dc6

    ld a, [hl-]
    sbc b
    jr z, jr_032_5dfa

jr_032_5dfa:
    jr nz, @+$01

    pop de
    ld [bc], a
    ldh [rSB], a
    jr c, jr_032_5dd2

    ld a, [hl-]
    sbc b
    jr z, jr_032_5e06

jr_032_5e06:
    ret nc

    ld a, [hl-]
    sub h
    inc h
    nop
    jr nz, @+$01

    jp nc, $0102

    ret nc

    dec [hl]
    adc b
    jr c, jr_032_5db5

    ret nc

    dec [hl]
    adc b
    jr c, @+$22

    db $10
    ldh [rSB], a
    ld b, l
    ret nc

    ld bc, $3090
    jr @+$22

    ldh [rSB], a
    ld b, l
    ret nc

    ld bc, $4080
    jr @+$12

    rst $38
    jp nc, $0102

    ret nc

    ld [hl], $88
    jr c, jr_032_5dce

    ret nc

    ld [hl], $88
    jr c, jr_032_5e53

    ld [$01e0], sp
    ld b, l
    ret nc

    ld bc, $3090
    jr @+$12

    ldh [rSB], a
    ld b, l
    ret nc

    ld bc, $4080
    jr jr_032_5e56

    rst $38
    pop de
    ld de, $a7fe

jr_032_5e53:
    ld a, h
    ldh a, [rIF]

jr_032_5e56:
    nop

jr_032_5e57:
    ld bc, $2000
    ldh a, [$09]
    nop
    ld bc, $0300

jr_032_5e60:
    ret c

    rrca
    cp $b7
    ld a, h
    ldh a, [rTMA]
    nop
    ld bc, $fe00
    ld [de], a
    ld a, e
    ld b, b
    rst $38
    ld hl, sp+$01
    adc c
    ld e, [hl]

jr_032_5e73:
    ld hl, sp+$02
    add d
    ld e, [hl]
    pop de
    ld bc, $01e0
    add hl, sp
    ret nc

    ld bc, $3888
    nop
    jr nz, jr_032_5e73

    ld a, [bc]
    nop
    ld bc, $2000
    rst $38
    pop de
    ld de, $06f0
    nop
    ld bc, $f000
    add hl, bc

jr_032_5e92:
    nop
    ld bc, $fe00
    ld [de], a
    ld a, e
    ld b, b
    rst $38
    cp $af
    ld a, h
    ldh [rP1], a
    ld d, h
    ldh a, [rNR13]
    nop
    ld bc, $6000
    ret c

    inc de
    jr @-$26

    inc de
    cp $b7
    ld a, h
    rst $38
    pop de
    dec c
    cp $a7
    ld a, h
    ldh [rP1], a
    dec b
    ldh a, [rNR23]
    nop
    ld bc, $d040
    inc l
    inc l
    ld e, b
    jr nc, jr_032_5e92

    inc l
    inc l
    ld e, b
    ld sp, $2cd0
    inc l
    ld e, b
    ld [hl-], a
    ret nc

    inc l
    inc l
    ld e, b
    inc sp
    ret nc

    inc l
    inc l
    ld e, b
    inc [hl]
    ret nc

    inc l
    inc l
    ld e, b
    dec [hl]
    ret nc

    inc l
    inc l
    ld e, b
    ld [hl], $d0
    inc l
    inc l
    ld e, b
    scf
    ld b, b
    ret c

jr_032_5ee6:
    jr jr_032_5ee6

    or a
    ld a, h
    rst $38
    pop de
    ld [de], a
    ret nc

    dec a

jr_032_5eef:
    inc l
    ld e, b
    nop
    ldh [rNR31], a
    ld c, e
    ret nc

    ld b, l
    add b
    jr nc, jr_032_5efc

    ld b, $e0

jr_032_5efc:
    dec de
    ld c, e
    ret nc

    ld b, l
    adc b
    ld b, b
    inc bc
    ld b, $e0
    dec de
    ld c, e
    ret nc

jr_032_5f08:
    ld b, l

jr_032_5f09:
    adc b
    jr nz, jr_032_5f10

    ld b, $fd
    dec b
    ld a, [c]

jr_032_5f10:
    ld e, [hl]
    jr nz, @+$01

    pop de
    ld [de], a
    cp $a7
    ld a, h
    ldh a, [rNR32]
    nop
    nop
    db $10
    ld sp, hl
    nop
    ldh [rNR31], a
    ld c, e
    ret nc

    ld b, l
    add b
    jr nc, jr_032_5f29

    ld b, $e0

jr_032_5f29:
    dec de
    ld c, e
    ret nc

jr_032_5f2c:
    ld b, l
    adc b
    ld b, b
    inc bc
    ld b, $e0
    dec de
    ld c, e
    ret nc

    ld b, l
    adc b
    jr nz, jr_032_5f3d

    ld b, $fa
    ei
    rlca

jr_032_5f3d:
    ld c, [hl]
    ld e, a
    ei
    ld [bc], a
    ld b, [hl]
    ld e, a
    db $fc
    rra
    ld e, a
    ret nc

    dec a
    inc l
    ld e, b
    nop
    db $fc
    rra
    ld e, a
    jr nz, @-$26

    inc e
    cp $b7
    ld a, h
    rst $38
    jp nc, $0815

    ldh [rP1], a
    jr nz, jr_032_5f2c

    ld b, [hl]
    inc l
    ld l, b

jr_032_5f5f:
    ld bc, $6080
    sub $01
    ldh a, [rSB]
    nop
    ld [$e003], sp
    ld bc, $d05b
    jr jr_032_5eef

    ld b, b
    nop
    ld [$01e0], sp
    ld e, e
    ret nc

    jr jr_032_5f08

    ld b, h
    nop
    ld [$01e0], sp
    ld e, e
    ret nc

    jr jr_032_5f09

    ld c, b
    nop
    jr @+$01

    jp nc, $0d15

    cp $a7
    ld a, h
    ldh [rP1], a
    jr nz, jr_032_5f5f

    ld b, [hl]
    inc l
    ld l, b
    ld b, $80
    sub $02
    ret nc

    ld b, [hl]
    ld c, h
    ld l, b
    dec bc
    db $10
    ldh a, [rNR23]
    nop
    ld bc, $e040
    nop
    ld l, c
    ret nc

    inc l
    inc l
    ld e, b
    jr nz, jr_032_5fb2

    db $fd
    ld [$5fa4], sp
    add b
    ret c

jr_032_5fb0:
    jr jr_032_5fb0

jr_032_5fb2:
    or a
    ld a, h
    rst $38
    pop de
    ld de, $a7fe
    ld a, h
    ldh a, [rNR21]
    nop
    ld bc, $f040
    ld b, $00
    ld [bc], a
    nop
    ldh [rP1], a
    ld c, h
    ret nc

    ld b, a
    inc l
    ld l, h
    ld b, $02
    ret nc

    ld b, a
    inc h
    ld l, h
    ld b, $02
    ret nc

    ld b, a
    inc [hl]
    ld l, h
    ld [$d002], sp
    ld b, a
    inc e
    ld l, h
    ld [$d002], sp
    ld b, a
    inc a
    ld l, h
    ld b, $02
    ret nc

    ld b, a
    inc d
    ld l, h
    ld [$d002], sp
    ld b, a
    ld b, h
    ld l, h
    ld [$fd02], sp
    inc bc
    call nz, $085f
    ret c

    ld d, $fe
    or a
    ld a, h
    rst $38
    ld hl, sp+$00
    ld d, c
    ld d, [hl]
    pop de
    ld bc, $a7fe
    ld a, h
    ldh [rP1], a
    db $10
    ldh a, [rNR30]
    nop
    ld bc, $4820
    ret c

    ld a, [de]
    cp $b7
    ld a, h
    rst $38
    pop de
    ld d, $e0
    ld bc, $d03b
    ld c, b
    add h
    ld b, b
    nop
    ld [$49d0], sp
    add h
    jr c, jr_032_6024

jr_032_6024:
    ld [$48d0], sp
    add h
    jr nc, jr_032_602a

jr_032_602a:
    ld b, b
    ldh [rSB], a
    dec sp
    sub $01
    sub $02
    sub $03
    ld h, b
    rst $38
    pop de
    ld d, $e0
    ld bc, $d03b
    ld c, b
    add h
    ld b, b
    nop
    ld [$48d0], sp
    add h
    jr c, jr_032_6046

jr_032_6046:
    ld [$48d0], sp
    add h
    jr nc, jr_032_604c

jr_032_604c:
    ld b, b
    ldh [rSB], a
    dec sp
    sub $01
    sub $02
    sub $03
    ld h, b
    rst $38
    pop de
    ld bc, $cafe
    ld a, h
    ldh [rSB], a
    ld d, a
    ldh a, [rNR10]
    nop
    nop
    ld [$d880], sp
    db $10
    cp $d2
    ld a, h
    rst $38
    pop de
    ld d, $e0
    ld bc, $d03b
    ld c, c
    add h
    ld b, b
    nop
    ld [$48d0], sp
    add h
    jr nc, jr_032_607c

jr_032_607c:
    ld [$49d0], sp
    add h
    jr z, jr_032_6082

jr_032_6082:
    ld [$48d0], sp
    add h
    jr c, jr_032_6088

jr_032_6088:
    ld b, b
    rst $38
    ldh a, [$1f]
    ld h, b
    inc b
    db $10
    ldh [rSB], a

jr_032_6091:
    ld d, b
    jr jr_032_6091

    inc b
    adc a
    ld h, b
    rst $38
    ldh a, [rSB]
    nop
    ld [$f040], sp
    rra
    ld h, b
    inc b
    nop
    ldh [rSB], a

jr_032_60a4:
    ld d, b
    jr jr_032_60a4

    inc b
    and d
    ld h, b
    rst $38
    pop de
    ld c, $d9
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    pop hl
    nop
    cp $bc
    ld a, e
    db $10
    db $fd
    inc bc
    or l
    ld h, b
    add hl, bc
    ldh a, [rNR11]
    nop
    ld bc, $0800
    ldh a, [rNR24]
    nop
    nop
    ld b, b
    ld b, b
    ret c

    add hl, de
    ld bc, $0af0
    nop
    ld bc, $0500
    sub $0a
    ld [$d1ff], sp
    ld c, $f0
    ld b, $00
    ld [bc], a
    nop
    pop hl
    ld bc, $bcfe
    ld a, e
    db $10
    db $fd
    inc bc
    ldh [$60], a
    db $10
    ld hl, sp+$00
    di
    ld h, b
    ldh a, [$27]
    nop
    nop
    nop
    ld b, b
    rst $38
    pop de
    rla
    ldh [rNR30], a
    ld c, [hl]
    ret nc

    ld c, h
    ld b, b
    ld e, b
    ld [bc], a
    inc b
    db $fd
    ld a, [bc]
    or $60
    ld b, b
    rst $38
    pop de
    rla
    ldh a, [$1f]
    ld [$2001], sp
    ldh [rNR30], a
    ld e, b
    ret nc

    ld c, h
    ld b, b
    ld e, b
    ld [bc], a
    ld [bc], a
    db $fd
    ld [bc], a
    rrca
    ld h, c
    ld b, b
    rst $38
    pop de
    ld de, $06f0
    nop
    ld [bc], a
    nop
    ldh a, [$08]
    nop
    inc b
    nop
    ret nc

    ld c, l
    ld b, b
    ld e, b
    nop
    ret nc

    ld c, l
    ld b, b
    ld e, b
    add b
    ret nc

    ld c, l
    ld b, b
    ld e, b
    adc b
    ret nc

    ld c, l
    ld b, b
    ld e, b
    sub b
    ret nc

    ld c, l
    ld b, b
    ld e, b
    sbc b
    ret nc

    ld c, l
    ld b, b
    ld e, b
    and b
    ret nc

    ld c, l
    ld b, b
    ld e, b
    xor b
    ret nc

    ld c, l
    ld b, b
    ld e, b
    or b
    ret nc

    ld c, l
    ld b, b
    ld e, b
    cp b
    ldh [rNR30], a
    ld a, [hl-]
    db $10
    db $fd
    ld [$6154], sp
    jr nz, @+$01

    pop de
    db $10
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    cp $dc
    ld a, d
    db $10
    rst $38
    pop de
    jr @-$0e

    ld b, $00
    ld [bc], a

jr_032_6170:
    nop
    ldh a, [rSB]
    nop
    inc b
    ld [bc], a
    ldh [rP1], a
    ld e, [hl]
    ret nc

    ld d, b
    ld c, b
    ld d, b
    nop
    jr jr_032_6170

    ld bc, $0400
    ld [bc], a
    ldh [rP1], a
    ld e, [hl]
    ret nc

    ld d, b
    ld c, b
    ld d, b
    nop
    ld b, b
    rst $38
    jp nc, $1811

    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ldh [rP1], a
    xor c
    ret nc

    ld d, b
    ld c, b
    ld d, b
    nop
    inc b
    ret nc

    ld l, l
    ld c, b
    ld d, b
    nop
    inc b
    ret nc

    ld l, l
    ld c, b
    ld d, b
    ld [$d004], sp
    ld l, l
    ld c, b
    ld d, b
    db $10
    inc b
    ret nc

    ld l, l
    ld c, b
    ld d, b

jr_032_61b5:
    jr jr_032_61bb

    ret nc

    ld d, b
    ld c, b
    ld d, b

jr_032_61bb:
    nop
    ret nc

    ld l, l
    ld c, b
    ld d, b
    jr nz, jr_032_61c6

    ret nc

    ld l, l
    ld c, b
    ld d, b

jr_032_61c6:
    jr z, jr_032_61cc

    ret nc

    ld l, l
    ld c, b
    ld d, b

jr_032_61cc:
    jr nc, jr_032_61d2

    ret nc

jr_032_61cf:
    ld l, l
    ld c, b
    ld d, b

jr_032_61d2:
    jr c, jr_032_6214

    rst $38
    pop de
    add hl, de
    ldh [rP1], a
    jr nc, @-$2e

    ld d, e
    ld b, b
    ld d, b
    ld [bc], a
    db $10
    ret nc

    ld d, e
    ld b, h
    ld d, b
    ld bc, $d010
    ld d, e
    ld c, b
    ld d, b
    nop
    ld b, b
    rst $38
    jp nc, $0119

    ldh [rSB], a
    inc [hl]
    ret nc

    nop
    adc b
    jr z, jr_032_61f8

jr_032_61f8:
    ret nc

    ld [bc], a
    adc b
    ld b, b
    nop
    db $10
    ldh [rSB], a
    cpl
    ret nc

    ld d, d
    adc b
    jr jr_032_621b

    ret nc

    ld d, d
    adc b
    jr jr_032_61b5

    ret nc

    ld d, d
    adc b
    jr jr_032_61cf

    ld h, b
    rst $38
    pop de
    add hl, de

jr_032_6214:
    ldh [rP1], a
    ld c, b
    ret nc

    ld d, h
    ld b, b
    ld d, b

jr_032_621b:
    nop
    jr z, jr_032_621b

    inc bc
    rla
    ld h, d
    jr nz, @+$01

    pop de
    ld bc, $affe
    ld a, h
    ldh a, [rNR14]
    nop
    ld bc, $e008
    nop
    inc [hl]
    ld b, b
    ret c

    inc d
    cp $b7
    ld a, h
    rst $38
    pop de
    ld bc, $00e0
    ld [hl], $fe
    xor a
    ld a, h
    ldh a, [rNR43]
    nop
    ld bc, $6000
    ret c

    ld [hl+], a
    cp $b7
    ld a, h
    rst $38
    jp nc, $011a

    ld hl, sp+$00
    ld a, l
    ld h, d
    ld hl, sp+$02
    add [hl]
    ld h, d
    cp $af
    ld a, h
    ldh a, [rNR44]
    nop
    ld bc, $d001
    ld d, a
    ld c, b
    ld l, b

jr_032_6262:
    nop
    ldh [rP1], a
    scf
    ret nc

    ld d, [hl]
    jr c, jr_032_62d2

    nop
    db $10
    db $fd
    ld b, $63
    ld h, d
    jr nz, jr_032_6262

    add hl, bc
    nop
    ld bc, $0800

jr_032_6277:
    ret c

    inc hl
    cp $b7
    ld a, h
    rst $38
    ldh [rSB], a
    inc [hl]
    ret nc

    ld bc, $3888
    nop
    jr nz, jr_032_6277

    dec bc
    nop
    ld bc, $2000
    rst $38
    pop de
    ld a, [de]
    cp $5b
    ld a, h
    rst $38
    pop de
    dec de
    ldh a, [rTAC]
    nop
    ld [bc], a
    nop
    ldh [rNR30], a
    ld b, $d0
    ld e, d
    ld b, b
    ld d, b
    nop
    inc b
    ldh [rSB], a
    ld b, $d0
    ld e, d
    add h
    jr nc, jr_032_62ac

    inc b

jr_032_62ac:
    ldh [rNR30], a
    ld b, $d0
    ld e, d
    ld b, b
    ld e, b
    nop
    inc b
    ldh [rSB], a
    ld b, $d0
    ld e, d
    add h
    ld b, b
    ld bc, $e004
    ld a, [de]
    ld b, $d0
    ld e, d
    ld b, b
    ld d, h
    nop
    inc b
    ldh [rSB], a
    ld b, $d0
    ld e, d
    add h
    jr c, jr_032_62d1

    ld b, b
    rst $38

jr_032_62d1:
    pop de

jr_032_62d2:
    ld bc, $1ff0
    inc d
    ld [bc], a
    nop

jr_032_62d8:
    jr nz, jr_032_62d8

    and a
    ld a, h
    ldh a, [rNR50]
    nop
    ld bc, $0400
    ldh [rSB], a
    ccf
    ret nc

    ld bc, $3888
    nop
    ld [$b7fe], sp
    ld a, h
    rst $38
    pop de
    ld bc, $affe
    ld a, h
    ldh a, [rNR50]
    nop
    ld bc, $0400
    ldh [rSB], a
    ld b, c
    ret nc

    nop
    adc b
    jr nc, jr_032_6302

jr_032_6302:
    ld [$b7fe], sp
    ld a, h
    rst $38
    pop de
    ld bc, $affe
    ld a, h
    ldh a, [rNR43]
    nop
    ld bc, $2000
    ret c

    ld [hl+], a
    inc b
    ldh a, [rNR51]
    nop
    ld bc, $0300
    ldh [rSB], a
    ld b, c
    ret nc

    ld bc, $3088
    nop
    ld b, $e0
    ld bc, $d041
    ld bc, $3090
    nop
    inc bc
    cp $b7
    ld a, h
    rst $38
    pop de
    ld bc, $a7fe
    ld a, h
    ldh a, [rNR50]
    nop
    ld bc, $0300
    ldh [rSB], a
    ld b, c
    ldh a, [rSB]
    nop
    inc b
    ld [bc], a
    ret nc

    ld bc, $3880
    nop
    ld b, $e0
    ld bc, $f041
    ld bc, $0400
    ld [bc], a
    ret nc

    ld bc, $3090
    nop
    inc bc
    cp $b7
    ld a, h
    rst $38
    pop de
    ld bc, $a7fe
    ld a, h

jr_032_6361:
    ldh a, [rSB]
    nop
    inc b
    db $10
    ldh a, [rNR50]
    nop
    ld bc, $0300
    ldh [rSB], a
    ld b, c
    ret nc

    nop
    add b
    jr nc, jr_032_6374

jr_032_6374:
    ld b, $e0
    ld bc, $d041
    nop
    sub b

jr_032_637b:
    jr nc, jr_032_637d

jr_032_637d:
    inc bc
    cp $b7
    ld a, h
    rst $38
    pop de
    ld bc, $c2fe
    ld a, h
    ldh a, [rNR52]
    nop
    nop
    nop
    ldh [rSB], a
    ld c, d
    jr nz, jr_032_6361

    ld bc, $3078
    nop
    jr nz, @-$2e

    ld bc, $3898
    nop
    jr nz, @-$2e

    ld bc, $3488
    nop
    jr nz, jr_032_637b

    ld h, $fe
    jp nc, $ff7c

    pop de
    inc de
    ldh [rP1], a
    scf
    ret nc

    ld a, $40
    ld [hl], b
    nop
    ld b, $fd
    add hl, bc
    xor d
    ld h, e
    sub $01
    sub $02
    sub $03
    sub $04
    sub $05
    sub $06
    sub $07
    sub $08
    sub $09
    ldh [rSCY], a
    ld a, [hl-]
    add b
    ld hl, sp+$00
    rst $10
    ld h, e
    ldh a, [$27]
    nop
    nop
    nop
    ld b, b
    rst $38
    pop de
    rla
    ldh [rNR30], a
    ld c, [hl]
    ret nc

    ld c, h
    ld b, b
    ld e, b
    ld [bc], a
    ret nc

    ld c, h
    jr c, jr_032_6436

    ld [bc], a
    ld [$03fd], sp
    jp c, $3863

    rst $38
    pop de
    inc e
    ldh [rSB], a
    ld d, e
    ret nc

    ld e, e
    jr nc, jr_032_642f

    nop
    ret nc

    ld e, e
    add h
    stop
    inc c
    db $fd
    dec b
    di
    ld h, e
    ld h, b
    rst $38
    ld a, [c]
    ld d, h
    pop de
    inc e
    ldh [rP1], a
    ld d, e
    ret nc

    ld e, h
    jr nc, @+$3a

    nop
    ld [$0afd], sp
    dec bc
    ld h, h
    ld h, b
    rst $38
    pop de
    inc e
    ldh [rSB], a
    ld d, c
    ret nc

    ld e, l
    add h
    stop
    ld [$0afd], sp
    inc e
    ld h, h
    ld h, b
    rst $38
    pop de
    inc e
    ldh [rSCY], a
    ld d, c
    ret nc

    ld e, [hl]

jr_032_642f:
    inc l
    ld d, b
    ld [bc], a
    ld [$0afd], sp
    dec l

jr_032_6436:
    ld h, h
    add b
    rst $38
    jp nc, $011d

    ret nc

    ld e, a
    ld c, b
    ld d, b
    ld bc, $e010
    ld bc, $d040
    ld bc, $3888
    nop

Call_032_644a:
    db $10
    rst $38
    jp nc, $011d

    ret nc

    ld e, a
    ld c, b
    ld c, b
    ld [bc], a
    ld [$01e0], sp
    ld b, b
    ret nc

    inc b
    add b
    jr z, jr_032_645d

jr_032_645d:
    ld [$5fd0], sp
    ld d, b
    ld e, b
    ld [bc], a
    ld [$01e0], sp
    ld b, b
    ret nc

    inc b
    adc b
    jr c, jr_032_646c

jr_032_646c:
    ld [$5fd0], sp
    ld c, h
    ld d, b
    ld [bc], a
    ld [$01e0], sp
    ld b, b
    ret nc

    inc b
    add h
    jr nc, jr_032_647b

jr_032_647b:
    ld [$d2ff], sp
    dec e
    ld bc, $01f0
    nop
    ld [$d040], sp
    ld e, a
    ld c, b
    ld d, b
    inc bc
    ld [$01e0], sp
    ld b, b
    ret nc

    nop
    add h
    jr z, jr_032_6493

jr_032_6493:
    ld [$01e0], sp
    ld b, b
    ret nc

    nop
    adc h
    jr nc, jr_032_649c

jr_032_649c:
    ld [$01e0], sp
    ld b, b
    ret nc

    nop
    add h
    jr c, jr_032_64a5

jr_032_64a5:
    ld [$01e0], sp
    ld b, b
    ret nc

    nop
    ld a, h
    jr nc, jr_032_64ae

jr_032_64ae:
    ld [$03fd], sp
    adc e
    ld h, h
    rst $38
    jp nc, $011d

    ret nc

    ld h, b
    ld b, b
    ld e, h
    inc d
    db $10
    ldh [rSB], a
    ld b, d
    ret nc

    dec b
    adc b
    jr c, jr_032_64c5

jr_032_64c5:
    db $10
    rst $38
    jp nc, $011d

    ldh [rSB], a
    ld b, d
    ret nc

    ld h, b
    ld b, b
    ld e, h
    inc d
    ret nc

    ld h, b
    jr c, @+$56

jr_032_64d6:
    inc d
    db $10
    ldh [rSB], a
    ld b, d
    ret nc

    dec b
    adc b
    jr c, jr_032_64e0

jr_032_64e0:
    ret nc

    dec b
    add b
    jr nc, jr_032_64e5

jr_032_64e5:
    db $10
    rst $38
    jp nc, $011d

    ret nc

    ld h, b
    ld b, b
    ld e, h
    jr z, @+$0a

    ret nc

    ld h, b
    jr c, jr_032_6548

    jr z, jr_032_64d6

    ld bc, $d042
    dec b
    adc b
    jr c, jr_032_64fd

jr_032_64fd:
    ld [$60d0], sp
    inc [hl]
    ld e, b
    jr z, @-$1e

    ld bc, $d042
    dec b
    add b

jr_032_6509:
    jr nc, jr_032_650b

jr_032_650b:
    ld [$01e0], sp
    ld b, d
    ret nc

    dec b
    add h
    inc [hl]
    nop
    db $fd
    inc bc
    ld [$1064], a
    rst $38

jr_032_651a:
    jp nc, $011d

    ret nc

    ld h, b
    ld b, b
    ld e, h
    jr @+$0a

    ret nc

    ld h, b
    jr c, jr_032_657b

    jr jr_032_6509

    ld bc, $d042
    dec b
    adc b
    jr c, jr_032_6530

jr_032_6530:
    ld [$60d0], sp
    inc [hl]
    ld e, b
    jr @-$1e

    ld bc, $d042
    dec b
    add b
    jr nc, jr_032_653e

jr_032_653e:
    ld [$01e0], sp
    ld b, d
    ret nc

    dec b
    add h
    inc [hl]
    nop
    db $fd

jr_032_6548:
    inc bc
    dec e
    ld h, l
    db $10
    rst $38
    pop de
    ld bc, $affe
    ld a, h
    call c, $00e0
    ld d, h
    ldh a, [$28]
    nop
    ld bc, $3000

jr_032_655c:
    add sp, -$28
    jr z, jr_032_6590

    cp $b7
    ld a, h
    rst $38
    ldh [rP1], a
    ld b, $d2
    ld e, $01
    ret nc

    ld h, c
    jr nc, jr_032_65a6

    nop
    dec bc
    db $fd
    ld [$656a], sp
    add b
    ld b, b
    ldh [rSB], a
    inc sp
    ret nc

    nop

jr_032_657b:
    adc b
    jr c, jr_032_657e

jr_032_657e:
    db $10
    rst $38
    jp nc, $0815

    ldh [rNR30], a
    jr z, @-$2e

    ld h, d
    ld b, b
    ld e, h
    db $10
    inc h
    ldh [rSB], a
    ld e, e
    ret nc

jr_032_6590:
    jr jr_032_651a

    jr c, jr_032_6594

jr_032_6594:
    db $10
    rst $38
    jp nc, $1901

    ldh [rSB], a
    ld sp, $01d0
    add b
    jr c, jr_032_65a1

jr_032_65a1:
    db $10

jr_032_65a2:
    ldh [rSB], a
    ld l, b
    ret nc

jr_032_65a6:
    ld h, e

jr_032_65a7:
    ld a, b
    ld c, h
    ld bc, $ff40
    pop de
    ld de, $fcf2
    ldh [rIE], a
    jr nc, @-$2e

    ld h, l
    add h
    inc l
    nop
    ret nc

    ld h, l
    add h
    inc l
    ld [$65d0], sp
    add h
    inc l
    db $10
    ret nc

    ld h, l
    add h
    inc l
    jr @-$2e

    ld h, l
    add h
    inc l
    jr nz, @-$2e

jr_032_65cd:
    ld h, l
    add h
    inc l
    jr z, jr_032_65a2

    ld h, l
    add h
    inc l
    jr nc, jr_032_65a7

    ld h, l
    add h
    inc l
    jr c, jr_032_655c

    jr nc, @+$01

    jp nc, $2523

    ldh a, [rTAC]

jr_032_65e3:
    nop
    ld [bc], a
    nop
    ret nc

    sub [hl]
    sbc b
    jr z, jr_032_65eb

jr_032_65eb:
    jr nz, jr_032_65cd

    ld bc, $d030
    ld a, [hl]
    add b
    jr z, jr_032_65f4

jr_032_65f4:
    jr z, @+$01

    jp nc, $011f

    ldh [rNR30], a
    ld d, d
    ret nc

    ld h, a
    ld e, b
    jr c, jr_032_661d

    jr jr_032_65e3

    ld bc, $d032
    ld bc, $3888
    nop
    jr @+$01

    pop de
    inc hl
    ldh [rNR30], a
    ld l, c
    ret nc

    ld l, d
    ld b, b
    ld e, b
    inc b
    inc b
    ret nc

    ld l, d
    ld b, b
    ld c, b
    inc b
    inc b

jr_032_661d:
    ret nc

    ld l, d
    ld b, b
    ld c, h
    inc b
    ld b, b
    rst $38
    pop de
    ld bc, $1ff0
    ld b, b
    ld [bc], a
    nop
    jr nc, jr_032_661d

    ld bc, $0800
    inc bc
    ldh [rSB], a
    inc [hl]
    ret nc

    nop
    adc b
    jr c, jr_032_6639

jr_032_6639:
    inc c
    db $fd
    inc bc
    ld sp, $ff66
    ld hl, sp+$01
    or l
    ld e, a
    pop de
    ld bc, $1ff0
    inc d
    ld [bc], a
    nop

jr_032_664a:
    jr nz, jr_032_664a

    and a
    ld a, h
    ldh a, [rSB]
    nop
    ld [$f003], sp
    inc h
    nop
    ld bc, $0400

jr_032_6659:
    ldh [rSB], a
    ccf
    ret nc

    ld bc, $3888
    nop
    ld [$03fd], sp
    ld e, c
    ld h, [hl]
    cp $b7
    ld a, h
    rst $38
    jp nc, $0e1f

    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ret nc

    ld l, e
    ld d, b
    ld c, h
    nop
    jr nz, jr_032_6659

    nop
    cpl
    ret nc

    ld c, e
    ld b, b
    ld e, b

jr_032_667f:
    nop
    jr nz, jr_032_667f

    inc bc
    ld a, b
    ld h, [hl]
    jr nz, @-$1e

    nop
    add a
    jr nz, @+$01

    pop de
    ld bc, $01e0
    ld l, $d0
    ld [bc], a
    add b
    jr nc, jr_032_6695

jr_032_6695:
    ld [$01e0], sp
    ld l, $d0
    ld [bc], a
    adc b
    jr c, jr_032_669e

jr_032_669e:
    db $10
    rst $38
    pop de
    ld bc, $01e0
    ld l, $d0
    ld [bc], a
    ld a, h
    jr c, jr_032_66aa

jr_032_66aa:
    inc b
    ldh [rSB], a
    ld l, $d0
    ld [bc], a
    add h
    jr nc, jr_032_66b3

jr_032_66b3:
    inc b
    ldh [rSB], a
    ld l, $d0
    ld [bc], a
    adc h
    jr c, jr_032_66bc

jr_032_66bc:
    inc b
    ldh [rSB], a
    ld l, $d0
    ld [bc], a
    add h
    ld b, b
    nop
    inc b
    db $fd
    dec b
    and d
    ld h, [hl]
    db $10
    rst $38
    pop de
    ld [bc], a
    ldh a, [rSB]
    nop
    ld [$f010], sp
    rra
    ld b, b
    ld [bc], a
    nop
    ldh [rSB], a
    ld [hl], $d0
    scf
    sbc h
    inc l
    nop
    ret nc

    scf
    sbc b
    jr z, jr_032_66e5

jr_032_66e5:
    ret nc

    scf
    sub h
    inc h
    nop
    ret nc

    add hl, sp
    ld a, h
    ld c, h
    nop
    ret nc

    add hl, sp
    ld a, b
    ld c, b
    nop
    ret nc

    add hl, sp
    ld [hl], h
    ld b, h
    nop
    ret nc

    add hl, sp
    ld a, b
    ld c, b
    nop
    jr nz, @+$01

    pop de
    ld de, $01e0
    xor c
    ldh a, [rSB]
    nop
    ld b, $20
    inc b
    ret nc

    ld l, h
    adc b
    jr c, jr_032_6710

jr_032_6710:
    inc b
    ret nc

    ld l, h
    adc b
    jr c, jr_032_671e

    inc b
    ret nc

    ld l, h
    adc b
    jr c, jr_032_672c

    inc b
    ret nc

jr_032_671e:
    ld l, h
    adc b
    jr c, jr_032_673a

    inc b
    ret nc

    ld l, h
    adc b
    jr c, @+$22

    inc b
    ret nc

    ld l, h
    adc b

jr_032_672c:
    jr c, jr_032_6756

    inc b
    ret nc

    ld l, h
    adc b
    jr c, @+$32

    inc b
    ret nc

    ld l, h
    adc b
    jr c, @+$3a

jr_032_673a:
    jr nz, @+$01

    ldh [rP1], a
    ld d, e
    ld hl, sp+$03
    ld a, h
    ld h, a
    ld hl, sp+$02
    ld l, [hl]
    ld h, a
    ld hl, sp+$01
    ld h, b
    ld h, a
    pop de
    rlca
    ldh a, [$27]
    nop
    ld bc, $3000
    db $dd
    ret nc

    inc e

jr_032_6756:
    jr nc, jr_032_67b8

    nop
    ldh a, [$0b]
    nop
    ld bc, $2000
    rst $38
    ldh a, [$27]
    nop
    ld bc, $3000
    sbc $f0
    ld a, [bc]
    nop
    ld bc, $2000
    rst $38
    ldh a, [$27]
    nop
    ld bc, $3000
    db $dd
    ldh a, [$0a]
    nop
    ld bc, $2000
    rst $38
    ldh a, [$09]
    nop
    ld bc, $3000
    sbc $f0
    ld a, [bc]
    nop
    ld bc, $2000
    rst $38
    ldh [rP1], a
    ld d, e
    pop de
    ld bc, $affe
    ld a, h
    jp hl


    ldh a, [$28]
    nop
    ld bc, $3000
    add sp, -$28
    jr z, jr_032_67cd

    cp $b7
    ld a, h
    rst $38
    ld hl, sp+$01
    or l
    ld e, a
    pop de
    jr nz, @-$0e

    daa
    nop
    ld bc, $2000
    ldh [rP1], a
    ld e, l
    ret nc

    ld l, [hl]
    jr nc, jr_032_680c

    ld b, b
    ld b, b

jr_032_67b6:
    sub $01

jr_032_67b8:
    dec d
    ldh [rSB], a

jr_032_67bb:
    ld e, l
    ldh a, [rTIMA]
    nop
    ld [bc], a
    nop
    ld b, b
    sub $01
    jr nz, jr_032_67b6

    ld a, [bc]
    nop
    ld bc, $1000
    rst $38
    pop de

jr_032_67cd:
    ld bc, $1bf1
    di
    dec de

jr_032_67d2:
    jr nz, jr_032_67d2

    jp z, $f07c

    stop
    nop
    ld [$01e0], sp
    ld d, a
    ld h, b
    ret c

    db $10
    cp $d2
    ld a, h
    rst $38
    pop de
    inc b
    ldh [rSB], a
    jr nc, jr_032_67bb

    ld l, a
    adc b
    jr c, jr_032_67ef

jr_032_67ef:
    ld b, b
    rst $38
    db $d3
    inc bc
    ld a, [bc]
    dec b
    cp $cc
    ld a, e
    db $10
    cp $df
    ld a, e
    db $10
    ldh a, [rSB]
    nop
    inc b
    inc b
    ldh [rSB], a
    ld c, l
    ret nc

    cpl
    sbc b
    ld b, h
    nop
    db $10
    rst $38

jr_032_680c:
    pop de

jr_032_680d:
    jr jr_032_680d

    xor a
    ld a, h
    ldh a, [rNR42]
    nop
    ld bc, $3050
    ldh [rP1], a
    ld e, [hl]
    ret nc

    ld [hl], b
    jr nc, jr_032_6876

    nop
    ld b, b
    sub $02
    ld bc, $21d8
    cp $b7
    ld a, h
    rst $38
    pop de
    rla
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ldh a, [$08]
    nop
    inc b
    nop
    ldh [rNR30], a
    ld d, h
    ret nc

    ld c, h
    ld b, b
    ld e, b
    inc b
    inc b
    db $fd
    ld a, [bc]
    dec [hl]
    ld l, b
    jr nc, @+$01

    pop de
    dec c
    pop af
    dec de
    ld a, [c]
    daa
    ldh [rNR31], a
    ld c, e
    cp $b3
    ld a, d
    add b
    jr nc, @+$01

jr_032_6853:
    pop de
    dec c
    ldh [rNR31], a
    ld c, e
    cp $b3
    ld a, d
    add b
    jr nc, @+$01

    pop de
    jr jr_032_6853

    nop
    cp $a7
    ld a, h
    cp $43
    ld a, h
    cp $b7
    ld a, h
    rst $38

jr_032_686c:
    pop de
    rla
    ldh a, [$29]
    nop
    nop
    nop
    ldh [rNR30], a
    ld d, a

jr_032_6876:
    ret nc

    ld c, h
    ld b, b
    ld d, b
    ld [bc], a
    ld [$1ae0], sp
    ld d, a
    ret nc

    ld c, h
    ld b, b
    ld e, b
    inc bc
    ld [$1ae0], sp
    ld d, a
    ret nc

    ld c, h
    ld b, b
    ld h, b
    inc b
    ld [$03fd], sp
    ld [hl], e
    ld l, b
    jr nz, jr_032_686c

    add hl, hl
    inc b
    rst $38
    pop de
    db $10
    ldh a, [rSB]
    nop
    ld [$f020], sp
    ld b, $00
    ld [bc], a
    nop
    cp $dc
    ld a, d
    db $10
    rst $38
    pop de
    ld bc, $01e0
    ld sp, $08d0
    ld a, b
    ld c, b
    nop
    ret nc

    nop
    ld a, b
    ld c, b
    nop

jr_032_68b7:
    ld b, $e0
    ld bc, $d032
    ld b, $88
    jr c, jr_032_68c0

jr_032_68c0:
    ret nc

    nop
    adc b
    jr c, jr_032_68c5

jr_032_68c5:
    ld b, $e0
    ld bc, $d03d
    rlca
    sbc b
    jr z, jr_032_68ce

jr_032_68ce:
    ret nc

    nop
    sbc b
    jr z, jr_032_68d3

jr_032_68d3:
    db $10
    rst $38
    ldh a, [$03]
    nop
    ld [$d100], sp
    ld [de], a
    ldh [rP1], a
    ld c, h
    ret nc

    ld [hl], d
    jr nc, jr_032_694f

    nop
    ret nc

    ld [hl], d
    jr nc, @+$6e

    ld [$72d0], sp
    jr nc, @+$6e

    db $10
    ret nc

    ld [hl], d
    jr nc, jr_032_695e

    jr @-$2e

    ld [hl], d
    jr nc, jr_032_6963

    jr nz, @-$2e

    ld [hl], d
    jr nc, @+$6e

    jr z, jr_032_68ce

    ld [hl], d
    jr nc, jr_032_696d

    jr nc, jr_032_68d3

    ld [hl], d
    jr nc, jr_032_6972

    jr c, @+$42

    rst $38
    pop de
    ld [$ffe0], sp
    ld e, d
    ret nc

    ld [hl], e
    add h

jr_032_6911:
    inc l
    nop
    ret nc

    ld [hl], e
    add h
    inc l
    ld [$73d0], sp
    add h
    inc l
    db $10

jr_032_691d:
    ret nc

    ld [hl], e
    add h
    inc l
    jr @-$2e

    ld [hl], e
    add h
    inc l
    jr nz, @-$2e

    ld [hl], e
    add h
    inc l
    jr z, @-$2e

    ld [hl], e
    add h
    inc l
    jr nc, @-$2e

    ld [hl], e
    add h
    inc l
    jr c, jr_032_68b7

    jr nc, @+$01

    db $d3
    inc e
    dec d
    rlca
    ldh [rNR30], a
    jr z, jr_032_6911

    ld [hl], l
    ld b, b
    ld e, h
    ld l, h
    jr jr_032_691d

    ld bc, $01e0
    add hl, hl
    ret nc

    inc e
    ld l, h
    ld b, [hl]

jr_032_694f:
    db $10
    ld [$01e0], sp
    ld b, $d0
    ld [hl], h
    add h
    inc a
    jr nz, @+$0a

    db $fd
    dec b
    ld d, c
    ld l, c

jr_032_695e:
    add b
    rst $38
    jp nc, $0109

jr_032_6963:
    ldh a, [rNR41]
    db $10
    ld bc, $e020
    nop
    dec de
    ret nc

    rra

jr_032_696d:
    ld b, b
    ld l, b
    ld bc, $d680

jr_032_6972:
    ld bc, $e014
    ld bc, $d034
    nop
    add h
    jr z, jr_032_697c

jr_032_697c:
    db $10
    rst $38
    pop de
    inc d
    ldh [rP1], a
    ld c, h
    ret nc

    db $76
    jr nc, jr_032_69f3

    nop
    ret nc

    db $76
    jr nc, @+$6e

    dec c
    ret nc

    db $76
    jr nc, jr_032_69fd

    ld a, [de]
    ret nc

    db $76
    jr nc, jr_032_6a02

    daa
    ret nc

    db $76
    jr nc, jr_032_6a07

    inc [hl]
    jr c, @+$01

    jp nc, $0111

    ldh [rP1], a
    ld b, $f0
    add hl, bc
    nop
    ld bc, $d000
    ld [hl], a
    jr jr_032_6a05

    ld [bc], a
    ret nc

    ld [hl], a
    jr nz, jr_032_6a0a

    ld bc, $77d0
    jr z, @+$5a

    nop
    ret nc

    ld [hl], a
    jr nc, jr_032_6a14

    add b
    ret nc

    ld [hl], a
    jr c, @+$5a

    add c
    ret nc

    ld [hl], a
    ld b, b
    ld e, b
    add d
    inc c
    ldh [rSB], a
    inc sp
    ret nc

    ld bc, $3888
    nop
    ld [$0af0], sp
    nop
    ld bc, $1000
    rst $38
    pop de
    ld bc, $a7fe
    ld a, h
    ldh [rP1], a
    ld d, h
    ldh a, [$28]
    nop
    ld bc, $3000
    ret c

    jr z, @+$32

    cp $b7
    ld a, h
    rst $38
    pop de
    ld [hl+], a
    ld a, [c]
    db $e4
    cp $a7

jr_032_69f3:
    ld a, h
    ldh [rP1], a
    ld e, d
    ldh a, [rNR23]
    nop
    ld bc, $d040

jr_032_69fd:
    ld a, b
    jr nc, jr_032_6a58

    nop
    ld h, b

jr_032_6a02:
    sub $02
    ret c

jr_032_6a05:
    jr jr_032_6a05

jr_032_6a07:
    or a
    ld a, h
    rst $38

jr_032_6a0a:
    pop de
    ld [hl+], a
    ld a, [c]
    db $e4
    cp $a7
    ld a, h
    ldh [rP1], a
    ld e, d

jr_032_6a14:
    ldh a, [rNR23]
    nop
    ld bc, $d040
    ld a, c
    jr nc, jr_032_6a75

    nop
    ld h, b
    sub $02
    ret c

jr_032_6a22:
    jr jr_032_6a22

    or a
    ld a, h
    rst $38
    jp nc, $0121

    ldh a, [rNR41]
    db $10
    ld bc, $e020
    nop
    dec de
    ret nc

    jr nz, jr_032_6a75

    ld l, b
    ld bc, $d680
    ld bc, $e014
    ld bc, $d034
    nop
    add h
    jr z, jr_032_6a43

jr_032_6a43:
    db $10
    rst $38
    pop de
    ld bc, $a7fe
    ld a, h
    ldh a, [rNR30]
    nop
    ld bc, $e020
    nop
    ld [hl], l
    ld c, b
    ret c

    ld a, [de]
    cp $b7
    ld a, h

jr_032_6a58:
    ldh [rSB], a
    ld [hl-], a
    ret nc

    nop
    ld a, b
    ld c, b
    nop
    ld b, $e0
    ld bc, $d033
    nop
    adc b
    jr c, jr_032_6a69

jr_032_6a69:
    ld b, $e0
    ld bc, $d034
    nop
    sbc b
    jr z, jr_032_6a72

jr_032_6a72:
    db $10
    rst $38
    pop de

jr_032_6a75:
    inc de
    ld a, [c]
    db $fc
    cp $a7
    ld a, h
    ldh a, [rNR23]
    nop
    ld bc, $d040
    ld a, l
    ld [$1018], sp
    ret nc

    ld a, l
    ld [$0230], sp
    ret nc

    ld a, l
    ld [$0858], sp
    inc b
    ret nc

    ld a, l
    ld [$0620], sp
    ret nc

    ld a, l
    ld [$0c38], sp
    ret nc

    ld a, l

jr_032_6a9c:
    ld [$0450], sp
    ret nc

    ld a, l

jr_032_6aa1:
    ld [$0e68], sp
    ldh [rP1], a
    scf
    inc b
    db $fd
    ld [de], a
    and h
    ld l, d
    ret c

jr_032_6aad:
    jr jr_032_6aad

    or a
    ld a, h
    rst $38
    jp nc, $1f01

    ret nc

    ld l, b
    ld b, b

jr_032_6ab8:
    ld e, b
    ld [bc], a
    jr nz, jr_032_6a9c

    ld bc, $d059
    ld bc, $3888
    nop

jr_032_6ac3:
    db $10
    rst $38
    pop de
    jr jr_032_6aa1

    ldh a, [rTMA]
    nop
    ld [bc], a

jr_032_6acc:
    nop
    ld [$00e0], sp
    ld e, [hl]
    ret nc

    ld d, b
    ld c, b
    ld d, b

jr_032_6ad5:
    nop
    jr nz, jr_032_6ab8

    nop
    ld e, [hl]
    ret nc

    ld d, b
    ld c, b
    ld d, b

jr_032_6ade:
    nop
    jr nz, @+$01

    pop de
    ld bc, $affe
    ld a, h
    ldh a, [rNR51]
    nop
    ld bc, $1000
    cp $b7
    ld a, h
    ldh [rSB], a
    jr nc, jr_032_6ac3

    ld bc, $3888
    nop
    inc bc
    ldh [rSB], a
    jr nc, jr_032_6acc

    ld bc, $3088
    nop
    inc bc
    ldh [rSB], a
    jr nc, jr_032_6ad5

    ld bc, $2888
    nop
    inc bc
    ldh [rSB], a
    jr nc, jr_032_6ade

    ld bc, $2088
    nop
    inc bc
    ldh [rSB], a
    jr nc, @-$2e

    ld bc, $1888
    nop
    ld [$d1ff], sp
    rla
    ldh a, [rTIMA]
    nop
    ld [bc], a
    nop
    ldh a, [$29]
    nop
    nop
    nop
    ldh [rNR30], a
    ld d, a
    ret nc

    ld c, h
    ld b, b
    ld e, b
    ld [bc], a
    ld [$08fd], sp
    add hl, hl
    ld l, e
    ld h, b
    ret c

    add hl, hl
    inc b
    rst $38
    pop de
    inc c
    cp $15
    ld a, h
    jr c, @+$01

    pop de
    inc c
    ldh a, [rDIV]
    nop
    ld [$fe00], sp
    dec [hl]
    ld a, h

jr_032_6b4c:
    jr nz, jr_032_6b4c

    dec d
    ld a, h
    ld b, b
    rst $38
    jp nc, $111f

    ldh [rP1], a
    ld l, c
    ret nc

    ld a, d
    ld c, b
    ld e, b
    nop
    ret nc

    ld a, e
    ld c, b
    ld d, b
    nop
    ld [$05fd], sp
    ld e, l
    ld l, e
    jr nc, @+$01

    pop de
    ld bc, $01f0
    nop
    ld b, $02
    ldh [rSB], a
    ld sp, $08d0
    ld a, b
    ld c, b
    nop
    ret nc

    nop
    ld a, b
    ld c, b
    nop
    ld b, $f0
    ld bc, $0600
    ld [bc], a
    ldh [rSB], a
    inc sp
    ret nc

    ld b, $88
    jr z, jr_032_6b8b

jr_032_6b8b:
    ret nc

    nop
    adc b
    jr z, jr_032_6b90

jr_032_6b90:
    ld b, $f0
    ld bc, $0600
    ld [bc], a
    ldh [rSB], a
    ld a, $d0
    rlca
    sbc b
    jr c, jr_032_6b9e

jr_032_6b9e:
    ret nc

    nop
    sbc b
    jr c, jr_032_6ba3

jr_032_6ba3:
    ld b, $fd
    inc bc
    ld l, e
    ld l, e
    db $10
    rst $38
    pop de
    ld bc, $01f0
    nop
    inc b
    ld [bc], a
    ldh [rSB], a
    dec a
    ret nc

    rlca
    ld a, h
    ld b, b
    nop
    ret nc

    nop
    ld a, h
    ld b, b
    nop
    ld b, $f0
    ld bc, $0400
    ld [bc], a
    ldh [rSB], a
    dec a
    ret nc

    rlca
    add h
    ld b, b
    nop
    ret nc

    nop
    add h
    ld b, b
    nop
    ld b, $f0
    ld bc, $0400
    ld [bc], a
    ldh [rSB], a
    dec a
    ret nc

    rlca
    adc h
    ld b, b
    nop
    ret nc

    nop
    adc h
    ld b, b
    nop
    db $10
    rst $38
    pop de
    ld bc, $01e0
    add hl, sp
    ret nc

    ld bc, $3894
    nop
    ret nc

    ld bc, $3874
    nop
    ld b, $e0
    ld bc, $d039
    ld bc, $3890
    nop
    ret nc

    ld bc, $3878
    nop
    ld b, $e0
    ld bc, $d039
    ld bc, $388c
    nop
    ret nc

    ld bc, $387c
    nop
    db $10
    rst $38
    pop de
    ld bc, $01e0
    add hl, sp
    ldh a, [rSB]
    nop
    ld [$d002], sp
    ld bc, $287c
    nop
    db $10
    rst $38
    jp nc, $1905

    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ret nc

    ld a, h
    add h
    jr c, jr_032_6c31

jr_032_6c31:
    db $10
    ldh [rSB], a
    dec sp
    ret nc

    ld e, c
    ld l, b
    jr c, jr_032_6c7c

    ret nc

    ld e, c
    and b
    jr c, @-$3c

    ld h, b
    rst $38
    pop de
    ld bc, $affe
    ld a, h
    ldh [rP1], a
    ld c, b
    ldh a, [rNR52]
    nop
    ld bc, $2000
    ret c

    ld h, $fe
    or a
    ld a, h
    rst $38
    pop de
    ld bc, $01e0
    ld sp, $01d0
    adc b
    jr c, jr_032_6c5f

jr_032_6c5f:
    db $10
    rst $38
    pop de
    inc hl
    cp $a7
    ld a, h
    ldh a, [rNR30]
    nop
    ld bc, $e020
    nop
    ld [hl], b
    ret nc

    sbc b
    ld c, b
    ld d, b
    nop
    ld d, b
    ret c

    ld a, [de]
    cp $b7
    ld a, h
    ld bc, $d1ff

jr_032_6c7c:
    ld bc, $01f8
    sub l
    ld l, h
    ld hl, sp+$02
    and l
    ld l, h
    ldh [rSB], a
    ld a, $d0
    rlca
    sub b
    jr nc, jr_032_6c8d

jr_032_6c8d:
    ld b, $d0
    ld bc, $3090
    nop
    ld [$e0ff], sp
    ld bc, $d03d
    rlca
    ld a, b
    ld b, b
    nop
    ld b, $d0
    ld bc, $4078
    nop
    ld [$e0ff], sp
    ld bc, $d03d
    rlca
    add h
    jr nz, jr_032_6cad

jr_032_6cad:
    ld b, $d0
    ld bc, $2084
    nop
    ld [$d1ff], sp
    ld bc, $a7fe
    ld a, h
    ldh a, [rNR50]
    nop
    ld bc, $1000
    ldh [rSB], a
    db $76
    ret nc

    ld bc, $3080
    nop
    db $10
    cp $b7

jr_032_6ccb:
    ld a, h
    ld bc, $19d1
    ldh [rSB], a
    ld [hl], a
    ret nc

    adc e
    ld a, b
    ld c, h
    ld bc, $ff40
    pop de
    dec de
    ldh a, [rTAC]
    nop
    ld [bc], a
    nop
    ret nc

    sub d
    add h
    jr nc, jr_032_6ce5

jr_032_6ce5:
    ldh [rNR30], a
    ld a, b
    ret nc

    ld e, d
    ld b, b
    ld d, b
    nop
    inc b
    ret nc

    ld e, d
    ld b, b
    ld e, b
    nop
    inc b
    ret nc

    ld e, d
    ld b, b
    ld d, h
    nop
    ld b, b
    rst $38
    pop de
    rra
    ldh [rSB], a
    ld a, c
    ret nc

    adc b
    add h
    jr nc, jr_032_6d08

    ret nc

    adc b
    add h

jr_032_6d08:
    jr nc, jr_032_6d1c

    ret nc

    adc b
    add h
    jr nc, jr_032_6d2f

    ret nc

    adc b
    add h
    jr nc, jr_032_6d45

    db $10
    db $fd
    ld [bc], a
    nop
    ld l, l
    jr nz, @+$01

    pop de

jr_032_6d1c:
    dec h
    pop af
    dec de
    ld a, [c]
    rrca
    ret nc

    sub h
    add h
    jr z, jr_032_6d26

jr_032_6d26:
    ret nc

    sub h
    add h
    jr z, jr_032_6ccb

    ldh [rSB], a
    ld a, d
    ld h, b

jr_032_6d2f:
    rst $38
    pop de
    inc bc
    ldh [rP1], a
    ld d, b
    ret nc

    ld a, a
    jr nc, @+$62

    nop
    ld b, $fd
    ld [$6d32], sp
    ld h, b
    cp $a7
    ld a, h
    ldh a, [rNR50]

jr_032_6d45:
    nop
    ld bc, $0400
    ldh a, [rSB]
    nop
    inc b
    inc bc
    ldh [rSB], a
    ld d, b
    ret nc

    rrca
    adc b
    jr nc, jr_032_6d57

    ret nc

jr_032_6d57:
    rrca
    adc b
    jr nc, @+$06

    ret nc

    rrca
    adc b
    jr nc, jr_032_6d65

    ld [$0af0], sp
    nop
    nop

jr_032_6d65:
    nop
    inc b
    sub $09
    ld [$d2ff], sp
    add hl, de

jr_032_6d6d:
    ld c, $d0
    ld d, h
    ld b, b
    ld d, b
    nop
    jr nz, jr_032_6d65

    rra
    ld h, b
    ld [bc], a
    nop
    ldh [rP1], a
    ld a, e
    cp $bc
    ld a, e
    db $10
    db $fd
    ld [bc], a
    ld a, h
    ld l, l
    ld [$f8ff], sp
    ld bc, $6da3
    jp nc, $2301

    ret nc

    and l
    ld b, h
    ld c, b
    nop
    ldh [rP1], a
    ld [hl], h
    jr nz, jr_032_6d6d

    ld bc, $e00c
    nop
    ld b, d
    ret nc

    inc b
    inc l
    ld h, b
    nop
    db $10
    rst $38
    pop de
    ld de, $a7fe
    ld a, h
    ldh a, [rNR24]
    nop
    ld bc, $e040
    nop
    ld e, d
    ld b, b
    ret c

    add hl, de
    ld bc, $16f0
    nop
    ld bc, $e040
    nop
    ld c, h
    ret nc

    ld b, a
    inc l
    ld l, h
    ld b, $02
    ret nc

    ld b, a
    inc h
    ld l, h
    ld b, $02
    ret nc

    ld b, a

jr_032_6dca:
    inc [hl]
    ld l, h
    ld [$d002], sp
    ld b, a
    inc e
    ld l, h
    ld [$d002], sp
    ld b, a
    inc a
    ld l, h
    ld b, $02
    ret nc

    ld b, a
    inc d
    ld l, h
    ld [$d002], sp
    ld b, a
    ld b, h
    ld l, h
    ld [$fd02], sp
    inc bc
    cp c
    ld l, l
    ld [$16d8], sp
    cp $b7
    ld a, h
    rst $38
    pop de
    ld bc, $a7fe
    ld a, h
    ldh [rP1], a
    ld c, d
    ldh a, [$2c]
    nop
    ld bc, $0800
    ret nc

    ld bc, $3078
    nop
    ld [$01d0], sp
    sbc b
    jr nc, jr_032_6e0a

jr_032_6e0a:
    ld [$01d0], sp
    adc b
    jr nc, jr_032_6e10

jr_032_6e10:
    ld [$2cd8], sp
    cp $b7

jr_032_6e15:
    ld a, h
    rst $38
    pop de
    ld [$05f0], sp
    nop
    ld [bc], a
    nop
    ldh [rIE], a
    ld e, d
    ret nc

    sub c
    jr nc, jr_032_6e7d

    nop
    ret nc

    sub c
    jr nc, jr_032_6e82

    ld [$91d0], sp
    jr nc, jr_032_6e87

    db $10
    ret nc

    sub c
    jr nc, jr_032_6e8c

    jr @-$2e

    sub c
    jr nc, @+$5a

    jr nz, @-$2e

    sub c
    jr nc, jr_032_6e96

    jr z, jr_032_6e10

    sub c
    jr nc, @+$5a

    jr nc, jr_032_6e15

    sub c
    jr nc, @+$5a

    jr c, jr_032_6dca

    rst $38
    jp nc, $2710

    pop af
    dec de
    ldh a, [$1f]
    ld d, b
    inc b
    db $10
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ldh [rP1], a
    ld [hl], d
    ret nc

    or e
    ld c, b
    ld e, b
    nop
    jr nz, @-$1e

    nop
    ld e, l
    ret nc

    daa
    ld d, b
    ld d, h
    nop
    ld [bc], a
    ldh [rSB], a
    ld e, l
    ret nc

    daa
    ld h, b
    ld c, h
    nop
    ld [bc], a
    ldh [rSB], a
    ld e, l
    ret nc

    daa
    ld [hl], b
    ld b, h
    nop

jr_032_6e7d:
    ret nc

    jr z, jr_032_6efe

    ld a, $00

jr_032_6e82:
    jr nc, @+$01

    ld a, [c]
    ld d, h
    pop de

jr_032_6e87:
    rra
    ldh [rSB], a
    ld b, e
    ret nc

jr_032_6e8c:
    add c
    add h
    jr nz, jr_032_6e90

jr_032_6e90:
    ld [$05fd], sp
    adc e
    ld l, [hl]
    ld h, b

jr_032_6e96:
    rst $38
    jp nc, $0124

    ldh a, [rTAC]
    nop
    nop
    nop
    ldh [rSB], a
    inc [hl]
    ret nc

    inc b
    ld [hl], b
    ld b, b
    nop
    ld [bc], a
    ldh [rSB], a
    ld e, [hl]
    ret nc

    and a
    ld a, b
    jr c, jr_032_6eb0

jr_032_6eb0:
    ld [bc], a
    ldh [rSB], a
    inc [hl]
    ret nc

    inc b
    add b
    jr c, jr_032_6eb9

jr_032_6eb9:
    ld [bc], a
    ldh [rSB], a
    ld e, [hl]
    ret nc

    and a
    adc b
    jr nc, jr_032_6ec2

jr_032_6ec2:
    ld [bc], a
    ldh [rSB], a
    inc [hl]
    ret nc

    inc b
    sub b
    jr nc, jr_032_6ecb

jr_032_6ecb:
    ld [bc], a
    ldh [rSB], a
    ld e, [hl]
    ret nc

    and a
    sbc b
    jr z, jr_032_6ed4

jr_032_6ed4:
    jr @+$01

    pop de
    dec h
    ret nc

    and h
    add h
    stop
    ldh [rSB], a
    add d
    ld h, b
    rst $38
    pop de
    ld a, [bc]
    ldh [rNR30], a
    ld e, [hl]
    ret nc

    adc a
    ld b, b
    ld e, b
    inc hl
    ld [bc], a
    ldh [rNR30], a
    ld e, [hl]
    ret nc

    adc a
    ld b, b
    ld d, b
    inc h
    ld [bc], a
    ldh [rNR30], a
    ld e, [hl]
    ret nc

    adc a
    ld b, b
    ld h, b
    inc hl

jr_032_6efe:
    ld [bc], a
    db $fd
    ld [bc], a
    db $e4
    ld l, [hl]
    ldh a, [$03]
    nop
    ld [$2800], sp
    cp $df
    ld a, e
    jr nz, @+$01

    pop de
    inc hl
    ldh a, [rTAC]
    nop
    ld [bc], a
    nop
    ret nc

    adc d
    ld d, b
    ld d, b
    nop
    ret nc

    adc d
    ld d, b
    ld d, b
    dec c
    ret nc

    adc d
    ld d, b
    ld d, b
    ld a, [de]
    ret nc

    adc d
    ld d, b
    ld d, b
    daa
    ret nc

    adc d
    ld d, b
    ld d, b
    inc [hl]
    ldh [rP1], a
    ld l, a
    ld h, b
    rst $38
    jp nc, $0111

    ldh a, [$09]
    nop
    ld bc, $e000
    nop
    ld b, $d0
    ld [hl], a
    jr jr_032_6f9a

    ld [bc], a
    ret nc

    ld [hl], a
    jr nz, jr_032_6f9f

    ld bc, $77d0
    jr z, @+$5a

    nop
    ret nc

    ld [hl], a
    jr nc, jr_032_6fa9

    add b
    ret nc

    ld [hl], a
    jr c, jr_032_6fae

    add c
    ret nc

    ld [hl], a
    ld b, b
    ld e, b
    add d
    inc c
    ldh [rSB], a
    inc [hl]
    ret nc

    ld b, $88
    jr c, jr_032_6f65

jr_032_6f65:
    ld b, $d0
    ld bc, $3888
    nop
    ld [$0af0], sp
    nop
    ld bc, $1000
    rst $38
    pop de
    db $10
    ldh a, [rTIMA]
    nop
    ld [bc], a
    nop
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    cp $dc
    ld a, d
    ld b, b
    rst $38
    pop de
    ld bc, $00e0
    ld [hl], h
    cp $a7
    ld a, h
    ldh a, [rNR33]
    nop
    ld bc, $6080
    ldh [rSB], a
    inc sp
    ret nc

    inc b
    ld a, b
    jr nz, jr_032_6f9a

jr_032_6f9a:
    ld [$01e0], sp
    inc sp
    ret nc

jr_032_6f9f:
    inc b
    sbc b
    jr z, jr_032_6fa3

jr_032_6fa3:
    ld [$01e0], sp

jr_032_6fa6:
    inc sp
    ret nc

    inc b

jr_032_6fa9:
    adc b
    jr nc, jr_032_6fac

jr_032_6fac:
    jr nz, @-$26

jr_032_6fae:
    dec e
    cp $b7
    ld a, h
    inc b
    rst $38
    jp nc, $2523

    ldh a, [rTAC]
    nop
    ld [bc], a
    nop
    ret nc

    sub a
    ld h, b
    jr z, jr_032_6fc1

jr_032_6fc1:
    ldh [rSB], a
    ld a, h
    jr nz, jr_032_6fa6

    ld bc, $d07d
    ld a, [hl]
    ld a, b
    jr z, jr_032_6fcd

jr_032_6fcd:
    jr z, @+$01

    jp nc, $0e01

    ldh [rP1], a
    ld a, [hl]
    ret nc

    xor d
    ld b, b
    ld l, b
    nop
    ret nc

    xor e
    ld b, b
    ld e, h
    ld hl, sp+$18
    ldh [rP1], a
    ld a, [hl]
    ret nc

    xor d
    ld b, b
    ld l, b
    nop
    ret nc

    xor e
    ld b, b
    ld e, h
    ld hl, sp+$18
    ldh [rP1], a
    ld a, [hl]
    ret nc

    xor d
    ld b, b
    ld l, b
    nop
    ret nc

    xor e
    ld b, b
    ld e, h
    ld hl, sp+$0c
    ldh [rP1], a
    ld a, [hl]
    ret nc

    xor d
    ld b, b
    ld l, b
    nop
    ret nc

    xor e
    ld b, b
    ld e, h
    ld hl, sp+$0c
    ldh [rP1], a
    ld a, [hl]
    ret nc

    xor d
    ld b, b
    ld l, b
    nop
    ret nc

    xor e
    ld b, b
    ld e, h
    ld hl, sp+$18
    ldh [rP1], a
    ld a, [hl]
    ret nc

    xor d
    ld b, b
    ld l, b
    nop
    ret nc

    xor e
    ld b, b
    ld e, h
    ld hl, sp+$0c
    ldh [rP1], a
    ld a, [hl]
    ret nc

    xor d
    ld b, b
    ld l, b
    nop
    ret nc

    xor e
    ld b, b
    ld e, h
    ld hl, sp+$0c
    ldh [rP1], a
    ld a, [hl]
    ret nc

    xor d
    ld b, b
    ld l, b
    nop
    ret nc

    xor e
    ld b, b
    ld e, h
    ld hl, sp+$0c
    ldh [rP1], a
    ld a, [hl]
    ret nc

    xor d
    ld b, b
    ld l, b
    nop
    ret nc

    xor e
    ld b, b
    ld e, h
    ld hl, sp+$0c
    rst $38
    jp nc, $0c15

    ldh a, [rDIV]
    nop
    ld [$e000], sp
    ld a, [de]
    add b
    ret nc

    ld h, d
    ld b, b
    ld e, h
    db $10
    inc h
    cp $15
    ld a, h
    ld b, b
    rst $38
    pop de
    ld a, [de]
    ld a, [c]
    db $fc
    cp $5b
    ld a, h
    rst $38
    db $d3
    inc e
    dec d
    rlca
    ldh [rNR30], a
    add b
    ret nc

    adc h
    ld b, b
    ld e, h
    inc b
    db $10
    ret nc

    inc e
    add h
    jr c, jr_032_7091

    ld [$00f8], sp
    sub c
    ld [hl], b
    ret nc

    ld [hl], h
    add h
    inc a
    jr nz, jr_032_7094

    db $fd
    dec b
    add [hl]
    ld [hl], b
    add b

jr_032_7091:
    rst $38
    pop de
    rra

jr_032_7094:
    ldh [rNR30], a
    ld b, $d0

jr_032_7098:
    adc [hl]
    jr nc, jr_032_70f3

    jr nz, @+$0a

    ldh [rNR30], a
    ld b, $d0

jr_032_70a1:
    adc [hl]
    jr nc, jr_032_70fc

    jr nc, @+$0a

    ldh [rNR30], a
    ld b, $d0
    adc [hl]
    jr nc, jr_032_7105

    jr z, @+$42

    rst $38
    jp nc, $0805

    pop af
    dec de
    ld a, [c]
    jr nc, jr_032_7098

    ld a, [de]
    adc b
    ret nc

    and e
    ld b, b
    ld e, h
    ld [bc], a
    jr z, jr_032_70a1

    ld bc, $d056
    ld [hl-], a
    adc b
    jr c, jr_032_70ca

    db $10
    ret nc

jr_032_70ca:
    ld sp, $3888
    nop
    add b
    rst $38
    pop de
    inc h
    cp $c2

jr_032_70d4:
    ld a, h
    ldh a, [rTAC]
    nop
    nop
    nop
    ldh [rSB], a
    add c
    ret nc

    and a
    add h
    jr z, jr_032_70e2

jr_032_70e2:
    jr jr_032_70d4

    add hl, de
    nop
    nop
    ld b, b
    ld b, b
    ret c

    add hl, de
    cp $d2
    ld a, h
    ld [$d1ff], sp
    dec h
    pop af

jr_032_70f3:
    dec de
    ld a, [c]
    nop
    ld hl, sp+$01
    inc b
    ld [hl], c
    ldh [rNR30], a

jr_032_70fc:
    ld a, [hl-]
    ret nc

    sbc e
    inc l
    ld a, b
    ld [bc], a
    add b
    rst $38
    ret nc

jr_032_7105:
    sbc e
    add h

jr_032_7107:
    ld c, h
    nop
    ldh [rSB], a
    cpl

jr_032_710c:
    ldh a, [$0c]
    nop
    nop
    nop

jr_032_7111:
    jr nz, @+$01

    pop de
    ld c, $f0

jr_032_7116:
    ld b, $00
    ld [bc], a
    nop
    ldh a, [rTIMA]
    nop
    ld [bc], a
    nop
    ldh [rSC], a
    add h
    ret nc

    and [hl]
    ld e, b
    nop
    nop
    ret nc

    and [hl]
    ld e, b
    nop
    ld [$a6d0], sp
    ld e, b
    nop
    db $10
    ret nc

    and [hl]
    ld e, b
    nop
    jr jr_032_7107

    and [hl]
    ld e, b
    nop
    jr nz, jr_032_710c

    and [hl]
    ld e, b
    nop
    jr z, jr_032_7111

    and [hl]
    ld e, b
    nop
    jr nc, jr_032_7116

    and [hl]
    ld e, b
    nop
    jr c, jr_032_71bb

    rst $38
    pop de
    ld de, $06f0
    nop
    ld [bc], a
    nop
    ldh a, [rTIMA]
    nop
    ld [bc], a
    nop
    jp c, $00e0

    ld d, a
    ld [$aed0], sp
    ld b, b
    ld e, b
    inc b
    ld [$aed0], sp
    ld b, b
    ld d, b
    inc b
    ld [$aed0], sp
    ld b, b
    ld h, b
    inc b
    ld [$02fd], sp
    ld e, h
    ld [hl], c
    db $10
    ldh a, [rNR12]
    nop
    ld bc, $0600
    ldh a, [rNR10]
    nop
    nop
    ld [$d840], sp
    db $10
    ldh a, [$0a]
    nop
    ld bc, $0400
    sub $07
    ld bc, $d1ff
    inc h
    ldh a, [rTAC]
    nop
    nop
    nop
    ldh [rP1], a
    add c
    ret nc

    and a
    ld b, b
    ld e, b
    nop
    jr @+$01

    jp nc, $1f01

    ldh [rSB], a
    ld e, c
    ret nc

    ld l, c
    add h
    jr c, @+$04

    db $10
    ldh [rSB], a
    inc sp
    ret nc

    ld bc, $3078
    nop
    db $10
    ldh [rSB], a
    inc sp
    ret nc

    ld bc, $4090
    nop
    db $10

jr_032_71bb:
    rst $38
    pop de
    rra
    ldh [rSB], a

jr_032_71c0:
    ld a, c
    ret nc

    add a
    add h
    jr nc, jr_032_71c9

    ret nc

    add a
    add h

jr_032_71c9:
    jr nc, jr_032_71dd

    ret nc

    add a
    add h
    jr nc, @+$22

    ret nc

    add a
    add h
    jr nc, @+$33

    db $10
    db $fd
    ld [bc], a
    pop bc
    ld [hl], c
    jr nz, @+$01

    pop de

jr_032_71dd:
    ld bc, $a7fe
    ld a, h
    ldh a, [rNR30]
    nop
    ld bc, $e020
    nop
    add e
    ld c, b
    ret c

    ld a, [de]
    cp $b7
    ld a, h
    ldh a, [rSB]
    nop
    inc b
    inc bc
    ldh [rSB], a
    ld [hl-], a
    ret nc

    nop
    ld a, b
    ld c, b
    nop
    ld b, $e0
    ld bc, $d033
    nop
    adc b
    jr c, jr_032_7205

jr_032_7205:
    ld b, $e0
    ld bc, $d034
    nop
    sbc b
    jr z, jr_032_720e

jr_032_720e:
    db $10
    rst $38
    pop de
    rrca
    ret nc

    and d
    ld e, b
    nop
    nop
    ld [$a2d0], sp
    ld c, b
    nop
    ld bc, $d008
    and d
    jr c, jr_032_7222

jr_032_7222:
    ld [bc], a
    ldh [rSB], a
    ld b, $08
    db $fd
    db $10
    inc hl
    ld [hl], d
    ld [$d2ff], sp
    dec c
    ld [de], a
    cp $a7
    ld a, h
    ldh a, [rNR32]
    nop
    nop
    db $10
    ldh [rNR31], a
    add l
    cp $b3
    ld a, d
    jr nc, jr_032_71c0

    ret c

    inc e
    cp $b7
    ld a, h
    ld bc, $24d1
    ldh a, [rTAC]
    nop
    nop
    nop
    ldh [rP1], a
    ld l, c
    ret nc

    sbc l
    jr jr_032_7294

    nop
    dec b
    ret nc

    sbc l
    jr c, jr_032_72c2

    nop
    dec b
    ret nc

    sbc l
    jr jr_032_72c8

    nop
    dec b
    ret nc

    sbc l
    jr c, jr_032_72a6

    nop
    dec b
    ret nc

    sbc l
    jr z, jr_032_72c0

    nop
    dec b
    db $fd
    ld [bc], a
    ld c, l
    ld [hl], d
    jr nz, @+$01

    pop de
    ld de, $a7fe
    ld a, h
    ldh a, [rNR30]
    nop
    ld bc, $f020
    rlca
    nop
    ld [bc], a
    nop
    ldh [rP1], a
    ld c, h
    ret nc

    ld b, a
    inc l
    ld l, h
    ld b, $02
    ret nc

    ld b, a
    inc h
    ld l, h
    ld b, $02
    ret nc

    ld b, a

jr_032_7294:
    inc [hl]
    ld l, h
    ld [$d002], sp
    ld b, a
    inc e
    ld l, h
    ld [$d002], sp
    ld b, a
    inc a
    ld l, h
    ld b, $02
    ret nc

    ld b, a

jr_032_72a6:
    inc d

jr_032_72a7:
    ld l, h
    ld [$d002], sp
    ld b, a
    ld b, h
    ld l, h
    ld [$fd02], sp
    dec b
    add e
    ld [hl], d
    ld [$1ad8], sp
    cp $b7
    ld a, h
    rst $38
    pop de
    inc hl
    cp $a7
    ld a, h

jr_032_72c0:
    ldh a, [rNR52]

jr_032_72c2:
    nop
    ld bc, $e000
    nop
    add [hl]

jr_032_72c8:
    ret nc

    ld a, [hl]
    ld b, b
    ld d, b
    nop
    jr nz, jr_032_72a7

    ld h, $fe

jr_032_72d1:
    or a
    ld a, h
    inc b
    rst $38
    pop de
    ld bc, $00e0
    ld [hl], e
    cp $af
    ld a, h
    ldh a, [$2e]
    ld h, b
    ld bc, $f001
    dec h
    nop
    ld bc, $0400
    ldh [rSB], a
    inc [hl]
    ret nc

    inc bc
    adc b
    jr z, jr_032_72f0

jr_032_72f0:
    ld [$b7fe], sp
    ld a, h
    rst $38
    jp nc, $0224

    ldh a, [rTAC]
    nop
    nop
    nop
    ldh [rSB], a

jr_032_72ff:
    jr c, jr_032_72d1

    ld a, [hl-]
    sbc b
    jr z, jr_032_7305

jr_032_7305:
    inc b
    ret nc

    sbc l
    adc b
    jr z, jr_032_730b

jr_032_730b:
    jr nz, @+$01

    jp nc, $131f

    ldh [rP1], a
    ld b, $d0
    xor c
    ld c, b
    ld e, b

jr_032_7317:
    ld b, h
    jr nz, jr_032_7317

    ld [bc], a
    db $10
    ld [hl], e
    jr nz, jr_032_72ff

    ld bc, $d087
    add e
    ld l, b
    jr z, jr_032_7326

jr_032_7326:
    jr z, @+$01

    jp nc, $0d1f

    cp $a7
    ld a, h
    ret nc

    add d
    ld c, d
    ld l, b
    nop
    db $10
    ldh a, [rNR23]

jr_032_7336:
    nop
    ld bc, $e040
    nop
    adc l
    ret nc

    inc l
    inc l
    ld e, b
    jr nz, jr_032_734a

    db $fd
    ld [$733c], sp
    add b
    ret c

jr_032_7348:
    jr jr_032_7348

jr_032_734a:
    or a
    ld a, h
    rst $38
    jp nc, $0805

    ldh [rP1], a
    adc b
    ldh a, [rSB]
    nop
    inc b
    inc bc
    ret nc

    jr nc, @+$32

    ld e, h
    nop
    jr jr_032_7336

    ld bc, $0103
    cp $a7
    ld a, h
    ldh a, [rNR50]
    nop
    ld bc, $e000
    nop
    ld [hl], e
    db $10
    ldh a, [$0a]
    nop
    nop
    nop
    inc b
    sub $02
    ld bc, $01e0
    ld d, [hl]

jr_032_737a:
    ret nc

    ld [hl-], a
    adc b
    jr c, jr_032_7381

    ret nc

    inc sp

jr_032_7381:
    adc b
    jr c, jr_032_7384

jr_032_7384:
    jr nz, @+$01

    pop de
    ld [bc], a
    ldh [rSB], a
    jr c, jr_032_737a

    ld bc, $7397
    ret nc

    ld a, [hl-]
    sbc b
    jr z, jr_032_7394

jr_032_7394:
    db $fc
    sbc h

jr_032_7396:
    ld [hl], e
    ret nc

    dec sp
    ld [hl], b
    jr z, jr_032_739c

jr_032_739c:
    db $10
    rst $28
    adc b
    ld [hl], e
    rst $38
    pop de
    jr jr_032_7396

    nop
    ldh [rP1], a
    ld [hl], l
    cp $a7
    ld a, h
    cp $43
    ld a, h
    cp $b7
    ld a, h
    pop de
    ld bc, $e0df
    ld bc, $d039
    ld bc, $3894
    nop
    ret nc

    ld bc, $3874
    nop
    ld b, $e0
    ld bc, $d039
    ld bc, $3890
    nop
    ret nc

    ld bc, $3878
    nop
    ld b, $e0
    ld bc, $d039
    ld bc, $388c
    nop
    ret nc

    ld bc, $387c
    nop
    db $10
    rst $38
    pop de
    rla
    ld a, [c]
    ldh [$e0], a
    ld bc, $d089
    xor h
    sub h
    jr nz, jr_032_73eb

jr_032_73eb:
    dec b
    ret nc

    xor h
    ld [hl], h
    ld b, b
    nop
    dec b
    ret nc

    xor h
    sub h
    ld b, b
    nop
    dec b
    ret nc

    xor h
    ld [hl], h
    jr nz, jr_032_73fd

jr_032_73fd:
    dec b
    ret nc

    xor h
    add h
    jr nc, jr_032_7403

jr_032_7403:
    add b
    rst $38
    pop de
    inc hl
    ldh [rP1], a
    add [hl]
    ret nc

    ld h, [hl]
    inc l
    ld d, b
    ld [bc], a
    ld [$05fd], sp

jr_032_7412:
    rlca
    ld [hl], h
    add b
    ld b, b
    rst $38
    pop de
    add hl, de
    ldh [rP1], a
    dec de
    ret nc

    ld d, h
    ld b, b
    ld d, b

jr_032_7420:
    nop
    jr z, jr_032_7420

    ld [bc], a
    add hl, de
    ld [hl], h
    jr nz, @+$01

    jp nc, $0e1f

    ret nc

    add h
    ld c, b
    jr c, jr_032_7430

jr_032_7430:
    jr nz, jr_032_7412

    nop
    adc d
    ret nc

    add l
    ld c, b
    inc [hl]
    nop
    ld [$00e0], sp
    adc d
    ret nc

    add l
    ld c, b
    inc [hl]
    ld bc, $e008
    nop
    adc d
    ret nc

    add l
    ld c, b
    inc [hl]
    ld [bc], a
    ld [$00e0], sp
    adc d
    ret nc

    add l
    ld c, b
    inc [hl]
    nop
    ld [$00e0], sp
    adc d
    ret nc

    add l
    ld c, b
    inc [hl]
    ld [bc], a
    ld [$04fd], sp
    ld sp, $4074
    rst $38
    pop de

jr_032_7465:
    ld bc, $affe
    ld a, h
    ldh a, [rNR43]
    nop
    ld bc, $e000
    nop
    adc e

jr_032_7471:
    ld b, b
    ret c

    ld [hl+], a
    jr nz, @-$0e

    dec h
    nop
    ld bc, $0400
    ldh [rSB], a
    inc sp
    ret nc

    inc bc
    adc b
    jr z, jr_032_7483

jr_032_7483:
    ld [$b7fe], sp
    ld a, h
    rst $38
    jp nc, $0d19

    ldh [rSB], a
    adc [hl]
    ret nc

    adc l
    ld b, b
    ld e, b
    ld l, h
    jr c, jr_032_7465

    ld d, e
    ld l, b
    jr nc, jr_032_7499

jr_032_7499:
    jr nc, jr_032_7471

    ld [bc], a
    ld hl, sp+$03

jr_032_749e:
    or d
    ld [hl], h
    sub $01
    ld bc, $08d1
    ldh a, [rSB]
    nop
    ld [$fe12], sp
    adc a
    ld a, e
    db $10
    rst $28
    xor d
    ld [hl], h
    rst $38
    ldh [rSB], a
    ld l, c
    ret nc

    inc l
    add h
    jr nc, jr_032_74de

    ld [$08fd], sp
    or l
    ld [hl], h
    add b
    rst $38
    pop de
    rra
    ldh [rP1], a
    add a
    ret nc

    add e
    ld c, b
    ld d, b
    nop
    jr z, jr_032_749e

    ld bc, $a7fe
    ld a, h
    ldh a, [rNR52]
    nop
    ld bc, $0800
    ldh [rSB], a
    inc sp
    ret nc

    ld bc, $3078

jr_032_74de:
    nop
    ld [$01e0], sp
    inc sp
    ret nc

    ld bc, $3098
    nop
    ld [$01e0], sp
    inc sp
    ret nc

    ld bc, $3088
    nop
    ld [$26d8], sp
    ld bc, $b7fe
    ld a, h
    rst $38
    pop de
    rra
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ret nc

    adc c
    ld d, b
    ld d, b
    nop
    ret nc

    adc c
    ld d, b
    ld d, b
    dec c
    ret nc

    adc c
    ld d, b
    ld d, b
    ld a, [de]
    ret nc

    adc c
    ld d, b
    ld d, b
    daa
    ret nc

    adc c
    ld d, b
    ld d, b
    inc [hl]
    ldh [rP1], a
    ld l, a
    ld h, b
    rst $38
    jp nc, $2301

    cp $af
    ld a, h
    ldh a, [rNR51]
    nop
    ld bc, $0400
    ldh [rSB], a
    ld b, c
    ret nc

    inc b
    ld [hl], b
    jr nc, jr_032_7532

jr_032_7532:
    ret nc

    inc b
    ld c, h
    ld h, b
    nop
    ld [$b7fe], sp
    ld a, h
    ld bc, $d1ff
    inc bc
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ldh a, [rTIMA]
    nop
    ld [bc], a
    nop
    ldh [rP1], a
    ld d, b
    ret nc

    add b
    jr nc, jr_032_75b8

    nop
    ld [$08fd], sp
    ld c, c
    ld [hl], l
    ld h, b
    cp $a7
    ld a, h
    ldh a, [rNR50]
    nop
    ld bc, $0400
    ldh [rSB], a
    ld d, b
    ret nc

    rrca
    adc b
    jr nc, jr_032_7569

    ret nc

jr_032_7569:
    rrca
    adc b
    jr nc, @+$06

    ret nc

    rrca
    adc b
    jr nc, jr_032_7577

    ld [$0af0], sp
    nop
    nop

jr_032_7577:
    nop
    inc b
    sub $09
    ld [$d1ff], sp
    add hl, bc
    ldh a, [$1f]
    ld c, $04
    nop
    ldh [rSB], a
    dec de
    ret nc

    ld e, $80
    ld b, b
    ld b, b
    ld [bc], a
    ret nc

    ld e, $78
    ld b, h
    jr nc, @+$04

    ret nc

    ld e, $98
    ld b, h
    jr nc, @+$04

    ret nc

    ld e, $90
    ld b, b
    ld b, b
    ld [bc], a
    ret nc

    ld e, $88
    ld b, h
    jr nc, jr_032_75a7

    rst $28
    ld a, a

jr_032_75a7:
    ld [hl], l
    ld h, b
    rst $38
    jp nc, $0801

    ldh [rSB], a
    inc sp
    ret nc

    ld a, [bc]
    adc b
    jr c, jr_032_75f8

    db $10
    ldh a, [rSB]

jr_032_75b8:
    nop
    ld [$fe12], sp
    adc a
    ld a, e
    db $10
    rst $38
    jp nc, $011d

    ldh a, [$1f]
    ld b, b
    ld [bc], a
    nop
    jr nc, @-$0e

    ld bc, $0800
    inc bc
    ret nc

    ld e, a
    ld c, b
    ld d, b
    ld bc, $01e0
    ld b, b
    db $10

jr_032_75d7:
    ret nc

    nop
    adc b
    jr c, jr_032_75dc

jr_032_75dc:
    db $10
    rst $38
    pop de
    inc bc
    ldh [rNR30], a
    ld d, b
    ret nc

    sub b

jr_032_75e5:
    ld b, b
    ld e, h
    inc b
    inc b
    db $fd
    ld a, [bc]
    db $e3
    ld [hl], l
    ld b, b
    rst $38
    pop de
    rra
    ret nc

    add [hl]
    inc l
    ld l, b
    jr nz, jr_032_75d7

    nop

jr_032_75f8:
    or d
    cp $86
    ld d, h
    ld b, b
    rst $38
    pop de
    inc hl
    ret nc

    sbc c
    ld b, b
    ld d, b
    sub b
    ret nc

    sbc c
    ld b, b
    ld d, b
    db $10
    ldh [rP1], a
    or b
    db $10
    ret nc

    sbc d
    ld b, b
    ld c, b
    inc l
    jr nz, jr_032_75e5

    sbc d
    ld b, b
    ld c, b
    inc [hl]
    db $10
    rst $38
    pop de
    ld bc, $01f8
    dec hl
    db $76
    ldh [rSB], a
    inc sp
    ret nc

    ld bc, $3888
    nop
    db $10
    rst $38
    ldh a, [$09]
    nop
    nop
    nop
    inc b
    cp $c2
    ld a, h
    ret nc

    xor l
    add h
    ld b, b
    nop
    ld b, b
    ret nc

    xor l
    add h
    ld b, b
    ld bc, $01e0
    add hl, hl
    ldh a, [$0b]
    nop
    nop
    nop
    ld b, b
    sub $03
    db $10
    ldh [rSB], a
    inc [hl]
    ret nc

    nop
    ld a, b
    jr c, jr_032_7653

jr_032_7653:
    ldh a, [$2d]
    nop
    nop
    nop
    db $10
    cp $d2
    ld a, h
    ld bc, $d2ff
    inc de
    ld bc, $e4f2
    ldh [rP1], a
    ld b, $d0
    xor b
    inc l
    ld [hl], b
    nop
    ld [bc], a
    db $fd
    dec b
    ld h, e
    db $76

jr_032_7670:
    jr jr_032_7670

    xor a
    ld a, h
    ldh a, [rNR51]
    nop
    ld bc, $0400
    rst $18
    ldh [rSB], a
    ld a, $d0
    inc b
    adc b
    jr z, jr_032_7683

jr_032_7683:
    ld [$0af0], sp
    nop
    nop
    nop
    inc b
    sub $06
    ld bc, $d2ff
    ld e, $1f
    ldh [rP1], a
    or h
    ret nc

    or [hl]
    ld b, b
    ld h, b
    ld [bc], a
    ld [bc], a
    ret nc

    or [hl]
    ld b, b
    ld d, b
    ld [bc], a
    ld h, b
    ld a, [c]
    ld d, h
    ldh [rSB], a
    or l
    ret nc

    or a
    adc b
    jr z, jr_032_76bf

    ret nc

jr_032_76ab:
    or a
    adc b
    jr z, jr_032_76d9

    ret nc

    or a
    adc b
    jr z, jr_032_76f3

    add b
    rst $38
    pop de
    jr jr_032_76ab

    nop
    ldh [rP1], a
    ld [hl], l
    cp $a7

jr_032_76bf:
    ld a, h
    cp $43
    ld a, h
    inc b
    pop de
    ld bc, $f0df
    ld h, $00
    ld bc, $1000
    ldh [rSB], a
    ld a, $d0

jr_032_76d1:
    nop
    adc b
    jr nc, jr_032_76d5

jr_032_76d5:
    db $10
    ret c

    ld h, $fe

jr_032_76d9:
    or a
    ld a, h
    rst $38
    pop de
    jr jr_032_76d1

    nop
    ldh [rP1], a
    ld [hl], l
    cp $a7
    ld a, h
    cp $43
    ld a, h
    cp $b7
    ld a, h
    pop de
    ld [bc], a
    rst $18
    ldh [rSB], a
    dec [hl]
    ret nc

jr_032_76f3:
    scf
    sub b
    jr nc, jr_032_76f7

jr_032_76f7:
    ret nc

    scf
    adc h
    inc l
    nop
    ret nc

    scf
    adc b
    jr z, jr_032_7701

jr_032_7701:
    jr nz, @+$01

    pop de
    ld bc, $a7fe
    ld a, h
    ldh a, [$2f]
    nop
    ld bc, $1000
    ldh [rP1], a
    ld b, $d0
    inc b
    ld b, b
    ld h, b
    nop
    ld [$00e0], sp
    ld b, $d0
    inc b
    jr c, jr_032_7776

    nop
    ld [$00e0], sp
    ld b, $d0
    inc b
    ld b, h
    ld l, b
    nop
    ld [$2fd8], sp
    db $10
    cp $b7
    ld a, h
    ldh [rSB], a
    inc [hl]
    ret nc

    inc bc
    add h
    jr c, jr_032_7737

jr_032_7737:
    db $10
    rst $38
    pop de
    inc h
    ldh a, [rTAC]
    nop
    nop
    nop
    ldh [rP1], a
    adc a
    ret nc

    sbc h
    db $10
    jr nc, @-$76

    ld b, $fd
    dec b
    ld b, e
    ld [hl], a
    jr nz, @-$06

    nop
    ld d, [hl]
    ld [hl], a
    cp $6a
    ld a, h
    rst $38
    cp $80
    ld a, h
    rst $38
    pop de
    inc h
    cp $a7
    ld a, h
    ldh a, [rNR23]
    nop
    ld bc, $f040
    rlca
    nop
    nop
    nop
    ldh [rP1], a
    add e
    ld c, b
    ret c

jr_032_776e:
    jr jr_032_776e

    or a
    ld a, h
    ld hl, sp+$01
    ld a, d
    ld [hl], a

jr_032_7776:
    cp $6a
    ld a, h
    rst $38
    cp $80
    ld a, h
    rst $38
    jp nc, $0102

    pop af
    dec de
    ld a, [c]
    ret nz

    ldh a, [$1f]
    jr nz, jr_032_778b

    nop
    ret nc

jr_032_778b:
    ld [hl], $88
    jr c, jr_032_7737

    ret nc

    ld [hl], $88
    jr c, jr_032_77bc

    ld [$01e0], sp
    ld b, l
    ret nc

    nop
    sub b
    jr nc, @+$1a

    db $10
    ldh [rSB], a
    ld b, l
    ret nc

    nop
    add b
    ld b, b
    jr jr_032_77af

    rst $38
    pop de
    inc h
    pop af
    dec de
    ldh a, [rTAC]
    nop

jr_032_77af:
    nop
    nop
    ret nc

    sbc [hl]
    nop
    jr z, jr_032_77b6

jr_032_77b6:
    ret nc

    sbc [hl]
    db $10
    jr c, jr_032_77bb

jr_032_77bb:
    ret nc

jr_032_77bc:
    sbc [hl]
    jr nz, jr_032_7807

    nop
    ret nc

    sbc [hl]
    jr nc, jr_032_781c

    nop
    ret nc

    sbc [hl]
    ld b, b
    ld l, b
    nop
    ld bc, $00e0
    xor a
    ccf

jr_032_77cf:
    ld hl, sp+$03
    rst $10
    ld [hl], a
    cp $6a
    ld a, h
    rst $38
    cp $80

jr_032_77d9:
    ld a, h
    rst $38
    pop de
    ld [de], a
    cp $a7
    ld a, h
    ldh a, [rNR30]
    nop
    ld bc, $f020
    rlca
    nop
    ld [bc], a
    nop
    ret nc

    sbc a
    inc l
    ld e, b
    nop
    ret nc

    sbc a
    inc l
    ld e, b

jr_032_77f3:
    ld [$9fd0], sp
    inc l
    ld e, b
    db $10
    ret nc

    sbc a
    inc l
    ld e, b
    jr jr_032_77cf

    sbc a
    inc l
    ld e, b
    jr nz, @-$2e

    sbc a
    inc l
    ld e, b

jr_032_7807:
    jr z, jr_032_77d9

    sbc a
    inc l
    ld e, b
    jr nc, @-$2e

    sbc a
    inc l

jr_032_7810:
    ld e, b
    jr c, jr_032_77f3

    nop
    ld c, h
    ld [$0cfd], sp
    ld [de], a
    ld a, b
    ret c

    ld a, [de]

jr_032_781c:
    cp $b7
    ld a, h
    ld bc, $02d6
    sub $03
    sub $04
    sub $05
    sub $06
    sub $07
    sub $08
    sub $09
    db $10
    pop de
    ld bc, $00d0
    adc b
    jr c, jr_032_7838

jr_032_7838:
    jr nz, @+$01

    pop de
    ld [bc], a
    ldh [rSB], a
    jr c, jr_032_7810

    and b
    sbc b
    jr z, jr_032_7844

jr_032_7844:
    ret nc

    and c
    ld a, b
    ld c, b
    nop
    ld [$1ff0], sp
    ld e, b
    ld [bc], a
    nop
    ld e, h
    ldh [rSB], a
    ld [hl], $f0
    ld bc, $0800
    db $10
    db $10
    rst $38
    jp nc, $0113

    ldh [rP1], a
    scf
    ret nc

    ld a, $40
    ld [hl], b
    nop
    ld b, $fd
    add hl, bc
    ld e, l
    ld a, b
    ldh [rP1], a
    scf
    ld [$08fd], sp
    ld l, d
    ld a, b
    sub $01
    sub $02
    sub $03

jr_032_7878:
    sub $04
    sub $05
    sub $06
    sub $07
    sub $08
    sub $09
    ld b, b
    ret nc

    ld bc, $4090
    jr @-$1e

    ld bc, $0837
    db $fd
    inc b
    adc d
    ld a, b
    ret nc

    ld bc, $2080
    jr jr_032_7878

    ld bc, $0837
    db $fd
    inc b
    sub a
    ld a, b
    sub $01
    sub $02
    sub $03
    sub $04
    sub $05
    sub $06
    sub $07
    sub $08
    sub $09
    jr nz, @+$01

    pop de
    inc b
    pop af
    ld hl, sp-$0e
    ld a, h
    ldh [rSB], a
    ld [hl], c
    ret nc

    xor a
    ld e, b
    nop
    nop
    ld [$afd0], sp
    ld e, b
    nop
    ld bc, $d008
    xor a
    ld e, b
    nop
    ld [bc], a
    add b
    rst $38
    pop de
    inc b
    pop af
    sub b
    ldh [rSB], a
    adc a
    ret nc

    xor a
    ld e, b
    nop
    ld [bc], a
    ld [$afd0], sp
    ld e, b
    nop
    ld [bc], a
    ld [$afd0], sp
    ld e, b
    nop
    ld [bc], a
    add b
    rst $38
    jp nc, $1118

    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ldh [rP1], a
    ld e, [hl]
    ret nc

    ld d, b
    ld c, b
    ld d, b
    nop
    ret nc

    xor [hl]
    ld b, b
    ld c, b
    inc b
    ld [$aed0], sp
    ld b, b
    ld e, b
    inc b

jr_032_7904:
    ld [$aed0], sp
    ld b, b
    ld d, b
    inc b
    ld [$aed0], sp
    ld b, b
    ld h, b
    inc b
    ld [$03fd], sp
    pop af
    ld a, b
    jr nz, @+$01

    pop de
    add hl, de
    cp $a7
    ld a, h
    ldh a, [rNR30]
    nop
    ld bc, $e020
    nop
    ld d, h
    ret nc

    or c
    inc l
    ld e, b
    nop
    ret nc

    or c
    inc l
    ld e, b
    db $10
    ret nc

    or c
    inc l
    ld e, b
    jr nz, jr_032_7904

    or c
    inc l
    ld e, b
    jr nc, jr_032_7979

    ret c

    ld a, [de]
    cp $b7
    ld a, h

jr_032_793e:
    db $10
    rst $38
    jp nc, $0211

    ldh a, [$09]
    nop
    ld bc, $e000
    nop
    ld b, $d0
    ld [hl], a
    jr jr_032_79a7

    ld [bc], a
    ret nc

    ld [hl], a
    jr nz, jr_032_79ac

    ld bc, $77d0
    jr z, jr_032_79b1

    nop
    ret nc

    ld [hl], a
    jr nc, jr_032_79b6

    add b
    ret nc

    ld [hl], a
    jr c, @+$5a

    add c

jr_032_7964:
    ret nc

    ld [hl], a
    ld b, b
    ld e, b
    add d
    inc c
    ldh [rSB], a
    jr c, jr_032_793e

    ld a, [hl-]
    sbc b
    jr z, jr_032_7972

jr_032_7972:
    jr nz, jr_032_7964

    ld a, [bc]
    nop
    ld bc, $1000

jr_032_7979:
    rst $38
    jp nc, $0109

    ldh [rP1], a
    ld [hl], e
    ret nc

    or d
    ld b, b
    ld l, h
    jr nz, @+$0a

    ldh [rP1], a
    ld [hl], e
    ret nc

    or d
    ld c, e
    ld h, [hl]
    jr nz, @+$0a

    ldh [rP1], a
    ld [hl], e
    ret nc

    or d
    ld d, l
    ld h, c
    jr nz, @+$0a

    ldh [rP1], a
    ld [hl], e
    ret nc

    or d
    ld h, b
    ld e, h
    jr nz, @+$0a

    ldh [rSB], a
    ld [hl], e
    ret nc

jr_032_79a5:
    or d
    ld l, d

jr_032_79a7:
    ld d, a
    jr nz, @+$0a

    ldh [rSB], a

jr_032_79ac:
    ld [hl], e
    ret nc

    or d
    ld [hl], h
    ld d, d

jr_032_79b1:
    jr nz, @+$0a

    ldh [rSB], a
    ld [hl], e

jr_032_79b6:
    ret nc

    or d
    ld a, [hl]
    ld c, l
    jr nz, jr_032_79c4

    ldh [rSB], a
    ld [hl], e
    ret nc

    nop
    adc b
    jr c, jr_032_79c4

jr_032_79c4:
    ld b, $ff
    jp nc, $0715

    pop af
    dec de
    ldh [rNR30], a
    add b
    ret nc

    or h
    ld b, b
    ld e, h
    ld [bc], a
    jr nz, jr_032_79a5

    inc e
    add h
    jr c, jr_032_79e9

    jr @+$01

    pop de
    inc de
    ldh a, [rTMA]
    nop
    ld [bc], a
    nop
    ldh a, [rTIMA]
    nop
    ld [bc], a
    nop
    ldh a, [$29]

jr_032_79e9:
    nop
    nop
    nop
    ret nc

    ld a, l
    ld [$1018], sp
    ret nc

    ld a, l
    ld [$0230], sp
    ret nc

    ld a, l
    ld [$0858], sp
    inc b
    ret nc

    ld a, l
    ld [$0620], sp
    ret nc

    ld a, l
    ld [$0c38], sp
    ret nc

    ld a, l
    ld [$0450], sp
    ret nc

    ld a, l
    ld [$0e68], sp
    ldh [rP1], a
    jr z, @+$12

    db $fd
    inc b
    db $10
    ld a, d
    ret c

    add hl, hl
    rst $38
    jp nc, $0109

    ldh [rSB], a
    ld [hl], e
    ret nc

    ld bc, $3880
    nop
    ldh [rSB], a
    ld [hl], e
    ret nc

    or l
    add b
    ld b, b
    jr z, @-$2e

    or l
    add b
    ld b, b
    ld e, h
    ldh [rSB], a
    ld [hl], e
    ret nc

    or l
    add b
    ld b, b
    db $10
    ret nc

    or l
    add b
    ld b, b
    add sp, -$20
    ld bc, $d073
    or l
    add b
    ld b, b
    sbc h
    ret nc

    or l
    add b
    ld b, b
    ret nc

    ld b, $e0
    ld bc, $d073
    or l
    add b
    ld b, b
    inc e
    ret nc

    or l
    add b
    ld b, b
    ld d, b
    ldh [rSB], a
    ld [hl], e
    ret nc

    or l
    add b
    ld b, b
    call c, $b5d0
    add b
    ld b, b
    sub b
    jr nz, @+$01

    pop de
    inc de
    ldh a, [$0e]
    nop
    nop
    nop
    ldh [rSB], a
    ld d, e
    db $10
    ret nc

    ld a, $84
    ld c, b
    nop
    ld b, $fd
    add hl, bc
    ld [hl], l
    ld a, d
    ld b, b
    ret c

    ld c, $01
    rst $38
    ld hl, sp+$00
    sbc e
    ld a, d
    ldh [rP1], a
    add hl, hl
    ldh a, [$0c]
    nop
    ld bc, $1000
    and $e0
    nop
    add hl, hl
    ldh a, [$0b]
    nop

jr_032_7a98:
    ld bc, $1000
    pop de
    ld bc, $a7fe
    ld a, h
    ldh a, [rNR50]

jr_032_7aa2:
    nop
    ld bc, $0400
    ldh [rSB], a
    or c
    ret nc

    nop
    adc b
    jr nc, jr_032_7aae

jr_032_7aae:
    ld [$b7fe], sp
    ld a, h
    rst $38
    ret nc

    ld [hl], c
    add h
    inc l
    nop
    ret nc

    ld [hl], c
    add h
    inc l
    ld [$71d0], sp
    add h
    inc l
    db $10
    ret nc

    ld [hl], c
    add h
    inc l
    jr jr_032_7a98

    ld [hl], c
    add h
    inc l
    jr nz, @-$2e

    ld [hl], c
    add h
    inc l
    jr z, jr_032_7aa2

    ld [hl], c
    add h
    inc l
    jr nc, @-$2e

    ld [hl], c
    add h
    inc l
    jr c, @+$01

    ldh [rNR30], a
    ld c, a
    ret nc

    ld c, [hl]
    ld c, b
    ld d, h
    nop
    ret nc

    ld c, [hl]
    ld b, b
    ld d, b
    nop
    ret nc

    ld c, [hl]
    ld e, b
    ld c, h
    nop
    ret nc

    ld c, [hl]
    ld d, b
    ld c, b
    nop
    ret nc

    ld c, [hl]
    ld l, b
    ld b, h
    nop
    ret nc

    ld c, [hl]
    ld h, b
    ld b, b
    nop
    ret nc

    ld c, [hl]
    ld a, b
    inc a
    nop
    ret nc

    ld c, [hl]
    ld [hl], b
    jr c, jr_032_7b07

jr_032_7b07:
    ret nc

    ld c, a
    add d
    ld [hl], $00
    ret nc

    ld c, a
    ld a, d
    ld [hl-], a
    nop
    rst $38
    ldh [rP1], a
    inc de
    ret nc

    ld b, h
    inc l
    ld l, h
    nop
    ret nc

    ld b, h
    inc l
    ld h, h
    nop
    ret nc

    ld b, h
    inc l
    ld e, h
    nop
    ret nc

    ld b, h
    inc l
    ld d, h
    nop
    ret nc

    ld b, h
    inc l
    ld c, h
    nop
    ret nc

    ld b, h
    inc l
    ld b, h
    nop
    ret nc

    ld b, h
    inc l
    inc a
    nop
    rst $38
    ldh [rP1], a
    ld e, l
    ret nc

    daa
    ld b, b
    ld e, h
    nop
    inc b
    ldh [rP1], a
    ld e, l
    ret nc

    daa
    ld d, b
    ld d, h
    nop
    inc b
    ldh [rSB], a
    ld e, l
    ret nc

    daa
    ld h, b
    ld c, h
    nop
    inc b
    ldh [rSB], a
    ld e, l
    ret nc

    daa
    ld [hl], b
    ld b, h
    nop
    ret nc

    jr z, jr_032_7bdd

    ld a, $00
    rst $38
    ldh [rP1], a
    ld e, e
    ret nc

    rla
    jr jr_032_7ba9

jr_032_7b69:
    nop
    dec b
    ldh [rP1], a
    ld e, e
    ret nc

    rla
    jr c, jr_032_7bda

    nop
    dec b
    ldh [rP1], a
    ld e, e
    ret nc

    rla
    jr jr_032_7be3

    nop
    dec b
    ldh [rP1], a
    ld e, e
    ret nc

    rla
    jr c, jr_032_7bc4

    nop
    dec b
    ldh [rP1], a
    ld e, e
    ret nc

    rla
    jr z, jr_032_7be1

    nop
    rst $38
    ldh [rSB], a
    ld e, e
    ret nc

    rla
    sub h
    jr nz, jr_032_7b97

jr_032_7b97:
    dec b
    ldh [rSB], a
    ld e, e
    ret nc

    rla
    ld [hl], h
    ld c, b
    nop
    dec b
    ldh [rSB], a
    ld e, e
    ret nc

    rla
    sub h
    ld c, b
    nop

jr_032_7ba9:
    dec b
    ldh [rSB], a
    ld e, e
    ret nc

    rla
    ld [hl], h
    jr nz, jr_032_7bb2

jr_032_7bb2:
    dec b
    ldh [rSB], a
    ld e, e
    ret nc

    rla
    add h
    inc [hl]
    nop
    rst $38
    ret nc

    ld c, e
    ld b, b
    ld c, h
    nop
    ret nc

    ld c, e
    ld b, b

jr_032_7bc4:
    ld e, b
    ld bc, $4bd0
    ld b, b
    ld h, h
    ld [bc], a
    rst $38
    ldh [rSB], a
    ld d, b
    ret nc

    db $10
    adc b
    jr c, jr_032_7be4

    ret nc

    db $10
    adc b
    jr c, jr_032_7b69

    inc b

jr_032_7bda:
    db $fd
    inc b
    rst $08

jr_032_7bdd:
    ld a, e
    rst $38
    ldh [rSB], a

jr_032_7be1:
    ld e, [hl]
    ret nc

jr_032_7be3:
    ld [de], a

jr_032_7be4:
    add b
    ld a, [hl+]
    nop
    ld b, $e0
    ld bc, $d05e
    ld [de], a
    sub b
    ld b, [hl]
    nop
    ld b, $e0
    ld bc, $d05e
    ld [de], a
    ld a, b
    jr c, jr_032_7bf9

jr_032_7bf9:
    ld b, $e0
    ld bc, $d05e
    ld [de], a
    sbc b
    jr c, jr_032_7c02

jr_032_7c02:
    ld b, $e0
    ld bc, $d05e
    ld [de], a
    sub b
    ld a, [hl+]
    nop
    ld b, $e0
    ld bc, $d05e
    ld [de], a
    add b
    ld b, [hl]
    nop
    rst $38
    ldh [rSB], a
    ld a, a
    ret nc

    ld a, [de]
    add h
    ld c, b
    nop
    ld [$01e0], sp
    ld a, a
    ret nc

    ld a, [de]

jr_032_7c23:
    ld [hl], h
    ld c, b
    nop
    ld [$01e0], sp
    ld a, a
    ret nc

    ld a, [de]
    sub h
    ld c, b
    nop
    ld [$05fd], sp
    dec d
    ld a, h
    rst $38
    ldh [rNR30], a
    ld d, c
    ret nc

    add hl, de
    ld b, b
    ld e, h
    db $10
    dec b
    db $fd
    ld [$7c35], sp
    rst $38
    ldh [rP1], a
    ld e, [hl]
    ldh a, [rNR22]
    nop
    ld bc, $0840
    ret nc

    ld d, c
    jr nc, jr_032_7ca4

    nop
    jr nz, jr_032_7c23

    ld d, c
    jr nc, jr_032_7caa

    nop
    ld b, b
    ret c

    rla
    rst $38
    ldh [rNR30], a
    ld b, $d0
    ld e, b
    ld b, b
    ld e, h
    inc b
    inc b
    db $fd
    ld [$7c5b], sp
    jr nz, @+$01

    ldh [rP1], a
    ld l, c
    ret nc

    sbc l
    inc l
    ld b, b
    nop
    dec b
    ret nc

    sbc l
    jr @+$62

    nop
    dec b
    ret nc

    sbc l
    jr c, jr_032_7ce5

    nop
    dec d
    rst $38
    ldh [rP1], a
    ld l, c
    ret nc

    sbc l
    jr @+$42

    nop
    dec b
    ret nc

    sbc l
    jr c, jr_032_7cf5

    nop
    dec b
    ret nc

    sbc l
    jr @+$6a

    nop
    dec b
    ret nc

    sbc l
    jr c, jr_032_7cd9

    nop
    dec b
    ret nc

    sbc l
    jr z, jr_032_7cf3

    nop
    dec b
    db $fd
    ld [bc], a
    add e

jr_032_7ca4:
    ld a, h
    db $10
    rst $38
    reti


    ldh a, [rNR11]

jr_032_7caa:
    nop
    nop
    nop
    ld b, $ff
    jp c, $12f0

    nop
    nop
    nop
    ld b, $ff
    ld bc, $0af0
    nop
    nop
    nop
    dec b
    sub $01
    ld bc, $d9ff
    ldh a, [rNR11]
    nop
    ld bc, $0600
    rst $38
    jp c, $12f0

    nop
    ld bc, $0400
    rst $38
    ld bc, $0af0
    nop
    ld bc, $0400

jr_032_7cd9:
    sub $01
    ld bc, $cdff
    push hl
    ld a, h
    ldh a, [$e6]
    and a
    ret nz

    ret


jr_032_7ce5:
    ldh a, [$e6]
    and a
    jr nz, jr_032_7d06

    ld a, [$d841]
    and $03
    cp $03
    ld a, $00

jr_032_7cf3:
    jr z, jr_032_7cf7

jr_032_7cf5:
    ld a, $aa

jr_032_7cf7:
    call $0c9f
    ld c, $04
    call $0468
    ld a, $23
    ld hl, $4070
    rst $08
    ret


jr_032_7d06:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld c, $20

jr_032_7d12:
    ld a, $bc
    ld [hl+], a
    ld a, $7e
    ld [hl+], a
    dec c
    jr nz, jr_032_7d12

    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ld c, $04
    call $0468
    ld a, $23
    ld hl, $4070
    rst $08
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
    ld a, [hl]
    nop
    jr jr_032_7d3e

jr_032_7d3e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call $cd00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld sp, hl
    nop
    add c
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$f0], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    nop
    nop
    ret nz

    nop
    rst $20
    ret nz

    rst $28
    rst $00
    rst $08
    rlca
    rrca
    rlca
    rst $08
    rlca
    rst $28
    rst $00
    nop
    nop
    nop
    nop
    inc bc
    nop
    add a
    inc bc
    rst $00
    add e
    rst $20
    jp $e3f7


    rst $38
    ld [hl], e
    nop
    nop
    rrca
    nop
    sbc a
    rrca
    rst $18
    adc a
    rst $18
    adc [hl]
    rst $18
    adc [hl]
    rst $18
    adc [hl]
    rst $18
    adc [hl]
    nop
    nop
    ret nz

    nop
    ldh a, [$c0]
    ld hl, sp-$10
    db $fc
    ld a, b
    ld a, h
    jr c, jr_032_7de9

    inc e
    ld a, $1c
    jr jr_032_7db0

jr_032_7db0:
    jr jr_032_7db2

jr_032_7db2:
    jr jr_032_7db4

jr_032_7db4:
    jr jr_032_7db6

jr_032_7db6:
    jr jr_032_7db8

jr_032_7db8:
    nop
    nop
    nop
    nop
    nop
    nop
    call $fd00
    nop
    call $cd00
    nop
    call RST_00
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    ld sp, hl
    nop
    add c
    nop
    add c
    nop
    ld sp, hl
    nop
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [$f0], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38

jr_032_7de9:
    rst $38
    rst $38
    nop
    nop
    nop
    rst $28
    rst $00
    rst $08
    rlca
    rrca
    rlca
    rst $08
    rlca
    rst $28
    rst $00
    rst $20
    ret nz

    ret nz

    nop
    nop
    nop
    rst $38
    dec sp
    cp a
    rra
    sbc a
    rrca
    adc a
    rlca
    add a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $18
    adc [hl]
    rst $18
    adc [hl]
    rst $18
    adc [hl]
    rst $18
    adc [hl]
    rst $18
    adc a
    sbc a
    rrca
    rrca
    nop
    nop
    nop
    ld a, $1c
    ld a, $1c
    ld a, h
    jr c, @-$02

    ld a, b
    ld hl, sp-$10
    ldh a, [$c0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
