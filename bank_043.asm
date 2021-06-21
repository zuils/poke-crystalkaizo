; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $043", ROMX[$4000], BANK[$43]

    call $31f3
    call $0fc8
    call $0568
    xor a
    ldh [$d4], a
    ld hl, $cf63
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $40b1
    ld de, $9000
    ld bc, $0800
    call $3026
    ld hl, $48b1
    ld de, $8800
    ld bc, $0800
    call $3026
    ld hl, $5ab1
    ld de, $8000
    ld bc, $0800
    call $3026
    ld hl, $50b1
    ld de, $9800
    ld bc, $0400

jr_043_4040:
    ld a, $00
    ldh [rVBK], a
    ld a, [hl+]
    ld [de], a
    ld a, $01
    ldh [rVBK], a
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_043_4040

    ld hl, $6cb1
    ld de, $c400
    ld bc, $00a0
    call $3026
    call $058a
    ldh a, [rLCDC]
    set 1, a
    set 2, a
    ldh [rLCDC], a
    call $045a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $58b1
    ld de, $d000
    ld bc, $0040
    call $3026
    ld hl, $6ab1
    ld de, $d040
    ld bc, $0040
    call $3026
    ld hl, $58b1
    ld de, $d080
    ld bc, $0040
    call $3026
    ld hl, $6ab1
    ld de, $d0c0
    ld bc, $0040
    call $3026
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ld de, $0001
    call $3b97
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

jr_043_40bc:
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $1b
    inc e
    ld l, $31
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    jr nz, jr_043_40bc

    sub b
    ldh a, [rOBP0]
    ld hl, sp-$5c
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rla
    jr jr_043_411a

    inc sp
    ret c

    rst $20
    ld e, l
    ld h, d
    cp e
    call nz, $9867
    rst $08
    jr nc, @-$5f

jr_043_40fa:
    ld h, b
    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    db $fc
    ld d, d
    cp $a9
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld_long a, $ffff
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_043_40fa

jr_043_411a:
    db $10
    ldh a, [$88]
    ld hl, sp+$44
    db $fc
    ld [c], a
    rrca
    add hl, bc
    dec bc
    ld b, $0c
    inc b
    inc c
    inc b
    dec bc
    ld b, $0f
    add hl, bc
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    inc b
    nop
    dec b
    ld bc, $0205
    ld b, $03
    dec b
    ld bc, $0000
    nop
    nop
    add [hl]
    add d
    add e
    dec b
    add c
    ld [bc], a
    add e
    add d
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    pop bc
    add b
    add d
    ld b, c
    inc bc
    add d
    add c
    add c
    inc bc
    ld bc, $0203
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0302
    dec b
    ld b, $0b
    inc c
    ld [hl], $39
    ld e, h
    ld h, e
    cp b
    rst $00
    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    ld [c], a
    dec e
    pop bc
    ld a, $82
    ld a, l
    dec b
    ld a, [$dd22]
    ld b, l
    cp d
    ld [bc], a
    db $fd
    ld d, a
    xor b
    xor e
    ld d, h
    dec d
    ld [$fd02], a
    ld bc, $88fe
    ld [hl], a
    ld d, l
    xor d
    xor b
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_043_41a8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f1
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_043_41a8

    db $10
    ldh a, [rOBP0]
    ld hl, sp-$5c
    db $fc
    db $d3
    rst $38
    add sp, $00
    nop
    nop
    nop
    nop
    nop
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
    pop hl
    ld hl, $c161
    add c
    ld bc, $81c1
    and c
    pop bc
    pop hl
    ld hl, $0000
    nop
    nop
    add l
    ld b, $83
    dec b
    add h
    ld [bc], a
    add h
    ld [bc], a
    add e
    dec b
    add l
    ld b, $00
    nop
    nop
    nop
    and c
    ld h, b
    pop bc
    and b
    ld hl, $2140
    ld b, b
    pop bc
    and b
    and b
    ld h, c
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    add b
    ret nc

    ld b, b
    ldh a, [$a0]
    ld [hl], b
    ld b, b
    jr nc, jr_043_423d

    nop
    nop
    nop
    nop
    nop
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
    nop
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

jr_043_423d:
    rst $38
    ld bc, $7eff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $fd
    add l
    rst $38
    ld a, d
    rst $38
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
    cp $fe
    ld a, [$fa06]
    cp $03
    ld [bc], a
    rrca
    inc c
    rla
    jr @+$30

    ld sp, $233c
    jr jr_043_42a4

    inc l
    dec sp
    rla
    ld a, $e0
    rra
    ret nz

    ccf
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
    cp d
    nop
    ld d, l
    nop
    xor d
    nop
    rst $10
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    xor a
    nop
    ld e, [hl]
    ld bc, $03fd
    or $0f
    db $ed
    rra
    jp c, Jump_043_7f3f

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_043_42a4:
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_043_42b6:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    db $f4
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld b, b
    ret nz

    jr nz, jr_043_42b6

    db $10
    ldh a, [$88]
    ld hl, sp+$54
    ld hl, sp-$5c
    ld hl, sp-$2c
    ld hl, sp+$24
    nop
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
    db $fd
    ei
    rlca
    db $fd
    ei
    nop
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
    db $fc
    ei
    add a
    ei
    ld a, h
    nop
    nop
    nop
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
    db $fc
    ld a, [$0006]
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $3f3f
    ccf
    jr nz, jr_043_436f

    cpl
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $7f
    cp $7f
    rst $38
    rst $38
    rst $38
    cp $df
    xor $ff
    adc $ff
    cp $fc
    rst $38
    ei
    ld a, l
    ld h, e
    sbc l
    rst $30
    ei
    ld a, [$fafe]
    cp $fa
    cp $fb
    rst $38
    ei
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    ccf
    rla
    ccf
    rrca
    rra
    rla
    rra
    rrca
    rra
    rla
    rra
    rrca
    rra

jr_043_436f:
    rla
    rra
    ret nz

    cp a
    ldh a, [$ef]
    db $fc
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $01
    ld [$1007], sp
    rrca
    ld h, l
    rra
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld [$7dff], a
    rst $38
    cp $01
    db $ec
    inc de
    ld d, b
    xor [hl]
    and b
    ld e, h
    ld b, b
    or b
    add b
    ld h, b
    nop
    add b
    nop
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ld h, b
    rlca
    jr c, @+$05

    inc c
    ld bc, $0006
    ld bc, $0000
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec d
    ld a, a
    xor d
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

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
    ld hl, sp+$14
    ld hl, sp+$24
    ld hl, sp+$14
    ld hl, sp+$20
    ld hl, sp+$10
    ld hl, sp+$20
    ldh a, [$58]
    ldh a, [$28]
    cp $fd
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $f9
    cp $fb
    db $fd
    ei
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    ld a, [$f4fe]
    db $fc
    db $fd
    ei
    cp $fd
    cp $ff
    cp $ff
    ld a, $ff
    cp $bf
    cp $bf
    cp $bf
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ccf
    cpl
    ccf
    cpl
    ccf
    cpl
    ccf
    cpl
    ccf
    cpl
    jr nz, jr_043_446c

    ccf
    ccf
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $00
    ei
    rst $28
    rst $30
    adc a
    rst $30
    rst $18
    rst $28
    cp a
    rst $18
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $18
    rst $28
    cp a
    rst $28
    cp a
    rst $28
    ld a, a
    rst $28
    dec bc
    rra
    rla
    rra
    dec bc
    rrca
    rlca
    rrca
    inc bc
    rrca
    rlca

jr_043_446c:
    rrca
    inc bc
    rrca
    rlca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $80
    ld a, [hl]
    nop
    cp $80
    ld a, [hl]
    nop
    cp $80
    ld a, [hl]
    nop
    cp $80
    ld a, [hl]
    ld l, d
    ld a, a
    ld d, l
    ld a, a
    ld l, d
    ld a, a
    ld d, l
    ld a, a
    ld l, d
    ld a, a
    ld d, l
    ld a, a
    ld a, [hl+]
    ld a, l
    ld d, l
    ld a, e
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
    ldh a, [rOBP0]
    ldh a, [$28]
    ldh a, [rOBP0]
    ldh a, [rNR41]
    ldh a, [rLCDC]
    ldh a, [rNR41]
    ldh a, [rLCDC]
    ldh [$b0], a
    ei
    db $fd
    rst $30
    ei
    rst $30
    ei
    rst $28
    rst $30
    rst $28
    rst $30
    rst $18
    rst $28
    rst $18
    rst $30
    cp a
    ei
    db $f4
    db $fc
    jp hl


    ld sp, hl
    jp hl


    ld sp, hl
    db $fd
    db $f4
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $18
    rst $38
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    rst $38
    db $fd
    cp $fb
    db $fd
    ei
    db $fd
    ei
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    or $0e
    ld a, [$fdfe]
    rst $38
    ld a, [$07fe]
    rlca
    rrca
    add hl, bc
    rra
    ld d, $1f
    rla
    ccf
    cpl
    ccf
    cpl
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ef
    db $fd
    sub a
    ld a, [$f46e]
    db $ec
    db $fc
    db $f4
    ld hl, sp-$0c
    cp $fa
    cp $fa
    cp a
    xor a
    ccf
    cpl
    ccf
    cpl
    ccf
    cpl
    ccf
    cpl
    cpl
    ccf
    ld l, a
    ld a, a
    ld e, a
    ld a, a
    inc bc
    rrca
    rlca
    rrca
    inc bc
    rrca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0307
    rlca
    ld bc, $0007
    cp $80
    ld a, [hl]
    nop
    cp $80
    ld a, [hl]
    nop
    cp $80
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, a
    inc hl
    ld a, l
    ld b, a
    ld a, c
    dec bc
    ld [hl], l
    ld b, a
    ld a, c
    rrca
    ld [hl], c
    ld b, a
    ld a, c
    rrca
    ld [hl], c
    add l
    ei
    ldh [$50], a
    ldh [$90], a
    ldh [$50], a
    ldh [$90], a
    ldh [rLCDC], a
    ldh [$80], a
    ldh [rLCDC], a
    ldh [$80], a
    and l
    rst $20
    jp nc, $d1f3

    pop af
    add sp, -$08
    add sp, -$50
    db $f4
    ld e, h
    db $f4
    xor b
    ld a, [$af54]
    rst $38
    ld d, a
    rst $18
    adc e
    add a
    inc de
    ld c, $17
    dec c

jr_043_459b:
    daa
    ld a, [de]
    cpl
    inc d
    ld c, a
    jr c, jr_043_459b

    rst $30
    push af
    ld [$5ff4], a
    rst $30
    xor d
    add sp, $50
    add sp, $10
    ret nc

    jr nz, @-$2e

    jr nz, @-$01

    ld e, a
    ld a, [$04ae]
    db $fc
    db $fc
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld e, l
    ld a, a
    dec l
    ccf
    inc de
    rra
    rst $38
    cp $7e
    push af
    ld a, [hl]
    xor e
    ld a, [hl]
    push de
    ld a, [hl]
    xor c
    ld a, [hl]
    pop bc
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    db $fd
    rst $38
    db $fd
    ld a, [hl]
    cp $ab
    ld a, [hl]
    push de
    ld a, [hl]
    adc c
    cp l
    ld b, d
    cp d
    ld b, h
    call nc, Call_043_5f28
    ld a, a
    cp a
    cp $be
    ld d, l
    ld a, [hl]
    xor e
    db $fd
    ld d, d
    ld a, l
    add d
    cp d
    ld b, h
    ld d, h
    jr z, @+$05

    rlca
    ld bc, $0107
    rlca
    ld bc, $0103
    inc bc
    ld bc, $0003
    inc bc
    ld bc, $8003

jr_043_4612:
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    adc l
    di

jr_043_4623:
    sub l
    db $eb
    adc l
    di
    sbc l
    db $e3
    xor l
    db $d3
    sbc l
    db $e3
    xor a
    db $d3
    ld e, a
    and e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    ret nz

    ld h, b
    ret nz

    and b
    ret nz

    jr nz, @-$3e

    and b
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ld a, [$7d04]
    add d
    ld a, e
    add h
    or [hl]
    ld c, c
    xor c
    ld d, b
    ld d, b
    jr nz, jr_043_467e

    nop
    nop
    nop
    rst $18
    jr nz, jr_043_4623

    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, [hl]
    add c
    xor l
    ld d, d
    ld e, d
    inc h
    inc h
    jr jr_043_4612

    ld b, b
    and b
    ld b, b
    ld b, b
    add b
    ld b, b
    add b
    add b
    ld c, $00
    inc b
    nop

jr_043_467e:
    inc b
    nop
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
    adc b
    nop
    ret c

    ld d, b
    xor b
    nop
    xor b
    dec c
    nop
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
    xor b
    db $10
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
    jr z, jr_043_46d3

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
    nop
    nop
    nop
    nop
    inc bc

jr_043_46d3:
    ld bc, $0003
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    cp l
    ld a, a
    cp d
    ld a, a
    sub l
    ld a, a
    nop
    nop
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
    add b
    nop
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
    ld bc, $0100
    nop
    ld bc, $c33f
    ld e, a
    and e
    ccf
    jp $a35f


    ccf
    jp $877b


    ld a, e
    add a
    ld a, e
    add a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $02ff
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    jr jr_043_4753

jr_043_4753:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add d
    ld c, d
    inc l
    ld b, [hl]
    inc h
    ld c, h
    ld a, [hl+]
    ld a, d
    ld b, $50
    or b
    nop
    nop
    nop
    nop
    ld e, d
    ld h, [hl]
    cp l
    db $db
    ld h, [hl]
    and l
    ld h, [hl]
    and l
    cp l
    db $db
    ld e, d
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld c, $12
    ld [de], a
    inc h
    ld [hl+], a
    ld b, d
    ld hl, $1640
    dec h
    ld c, $12
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
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
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add d
    ld a, l
    dec b
    ld a, [$f40b]
    rla
    add sp, $55
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    push bc

jr_043_47ca:
    ccf
    ld a, [c]
    rrca
    db $dd
    inc bc
    xor e
    nop
    nop
    add b
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_043_47ca

    adc b
    ld hl, sp+$46
    cp $b1
    rst $38
    ld a, [hl]
    ld bc, $0101
    ld bc, $0303
    rrca
    ld c, $1e
    dec e
    ld [hl], l
    ld a, d
    add sp, -$09
    add d
    db $fd
    dec sp
    rst $00
    ld a, e
    add a
    dec sp
    rlca
    adc a
    rlca
    ld b, a
    rlca
    sub a
    rrca
    ld b, e
    ccf
    ld bc, $ffff
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $82ff
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$48

    jr c, jr_043_483f

    jr c, jr_043_4827

jr_043_4827:
    jr nc, jr_043_4841

    jr nc, jr_043_483d

    inc a
    ld b, d
    nop
    nop
    nop
    nop
    ld a, b
    add h
    ld c, h
    ld a, [hl+]
    ld h, [hl]
    inc h
    ld e, d
    inc a
    ld a, h
    nop
    ld c, d
    xor h

jr_043_483d:
    nop
    nop

jr_043_483f:
    nop
    nop

jr_043_4841:
    ld [hl], b
    ld c, b
    ld l, b
    nop
    ld a, b
    ld c, b
    cp h
    ld h, h
    call z, $f854
    adc b
    nop
    nop
    nop
    nop
    jp c, $35f5

    ld l, d
    ld l, e
    ld d, h
    ccf
    ld b, b
    ld e, a
    ld h, b
    cpl
    jr nc, @+$0d

    inc c
    dec b
    ld b, $aa
    ld d, l
    ld d, h
    xor e
    add sp, $17
    call nc, $e82b
    rla
    ret nc

    cpl
    and b
    ld e, a
    ret nc

    cpl
    ccf
    rst $38
    rrca
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
    dec bc
    rst $30
    cpl
    rst $18
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, h
    rst $38
    and d
    cp $d5
    cp $e9
    db $fc
    ld a, [c]
    ldh a, [$ec]
    ldh [$d8], a
    ret nz

    jr nc, jr_043_48a2

jr_043_48a2:
    nop
    nop

jr_043_48a4:
    nop
    nop
    nop
    nop
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

jr_043_48b2:
    add b
    ldh [$e0], a
    ld a, h
    db $fc
    sbc a
    ld a, a
    ld h, e
    sbc a
    jr jr_043_48a4

    rst $00
    ld hl, sp+$70
    ld a, a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp-$08
    rra
    rst $38
    rst $00
    ccf
    jr nz, jr_043_48b2

    and b
    rst $38
    jr nc, jr_043_4916

    jr jr_043_48f8

    ld b, $07
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

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
    add b
    rst $38
    ldh [rIE], a
    ld a, b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_043_48f8:
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ld e, $fe
    rst $38
    cp $ff
    ld hl, sp-$04
    ld a, [c]
    ld hl, sp-$20
    ldh [$90], a
    ret nz

    nop
    nop
    add b
    ld bc, $0002
    ret nz

    nop
    add b
    nop

jr_043_4916:
    nop
    nop
    nop
    inc bc
    ld bc, $170f
    ld a, a
    xor e
    rst $38
    ld d, a
    ld bc, $0702
    dec bc
    ccf
    rrca
    rst $38
    ccf
    rst $38
    cp $ff
    ld hl, sp-$02
    pop hl
    ld hl, sp-$7a
    add b
    ld b, b
    ret nz

    and b
    ret nz

    ldh [$c0], a
    and b
    add b
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    ld a, $3f
    add hl, bc
    rrca
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
    add hl, sp
    rst $00
    rst $00
    ld hl, sp+$38
    rst $38
    rst $20
    rst $38
    ld a, c
    ld a, a
    rra
    rra
    rlca
    rlca
    ld bc, $9801
    ld hl, sp+$76
    cp $dd
    ccf
    dec de
    rst $20
    ld [c], a
    db $fd
    jr c, @+$01

    rst $20
    rst $38
    rst $38
    rst $38
    ld bc, $001e
    rrca
    nop
    jp $3bc0


    ld a, [de]
    push hl
    push hl
    ld a, [de]
    ld a, a
    add b
    rrca
    ldh a, [$f8]
    add b
    ldh a, [rP1]
    jp $df00


    nop
    rst $38
    ld [bc], a
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    inc d
    rrca
    nop
    ld a, a
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor b
    db $fc
    ld b, e
    di
    adc h
    call z, $ff33
    xor d
    cp $51
    ei
    and h
    db $ec
    inc de
    jr nc, @-$32

    ret nz

    jr nc, jr_043_49ae

jr_043_49ae:
    ret nz

    nop
    nop
    and b
    ld e, b
    ret nz

    jr nz, jr_043_49b6

jr_043_49b6:
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
    ld a, a
    ld c, l
    dec e
    ld [de], a
    ld b, $05
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $fd
    rst $38
    xor d
    ld a, a
    sub l
    rrca
    ld a, [c]
    ld b, c
    ld a, $10
    rrca
    nop
    rlca
    nop
    inc bc
    rst $38
    nop
    cp $01
    ld sp, hl
    ld b, $e6
    add hl, de
    sbc b
    ld h, [hl]
    ld h, b
    sbc b
    nop
    ldh a, [rP1]
    ret nz

    or b
    ld c, [hl]
    ld b, b
    cp b
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    ldh [$a0], a
    ld [hl], b
    ld d, b
    jr jr_043_4a41

    db $fc
    call nz, $02fe
    cp $9e
    ld h, b
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
    jr z, jr_043_4a67

    db $10
    jr z, jr_043_4a36

    ld b, $0e
    ld a, [bc]
    inc e

jr_043_4a36:
    inc d
    jr nc, jr_043_4a61

    ld a, [hl]
    ld b, [hl]
    cp $80
    cp $f2
    inc c
    inc d

jr_043_4a41:
    jr c, jr_043_4a6b

    inc e
    inc d
    ld [$000c], sp
    ld bc, $0201
    rlca
    inc b
    dec bc
    inc c
    ld c, $09
    db $10
    jr z, jr_043_4ad0

    ld b, h
    cp d
    add $ee
    ld de, $7cbb
    ld b, l
    add $83
    add d
    sub d
    xor e

jr_043_4a61:
    jr c, jr_043_4a8b

    ld [hl], b
    ld d, b
    jr nz, jr_043_4ac7

jr_043_4a67:
    nop
    nop
    nop
    add b

jr_043_4a6b:
    ret nz

    ld b, b
    and b
    ld h, b

jr_043_4a6f:
    ldh [rNR41], a
    ld c, $09
    dec bc
    inc c
    rlca
    inc b
    ld bc, $0002
    ld bc, $0101
    ld bc, $0001
    ld bc, $0138
    sub e
    xor d
    ld bc, $ab82
    ld l, h
    xor $11

jr_043_4a8b:
    ld a, l
    add e
    rst $10
    add hl, sp
    xor $29
    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld bc, $0702
    inc b
    ld [bc], a
    dec b
    dec b
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rst $10
    jr c, jr_043_4a6f

    ld b, h
    ld l, l
    cp $82
    add e
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    add b
    ret nz

    ld b, b

jr_043_4ac7:
    add b
    ld b, b
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop

jr_043_4ad0:
    nop
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    rlca
    ld b, $02
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
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
    nop
    nop
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
    nop
    inc b
    nop
    dec b
    ld bc, $0106
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld [$0905], sp
    dec b
    ld a, [bc]
    dec b
    dec bc
    nop
    inc c
    nop
    dec c
    nop
    ld c, $00
    rrca
    ld bc, $0110
    ld de, $1201
    ld bc, $0513
    inc d
    dec b
    dec d
    dec b
    ld d, $05
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    inc b
    jr jr_043_517d

    add hl, de
    inc b
    ld a, [de]
    inc b

jr_043_517d:
    dec de
    nop
    inc e
    nop
    dec e
    ld [bc], a
    ld e, $02
    rra
    rlca
    jr nz, jr_043_5190

    ld hl, $2201
    ld bc, $0423
    inc h

jr_043_5190:
    inc b
    dec h
    inc b
    ld h, $04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    inc b
    jr z, jr_043_51bd

    add hl, hl
    inc b
    ld a, [hl+]
    inc b

jr_043_51bd:
    dec hl
    nop
    inc l
    nop
    dec l
    inc bc
    ld l, $01
    cpl
    ld bc, $0130
    ld sp, $3201
    ld bc, $0433
    inc [hl]
    inc b
    dec [hl]
    inc b
    ld [hl], $04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    jr c, jr_043_51fd

    add hl, sp
    inc b
    ld a, [hl-]
    inc b

jr_043_51fd:
    dec sp
    nop
    inc a
    nop
    dec a
    ld bc, $0000
    nop
    nop
    ld a, $07
    ccf
    ld bc, $0140
    ld b, c
    inc b
    ld b, d
    inc b
    ld b, e
    inc b
    ld b, h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    inc b
    ld b, [hl]
    inc b
    ld b, a
    inc b
    ld c, b
    inc b
    ld c, c
    nop
    inc a
    nop
    ld c, d
    ld bc, $0000
    nop
    nop
    ld c, e
    rlca
    ccf
    ld bc, HeaderMaskROMVersion
    ld c, l
    ld b, $4e
    ld b, $4f
    ld b, $50
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc b
    ld d, d
    ld b, $53
    ld b, $54
    ld b, $55
    nop
    inc a
    nop
    ld d, [hl]
    ld bc, $0000
    nop
    nop
    ld d, a
    rlca
    ld e, b
    ld bc, $0159
    ld e, d
    ld b, $5b
    ld b, $5c
    ld b, $5d
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld b, $5f
    ld b, $60
    ld b, $61
    ld b, $62
    nop
    ld h, e
    nop
    ld h, h
    inc bc
    ld h, l
    ld bc, $0166
    ld h, a
    rlca
    ld l, b
    ld bc, $0169
    ld h, $04
    ld l, d
    ld b, $26
    inc b
    ld h, $04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    nop
    ld l, h
    dec b
    ld l, l
    dec b
    ld l, [hl]
    dec b
    ld l, a
    nop
    ld [hl], b
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], d
    ld bc, $0073
    ld [hl], h
    ld [bc], a
    ld [hl], l
    ld bc, $0176
    ld [hl], a
    dec b
    ld a, b
    dec b
    ld a, c
    dec b
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, l
    nop
    rrca
    ld bc, $017e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    nop
    add b
    nop
    add c
    nop
    add d
    nop
    add e
    nop
    add h
    rlca
    add l
    ld bc, $0186
    add a
    ld bc, $0188
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    nop
    adc d
    nop
    adc e
    nop
    adc h
    rlca
    adc l
    ld bc, $018e
    adc a
    ld bc, $0190
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    ld bc, $0192
    sub e
    ld bc, $0194
    sub l
    ld bc, $0000
    nop
    nop
    nop
    nop
    sub [hl]
    dec b
    sub a
    dec b
    sbc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    dec b
    sbc d
    dec b
    sbc e
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc h
    dec b
    sbc l
    dec b
    sbc [hl]
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    dec b
    and b
    dec b
    and c
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_043_5504:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld [hl], c
    db $76
    ld [hl], c
    inc de
    ld l, c
    nop
    nop
    pop af
    ld e, b
    db $ed
    ld b, b
    inc de
    ld l, c
    ld sp, hl
    ld [hl], c
    db $76
    ld [hl], c
    inc de
    ld l, c
    pop af
    ld e, b
    db $76
    ld [hl], c
    inc de
    ld l, c
    pop af
    ld e, b
    db $ed
    ld b, b
    nop
    nop
    rst $38
    ld a, a
    db $10
    ld h, d
    and d
    ld d, l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    adc h
    ld sp, $0000
    ld h, c
    ld e, l
    db $10
    ld h, d
    and d
    ld d, l
    nop
    nop
    ld d, [hl]
    ld a, l
    inc de
    ld l, c
    pop af
    ld e, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    sub h
    ld d, b
    db $10
    ld b, c
    jr jr_043_5961

    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_043_5961:
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    ld b, h
    pop bc
    add c
    add c
    add c
    pop bc
    ld b, c
    ld b, c
    add c
    pop bc
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR10]
    ret nz

    ld b, c
    pop bc
    ld b, b
    pop bc
    ld b, d
    jp $c441


    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    ld b, b
    pop bc
    add b
    ld b, c
    and b
    ld h, c
    ld b, b
    ld de, $0030
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nc

    jr nc, jr_043_5b2e

jr_043_5b2e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0a0e], sp
    ld [bc], a

jr_043_5b46:
    inc b
    ld b, $05
    ld bc, $0302
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    jr nz, jr_043_5b46

    and b
    add e
    ld b, b
    jp $0241


    add b
    add e
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
    nop
    nop
    nop
    nop
    jp $0240


    nop
    jp nz, $c240

    pop bc
    inc bc
    ld bc, $40c2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    ld b, c
    ld b, c
    nop
    ld b, c
    ld bc, $40c0
    ld b, c
    add b
    ret nz

    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    cp $02
    rst $38
    db $fd
    db $f4
    ld a, [$fefa]
    nop
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
    rra
    db $10
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    add sp, $18
    add sp, -$08
    add sp, -$08
    add sp, -$08
    add sp, -$08
    add sp, -$08
    add sp, -$08
    add sp, -$08
    add sp, -$08
    add sp, -$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld b, c
    ld a, a
    ld a, a
    ld a, l
    rlca
    dec b
    nop
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
    cp $01
    rst $38
    cp $ff
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    db $f4
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
    cp a
    cp a
    ld a, a
    ret nz

    cp a
    ld e, a
    ld a, a
    sbc a
    cp a
    ld e, a
    ld a, a
    sbc a
    cp a
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    ld b, b
    ld a, a
    nop
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
    di
    ld a, [c]
    rst $38
    ld c, $ff
    ld a, [c]
    rst $20
    cp $fd
    ld a, [$fee3]
    db $fd
    ld_long a, $ffe6
    rst $30
    ei
    inc c
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
    rst $38
    rst $38
    rst $38
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
    ld bc, $ffff
    db $fd
    rlca
    dec b
    db $ec
    db $f4
    cp $fa
    db $fc
    db $f4
    adc b
    ld hl, sp-$41
    rst $38
    cp a
    call z, $b7fb
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    add h
    ei
    cp a
    cp $a7
    push hl
    xor a
    db $eb
    ld e, a
    rst $10
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    sbc a
    sub a
    rst $18
    rst $10
    rst $38
    ld [hl], a
    cp a
    rst $30
    cp a
    rst $30
    cp a
    rst $30
    cp a
    rst $10
    ld a, a
    and a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    add sp, -$08
    add sp, -$08
    rst $28
    rst $38
    rst $28
    ldh a, [rIE]
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh [rIE], a
    rst $28
    rst $38
    add sp, -$08
    add sp, -$08
    add sp, -$08
    rlca
    dec b
    ld a, a
    ld a, l
    rst $38
    pop bc
    rst $38
    rst $18
    ld a, a
    sbc a
    cp a
    ld e, a
    rst $38
    sbc a
    cp a
    ld e, a
    cp a
    rst $18
    ld bc, $3dff
    rst $38
    push hl
    rst $20
    add l
    add a
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    db $f4
    db $fc
    rst $30
    rst $38
    rst $30
    ld hl, sp-$01
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    rst $30
    rst $38
    db $f4
    db $fc
    db $f4
    db $fc
    db $f4
    db $fc
    db $f4
    db $fc
    or $fe
    ld a, a
    ld a, a
    add b
    add b
    ret nz

    ret nz

    ldh [rNR41], a
    ld b, b
    ret nz

    ldh [rNR41], a
    ld b, b
    ret nz

    ldh [rNR41], a
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rrca
    dec bc
    rla
    rra
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld c, $0a
    rra
    dec d
    rra
    ld c, $3f
    dec l
    ld a, a
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fd
    cp $ff
    db $fd
    rlca
    dec b
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rra
    rla
    sbc a
    sub a
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    ld e, a
    cp a
    rst $18
    rst $38
    cp a
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld l, a
    rst $18
    ld d, a
    xor d
    rst $28
    dec d
    or l
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    ld e, a
    rst $10
    xor l
    or a
    ld c, d
    ld d, a
    adc l
    sub a
    ld [$0817], sp
    rla
    ld [$0817], sp
    db $10
    rrca
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
    add sp, -$10
    add sp, $50
    add sp, -$50
    add sp, $50
    add sp, -$70
    add sp, $10
    add sp, $10
    add sp, $10
    ld [$f8f0], sp
    nop
    nop
    nop
    nop
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
    ld [bc], a
    dec b
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0102
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
    di
    db $ec
    db $fc
    ld d, a
    rst $38
    xor b
    cp $41
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    inc a

jr_043_5e40:
    jp Jump_043_7c83


    ld a, h
    nop
    nop
    nop
    nop
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
    dec sp
    cp a
    ld d, l
    ld e, a
    xor d
    rst $18
    jr nc, jr_043_5e89

    ret nc

    rst $10
    ld [$8857], sp
    adc d
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    rst $38
    di
    ld e, a
    rst $30
    xor d
    rst $28
    ld d, l

jr_043_5e79:
    db $db
    inc h
    and a
    ld e, b
    ld d, [hl]
    adc c
    sbc c
    ld b, $0c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop

jr_043_5e89:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$f9ed]
    ld d, h
    push af
    xor b
    ldh a, [$08]
    add sp, $10
    ret nc

    jr nz, @-$3e

    jr nz, jr_043_5e40

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld c, l
    ld [hl], $12
    inc a
    inc b
    inc [hl]
    jr @+$3c

    inc e
    ld [hl], $4d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$48

    jr c, jr_043_5eef

    jr c, jr_043_5ed7

jr_043_5ed7:
    jr nc, jr_043_5ef1

    jr nc, jr_043_5eed

    inc a
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_043_5eed:
    nop
    nop

jr_043_5eef:
    nop
    nop

jr_043_5ef1:
    ld a, b
    add h
    jr nc, jr_043_5e79

    jr nc, jr_043_5ef7

jr_043_5ef7:
    jr nc, jr_043_5ef9

jr_043_5ef9:
    jr nc, jr_043_5efb

jr_043_5efb:
    jr nc, jr_043_5f45

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld d, d
    inc sp
    nop
    dec l
    ld [de], a
    ld hl, $2d0c
    inc c
    ld hl, $0052
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_043_5f28:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $99
    cpl
    ld [hl], $19
    add hl, hl
    add hl, de
    add hl, hl
    cpl
    ld [hl], $16
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_043_5f45:
    nop
    nop
    nop
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
    sub c
    ld c, h
    ret nz

    adc d
    ld b, h
    adc l
    ld b, [hl]
    ld c, d
    jp $9589


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    ld c, c
    adc l
    nop
    adc a
    add hl, bc
    sub a
    inc c
    sbc c
    ld a, [bc]
    sbc a
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $21
    inc c
    ld hl, $000c
    adc h
    add b
    adc h
    add b
    inc c
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    db $10
    ld h, d
    and d
    ld d, l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    adc h
    ld sp, $0000
    ld h, c
    ld e, l
    db $10
    ld h, d
    and d
    ld d, l
    nop
    nop
    rst $18
    ld [bc], a
    ld a, a
    inc bc
    rst $38
    inc bc
    nop
    nop
    rst $38
    ld a, a
    db $10
    ld h, d
    and d
    ld d, l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    adc h
    ld sp, $0000
    ld h, c
    ld e, l
    db $10
    ld h, d
    and d
    ld d, l
    ldh a, [$03]
    or $03
    ei
    inc bc
    rst $38
    inc bc
    rra
    ld c, b
    rst $38
    ld a, a
    db $10
    ld h, d
    and d
    ld d, l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    adc h
    ld sp, $0000
    ld h, c
    ld e, l
    db $10
    ld h, d
    and d
    ld d, l
    ldh a, [$03]
    or $03
    ei
    inc bc
    rst $38
    inc bc
    ld e, b
    ld a, [hl]
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rla
    rst $38
    inc hl
    rst $38
    dec hl
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    ld b, e
    rst $38
    ld c, e
    rst $38
    ld d, e
    rst $38
    ld e, e
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    ret c

    jr jr_043_6b55

    inc b
    ld h, e
    inc c
    and l
    inc d
    ld [$4a21], sp
    add hl, hl
    adc h
    ld sp, $39ce
    db $10
    ld b, d
    ld d, d
    ld c, d
    sub h
    ld d, d
    sub $5a
    add hl, sp
    ld h, a
    ld a, e
    ld l, a
    cp l
    ld [hl], a
    rst $38
    ld a, a
    ld [de], a
    ld c, e
    cp a
    rlca

jr_043_6b55:
    ld a, a
    rrca
    ccf
    rla
    rst $18
    ld [hl+], a
    sbc a
    ld a, [hl+]
    ld e, a
    ld [hl-], a
    rra
    ld a, [hl-]
    rst $18
    ld b, c
    sbc a
    ld c, c
    ld e, a
    ld d, c
    rra
    ld e, c
    cp a
    ld h, h
    ld a, a
    ld l, h
    ccf
    ld [hl], h
    rra
    ld a, h
    jp nc, $e07c

    ld a, a
    ldh [rPCM34], a
    ldh [$6f], a
    ldh [$67], a
    ldh [$5b], a
    ldh [rHDMA3], a
    ldh [rWX], a
    ldh [rSCX], a
    ldh [$3b], a
    ldh [$33], a
    ldh [$2b], a
    ldh [rNR44], a
    ldh [rNR22], a
    ldh [rIF], a
    ldh [rTAC], a
    db $ec
    dec de
    nop
    ld a, h
    jr nz, jr_043_6c13

    ld h, b
    ld a, h
    and b
    ld a, h
    nop
    ld a, l
    ld b, b
    ld a, l
    add b
    ld a, l
    ret nz

    ld a, l
    nop
    ld a, [hl]
    ld b, b

jr_043_6ba6:
    ld a, [hl]
    add b
    ld a, [hl]
    ret nz

    ld a, [hl]
    jr nz, jr_043_6c2c

    ld h, b
    ld a, a
    and b
    ld a, a
    nop
    nop
    ld b, $10
    ld d, e
    inc h
    sbc h
    inc l
    rst $38
    ld b, b
    ccf
    ld e, [hl]
    ld e, a
    ld a, e
    and a
    jr z, jr_043_6c10

    ld c, c
    sub h
    ld h, [hl]
    ld a, c
    ld a, a
    xor c
    jr jr_043_6be1

    ld [hl], $fe
    ld e, d
    sbc a
    ld [hl], e
    rst $38
    ld a, a
    and $7f
    inc b
    db $10
    ld c, e
    db $10
    ld d, c
    db $10
    cp b
    db $10
    db $fc
    db $10
    ld a, a
    ld de, $3c22

jr_043_6be1:
    ld h, h
    ld e, c
    inc l
    ld h, a
    db $f4
    ld a, a
    adc c
    inc c
    db $76
    ld hl, $427b
    sbc [hl]
    ld l, e
    rst $38
    ld a, a
    ld b, [hl]
    ld a, [de]
    add h
    ld [$08e7], sp
    ld d, d
    ld [de], a
    jr jr_043_6c16

    ld a, e
    cpl
    rst $38
    ld d, e
    ld h, d
    jr z, jr_043_6ba6

    inc [hl]
    ld b, [hl]
    ld h, l
    add sp, $7d
    inc b

jr_043_6c08:
    jr @-$13

    jr c, jr_043_6c21

    ld e, [hl]
    ld e, l
    ld a, a
    rst $38

jr_043_6c10:
    ld a, a
    ld b, $48

jr_043_6c13:
    add b
    inc c
    ld [hl+], a

jr_043_6c16:
    dec d
    ld l, e
    ld e, $10
    inc hl
    or $27
    ld hl, sp+$4b
    inc hl
    inc c

jr_043_6c21:
    adc d
    jr z, jr_043_6c38

    ld d, c
    ccf
    ld a, [hl]
    ld h, c
    jr jr_043_6c4f

    add hl, hl
    xor a

jr_043_6c2c:
    ld d, [hl]
    scf
    ld h, a
    rst $38
    ld a, a
    ld b, b
    ld a, [hl]
    and b
    inc e
    nop
    dec [hl]
    add b

jr_043_6c38:
    ld b, l
    add c
    ld h, d
    ld h, h
    ld a, a
    xor $7f
    ld b, h
    ld [$0c2f], sp
    sbc d
    inc e
    cp a
    ld b, c
    and b
    ld [$0d61], sp
    and [hl]
    ld a, [de]
    db $ed
    ld b, e

jr_043_6c4f:
    rst $38
    ld a, a
    ret nz

    jr jr_043_6c74

    jr nz, @-$5e

    jr c, jr_043_6c58

jr_043_6c58:
    ld c, l
    jp nz, $a469

    ld a, [hl]
    ld b, [hl]
    ld a, a
    dec c
    nop
    ei
    nop
    ccf
    ld d, $3f
    ld b, e
    add d
    nop
    ld h, a
    dec c
    ld [hl], c
    ld d, $fb
    ld b, e
    rst $38
    ld a, a
    ld [bc], a
    nop
    inc h

jr_043_6c74:
    jr jr_043_6ce1

    jr c, jr_043_6c08

    ld c, h
    db $f4
    ld e, b
    sbc d
    ld l, l
    sbc d
    ld a, [hl]
    db $e4
    nop
    sub b
    ld e, $98
    ccf
    db $fd
    ld h, e
    ld b, l
    ld [$088f], sp
    ld a, b
    add hl, hl
    rst $18
    ld d, d
    rst $38
    ld a, a
    nop
    jr c, jr_043_6ca0

    nop
    cp e
    nop
    rst $38
    dec d
    ld e, a
    scf
    rst $18
    ld d, a
    push hl
    ld b, b
    inc b

jr_043_6ca0:
    ld d, d
    inc b
    ld l, e
    add sp, $7f
    rst $30
    ld a, a
    nop
    nop
    and l
    inc d
    ld sp, $9c3e
    ld h, e
    rst $38
    ld a, a
    jr jr_043_6ceb

    nop
    ld bc, $4018
    ld [bc], a
    ld bc, $4818
    inc b
    ld bc, $5018
    ld b, $01
    jr jr_043_6d1b

    ld [$1801], sp
    ld h, b
    ld a, [bc]
    ld bc, $6818
    inc c
    ld bc, $7018
    ld c, $01
    jr z, jr_043_6d0b

    stop
    jr z, jr_043_6d17

    ld [de], a
    nop
    jr z, jr_043_6d23

    inc d
    nop
    jr z, jr_043_6d2f

    ld d, $00

jr_043_6ce1:
    jr z, jr_043_6d3b

    jr jr_043_6ce5

jr_043_6ce5:
    jr z, jr_043_6d47

    ld a, [de]
    nop
    jr z, jr_043_6d53

jr_043_6ceb:
    inc e
    nop
    jr z, @+$72

    ld e, $00
    jr c, jr_043_6d2b

    jr nz, jr_043_6cf5

jr_043_6cf5:
    jr c, jr_043_6d37

    ld [hl+], a
    nop
    jr c, jr_043_6d43

    inc h
    nop
    jr c, jr_043_6d4f

    ld h, $00
    jr c, @+$5a

    jr z, jr_043_6d05

jr_043_6d05:
    jr c, jr_043_6d67

    ld a, [hl+]
    nop
    jr c, jr_043_6d73

jr_043_6d0b:
    inc l
    nop
    jr c, jr_043_6d7f

    ld l, $00
    ld c, b
    jr c, jr_043_6d44

    ld [bc], a
    ld c, b
    ld b, b

jr_043_6d17:
    ld [hl-], a
    ld [bc], a
    ld c, b
    ld c, b

jr_043_6d1b:
    inc [hl]
    ld [bc], a
    ld c, b
    ld d, b
    ld [hl], $02
    ld c, b
    ld e, b

jr_043_6d23:
    jr c, jr_043_6d27

    ld c, b
    ld h, b

jr_043_6d27:
    ld a, [hl-]
    ld [bc], a
    ld c, b
    ld l, b

jr_043_6d2b:
    inc a
    ld [bc], a
    ld c, b
    ld [hl], b

jr_043_6d2f:
    ld a, $02
    ld e, b
    jr c, @+$42

    ld bc, $4058

jr_043_6d37:
    ld b, d
    ld bc, $4858

jr_043_6d3b:
    ld b, h
    ld bc, $5058
    ld b, [hl]
    ld bc, $5858

jr_043_6d43:
    ld c, b

jr_043_6d44:
    ld bc, $6058

jr_043_6d47:
    ld c, d
    ld bc, $6858
    ld c, h
    ld bc, $7058

jr_043_6d4f:
    ld c, [hl]
    ld bc, $67cd

jr_043_6d53:
    ld l, l

jr_043_6d54:
    call $0a57
    ldh a, [$a9]
    ld b, a
    and $01
    jr nz, jr_043_6d66

    call Call_043_6ea7
    call $045a
    jr jr_043_6d54

jr_043_6d66:
    ret


jr_043_6d67:
    call $31f3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a

jr_043_6d73:
    ld hl, $cf63
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call $0568
    ld a, $01

jr_043_6d7f:
    ldh [rVBK], a
    ld hl, $6f46
    ld de, $8800
    call $0b50
    ld hl, $9800
    ld bc, $0280
    xor a
    call $3041
    ld hl, $9c00
    ld bc, $0020
    ld a, $07
    call $3041
    ld hl, $9860
    ld bc, $0040
    ld a, $02
    call $3041
    ld hl, $98a0
    ld bc, $0020
    ld a, $03
    call $3041
    ld hl, $98c0
    ld bc, $0020
    ld a, $04
    call $3041
    ld hl, $98e0
    ld bc, $0020
    ld a, $05
    call $3041
    ld hl, $9900
    ld bc, $0040
    ld a, $06
    call $3041
    ld hl, $9925
    ld bc, $000b
    ld a, $01
    call $3041
    ld hl, $9980
    ld bc, $00c0
    ld a, $08
    call $3041
    ld a, $00
    ldh [rVBK], a
    ld hl, $7326
    ld de, $8800
    call $0b50
    ld hl, $7cee
    ld de, $8000
    call $0b50
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    call $3041
    ld hl, $c4dc
    ld bc, $0714
    ld d, $80
    ld e, $14
    call Call_043_6eef
    ld hl, $9c03
    ld bc, $010d
    ld d, $0c
    ld e, $10
    call Call_043_6eef
    ld d, $00
    call $6ed2
    call Call_043_6f06
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $7ede
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $7ede
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld b, $28
    ld hl, $d100

jr_043_6e5d:
    ld [hl], $70
    inc hl
    ld [hl], $90
    inc hl
    dec b
    jr nz, jr_043_6e5d

    ld hl, $d150
    xor a
    ld bc, $0040
    call $3041
    ld a, $43
    ldh [$c6], a
    pop af
    ldh [rSVBK], a
    call $3e10
    call $058a
    ldh a, [rLCDC]
    set 2, a
    ldh [rLCDC], a
    ld a, $70
    ldh [$cf], a
    ld a, $08
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $01
    ldh [$e5], a
    ldh [$d4], a
    xor a
    ld [$d002], a
    call $3e21
    ld de, $0065
    call $3c23
    ret


Call_043_6ea7:
    ld hl, $d002
    ld a, [hl]
    ld c, a
    inc [hl]
    and $07
    ret nz

    ld a, c
    and $18
    sla a
    swap a
    ld e, a
    ld d, $00
    ld hl, $6ece
    add hl, de
    ld d, [hl]
    xor a
    ldh [$d4], a
    call $6ed2
    ld a, $01
    ldh [$d4], a
    ld a, $03
    ldh [$d5], a
    ret


    add b
    adc b
    nop
    ld [$9621], sp
    push bc
    ld b, $06

jr_043_6ed7:
    ld c, $08

jr_043_6ed9:
    ld a, d
    ld [hl+], a
    inc d
    dec c
    jr nz, jr_043_6ed9

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $08
    add d
    ld d, a
    dec b
    jr nz, jr_043_6ed7

    ret


Call_043_6eef:
jr_043_6eef:
    push de
    push bc
    push hl

jr_043_6ef2:
    ld a, d
    ld [hl+], a
    inc d
    dec c
    jr nz, jr_043_6ef2

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    pop de
    ld a, e
    add d
    ld d, a
    dec b
    jr nz, jr_043_6eef

    ret


Call_043_6f06:
    ld hl, $c400
    ld d, $de
    ld e, $00
    ld c, $05

jr_043_6f0f:
    push bc
    call Call_043_6f1c
    pop bc
    ld a, $10
    add d
    ld d, a
    dec c
    jr nz, jr_043_6f0f

    ret


Call_043_6f1c:
    ld c, $06
    ld b, $40

jr_043_6f20:
    ld a, d
    ld [hl+], a
    ld a, b
    ld [hl+], a
    add $08
    ld b, a
    ld a, e
    ld [hl+], a
    inc e
    inc e
    ld a, $80
    ld [hl+], a
    dec c
    jr nz, jr_043_6f20

    ret


    ld hl, $c400
    ld a, [hl]
    cp $16
    ret z

    ld c, $1e

jr_043_6f3b:
    ld a, [hl]
    add $02
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_043_6f3b

    ret


    db $ec
    ld e, l
    nop
    db $fc
    call z, $0380
    rrca
    rrca
    ld a, a
    ld a, a
    ld l, e
    inc bc
    add b
    add b
    ret nz

    ret nz

    db $ec
    ld b, c
    inc bc
    rlca
    rlca
    rra
    rra
    inc hl
    ccf
    inc hl
    ld a, a
    ld bc, $ffff
    ld h, c
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    inc hl
    ldh a, [rSB]
    di
    di
    inc hl
    rst $38
    ld h, a
    rlca
    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    ret c

    ret c

    ldh a, [$f0]
    db $ec
    add hl, hl
    and e
    rst $00
    ld bc, $1f1f
    ld h, c
    dec c
    inc c
    inc c
    ld e, $1e
    ld a, h
    ld a, h
    ld hl, sp-$08
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    ld h, l
    ld bc, $1c1c
    daa
    rst $38
    add e
    and l
    and e
    rst $28
    ld bc, $8f8f
    dec a
    rst $38
    inc bc
    ei
    ei
    ldh a, [$f0]
    and e
    nop
    call nz, $8001
    add b
    jp $d700


    ldh a, [rNR44]
    nop
    ld a, [hl]
    inc hl
    ld bc, $0303
    inc bc
    jr @+$1a

    inc hl
    inc a
    ld bc, $7878
    jp $09ba


    ldh a, [$f0]
    db $e3
    db $e3
    ld b, $06
    rra
    rra
    ccf
    ccf
    daa
    ld a, a
    cpl
    rst $38
    nop
    xor $c8
    add b
    dec b
    ld sp, hl
    ld sp, hl
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld h, c
    add e
    or a
    ld bc, $e0e0
    add l
    nop
    ret nc

    inc bc
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    sub a
    ld bc, $0706
    rlca
    rlca
    rrca
    inc c
    rrca
    add hl, bc
    rra
    rra
    add e
    db $d3
    xor e
    rst $10
    inc bc
    rst $00
    rst $00
    ccf
    ccf
    dec [hl]
    rst $38
    ld bc, $f8f8
    ret


    sbc [hl]
    ld bc, $c0c0
    ret


    ld bc, $c341
    ld bc, $051f
    ld bc, $e001
    ldh [$fc], a
    db $fc
    add l
    rst $00
    dec c
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    jp $07c3


    rlca
    ld e, $1e
    ld a, b
    ld a, b
    ret nz

    ret nz

    and l
    ld bc, $0198
    add b
    add b
    ld [hl], a
    inc bc
    rlca
    rlca
    rrca
    rrca
    adc b
    nop
    call nz, $6f04
    ld a, a
    ld c, a
    rst $28
    rst $28
    inc hl
    rst $18
    add hl, hl
    rst $38
    ld bc, $bfbf
    dec l
    rst $38
    inc bc
    sbc h
    sbc h
    sbc a
    sbc a
    adc e
    ld [bc], a
    ld [hl+], a
    ld h, e
    dec b
    add c
    add c
    rst $20
    rst $20
    db $fc
    db $fc
    and l
    push bc
    dec b
    ld h, b
    ld h, b
    ldh [$e0], a
    ret nz

    ret nz

    sbc c
    rst $28
    inc hl
    ccf
    ld bc, $1c1c
    ld h, c
    rlc b
    rst $20
    ld bc, $3f3f
    add e
    ld [bc], a
    ld d, h
    and l
    nop
    jp nc, $ff3d

    xor l
    ld bc, $03bc
    rst $30
    rst $30
    inc bc
    inc bc
    cpl
    rst $38
    and l
    ld bc, $039a
    ret nz

    ret nz

    db $f4
    db $f4
    and e
    nop
    jp z, $ff01

    rst $38
    sub l
    ld bc, $a988
    ld [bc], a
    and $01
    rst $38
    rst $18
    and a
    ld [bc], a
    ld c, [hl]
    ld bc, $0000
    rlc d
    db $d3
    and e
    ld [bc], a
    ret c

    ld bc, $1f1f
    sbc a
    inc bc
    ld e, $01
    cp a
    cp a
    dec h
    cp $c3
    ld [bc], a
    rst $18
    add l
    ld bc, $ece0
    inc hl
    add e
    ld bc, $011c
    inc e
    inc e
    and l
    nop
    ld a, d
    rlca
    ccf
    ccf
    cp $fe
    ld hl, sp-$08
    add c
    add c
    push bc
    inc bc
    rla
    and e
    add e
    ld bc, $7f7f
    add e
    rst $08
    and l
    ld [bc], a
    ld d, d
    inc bc
    nop
    nop
    ldh [$e0], a
    adc l
    ld [bc], a
    and $cf
    ld bc, $279f
    rst $38
    ld bc, $3c3c
    adc c
    adc a
    rlca
    rst $00
    rst $00
    add a
    add a
    inc bc
    inc bc
    inc bc
    inc bc
    xor c
    ld bc, $a396
    ld [bc], a
    inc b
    add l
    ld bc, $f0ea
    ld hl, $e403
    and l
    ld [bc], a
    db $e4
    and l
    or l
    ld bc, $0000
    and a
    inc bc
    and [hl]
    and l
    ld [bc], a
    ld c, $01
    rst $38
    rst $38
    dec h
    ccf
    rst $00
    inc bc
    xor l
    ld bc, $fbfb
    rst $00
    ret c

    add l
    ld [bc], a
    ld [hl], h
    ld bc, $8080
    ldh a, [rNR42]
    nop
    ld a, [$8fad]

jr_043_7122:
    ldh a, [rSCX]
    nop
    ld a, [hl]
    ld a, e
    nop
    jr nc, jr_043_7122

    ld a, $80
    dec b
    ld a, a
    ld a, a
    dec a
    dec a
    ld e, $1e
    dec h
    ld c, $03
    ld e, $1e
    inc e
    inc e
    and e
    inc b
    call z, $0301
    inc bc
    and a
    inc bc
    ld a, b
    add l
    ld [bc], a
    ld [hl], b
    ld bc, $8080
    xor $77
    ldh a, [$6f]
    dec b
    nop
    db $ec
    ld e, e
    push bc
    ld [bc], a
    ld d, a
    add l
    ld bc, $091a
    ld a, $3e
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    di
    di
    rst $30
    rst $30
    add a
    inc b
    call c, Call_043_7c01
    ld a, h
    add l
    inc b
    cp d
    inc bc
    rrca
    rrca
    ccf
    ccf
    adc e
    ld bc, $07ba
    pop hl
    pop hl
    db $e3
    db $e3
    rst $20
    rst $20
    rst $08
    rst $08
    daa
    rst $38
    add l
    ld [bc], a
    ld e, b
    ld bc, $fdfd
    rst $00
    inc b
    cp a
    add a
    dec b
    jp z, $f003

    ldh a, [$c0]
    ret nz

    ldh a, [rNR42]
    nop
    cp $c3
    inc b
    ld de, $0f0d
    rrca
    ld a, $3e
    db $fd
    db $fd
    ei
    ei
    rst $30
    rst $30
    rst $20
    rst $20
    sbc a
    sbc a
    and a
    inc b
    sbc d
    ld bc, $fcfc
    call Call_043_5504
    inc bc
    ld bc, $1f01
    rra
    add a
    adc a
    inc bc
    rlca
    rlca
    di
    di
    add a
    ld [bc], a
    ld a, [hl-]
    and e
    nop
    ld l, d
    ld bc, $f8f8
    adc l
    ld [bc], a
    add $85
    ld bc, $01e6
    ret nz

    ret nz

    jp $aa96


    inc b
    ld l, h
    nop
    ld [bc], a
    add e
    inc bc
    inc e
    adc b
    ld [bc], a
    call nz, $3f02
    rst $38
    ld a, a
    push bc
    add hl, bc
    ld e, e
    rst $10
    inc bc
    rst $08
    ld bc, $fcfc
    and a
    add hl, bc
    ld d, [hl]
    dec b
    rst $28
    rst $28
    add e
    add e
    cp [hl]
    cp [hl]
    add a
    add hl, bc
    ld b, [hl]
    inc bc
    rst $28
    rst $28
    rst $00
    rst $00
    add e
    add hl, bc
    ld [hl-], a
    ld bc, $c1c1
    add e
    ld [bc], a
    sub $0b
    cp $fe
    sbc b
    sbc b
    jr jr_043_7220

    jr c, jr_043_7242

    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    sub l
    dec b
    call nc, $0384
    jr jr_043_7217

    ld b, $07

jr_043_7217:
    inc b
    jp $af03


    xor b
    add hl, bc
    db $e4
    nop
    ld a, a

jr_043_7220:
    xor c
    inc bc
    ld [hl], $39
    rst $38
    ld bc, $f8f8
    adc l
    inc bc
    ld a, $03
    rst $28
    rst $28
    ld bc, $2901
    rst $38
    add l
    ld bc, $a372
    inc bc
    call z, $09a5
    sbc h
    dec b
    ld [hl], b
    ld [hl], b
    jr nc, jr_043_7270

    jr c, @+$3a

jr_043_7242:
    adc a
    ld a, [bc]
    ld l, d

jr_043_7245:
    xor a
    inc bc
    call c, $0983
    ld a, $85
    inc b
    ld b, b
    push bc
    add hl, bc
    push af
    and l
    inc bc
    jr nc, jr_043_7245

    inc hl
    ld a, [bc]
    sbc b
    add a
    ld a, [bc]
    or [hl]
    inc bc
    ld hl, sp-$08
    db $fc
    db $fc
    xor c
    inc b
    ret nz

    ld a, a
    xor a
    inc b
    ld a, [hl]
    jp $9d09


    sub a
    rst $38
    ld bc, $7f7f
    sub c

jr_043_7270:
    ld [bc], a
    ld [hl+], a
    ld bc, $9f9f
    rst $08
    dec bc
    dec l
    dec b
    ldh [$e0], a
    di
    di
    cp $fe
    and a
    nop
    add $03
    ld a, b
    ld a, b
    ldh a, [$f0]
    ldh a, [$3b]
    dec b
    db $10
    and l
    inc b
    inc h
    add hl, hl
    rrca
    add e
    ld [bc], a
    ld h, b
    add a
    ld [bc], a
    ld e, b
    add e
    inc bc
    inc d
    adc c
    dec bc
    and [hl]
    rlca
    rra
    rra
    sbc a
    sbc a
    cp e
    cp e
    ldh a, [$f0]
    add e
    ld [bc], a
    db $e4
    ldh a, [rSTAT]
    nop
    db $76
    and l
    nop
    call nc, $0003
    nop
    ccf
    ccf
    rst $00
    inc bc
    xor e
    ld bc, $dfdf
    and l
    push af
    ld bc, $e1e1
    add l
    inc b
    ld [hl], d
    add l
    rst $20
    rrc c
    ld c, e
    add e
    inc bc
    ld d, $87
    inc bc
    sub $85
    ld bc, $016a
    cp [hl]
    cp [hl]
    db $ec
    ccf
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    xor e
    ld [bc], a
    db $e4
    dec b
    add e
    add e
    add c
    add c
    ret nz

    ret nz

    add e
    add hl, bc
    ld d, b
    adc e
    ld a, [bc]
    adc d
    ld bc, $f8f8
    and a
    dec bc
    sub h
    inc bc
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$3b]
    dec bc
    db $e4
    add l
    inc bc
    jr @-$75

    dec bc
    ld [bc], a
    ld bc, $f8f8
    ldh a, [rNR51]
    dec bc
    ld [c], a
    add a
    inc b
    xor b
    jp $3b09


    and e
    dec b
    or h
    inc bc
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$5f]
    dec b
    db $10
    db $ed
    jp $00ff


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    ld c, $0e
    rra
    rra
    dec sp
    ccf
    ld [hl], c
    ld a, a
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
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    ld a, a
    ld a, a
    cp $ff
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    ld a, $fe
    rrca
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
    inc bc
    ld bc, $0f1f
    ccf
    ccf
    inc a
    ccf
    ld a, b
    ccf
    nop
    nop
    nop
    nop
    ld a, $1e
    cp $fe
    cp $fe
    adc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld a, b
    ld [hl], b
    db $fc
    ld hl, sp-$02
    db $fc
    rst $18
    cp $8f
    rst $38
    add a
    rst $38
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    sbc a
    rrca
    rst $38
    cp a
    ret nz

    rst $38
    add e
    rst $38
    rrca
    rst $38
    ld a, a
    db $fc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    ld h, b
    ldh [$e0], a
    ldh [$c0], a
    add b
    ret nz

    nop
    inc bc
    inc bc
    add e
    inc bc
    rst $20
    rst $00
    rst $38
    rst $20
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
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
    add e
    rst $38
    add e
    rst $38
    add e
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
    add b
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
    ld a, $3e
    ccf
    ccf
    ccf
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
    nop
    nop
    nop
    ldh a, [$f0]
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
    rra
    rra
    ld a, $3f
    inc a
    ccf
    inc e
    rra
    ld a, $1f
    cp $0f
    ld a, a
    rrca
    ld a, a
    rlca
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    db $e3
    db $e3
    rst $28
    rst $28
    ld hl, sp+$3f
    cp $3f
    cp $3f
    cp $0f
    cp $07
    ld a, $07
    cp $ff
    cp $ff
    rrca
    rst $38
    ld c, $ff
    ld b, $ff
    inc b
    rst $38
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
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    rst $38
    add e
    rst $38
    add d
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $30
    ld a, a
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp $ef
    cp $ef
    cp $ff
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    add e
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    jp $ef83


    rst $08
    cp $ff
    ld hl, sp-$01
    ld hl, sp+$3f
    ld hl, sp+$3f
    db $fc
    rra
    db $fc
    rrca
    db $fc
    rst $38
    db $fc
    rst $38
    ld c, $ff
    ld b, $ff
    ccf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld a, b
    ld a, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $e3
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$60]
    ldh [$e0], a
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ccf
    inc bc
    rra
    inc bc
    rra
    ld bc, $000f
    rrca
    nop
    rlca
    nop
    rlca
    nop
    add b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rra
    db $fc
    rra
    cp $0f
    cp $0f
    ld bc, $00ff
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
    db $e3
    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    ld sp, $21ff
    rst $38
    inc hl
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    cp $ff
    ld hl, sp-$01
    db $e3
    rst $38
    add $ff
    add [hl]
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld [$f8ff], sp
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp $3fff


    ei
    ld a, a
    di
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add d
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld a, b
    rst $38
    rrca
    rst $38
    ld e, $ff
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7cff
    rst $38
    inc a
    rst $38
    ld e, $ff
    rrca
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, $ff
    ld h, $ff
    db $e3
    rst $38
    add $ff
    adc [hl]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld bc, $09ff
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop bc
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $0f
    ld a, a
    rlca
    ld a, a
    rlca
    ccf
    inc bc
    ccf
    inc bc
    rra
    ld bc, $011f
    rrca
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld e, $ff
    ld a, $ff
    cp $f7
    ld a, [hl]
    rst $30
    ld a, a
    rst $30
    ld a, a
    di
    ccf
    di
    ccf
    ld sp, hl
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    jp $c3ff


    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    inc a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    ccf
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    ret nz

    db $fc
    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ld hl, sp-$01
    ld hl, sp-$41
    ld hl, sp+$3f
    cp $3f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld bc, $00ff
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    rra
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    ldh a, [$c7]
    nop
    ld h, [hl]
    rst $38
    and $ff
    rst $20
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop hl
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld c, $ff
    inc e
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $10
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    rlca
    rst $38
    ld b, $fe
    ld c, $fe
    ld c, $fe

jr_043_7942:
    inc c
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    jr jr_043_7942

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ldh [rIE], a
    ldh a, [$7f]
    ldh a, [$7f]
    ld hl, sp+$3f
    ld hl, sp+$3f
    db $fc
    ccf
    db $fc
    rra
    rst $38
    rra
    ccf
    ld hl, sp+$3f
    ld hl, sp+$1f
    db $fc
    rra
    db $fc
    dec e
    db $fc
    inc c
    db $fc
    inc a
    db $fc
    db $fc
    db $fc
    ldh a, [rIE]
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ld a, a
    db $fd
    rst $38
    pop af
    rst $38
    pop bc
    rst $38
    ld bc, $00e7
    add a
    nop
    rlca
    nop
    nop
    nop
    add e
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    db $fc
    ldh a, [$fc]
    nop
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    ccf
    nop
    rrca
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
    rst $38
    rrca
    rst $38
    inc bc
    db $fc
    nop
    db $fc
    nop
    inc a
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

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
    rst $38
    nop
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
    rst $00
    nop
    pop bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    cp $7f
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    inc bc
    nop
    nop
    nop
    ccf
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$08
    ld hl, sp-$20
    nop
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    ldh a, [$3f]
    ld hl, sp+$3f
    rst $38
    ccf
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]

jr_043_7a70:
    ldh a, [rIE]
    ldh a, [$3f]

jr_043_7a74:
    ldh a, [$3f]

jr_043_7a76:
    cp $3f
    rst $38
    ccf
    jr c, jr_043_7a74

    jr c, jr_043_7a76

    jr nc, jr_043_7a70

    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rst $38
    rrca
    ld a, a
    inc c
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld e, $00
    stop
    ldh a, [$f0]
    ldh a, [$80]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ret nz

    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    jr @+$21

    ld [de], a
    rra
    inc de
    rra
    inc de
    rra
    ld [de], a
    rra
    jr jr_043_7b18

    rrca
    rst $38
    rst $38
    rst $38
    jp $49ff


    rst $38
    ret


    rst $38
    jp $49ff


    rst $38
    ret


jr_043_7b18:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, $ff
    inc h
    rst $38
    adc h
    rst $38
    adc $ff
    sbc a
    rst $38
    sbc h
    rst $30
    rst $30
    pop hl
    cp a
    rst $38
    rst $38
    rst $38
    ld hl, $f3ff
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    inc h
    rst $38
    inc h
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
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    ld hl, $e1e1
    rst $38
    rst $38
    rst $38
    ld [hl], $ff
    inc l
    rst $38
    inc e
    rst $38
    inc l
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl-], a
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    inc de
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $ff
    db $e4
    rst $38
    call z, $9cff
    rst $38
    inc a
    rst $38
    ld b, $ff
    rst $38

jr_043_7b8c:
    ldh [$e0], a
    ldh a, [$30]

jr_043_7b90:
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$30]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rst $38
    nop
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
    ldh [$e0], a
    add b
    nop
    add b
    nop
    nop
    rlca
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    nop
    dec de
    nop
    dec d
    nop
    ld de, $1100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    jr c, @+$04

    ld b, h
    jr nz, jr_043_7b8c

    nop
    and d
    jr nz, jr_043_7b90

    add d
    ld b, h
    ld b, h
    jr c, jr_043_7bfb

jr_043_7bfb:
    nop
    nop
    nop
    inc d
    db $e3
    nop

Call_043_7c01:
    ld [hl], $80
    halt
    add $04
    di

jr_043_7c08:
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    adc [hl]
    nop
    db $db
    nop
    db $db
    nop
    db $db
    ld d, c
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    jr nc, jr_043_7c23

jr_043_7c23:
    jr nc, jr_043_7c25

jr_043_7c25:
    jr nc, jr_043_7c27

jr_043_7c27:
    jr nc, jr_043_7c29

jr_043_7c29:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, c
    nop
    jp $db00


    nop
    db $db
    nop
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_043_7c08

    nop
    ld l, h
    ld bc, $00ee
    ld l, l
    nop
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    nop
    ld l, h
    nop
    rst $28
    nop
    ld l, h
    nop
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    jr jr_043_7c63

jr_043_7c63:
    ld e, $00
    jr jr_043_7c67

jr_043_7c67:
    jr jr_043_7c69

jr_043_7c69:
    nop
    nop
    nop
    nop
    nop
    ld [$00f3], sp
    db $db
    ld [$00f3], sp
    db $db
    nop
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $00ce
    dec de
    nop

Jump_043_7c83:
    rst $18
    nop
    dec de
    nop
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    ld [$0070], sp
    ld l, h
    nop
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld bc, $000e
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    jr c, jr_043_7cb3

jr_043_7cb3:
    ld h, b
    nop
    ld h, e
    ld b, b
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, e
    ld [bc], a
    inc bc
    nop
    dec b
    adc $82
    ldh [rNR42], a
    ld bc, $0200
    ld bc, $030d
    ld a, [de]
    rrca
    dec [hl]
    rra
    ld l, d
    ccf
    call nc, $a87f
    rst $38
    ld d, b
    rst $38
    ld bc, $0300
    ld bc, $0306
    dec c
    rlca
    ld a, [hl-]
    rrca
    ld d, l
    ccf
    xor d
    ld a, a
    ld d, h
    rst $38
    add e
    sub e
    nop
    add b
    ld c, d
    rst $38
    nop
    dec d
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    ld a, [hl]
    add b
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld bc, $89fe
    sbc a
    xor a
    rst $18
    inc b
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp-$7c
    xor l
    dec b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$43
    nop
    nop
    ld c, $e0
    nop
    ld a, [bc]
    rlca
    dec d
    rrca
    ld a, [hl+]
    rra
    ld d, l
    ccf
    ld [$fc1f], a
    rlca
    cp $a6
    ld hl, sp+$4b
    ld a, a
    nop
    ld [bc], a
    and b
    rst $38
    ld b, b
    adc d
    nop
    ld d, e
    dec b
    add b
    ld a, a
    db $e3
    dec e
    rst $38
    inc bc
    ld c, e
    rst $38
    rlca
    rla
    ld bc, $03fe
    db $fd
    rlca
    ei
    rrca
    rst $30
    rra
    rst $28
    ccf
    rst $18
    ld a, a
    cp [hl]
    cp $7c
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ld b, a
    ret nz

    add b
    rla
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    dec d
    dec d
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    ld [bc], a
    ld b, a
    inc bc
    nop
    adc l
    nop
    ld [hl], d
    dec b
    ld bc, $87ff
    ld a, a
    ld a, a
    cp a
    ld c, e
    rst $38
    rra
    add e
    nop
    sub d
    ld [$807c], sp
    inc a
    jp nz, $ee17

    rra
    rst $38
    ld a, a
    daa
    rst $38
    ld a, [hl+]
    cp $4b
    ccf
    nop
    ld c, e
    rra
    nop
    ld b, a
    rrca
    nop
    ld b, a
    rst $38
    rlca
    ld bc, $07fb
    ld c, a
    rst $38
    inc bc
    ld bc, $03fd
    ld b, e
    rst $38
    ld bc, $c04f
    add b
    ld c, a
    ldh [$c0], a
    ld c, a
    inc bc
    nop
    ld c, a
    rlca
    nop
    ld b, a
    rst $38
    rra
    nop
    rst $18
    ld d, b
    ccf
    rst $38
    nop
    cp a
    ld b, h
    ld a, a
    rst $38
    nop
    cp $2b
    db $fc
    dec hl
    ld hl, sp+$26
    ldh a, [rSC]
    rrca
    nop
    rrca
    ret c

    rst $00
    jp $2e00


    ld c, d
    rst $38
    ld bc, $0002
    db $fd
    ld [bc], a
    and l
    nop
    sbc d
    and e
    ld bc, $0740
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    ld a, [hl]
    ld bc, $e047
    ret nz

    ld bc, $8070
    add e
    nop
    sub h
    ld bc, $00fe
    adc a
    nop
    ld l, h
    ld b, a
    rlca
    nop
    db $10
    dec c
    ld c, $1f
    rra
    ld a, $3f
    ld a, a
    ld a, h
    db $fd
    ei
    rst $28
    rst $30
    rst $28
    rst $18
    rst $38
    ccf
    ld a, a
    ret


    ld bc, $4674
    ld a, a
    rst $38
    inc bc
    ld a, a
    rst $38
    rst $38
    ld a, a
    jr nc, @+$01

    nop
    cp $24
    ldh a, [$2b]
    ldh [$2b], a
    ret nz

    nop
    add b
    ld h, c
    rrca
    ldh [rP1], a
    sbc b
    ld h, b
    rst $20
    jr @+$01

    nop
    ld bc, $207e
    rra
    ld [$0207], sp
    ld bc, $0b6f
    rra
    nop
    rlca
    nop
    ld bc, $e000
    nop
    db $fc
    nop
    ld a, a
    add b
    add e
    ld [bc], a
    sub d
    nop
    add c
    adc [hl]
    and a
    add a
    ld [bc], a
    ld a, b
    ld [bc], a
    rra
    nop
    add a
    add [hl]
    ld bc, $0746
    ld a, a
    add b
    rrca
    ldh a, [rSB]
    cp $80
    ld a, a
    add l
    and a
    add a
    ld [bc], a
    ret c

    inc bc
    db $fc
    ld hl, sp-$10
    pop hl
    add l
    nop
    db $e4
    ld [de], a
    rlca
    ld sp, hl
    ccf
    rst $08
    rst $38
    ld a, a
    cp $ff
    ld hl, sp-$04
    ldh [$f0], a
    add b
    ret nz

    db $fc
    ld hl, sp-$10
    ldh [$c0], a
    and h
    ldh [rTAC], a
    inc bc
    db $fd
    rrca
    rst $30
    ccf
    rst $18
    cp $7f
    add h
    sub a
    xor c
    nop
    rra
    ld [$0607], sp
    rra
    inc e
    ei
    jr nc, @-$2f

    cp $3e
    add h
    sub a
    ret nc

    nop
    cp h
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
    inc de
    nop
    rrca
    ld a, l
    rrca
    ld a, l
    nop
    nop
    rst $38
    ld a, a
    rrca
    ld a, [hl]
    ccf
    inc [hl]
    nop
    nop
    rst $20
    inc e
    rst $38
    ld a, a
    ld h, d
    ld a, b
    nop
    nop
    xor l
    dec [hl]
    rst $38
    ld c, e
    ld h, d
    ld a, b
    nop
    nop
    ld [hl], e
    ld c, [hl]
    sbc l
    inc sp
    ld h, d
    ld a, b
    nop
    nop
    add hl, sp
    ld h, a
    inc a
    dec de
    ld h, d
    ld a, b
    nop
    nop
    rst $38
    ld a, a
    cp d
    ld [bc], a
    ld h, d
    ld a, b
    nop
    nop
    ld l, e
    ld c, l
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc a
    or c
    ld e, b
    inc sp
    ld a, l
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

Jump_043_7f3f:
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
