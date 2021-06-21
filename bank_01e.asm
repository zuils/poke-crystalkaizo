; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    nop
    ld bc, $0502
    ld b, b
    inc [hl]
    dec b
    nop
    add hl, bc
    inc d
    ld b, b
    ld [hl-], a
    push hl
    ld b, $33
    and $06
    inc bc
    dec e
    ld b, b
    inc sp
    push hl
    ld b, $32
    and $06
    inc bc
    dec e
    ld b, b
    inc [hl]
    ld b, $00
    ld [$4029], sp
    ld [hl-], a
    rst $20
    ld b, $03
    cpl
    ld b, b
    inc sp
    rst $20
    ld b, $03
    cpl
    ld b, b
    inc [hl]
    rlca
    nop
    ld [$4039], sp
    ld [hl-], a
    add sp, $06
    sub b
    inc sp
    add sp, $06
    sub b
    ld l, e
    ld b, a
    rrca
    jr nz, jr_01e_4042

jr_01e_4042:
    ld d, h
    ld c, c
    ld b, $01
    ld e, d
    ld b, b
    dec [hl]
    dec b
    nop
    inc e
    add hl, bc
    ld b, $03
    ld e, e
    ld b, b
    ld l, c
    ld [$4333], sp
    add l
    rra
    nop
    ld l, [hl]
    ld [$6991], sp
    ld [$4337], sp
    add l
    rra
    nop
    ld l, [hl]
    ld [$4791], sp
    rrca
    ld b, l
    nop
    ld c, c
    sub c
    ld b, a
    rrca
    ld b, [hl]
    nop
    ld c, c
    sub c
    dec de
    inc b
    ld [hl], $02
    sbc e
    ld b, h
    db $d3
    ld b, h
    nop
    nop
    ld a, l
    ld b, b
    ld e, $17
    inc d
    ld h, [hl]
    ld b, a
    inc [hl]
    ld [hl], b
    nop
    add hl, bc
    cp l
    ld b, b
    inc [hl]
    ld h, c
    nop
    add hl, bc
    ld sp, $2a41
    inc d
    add hl, bc
    ld b, e
    ld b, c
    ld sp, $027d
    add hl, bc
    and [hl]
    ld b, b
    ld c, h
    ldh a, [rLY]
    ld d, l
    inc sp
    ld a, l
    ld [bc], a
    nop
    scf
    ld b, c
    inc bc
    xor c
    ld b, b
    nop
    dec sp
    ld b, c
    sub a
    inc d
    ld b, $01
    ld c, e
    ld b, c
    ld b, $02
    ld b, a
    ld b, c
    ld b, e
    ld [hl], $02
    nop
    nop
    ccf
    ld b, c
    inc bc
    ld b, e
    ld b, c
    nop
    ld c, a
    ld b, c
    ld h, h
    db $d3
    ld b, h
    nop
    nop
    add hl, de
    cp $d9
    ld b, $04
    call c, $0640
    inc bc
    ld [c], a
    ld b, b
    ld b, $02
    add sp, $40
    ld b, $01
    xor $40
    ld b, $00
    db $f4
    ld b, b
    ld sp, $00cd
    add hl, bc
    jr z, jr_01e_4123

    ld sp, $0044
    add hl, bc
    dec de
    ld b, c
    inc [hl]
    ld c, e
    nop
    add hl, bc
    ld c, $41
    inc [hl]
    ld b, l
    nop
    add hl, bc
    ld bc, $5e41
    ld [hl], $02
    ld e, a
    ld h, b
    dec de
    cp $d9
    ld bc, $7035
    nop
    sub c
    ld e, [hl]
    ld [hl], $0c
    ld e, a
    ld h, b
    dec de
    cp $d9
    ld [bc], a
    dec [hl]
    ld [hl], b
    nop
    sub c
    ld e, [hl]
    ld [hl], $0d
    ld e, a
    ld h, b
    dec de
    cp $d9
    inc bc
    dec [hl]
    ld [hl], b
    nop
    sub c
    ld e, [hl]
    ld [hl], $14
    ld e, a
    ld h, b
    dec de
    cp $d9

jr_01e_4123:
    inc b
    dec [hl]
    ld [hl], b
    nop
    sub c
    ld e, [hl]
    ld [hl], $15
    ld e, a
    ld h, b
    dec [hl]
    ld [hl], b
    nop
    sub c
    ld c, h
    ld [hl-], a
    ld b, l
    ld d, h
    ld c, c
    sub c
    inc c
    add hl, de
    nop
    sub c
    inc c
    ld a, [de]
    nop
    sub c
    inc c
    dec de
    nop
    sub c
    inc c
    inc e
    nop
    sub c
    inc c
    dec e
    nop
    sub c
    inc c
    ld e, $00
    sub c
    inc c
    rra
    nop
    sub c
    ld a, a
    inc b
    dec [hl]
    ld [bc], a
    ld l, l
    ld b, l
    sbc [hl]
    ld b, l
    nop
    nop
    ld e, a
    ld b, c
    ld e, $17
    dec d
    ld h, [hl]
    ld b, a
    inc [hl]
    ld [hl], c
    nop
    add hl, bc
    sbc a
    ld b, c
    inc [hl]

Jump_01e_416b:
    add b
    nop
    add hl, bc
    inc de
    ld b, d
    ld a, [hl+]
    dec d
    add hl, bc
    inc [hl]
    ld b, d
    ld sp, $027f
    add hl, bc
    adc b
    ld b, c
    ld c, h
    cp b
    ld b, l
    ld d, l
    inc sp
    ld a, a
    ld [bc], a
    nop
    jr z, jr_01e_41c7

    inc bc
    adc e
    ld b, c
    nop
    inc l
    ld b, d
    sub a
    dec d
    ld b, $01
    inc a
    ld b, d
    ld b, $02
    jr c, jr_01e_41d7

    ld b, e
    dec [hl]
    ld [bc], a
    nop
    nop
    jr nc, jr_01e_41de

    inc bc
    inc [hl]
    ld b, d
    nop
    ld b, b
    ld b, d
    ld h, h
    sbc [hl]
    ld b, l
    nop
    nop
    add hl, de
    rst $38
    reti


    ld b, $04
    cp [hl]
    ld b, c
    ld b, $03
    call nz, $0641
    ld [bc], a
    jp z, $0641

    ld bc, $41d0
    ld b, $00
    sub $41
    ld sp, $00cd
    add hl, bc
    ld a, [bc]
    ld b, d
    ld sp, $0044

jr_01e_41c7:
    add hl, bc
    db $fd
    ld b, c
    ld sp, $0021
    add hl, bc
    ldh a, [rSTAT]
    inc [hl]
    ld c, c
    nop
    add hl, bc
    db $e3
    ld b, c
    ld e, [hl]

jr_01e_41d7:
    dec [hl]
    ld [bc], a
    ld e, a
    ld h, b
    dec de
    rst $38
    reti


jr_01e_41de:
    ld bc, $7135
    nop
    sub c
    ld e, [hl]
    dec [hl]
    add hl, bc
    ld e, a
    ld h, b
    dec de
    rst $38
    reti


    ld [bc], a
    dec [hl]
    ld [hl], c
    nop
    sub c
    ld e, [hl]
    dec [hl]
    rrca
    ld e, a
    ld h, b
    dec de
    rst $38
    reti


    inc bc
    dec [hl]
    ld [hl], c
    nop
    sub c
    ld e, [hl]
    dec [hl]
    jr jr_01e_4260

    ld h, b
    dec de
    rst $38
    reti


    inc b
    dec [hl]
    ld [hl], c
    nop
    sub c
    ld e, [hl]
    dec [hl]
    add hl, de
    ld e, a
    ld h, b
    dec [hl]
    ld [hl], c
    nop
    sub c
    nop
    ld b, h
    ld b, d
    sbc [hl]
    ld [hl+], a
    ld bc, $2508
    ld b, d
    dec [hl]
    add b
    nop
    inc sp
    nop
    ld bc, $3403
    ld b, d
    inc bc
    ld c, b
    ld b, d
    inc c
    inc hl
    nop
    sub c
    inc c
    inc h
    nop
    sub c
    inc c
    dec h
    nop
    sub c
    inc c
    ld h, $00
    sub c
    inc c
    daa
    nop
    sub c
    inc c
    jr z, jr_01e_423f

jr_01e_423f:
    sub c
    inc c
    add hl, hl
    nop
    sub c
    inc c
    ld a, [hl+]
    nop
    sub c
    inc c
    dec hl
    nop
    sub c
    ld l, e
    ld b, a
    dec hl
    inc b
    ld [$4276], sp
    ld sp, $0546
    add hl, bc
    ld [hl], b
    ld b, d
    ld a, a
    inc c
    nop
    ld c, h
    db $e4
    ld b, l
    ld d, h

jr_01e_4260:
    ld c, c
    ld h, h
    add hl, bc
    ld b, [hl]
    nop
    nop
    ld e, [hl]
    ld b, c
    ld bc, $605f

Call_01e_426b:
    inc sp
    ld b, [hl]
    dec b
    ld c, c
    sub c
    ld c, h
    inc h
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, d
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    xor l
    dec b
    ld d, $05
    dec a
    ld b, e
    ld e, [hl]
    ld b, e
    nop
    nop
    adc b
    ld b, d
    ld h, [hl]
    ld b, a
    ld c, h
    ret c

    ld b, e
    ld d, h
    ld c, c
    sub c
    xor [hl]
    dec b
    ld d, $06
    dec h
    ld b, h
    ld b, a
    ld b, h
    nop
    nop
    sbc h
    ld b, d
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, c
    ld b, h
    ld d, h
    ld c, c
    sub c
    db $d3
    inc b
    dec sp
    rlca
    sub [hl]
    ld b, [hl]
    pop hl
    ld b, [hl]
    nop
    nop
    or b
    ld b, d
    ld h, [hl]
    ld b, a
    ld c, h
    db $fc
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld h, b
    dec b
    inc e
    ld b, $43
    ld b, a
    ld h, l
    ld b, a
    nop
    nop
    call nz, Call_01e_6642
    ld b, a
    ld sp, $0070
    add hl, bc
    jp nc, $4c42

    ld a, a
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor l
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld l, e

jr_01e_42d9:
    dec b
    inc e
    ld de, $47eb
    add hl, de
    ld c, b
    nop
    nop
    db $e4
    ld b, d
    ld h, [hl]
    ld b, a
    ld sp, $0070
    add hl, bc
    ld a, [c]
    ld b, d
    ld c, h
    ld [hl], $48
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, [hl]
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld e, a
    dec b
    inc e
    dec b
    sub b
    ld c, b
    ret nz

    ld c, b
    nop
    nop
    inc b
    ld b, e
    ld h, [hl]
    ld b, a
    ld sp, $0070
    add hl, bc
    add hl, de
    ld b, e
    ld c, h
    ld [c], a
    ld c, b
    ld d, l
    sbc [hl]
    ld c, h
    ld bc, $1d08
    ld b, e
    inc sp
    ld [hl], b
    nop
    ld c, h
    dec hl
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld d, e
    adc d
    ld c, c
    ld d, e
    xor b
    ld c, c
    ld d, e
    db $ed
    ld c, c
    ld d, e
    ld d, d
    ld c, d
    inc h
    ld bc, $00a7
    jr nz, jr_01e_42d9

    nop
    ld de, $0a0a
    add hl, bc
    ld b, a
    ld [$0a0a], sp
    add hl, bc
    add hl, bc
    ld b, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    ld c, a
    xor h
    cp b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add c
    and h
    and b
    or e
    and h
    xor l
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld c, a
    xor a
    and b
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    and $51
    sub [hl]
    and h
    or c
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor h
    and b
    cp c
    and h
    and e
    ld c, a
    and c
    cp b
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    cp b
    sub $a4
    ld d, c
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    and $57
    nop
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld c, a
    and h
    or l
    and h
    xor l
    ld a, a
    and a
    and b
    or c
    and e
    and h
    or c
    add sp, $51
    add b
    and l
    or e
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    jp nc, $b34f

    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld d, l
    and b
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    add sp, $57
    nop
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld c, a
    and d
    xor e
    and b
    or d
    or d
    ld a, a
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and c
    and h
    or e
    db $e3
    ld c, a
    or e
    and h
    or c
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld [hl], l
    ld d, a
    nop
    adc b
    jp nc, $b37f

    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or d
    xor [hl]
    ld c, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    and b
    or c
    ld d, l
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and d
    xor e
    and b
    or d
    or d
    add sp, $57
    nop
    adc b
    jp nc, $a27f

    xor [hl]
    xor l
    and l
    xor b
    and e
    and h
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    cp b
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, l
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    and $57
    nop
    add e
    xor b
    and e
    ld a, a
    adc b
    ld a, a
    or d
    and d
    or c
    and h
    or [hl]
    ld a, a
    or h
    xor a
    ld a, a
    xor h
    cp b
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    and $57
    nop
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    add e
    add b
    sbc b
    db $e3
    ld d, c
    add d
    add b
    sub c
    add h
    add sp, $7f
    adc [hl]
    or c
    ld a, a
    xor h
    and b
    cp b
    and c
    and h
    ld a, a
    or h
    or d
    and h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld [hl], l
    ld d, a
    nop
    sub d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    xor d
    cp b
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and l
    and h
    and h
    xor e
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor l
    xor b
    and d
    and h
    ld c, a
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    xor [hl]
    and l
    or e
    xor [hl]
    xor a
    add sp, $57
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    and $51
    adc e
    and h
    or e
    call nc, $a77f
    and b
    or l
    and h
    ld a, a
    and b
    ld c, a
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    or [hl]
    xor b
    xor l
    ld [hl], l
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
    and h
    ld d, l
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    and $4f
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or h
    xor a
    ld d, l
    or e
    xor [hl]
    and $57
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    xor d
    xor b
    and e
    add sp, $57
    nop
    sbc b
    and h
    xor a
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld d, c
    and c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    or e
    and b
    cp b
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    add sp, $57
    nop
    adc b
    jp nc, $ae7f

    xor l
    ld a, a
    xor a
    and b
    or e
    or c
    xor [hl]
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or d
    or h
    or d
    xor a
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    xor b
    xor l
    and e
    xor b
    db $e3
    ld d, l
    or l
    xor b
    and e
    or h
    and b
    xor e
    or d
    add sp, $57
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    add e
    add b
    sbc b
    db $e3
    add d
    add b
    sub c
    add h
    add sp, $51
    adc e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and h
    xor l
    and e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    cp b
    and $57
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld d, l
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    and e
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    xor [hl]
    or h
    xor l
    and e
    and h
    and e
    ld a, a
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    ld a, a
    and h
    xor l
    and e
    rst $20
    ld d, a
    nop
    adc b
    sub c
    add h
    adc l
    add h
    sbc h
    ld a, a
    adc d
    cp b
    and b
    and b
    and b
    and a
    rst $20
    ld c, a
    sub d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or h
    or d
    rst $20
    ld d, a
    nop
    adc b
    sub c
    add h
    adc l
    add h
    sbc h
    ld a, a
    adc [hl]
    and a
    and a
    and a
    rst $20
    ld c, a
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    sub c
    add h
    adc l
    add h
    sbc h
    ld a, a
    adc h
    cp b
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    ld c, a
    adc d
    add b
    sub e
    add h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    adc b
    sub c
    add h
    adc l
    add h
    sbc h
    ld a, a
    adc b
    or d
    xor l
    push de
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and c
    and h
    and b
    and d
    and a
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    and $51
    adc b
    or e
    call nc, $ae7f
    or h
    or c
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and [hl]
    and h
    or e
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc c
    add h
    adc l
    adc l
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and c
    and h
    and b
    or e
    ld a, a
    adc b
    sub c
    add h
    adc l
    add h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or h
    xor l
    xor a
    or h
    xor l
    xor b
    or d
    and a
    and h
    and e
    rst $20
    ld d, a
    nop
    adc c
    add h
    adc l
    adc l
    sbc h
    ld a, a
    sub d
    xor [hl]
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld c, a
    adc b
    sub c
    add h
    adc l
    add h
    rst $20
    ld a, a
    sub d
    xor b
    or d
    rst $20
    ld d, a
    nop
    adc c
    add h
    adc l
    adc l
    sbc h
    ld a, a
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    and d
    xor [hl]
    and d
    xor d
    cp b
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    ld d, l
    adc d
    add b
    sub e
    add h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    adc c
    add h
    adc l
    adc l
    sbc h
    ld a, a
    sub d
    or h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    ld c, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld d, l
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    add sp, $57
    nop
    adc d
    add b
    sub e
    add h
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or h
    or c
    and h
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor h
    and h
    and b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld d, l
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    adc d
    add b
    sub e
    add h
    sbc h
    ld a, a
    adc l
    xor [hl]
    rst $20
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $57
    nop
    adc d
    add b
    sub e
    add h
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $7f
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld d, l
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    and b
    ld a, a
    and d
    and a
    and b
    xor l
    and d
    and h
    add sp, $51
    add a
    and h
    or c
    and h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    and h
    or d
    and h
    or c
    or l
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
    adc d
    add b
    sub e
    add h
    sbc h
    ld a, a
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    ld a, a
    or [hl]
    and h
    ld c, a
    xor c
    or h
    xor h
    xor a
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sub [hl]
    and h
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    and h
    and e
    ld c, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    or h
    or d
    ld d, c
    and a
    and h
    or c
    and h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or h
    or c
    and h
    ld c, a
    or d
    or e
    and b
    or c
    or e
    xor e
    and h
    and e
    ld a, a
    or h
    or d
    add sp, $57
    nop
    adc b
    adc e
    add h
    sub a
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    ld c, a
    sub e
    add a
    sub c
    adc [hl]
    sub h
    add [hl]
    add a
    ld a, a
    sub e
    add a
    add h
    ld a, a
    add [hl]
    add b
    sub e
    add h
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    ld a, [$8651]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld c, a
    add b
    sbc c
    add b
    adc e
    add h
    add b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, c
    adc b
    adc e
    add h
    sub a
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    ld c, a
    sub d
    adc [hl]
    adc h
    add h
    sub [hl]
    add a
    add h
    sub c
    add h
    ld a, a
    add c
    add h
    sub e
    sub [hl]
    add h
    add h
    adc l
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    add c
    add h
    sub c
    sub c
    sbc b
    ld a, a
    or e
    or c
    and h
    and h
    or d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    ld d, l
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    and e
    and b
    cp b
    add sp, $51
    adc h
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor l
    xor [hl]
    or e
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or e
    or c
    and h
    and h
    or d
    ld a, a
    and c
    and h
    and b
    or c
    ld d, l
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    add sp, $57
    nop
    add e
    add b
    sbc b
    db $e3
    add d
    add b
    sub c
    add h
    ld d, c
    adc e
    add h
    sub e
    ld a, a
    sub h
    sub d
    ld a, a
    sub c
    add b
    adc b
    sub d
    add h
    ld a, a
    sbc b
    adc [hl]
    sub h
    sub c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add l
    adc [hl]
    sub c
    ld a, a
    sbc b
    adc [hl]
    sub h
    rst $20
    ld d, a
    nop
    nop
    dec b
    dec h
    dec c
    ld bc, $170b
    dec h
    ld c, $02
    dec bc
    rla
    ld c, $0b
    ld bc, $180b
    rrca
    dec bc
    ld [bc], a
    dec bc
    jr jr_01e_4aa3

    dec c
    inc bc
    dec bc
    jr jr_01e_4a99

jr_01e_4a99:
    dec b
    ld b, $0c
    nop
    ld [hl+], a
    ld b, e
    ld hl, $000d
    dec h

jr_01e_4aa3:
    ld b, e
    dec c
    ld a, [bc]
    nop
    jr z, jr_01e_4aec

    ld [de], a
    add hl, bc
    rlca
    dec l
    ld b, e
    inc de
    ld de, $3007
    ld b, e
    dec c
    daa
    dec c
    ld c, $08
    nop
    rst $38
    rst $38
    and d
    dec b
    ld [hl], c
    ld b, b
    rst $38
    rst $38
    daa
    ld hl, $0816
    nop
    rst $38
    rst $38
    sub d
    inc bc
    ld a, h
    ld b, d
    rst $38
    rst $38
    daa
    daa
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    sub d
    inc bc
    sub b
    ld b, d
    rst $38
    rst $38
    jr z, jr_01e_4b01

    inc de
    add hl, bc
    nop
    rst $38
    rst $38
    and d
    inc bc
    ld d, e
    ld b, c
    rst $38
    rst $38
    ld b, e
    ld [de], a
    ld c, $06

jr_01e_4aec:
    nop
    rst $38
    rst $38
    sub b
    nop
    ld c, h
    ld b, d
    rst $38
    rst $38
    dec l
    dec c
    dec bc
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    and h
    ld b, d
    rst $38

jr_01e_4b01:
    rst $38
    cpl
    inc d
    inc de
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    dec a
    ld b, b
    and $06
    ldh [rNR21], a
    ld [de], a
    ld d, $22
    rst $38
    rst $38
    nop
    nop
    ld h, l
    ld b, b
    rst $20
    ld b, $e1
    rla
    dec d
    ld d, $22
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, b
    add sp, $06
    inc h
    inc [hl]
    rrca
    ld [$ff00], sp
    rst $38
    add d
    dec b
    cp b
    ld b, d
    rst $38
    rst $38
    inc h
    inc [hl]
    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    ret c

    ld b, d
    rst $38
    rst $38
    inc h
    scf
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    add d
    ld [bc], a
    ld hl, sp+$42
    rst $38
    rst $38
    ld d, h
    rrca
    dec bc
    ld bc, $ff00
    rst $38
    ld bc, $2b00
    ld b, e
    cp h
    rlca
    ld b, $7a
    ld c, e
    nop
    nop
    ld a, [hl]
    ld c, e
    nop
    nop
    ld a, a
    ld c, e
    nop
    nop
    add b
    ld c, e
    nop
    nop
    add c
    ld c, e
    nop
    nop
    add d
    ld c, e
    nop
    nop
    ld bc, $8302
    ld c, e
    adc l
    adc h
    ld c, e
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    inc de
    add hl, bc
    adc e
    ld c, e
    ld [hl], d
    ld [bc], a
    inc bc
    inc b
    sub b
    ld l, c
    nop
    ld h, a
    ld c, a
    ld [hl], l
    nop
    ld [bc], a
    rrca
    db $76
    ld [bc], a
    inc bc
    ld b, a
    ld c, h
    or [hl]
    ld c, a
    ld c, [hl]
    add hl, bc
    and l
    ld c, e
    ld c, h
    ld a, [de]
    ld d, c
    inc bc
    sbc e
    ld c, e
    ld c, h
    ld a, [$5550]
    ld c, h
    ld a, [hl-]
    ld d, c
    ld d, h
    ld c, c
    add l
    cp h
    nop
    adc e
    ld e, $75
    nop
    ld [bc], a
    ld a, [bc]
    db $76
    ld [bc], a
    nop
    ld b, a
    ld c, h
    xor [hl]
    ld d, c
    ld d, h
    ld c, c
    ld b, a
    db $76
    ld [bc], a
    inc bc
    ld c, h
    rst $18
    ld d, c
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    and b
    ld c, a
    halt
    ld bc, $0269
    and d
    ld c, a
    halt
    inc bc
    ld b, a
    ld c, h
    rst $38
    ld d, d
    ld d, h
    inc d
    ld bc, $9149
    ld l, e
    ld b, a
    ld sp, $0024
    add hl, bc
    xor $4b
    ld sp, $0044
    add hl, bc
    cpl
    ld c, [hl]
    ld sp, $007c
    add hl, bc
    ld a, [$344b]
    ld [hl+], a
    nop
    add hl, bc
    inc e
    ld c, [hl]
    ld sp, $0056
    add hl, bc
    ld d, $4e
    ld sp, $0055
    add hl, bc
    inc bc
    ld c, [hl]
    ld sp, $0077
    ld [$4c35], sp
    dec d
    xor a
    rrca
    ld b, e
    nop
    add hl, bc
    xor $4d
    dec d
    or b
    rrca
    ld b, e
    nop
    add hl, bc
    xor $4d
    ld c, h
    ld b, b
    ld e, d
    ld d, h
    ld c, c
    sub c
    dec d
    xor a
    rrca
    ld b, e
    nop
    add hl, bc
    xor $4d
    dec d
    or b
    rrca
    ld b, e
    nop
    add hl, bc
    xor $4d
    inc bc
    ld b, c
    ld c, h
    ld sp, $002d
    ld [$4c41], sp
    ld sp, $0054
    add hl, bc
    ld [hl+], a
    ld c, h
    ld sp, $002d
    add hl, bc
    add sp, $4d
    inc [hl]
    dec de
    nop
    add hl, bc
    ld [c], a
    ld c, l
    ld sp, $001f
    add hl, bc
    call c, $314d
    ld e, $00
    add hl, bc
    and d
    ld c, l
    ld sp, $001a
    add hl, bc
    ld h, a
    ld c, l
    ld c, h
    ld [hl], l
    ld d, e
    ld d, h
    ld c, c
    sub c
    db $76
    ld [bc], a
    nop
    ld b, a
    ld c, h
    and a
    ld d, e
    ld d, h
    ld c, c
    ld l, c
    nop
    ld [hl], b
    ld c, a
    sub c
    ld sp, $001a
    add hl, bc
    ld l, l
    ld c, l
    db $76
    ld [bc], a
    nop
    ld c, b
    nop
    ld d, [hl]
    sbc e
    add h
    sbc e
    nop
    ld d, h
    ld d, a
    ld b, a
    ld c, h
    ret z

    ld d, e
    ld c, [hl]
    ld [$4d2d], sp
    ld l, [hl]
    inc b
    inc sp
    dec de
    nop
    ld c, h
    add a
    ld d, h
    ld d, l
    add [hl]
    ld b, b
    sbc e
    nop
    ld c, h
    xor l
    ld d, h
    add l
    ld [bc], a
    nop
    add [hl]
    ld d, l
    dec l
    sbc e
    dec b
    xor l
    nop
    ld c, c
    inc e
    add hl, bc
    ld b, $03
    inc sp
    ld c, l
    ld l, c
    nop
    and a
    ld c, a
    inc bc
    inc sp
    ld c, l
    ld sp, $001a
    add hl, bc
    ld l, l
    ld c, l
    db $76
    ld [bc], a
    nop
    ld c, b
    nop
    ld d, [hl]
    sbc [hl]
    add h
    sbc [hl]
    nop
    ld d, h
    ld d, a
    ld b, a
    ld c, h
    di
    ld d, e
    ld c, [hl]
    ld [$4d2d], sp
    ld l, [hl]
    dec b
    inc sp
    inc e
    nop
    ld c, h
    add a
    ld d, h
    ld d, l
    add [hl]
    ld b, b
    sbc [hl]
    nop
    ld c, h
    xor l
    ld d, h
    add l
    ld [bc], a
    nop
    add [hl]
    ld d, l
    dec l
    sbc [hl]
    dec b
    xor l
    nop
    ld c, c
    ld l, c
    nop
    xor e
    ld c, a
    inc bc
    inc sp
    ld c, l
    ld sp, $001a
    add hl, bc
    ld l, l
    ld c, l
    db $76
    ld [bc], a
    nop
    ld c, b
    nop
    ld d, [hl]
    sbc b
    add h
    sbc b
    nop
    ld d, h
    ld d, a
    ld b, a
    ld c, h
    rra
    ld d, h
    ld c, [hl]
    ld [$4d2d], sp
    ld l, [hl]
    ld b, $33
    dec e
    nop
    ld c, h
    add a
    ld d, h
    ld d, l
    add [hl]
    ld b, b
    sbc b
    nop
    ld c, h
    xor l
    ld d, h
    add l
    ld [bc], a
    nop
    add [hl]
    ld d, l
    dec l
    sbc b
    dec b
    xor l
    nop
    ld c, c
    ld l, c
    nop
    or b
    ld c, a
    inc bc
    inc sp
    ld c, l
    ld c, h
    ld c, l
    ld d, h
    ld d, h
    ld c, c
    sub c
    halt
    ld bc, $4c47
    ret nz

    ld d, h
    ld d, h
    ld c, c
    jr z, jr_01e_4d42

    ld b, a
    ld c, h
    di
    ld d, l

jr_01e_4d42:
    add l
    sub e
    nop
    add [hl]
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    ld [bc], a
    ld b, a
    ld c, h
    add c
    ld d, l
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    nop
    ld b, a
    ld c, h
    db $db
    ld d, l
    ld d, h
    ld c, c
    inc sp
    ld a, [de]
    nop
    inc sp
    cp [hl]
    ld b, $14
    dec b
    ld [de], a
    jr jr_01e_4d69

    ld bc, $4c91
    dec c

jr_01e_4d69:
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld l, b
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld sp, $001a
    add hl, bc
    add c
    ld c, l
    ld c, h
    sub b
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor d
    ld d, [hl]
    ld c, [hl]
    add hl, bc
    adc d
    ld c, l
    ld c, c
    sub c
    rrca
    sbc l
    nop
    rrca
    dec de
    nop
    ld a, a
    nop
    nop
    dec d
    ld bc, $3e0f
    nop
    adc e
    ld e, $0f
    dec a
    nop
    ld c, c
    sub c
    ld d, h
    ld c, c
    sub c
    ld c, h
    call $2156
    ld b, l
    ld [$4d9f], sp
    ld d, l
    ld c, h
    ld [de], a
    ld d, a
    ld d, h
    jr nz, jr_01e_4df6

    ld bc, $3f00
    ld c, [hl]
    ld c, h
    add hl, sp
    ld d, a
    ld d, h
    nop
    ld d, e
    ld c, [hl]
    ld c, h
    ld b, l
    ld d, a
    ld d, l
    ld c, h
    add b
    ld d, a
    ld d, l
    inc sp
    rra
    nop
    ld [hl], $10
    nop
    ld [de], a
    jr jr_01e_4dd0

    ld bc, $1532

jr_01e_4dd0:
    rlca
    inc sp
    inc d
    rlca
    ld c, h
    rst $08
    ld e, b
    ld d, h
    ld c, c
    inc d
    ld b, $91
    ld c, h
    inc a
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, l
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec de
    ld e, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], d
    ld e, d
    ld d, h
    ld c, c
    ld [hl], l
    nop
    ld [bc], a

jr_01e_4df6:
    rrca
    inc sp
    ld d, l
    nop
    ld b, a
    ld c, h
    adc e
    ld e, d
    ld d, l
    ld c, h
    sbc a
    ld e, d
    ld d, l
    ld c, h
    inc e
    ld e, e
    ld d, l
    sbc [hl]
    ld [hl], b
    ld bc, $1a08
    ld c, [hl]
    ld c, h
    adc l
    ld e, e
    ld d, h
    ld c, c
    inc sp
    ld d, [hl]
    nop
    sub c
    ld c, h
    scf
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ret nc

    ld e, h
    ld d, l
    sbc [hl]
    ld bc, $0801
    dec l
    ld c, [hl]
    inc sp
    ld a, h
    nop
    ld c, h
    ld sp, $545d
    ld c, c
    sub c
    ld c, h
    di
    ld e, l
    ld d, l
    sbc [hl]
    ld b, h
    ld bc, $2433
    nop
    ld c, h
    ld l, a
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, c
    inc e
    add hl, bc
    ld b, $00
    ld l, l
    ld c, [hl]
    ld b, $01
    ld h, a
    ld c, [hl]
    ld b, $02
    ld [hl], e
    ld c, [hl]
    ld b, $03
    ld a, c
    ld c, [hl]
    sub c
    ld c, c
    inc e
    add hl, bc
    ld b, $00
    ld h, a
    ld c, [hl]
    ld b, $01
    ld l, l
    ld c, [hl]
    ld b, $02
    ld a, c
    ld c, [hl]
    ld b, $03
    ld [hl], e
    ld c, [hl]
    sub c
    ld l, c
    ld [bc], a
    sub b
    ld c, a
    ld b, a
    sub c
    ld l, c
    ld [bc], a
    sub h
    ld c, a
    ld b, a
    sub c
    ld l, c
    ld [bc], a
    sbc b
    ld c, a
    ld b, a
    sub c
    ld l, c
    ld [bc], a
    sbc h
    ld c, a
    ld b, a
    sub c
    ld l, c
    inc bc
    ld a, [hl]
    ld c, a
    halt
    nop
    nop
    sbc l
    ld c, [hl]
    ld l, c
    inc bc
    add a
    ld c, a
    sub c
    ld l, c
    inc bc
    add d
    ld c, a
    halt
    nop
    nop
    sbc l
    ld c, [hl]
    ld l, c
    inc bc
    adc e
    ld c, a
    sub c
    ld b, a
    ld c, h
    jr c, jr_01e_4f00

    ld d, l
    sbc [hl]
    ld [de], a
    ld bc, $654c
    ld e, a
    ld d, h
    ld c, c
    inc d
    ld [bc], a
    sub c
    ld l, c
    inc bc
    ld a, [hl]
    ld c, a
    halt
    nop
    nop
    bit 1, [hl]
    ld l, c
    inc bc
    add a
    ld c, a
    sub c
    ld l, c
    inc bc
    add d
    ld c, a
    halt
    nop
    nop
    bit 1, [hl]
    ld l, c
    inc bc
    adc e
    ld c, a
    sub c
    ld b, a
    ld c, h
    ld a, b
    ld h, b
    ld d, l
    ld b, c
    dec b
    ld bc, $e200
    ld c, [hl]
    rra
    dec b
    dec b
    ld c, h
    sbc d
    ld h, b
    ld d, l
    ld b, l
    ld c, c
    inc d
    ld [bc], a
    sub c
    inc c
    cpl
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $002d
    add hl, bc
    inc c
    ld c, a
    ld sp, $001f
    add hl, bc
    ld b, $4f
    ld sp, $001e
    add hl, bc
    nop
    ld c, a
    ld c, h
    ld h, l
    ld e, a
    ld d, h
    ld c, c
    sub c

jr_01e_4f00:
    ld c, h
    sub l
    ld e, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc d
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, l
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld l, c
    nop
    ld [hl], d
    ld c, a
    ld l, c
    nop
    ld [hl], h
    ld c, a
    db $76
    rlca
    ld [bc], a
    ld b, a
    ld c, h
    ldh a, [$60]
    ld d, l
    rrca
    inc h
    nop
    ld c, h
    ret nz

    ld h, c
    ld d, h
    ld c, c
    ld l, c
    rlca
    ld a, b
    ld c, a
    ld l, [hl]
    rlca
    inc d
    ld [bc], a
    sub c
    ld b, a
    inc [hl]
    ld b, e
    nop
    add hl, bc
    ld c, c
    ld c, a
    ld sp, $0043
    add hl, bc
    ld b, e
    ld c, a
    inc bc
    ld c, c
    ld c, a
    ld c, h
    ld sp, $5462
    ld c, c
    sub c
    ld c, h
    db $fd
    ld h, c
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld c, h
    ld h, d
    ld d, e
    adc d
    ld h, d
    ld d, e
    add $62
    ld d, e
    dec d
    ld h, e
    ld d, e
    ld [hl], b
    ld h, e
    ld d, e
    and [hl]
    ld h, e
    inc c
    dec c
    nop
    inc c
    ld bc, $0d00
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [bc], a
    ld b, a
    dec c
    ld b, a
    ld c, $47
    dec c
    dec c
    inc bc
    ld b, a
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, a
    rrca
    rrca
    ld bc, $0f47
    rrca
    rrca
    ld bc, $0e47
    ld c, $00
    ld b, a
    ld c, $0e
    ld c, $00
    ld b, a
    dec sp
    ld de, $473a
    dec sp
    db $10
    ld a, [hl-]
    ld b, a
    dec sp
    ld [de], a
    ld a, [hl-]
    ld b, a
    dec sp
    inc de
    ld a, [hl-]
    ld b, a
    dec c
    ld b, a
    rrca
    rrca
    dec c
    nop
    ld b, a
    ld c, $0d
    ld bc, $0e47
    ld c, $0d
    ld bc, $0e47
    ld c, $0e
    dec c
    ld bc, $0047
    add h
    adc e
    adc h
    sbc h
    ld a, a
    inc d
    rst $20
    ld c, a
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    xor l
    and h
    and h
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    or d
    xor d
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    add sp, $51
    adc b
    jp nc, $a27f

    xor [hl]
    xor l
    and e
    or h
    and d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    and h
    or [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld d, c
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    inc d
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    ld [hl], l
    ld d, c
    adc b
    jp nc, $b67f

    or c
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    xor a
    and b
    xor a
    and h
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld d, c
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    and h
    or d
    and h
    xor l
    or e
    ld a, a
    and b
    or e
    ld a, a
    and b
    ld c, a
    and d
    xor [hl]
    xor l
    and l
    and h
    or c
    and h
    xor l
    and d
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, c
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    or d
    or e
    and b
    xor l
    and e
    ld c, a
    cp b
    and h
    or e
    add sp, $51
    sub d
    xor [hl]
    rst $20
    ld d, c
    adc b
    ret nc

    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    ld c, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    add sp, $57
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    and a
    and h
    xor e
    xor a
    rst $20
    ld d, a
    nop
    add c
    or h
    or e
    ld [hl], l
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld a, a
    adc b
    ld c, a
    xor l
    and h
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and a
    and h
    xor e
    xor a
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and b
    xor l
    xor l
    xor [hl]
    or h
    xor l
    and d
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    and l
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    or d
    db $f4
    ld a, a
    adc b
    jp nc, $b27f

    or h
    or c
    and h
    ld d, c
    or [hl]
    and h
    pop de
    xor e
    ld a, a
    and e
    and h
    xor e
    or l
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld c, a
    and e
    and h
    and h
    xor a
    and h
    or c
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, c
    xor h
    and b
    xor l
    cp b
    ld a, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    xor b
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    xor [hl]
    or h
    xor l
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    and h
    cp b
    rst $20
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    xor l
    ld c, a
    and h
    db $e3
    xor h
    and b
    xor b
    xor e
    rst $20
    ld d, c
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld c, a
    add a
    xor h
    ld [hl], l
    ld a, a
    sub h
    and a
    db $e3
    and a
    or h
    and a
    ld [hl], l
    ld d, c
    adc [hl]
    xor d
    and b
    cp b
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    ld a, a
    and b
    and d
    or b
    or h
    and b
    xor b
    xor l
    db $e3
    ld c, a
    or e
    and b
    xor l
    and d
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    adc h
    sub c
    add sp, $55
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add a
    and h
    ld a, a
    xor d
    and h
    and h
    xor a
    or d
    ld a, a
    and l
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    and h
    xor b
    or c
    and e
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and b
    xor l
    and e
    ld d, c
    or c
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and a
    xor b
    or d
    ld c, a
    and e
    xor b
    or d
    and d
    xor [hl]
    or l
    and h
    or c
    xor b
    and h
    or d
    add sp, $51
    add b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    and b
    xor l
    ld a, a
    and h
    db $e3
    xor h
    and b
    xor b
    xor e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and a
    xor b
    xor h
    ld d, c
    or d
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    or e
    call nc, $b17f
    and h
    and b
    xor e
    add sp, $51
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    or e
    or c
    xor b
    and [hl]
    or h
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    or [hl]
    and h
    db $d3
    and h
    ld a, a
    and c
    or h
    or d
    cp b
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld [hl], l
    ld d, c
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    inc d
    db $f4
    ld a, a
    and d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and [hl]
    xor [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    and $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    and h
    and e
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    add sp, $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a57f
    xor b
    or c
    or d
    or e
    ld d, l
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    add [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    add sp, $7f
    adc a
    xor b
    and d
    xor d
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    db $f4
    ld a, a
    xor e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld a, a
    sub [hl]
    and a
    and h
    or c
    and h
    ld c, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    add d
    sbc b
    adc l
    add e
    add b
    sub b
    sub h
    adc b
    adc e
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, l
    and l
    xor b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    sub e
    adc [hl]
    sub e
    adc [hl]
    add e
    adc b
    adc e
    add h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    sub d
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    add d
    add a
    adc b
    adc d
    adc [hl]
    sub c
    adc b
    sub e
    add b
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, l
    and [hl]
    or c
    and b
    or d
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add h

Call_01e_544f:
    adc e
    adc h
    sbc h
    ld a, a
    sub e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    xor e
    cp b
    add sp, $51
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    ld a, a
    xor b
    or d
    ld c, a
    xor b
    xor h
    xor a
    xor [hl]
    or c
    or e
    and b
    xor l
    or e
    add sp, $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld c, a
    or e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    adc h
    sub c
    add sp, $54
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    and b
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and c
    xor b
    or e
    ld a, a
    and c
    and h
    cp b
    xor [hl]
    xor l
    and e
    ld d, c
    add d
    add a
    add h
    sub c
    sub c
    sbc b
    add [hl]
    sub c
    adc [hl]
    sub l
    add h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor l
    and h
    or a
    or e
    ld a, a
    and d
    xor b
    or e
    cp b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    add sp, $51
    adc b
    or e
    call nc, $a07f
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    and b
    ld c, a
    and e
    xor b
    or c
    and h
    and d
    or e
    ld a, a
    or c
    xor [hl]
    or h
    or e
    and h
    ld d, c
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor h
    xor b
    or d
    or d
    ld a, a
    xor b
    or e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and d
    and b
    or d
    and h
    db $f4
    ld c, a
    and a
    and h
    or c
    and h
    call nc, $ac7f
    cp b
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld d, c
    xor l
    or h
    xor h
    and c
    and h
    or c
    add sp, $7f
    add d
    and b
    xor e
    xor e
    ld a, a
    xor h
    and h
    ld a, a
    xor b
    and l
    ld c, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    and a
    or h
    or c
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld d, c
    and a
    and h
    and b
    xor e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    add sp, $51
    add l
    and h
    and h
    xor e
    ld a, a
    and l
    or c
    and h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld c, a
    xor b
    or e
    ld a, a
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    inc d
    db $f4
    ld a, a
    adc b
    jp nc, $a24f

    xor [hl]
    or h
    xor l
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    add h
    adc e
    adc h
    call nc, $af4f
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
    adc h
    sub c
    add sp, $54
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld c, a
    and h
    or l
    and h
    or c
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and l
    xor b
    xor l
    and e
    or d
    ld a, a
    or c
    and b
    or c
    xor b
    or e
    xor b
    and h
    or d
    add sp, $51
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    or c
    and b
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor l
    xor [hl]
    or e
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    or h
    or d
    and h
    and l
    or h
    xor e
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and c
    cp b
    ld d, l
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
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
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and e
    xor [hl]
    and h
    or d
    and $57
    nop
    sub [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and h
    and b
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    inc d
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor b
    or d
    ld a, a
    or e
    and h
    or c
    or c
    xor b
    and c
    xor e
    and h
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    and h
    or d
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    adc h
    sub c
    add sp, $54
    adc h
    adc [hl]
    adc l
    call nc, $a17f
    xor b
    and [hl]
    ld d, l
    and e
    xor b
    or d
    and d
    xor [hl]
    or l
    and h
    or c
    cp b
    and $57
    nop
    ld d, d
    ld a, a
    and a
    and b
    xor l
    and e
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc h
    sbc b
    sub d
    sub e
    add h
    sub c
    sbc b
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    add sp, $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    sub e
    and a
    xor b
    or d
    and $57
    nop
    add c
    or h
    or e
    ld [hl], l
    ld a, a
    adc b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add h
    add [hl]
    add [hl]
    and $51
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    and e
    xor b
    or d
    and d
    xor [hl]
    or l
    and h
    or c
    cp b
    rst $20
    ld d, a
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    sub [hl]
    and a
    and b
    or e
    and $e7
    and $51
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    ld a, a
    ld d, h
    add e
    add h
    sub a
    and $51
    inc d
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or e
    or c
    or h
    and h
    and $7f
    sub e
    and a
    db $e3
    or e
    and a
    and b
    or e
    call nc, $a855
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    and h
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    and c
    ld a, a
    and b
    or e
    ld c, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or e
    and h
    xor l
    db $e3
    ld d, l
    or e
    xor b
    and b
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    or d
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $51
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    inc d
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld d, c
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    or d
    or e
    ld a, a
    add [hl]
    sbc b
    adc h
    ld c, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld d, l
    xor b
    xor l
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    add sp, $57
    nop
    ld [hl], l
    inc d
    add sp, $7f
    sub e
    and a
    and h
    ld c, a
    or c
    xor [hl]
    and b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, c
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    or d
    and a
    xor b
    xor a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $51
    add c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    db $f4
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or e
    and b
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    add sp, $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld c, a
    or h
    xor a
    rst $20
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor b
    and l
    ld d, c
    adc b
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    add h
    add [hl]
    add [hl]
    rst $20
    ld d, a
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    inc d
    and $4f
    add e
    xor b
    and e
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and h
    and h
    or e
    ld a, a
    xor h
    cp b
    ld d, l
    and b
    or d
    or d
    xor b
    or d
    or e
    and b
    xor l
    or e
    and $51
    add a
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    ld d, c
    and b
    or e
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    call nc, Call_01e_544f
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    xor h
    xor b
    or d
    or d
    and h
    and e
    ld a, a
    and a
    xor b
    xor h
    add sp, $7f
    sub e
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, l
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    add a
    and h
    cp b
    db $f4
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    and e
    ld a, a
    and b
    xor l
    cp b
    and $57
    nop
    inc d
    and $7f
    adc b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and a
    and b
    or e
    and d
    and a
    and h
    and e
    add sp, $51
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    inc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    and $4f
    sub e
    and a
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    and $e7
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and a
    and b
    or e
    and d
    and a
    and h
    and e
    rst $20
    ld c, a
    sub d
    xor [hl]
    db $f4
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld d, l
    and c
    xor [hl]
    or c
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    add h
    add [hl]
    add [hl]
    sub d
    ld [hl], l
    ld d, c
    adc l
    xor [hl]
    db $f4
    ld a, a
    xor a
    and h
    or c
    and a
    and b
    xor a
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    add sp, $51
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $b27f
    or e
    xor b
    xor e
    xor e
    ld c, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld d, l
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and a
    and h
    xor e
    xor a
    xor b
    xor l
    and [hl]
    ld d, c
    or h
    xor l
    or c
    and b
    or l
    and h
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    xor b
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or h
    or d
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or e
    xor [hl]
    xor d
    and h
    xor l
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor [hl]
    or h
    or c
    ld a, a
    and b
    xor a
    xor a
    or c
    and h
    and d
    xor b
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    call nc, $a07f
    xor l
    ld c, a
    add h
    sub l
    add h
    sub c
    sub d
    sub e
    adc [hl]
    adc l
    add h
    add sp, $51
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld d, c
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    or d
    add sp, $51
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    add h
    sub l
    add h
    sub c
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, l
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    add sp, $51
    add [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld d, l
    or e
    xor [hl]
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    add sp, $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    inc d
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld c, a
    and d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    and l
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld d, l
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    ld [hl], l
    or d
    xor b
    and [hl]
    and a
    ld [hl], l
    ld a, a
    sub e
    and a
    and b
    or e
    ld c, a
    or d
    or e
    xor [hl]
    xor e
    and h
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    call nc, $a34f
    xor [hl]
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    and b
    cp b
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or c
    and b
    xor b
    or d
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld a, a
    and c
    and b
    and e
    ld d, c
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    and c
    and b
    and e
    ld c, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    add sp, $57
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    sub e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    xor h
    cp b
    ld d, c
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld a, a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, c
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld c, a
    or e
    xor [hl]
    xor d
    and h
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld d, l
    and b
    xor a
    xor a
    or c
    and h
    and d
    xor b
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    add c
    add b
    adc e
    adc e
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    rst $20
    ld d, c
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    or h
    xor e
    or e
    xor b
    xor h
    and b
    or e
    and h
    ld c, a
    add c
    add b
    adc e
    adc e
    rst $20
    ld a, a
    adc b
    or e
    pop de
    xor e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld d, c
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    db $e3
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    and b
    xor b
    xor e
    add sp, $51
    adc b
    or e
    call nc, $a67f
    xor b
    or l
    and h
    xor l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and h
    and d
    xor [hl]
    and [hl]
    xor l
    xor b
    cp c
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    and h
    or c
    or d
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld d, c
    or h
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor l
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
    nop
    add h
    adc e
    adc h
    sbc h
    ld a, a
    inc d
    rst $20
    ld c, a
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    adc b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    cp b
    xor [hl]
    or h
    add sp, $51
    sub d
    and h
    and h
    and $7f
    adc b
    or e
    call nc, $a07f
    xor l
    ld c, a
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    and a
    xor b
    xor a
    ld a, a
    and e
    and h
    xor a
    and b
    or c
    or e
    or d
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    ld a, a
    add d
    adc b
    sub e
    sbc b
    add sp, $51
    add c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    db $f4
    ld a, a
    inc d
    add sp, $51
    add b
    and l
    or e
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld c, a
    or e
    or c
    and b
    or l
    and h
    xor e
    and h
    and e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    or c
    and h
    and [hl]
    and b
    or c
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    xor b
    xor l
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    or h
    and e
    xor b
    and h
    and e
    ld d, l
    and c
    cp b
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    add sp, $57
    nop
    inc d
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and h
    or c
    or c
    and b
    xor l
    and e
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld c, a
    xor [hl]
    and l
    ld a, a
    or h
    or d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or [hl]
    and h
    db $d3
    and h
    ld d, l
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and c
    or h
    or d
    cp b
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or h
    and e
    ld c, a
    xor l
    xor [hl]
    xor b
    or d
    and h
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or [hl]
    and h
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    db $f4
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld d, l
    or d
    or e
    xor [hl]
    xor e
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    or e
    call nc, $b47f
    xor l
    and c
    and h
    xor e
    xor b
    and h
    or l
    and b
    and c
    xor e
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    and e
    xor [hl]
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, c
    ld [hl], l
    or d
    xor b
    and [hl]
    and a
    ld [hl], l
    ld a, a
    sub e
    and a
    and b
    or e
    ld c, a
    or d
    or e
    xor [hl]
    xor e
    and h
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    call nc, $a34f
    xor [hl]
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    and b
    cp b
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or c
    and b
    xor b
    or d
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld a, a
    and c
    and b
    and e
    ld d, c
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    and c
    and b
    and e
    ld c, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    add sp, $57
    nop
    inc d
    rst $20
    ld d, c
    sub h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    or b
    or h
    and h
    or d
    or e
    rst $20
    ld d, a
    nop
    sub e
    xor [hl]
    ld a, a
    and b
    and e
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    add e
    add h
    sub a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub e
    and a
    or c
    xor [hl]
    or [hl]
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld c, a
    and b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    or e
    xor [hl]
    xor e
    and h
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor b
    xor l
    and l
    xor [hl]
    or c
    xor h
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    add sp, $51
    add b
    xor a
    xor a
    and b
    or c
    and h
    xor l
    or e
    xor e
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and b
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    xor e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    xor e
    xor [hl]
    xor l
    and [hl]
    db $f4
    ld a, a
    or c
    and h
    and e
    ld a, a
    and a
    and b
    xor b
    or c
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and b
    or e
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    ld a, a
    and b
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    and $51
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    and a
    xor b
    or d
    ld a, a
    xor l
    and b
    xor h
    and h
    and $57
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    sub d
    xor [hl]
    ld a, a
    ld d, e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    xor b
    or d
    ld a, a
    xor l
    and b
    xor h
    and h
    add sp, $51
    sub e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and a
    and h
    xor e
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    cp b
    ld a, a
    xor b
    xor l
    or l
    and h
    or d
    or e
    xor b
    and [hl]
    and b
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    xor [hl]
    or [hl]
    call nc, $ae7f
    xor a
    and h
    xor l
    add sp, $51
    add b
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and b
    xor l
    or e
    ld a, a
    and c
    or c
    and h
    and h
    cp c
    and h
    ld c, a
    xor b
    or d
    ld a, a
    and c
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    add sp, $57
    nop
    add a
    and h
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    ld a, a
    and b
    ld c, a
    and c
    xor [hl]
    xor [hl]
    xor d
    add sp, $51
    sub e
    or c
    and b
    or l
    and h
    xor e
    ld a, a
    sub e
    xor b
    xor a
    ld a, a
    rst $30
    sbc h
    ld d, c
    adc a
    or c
    and h
    or d
    or d
    ld a, a
    sub d
    sub e
    add b
    sub c
    sub e
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add h
    adc l
    sub h
    add sp, $57
    nop
    ld d, d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    ld a, a
    and b
    ld c, a
    and c
    xor [hl]
    xor [hl]
    xor d
    add sp, $51
    sub e
    or c
    and b
    or l
    and h
    xor e
    ld a, a
    sub e
    xor b
    xor a
    ld a, a
    ld hl, sp-$64
    ld d, c
    sub c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    or c
    xor b
    xor a
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    sub d
    add b
    sub l
    add h
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    ld a, a
    and b
    ld c, a
    and c
    xor [hl]
    xor [hl]
    xor d
    add sp, $51
    sub e
    or c
    and b
    or l
    and h
    xor e
    ld a, a
    sub e
    xor b
    xor a
    ld a, a
    ld sp, hl
    sbc h
    ld d, c
    adc [hl]
    xor a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add b
    add d
    adc d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    xor a
    or c
    and h
    or d
    or d
    ld a, a
    sub d
    add h
    adc e
    add h
    add d
    sub e
    ld a, a
    or e
    xor [hl]
    ld d, l
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $57
    nop
    ld d, d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    ld a, a
    and b
    ld c, a
    and c
    xor [hl]
    xor [hl]
    xor d
    add sp, $51
    sub e
    or c
    and b
    or l
    and h
    xor e
    ld a, a
    sub e
    xor b
    xor a
    ld a, a
    ld a, [$519c]
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $7f
    adc a
    or c
    and h
    or d
    or d
    ld a, a
    or e
    and a
    and h
    ld d, c
    add b
    ld a, a
    add c
    or h
    or e
    or e
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    or c
    and b
    xor a
    xor a
    and h
    or c
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    xor l
    and b
    and d
    xor d
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld d, l
    and b
    or e
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    add c
    sub d
    add h
    sub c
    sub l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    sub d
    ld a, a
    adc [hl]
    adc l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add h
    sub l
    adc [hl]
    adc e
    sub h
    sub e
    adc b
    adc [hl]
    adc l
    ld d, c
    ld [hl], l
    adc b
    or e
    ld a, a
    or d
    and b
    cp b
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and d
    or c
    and h
    and h
    xor l
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    dec bc
    inc b
    ld bc, $0418
    dec bc
    dec b
    ld bc, $0418
    ld [$0601], sp
    inc b
    nop
    ld h, l
    ld c, h
    nop
    nop
    ld bc, $0506
    nop
    ld h, l
    ld c, h
    nop
    nop
    inc bc
    dec b
    inc b
    nop
    ld d, $4f
    nop
    nop
    inc bc
    dec b
    dec b
    nop
    ld [de], a
    ld c, a
    nop
    nop
    dec b
    ld [$0004], sp
    ld a, a
    ld c, [hl]
    nop
    nop
    dec b
    ld [$0005], sp
    adc [hl]
    ld c, [hl]
    nop
    nop
    ld b, $08
    inc b
    nop
    xor l
    ld c, [hl]
    nop
    nop
    ld b, $08
    dec b
    nop
    cp h
    ld c, [hl]
    nop
    nop
    db $10
    ld bc, $0002
    ld [hl], h
    ld c, l
    ld bc, $0006
    ld h, h
    ld c, a
    ld bc, $0007
    ld h, h
    ld c, a
    ld bc, $0008
    ld h, h
    ld c, a
    ld bc, $0009
    ld h, h
    ld c, a
    rlca
    nop
    nop
    ld c, a
    ld c, a
    rlca
    ld bc, $5200
    ld c, a
    rlca
    ld [bc], a
    nop
    ld d, l
    ld c, a
    rlca
    inc bc
    nop
    ld e, b
    ld c, a
    rlca
    ld b, $00
    ld h, h
    ld c, a
    rlca
    rlca
    nop
    ld h, h
    ld c, a
    rlca
    ld [$6400], sp
    ld c, a
    rlca
    add hl, bc
    nop
    ld h, h
    ld c, a
    inc bc
    add hl, bc
    nop
    ld e, e
    ld c, a
    nop
    dec b
    nop
    inc sp
    ld c, a
    dec b
    inc bc
    ld [bc], a
    ld e, [hl]
    ld c, a
    ld b, $10
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ldh [rWX], a
    rst $38
    rst $38
    inc a
    dec c
    ld b, $03
    nop
    rst $38
    rst $38
    sub b
    nop
    and $4e
    ld bc, $5407
    rlca
    ld a, [bc]
    ld bc, $ff00
    rst $38
    nop
    nop
    ld [hl], e
    ld c, h
    ld b, b
    ld b, $54
    rlca
    dec bc
    ld bc, $ff00
    rst $38
    nop
    nop
    or l
    ld c, h
    ld b, c
    ld b, $54
    rlca
    inc c
    ld bc, $ff00
    rst $38
    nop
    nop
    pop af
    ld c, h
    ld b, d
    ld b, $43
    rlca
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    ld a, [de]
    ld c, a
    ld [bc], a
    rlca
    ld [bc], a
    sub $64
    nop
    nop
    rst $10
    ld h, h
    nop
    nop
    nop
    sub c
    sub c
    inc sp
    nop
    nop
    ld a, a
    ld c, [hl]
    nop
    ld [hl], l
    nop
    ld [bc], a
    rrca
    halt
    ld [bc], a
    ld sp, $0000
    ld [$64f2], sp
    ld l, c
    ld [bc], a
    db $fc
    ld h, l
    inc bc
    or $64
    ld l, c
    ld [bc], a
    cp $65
    ld b, a
    ld c, h
    inc b
    ld h, [hl]
    ld d, l
    ld b, h
    ld a, b
    ld h, l
    ld bc, $7e00
    ld h, l
    ld [hl], $04
    nop
    ld [hl], $02
    nop
    jr z, jr_01e_650b

    inc d

jr_01e_650b:
    ld bc, $c733
    ld b, $32
    ret z

    ld b, $4c
    cp l
    ld h, [hl]
    ld d, l
    rrca
    dec h
    nop
    ld c, h
    ld b, d
    ld h, a
    ld c, [hl]
    ld [$652a], sp
    rrca
    and [hl]
    nop
    ld c, [hl]
    ld [$6519], sp
    inc bc
    ld sp, $0f65
    and a
    nop
    ld c, [hl]
    ld [$6519], sp
    ld c, h
    ld h, e
    ld h, a
    ld c, [hl]
    ld [$6542], sp
    inc bc
    dec sp
    ld h, l
    ld c, h
    bit 4, a
    ld d, l
    inc bc
    ld c, c
    ld h, l
    ld c, h
    rlca
    ld l, b
    ld d, l
    inc bc
    ld c, c
    ld h, l
    ld c, h
    ld d, b
    ld l, b
    ld d, h
    ld c, c
    ld sp, $0000
    add hl, bc
    ld e, l
    ld h, l
    ld sp, $0001
    ld [$6564], sp
    inc bc
    ld l, e
    ld h, l
    ld l, c
    ld [bc], a
    nop
    ld h, [hl]
    inc bc
    ld l, e
    ld h, l
    ld l, c
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    inc bc
    ld l, e
    ld h, l
    rrca
    dec a
    nop
    db $76
    ld [bc], a
    ld [bc], a
    sub c
    ld a, a
    ld c, [hl]
    nop
    inc bc
    or $64
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld d, b
    inc c
    cpl
    nop
    sub c
    ld l, e
    inc sp
    ld bc, $1300
    ld [$6572], sp
    ld b, a
    ld sp, $0076
    add hl, bc
    xor a
    ld h, l
    ld sp, $0040
    add hl, bc
    cp b
    ld h, l
    ld sp, $001f
    add hl, bc
    or l
    ld h, l
    ld sp, $001a
    add hl, bc
    xor c
    ld h, l
    ld c, h
    or l
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    push hl
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld d, a
    ld l, c
    ld d, h
    ld c, c
    sub c
    inc sp
    halt
    inc sp
    ld b, b
    nop
    rrca
    ld [hl+], a
    nop
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    dec hl
    ld bc, $d209
    ld h, l
    dec hl
    ld [bc], a
    add hl, bc
    reti


    ld h, l
    dec hl
    inc b
    add hl, bc
    ldh [$65], a
    ld c, h
    ld a, l
    ld l, c
    ld d, l
    inc bc
    rst $20
    ld h, l
    ld c, h
    sbc h
    ld l, c
    ld d, l
    inc bc
    rst $20
    ld h, l
    ld c, h
    or h
    ld l, c
    ld d, l
    inc bc
    rst $20
    ld h, l
    ld c, h
    db $d3
    ld l, c
    ld d, h
    ld c, c
    db $76
    ld b, $03
    sub c
    ld d, e
    ret nc

    ld l, d
    ld d, e
    ld a, [hl-]
    ld l, d
    ld d, e
    ld h, h
    ld l, d
    ld d, e
    sub c
    ld l, d
    inc bc
    ld b, a
    dec bc
    ld b, a
    ld [bc], a
    ld b, a
    ld a, [bc]
    ld b, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    ld d, d
    ld [hl], l
    rst $20
    ld a, a
    adc [hl]
    or h
    or c
    ld c, a
    xor l
    and h
    xor b
    and [hl]
    and a
    and c
    xor [hl]
    or c
    db $f4
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $51
    add h
    adc e
    adc h
    db $f4
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    add a
    and h
    ld a, a
    or d
    and b
    xor b
    and e

Call_01e_6642:
    ld a, a
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld d, l
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and a
    xor b
    xor h
    add sp, $51
    adc [hl]
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    db $e3
    ld c, a
    and [hl]
    xor [hl]
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    add [hl]
    add h
    add b
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    xor a
    and b
    xor b
    or c
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    add sp, $51
    add a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    add h
    add b
    sub c
    db $f4
    ld a, a
    xor [hl]
    or c
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    add sp, $51
    adc b
    or e
    call nc, $a47f
    or d
    or d
    and h
    xor l
    or e
    xor b
    and b
    xor e
    ld a, a
    xor b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    and h
    and h
    xor d
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    or d
    and h
    or e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
    xor l
    push de
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld c, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, a
    nop
    adc b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    add e
    and b
    cp b
    xor e
    xor b
    and [hl]
    and a
    or e
    ld c, a
    sub d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    sub e
    xor b
    xor h
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and $57
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and b
    and e
    xor c
    or h
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor e
    xor [hl]
    and d
    xor d
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    add e
    and b
    cp b
    xor e
    xor b
    and [hl]
    and a
    or e
    ld c, a
    sub d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    sub e
    xor b
    xor h
    and h
    add sp, $51
    add c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld d, l
    or e
    and a
    and h
    ld a, a
    adc a
    add a
    adc [hl]
    adc l
    add h
    and $57
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    or e
    or h
    or c
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld d, c
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    xor e
    and h
    and d
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc a
    add a
    adc [hl]
    adc l
    add h
    ld a, a
    xor b
    and d
    xor [hl]
    xor l
    and $57
    nop
    adc b
    pop de
    xor e
    ld a, a
    or c
    and h
    and b
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor b
    xor l
    or d
    or e
    or c
    or h
    and d
    or e
    xor b
    xor [hl]
    xor l
    or d
    add sp, $51
    sub e
    or h
    or c
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld c, a
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    xor e
    and h
    and d
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc a
    add a
    adc [hl]
    adc l
    add h
    ld a, a
    xor b
    and d
    xor [hl]
    xor l
    add sp, $57
    nop
    adc a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    and h
    xor h
    xor [hl]
    or c
    cp b
    add sp, $51
    adc c
    or h
    or d
    or e
    ld a, a
    and d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld a, a
    xor l
    and b
    xor h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    xor e
    xor e
    add sp, $51
    add [hl]
    and h
    and h
    db $f4
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and d
    xor [hl]
    xor l
    or l
    and h
    xor l
    xor b
    and h
    xor l
    or e
    and $57
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    xor b
    or e
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    add a
    or h
    or c
    or c
    cp b
    ld a, a
    or h
    xor a
    db $f4
    ld a, a
    and c
    and b
    and c
    cp b
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    add h
    adc e
    adc h
    call nc, $a47f
    or c
    or c
    and b
    xor l
    and e
    and $51
    ld [hl], l
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    add sp, $51
    add c
    or h
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    xor a
    or c
    xor [hl]
    or h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld d, l
    or c
    and h
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    ld d, d
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    adc b
    jp nc, $a17f

    and h
    and a
    xor b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, c
    adc b
    jp nc, $b57f

    xor b
    or d
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    adc b
    jp nc, $b57f

    xor b
    or d
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, c
    adc b
    jp nc, $b57f

    xor b
    or d
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and h
    and b
    or c
    and e
    and $51
    adc h
    cp b
    ld a, a
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld c, a
    and b
    and e
    and b
    xor h
    and b
    xor l
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, c
    and c
    and h
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    add h
    adc e
    adc h
    call nc, $a07f
    or d
    or d
    xor b
    or d
    or e
    and b
    xor l
    or e
    add sp, $51
    sub d
    and a
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc h
    xor [hl]
    xor h
    call nc, $b27f
    xor a
    and h
    and d
    xor b
    and b
    xor e
    or e
    cp b
    rst $20
    ld d, c
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
    ld c, a
    add c
    sub h
    sub c
    add [hl]
    add h
    sub c
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    xor b
    xor l
    xor d
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor a
    xor [hl]
    or e
    db $e3
    ld c, a
    xor e
    and h
    or d
    or d
    add sp, $7f
    adc h
    xor [hl]
    xor h
    ld a, a
    xor e
    xor b
    xor d
    and h
    or d
    ld a, a
    xor b
    or e
    ld d, l
    and d
    xor e
    and h
    and b
    xor l
    add sp, $57
    nop
    adc e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld a, a
    or [hl]
    and a
    and b
    or e
    call nc, $a84f
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    or c
    xor b
    and e
    and [hl]
    and h
    ld [hl], l
    ld d, c
    add l
    sub c
    add h
    sub d
    add a
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or e
    and b
    or d
    or e
    cp b
    ld a, a
    adc e
    add h
    adc h
    adc [hl]
    adc l
    add b
    add e
    add h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor h
    xor [hl]
    or l
    xor b
    and h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    sub e
    sub l
    sbc h
    ld a, a
    sub d
    or e
    and b
    or c
    or d
    ld a, a
    and e
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and h
    ld d, c
    or d
    xor d
    cp b
    ld a, a
    and b
    or d
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    and c
    xor [hl]
    cp b
    or d
    ld c, a
    or c
    xor b
    and e
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld [hl], l
    ld d, c
    adc b
    ret nc

    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or c
    xor [hl]
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    nop
    inc bc
    rlca
    ld b, $02
    jr @+$06

    rlca
    rlca
    ld [bc], a
    jr @+$06

    nop
    add hl, bc
    ld bc, $0718
    ld [bc], a
    nop
    inc b
    ld [$d800], sp
    ld h, h
    nop
    nop
    nop
    inc b
    add hl, bc
    nop
    db $db
    ld h, h
    nop
    nop
    inc b
    ld bc, $0000
    di
    ld h, l
    ld bc, $0001
    or $65
    ld bc, $0002
    ld sp, hl
    ld h, l
    ld bc, $0004
    ldh a, [$65]
    dec b
    inc c
    ld [$080b], sp
    nop
    rst $38
    rst $38
    nop
    nop
    add d
    ld h, l
    rst $00
    ld b, $0c
    ld b, $06
    rlca
    nop
    rst $38
    ld bc, $0000
    add d
    ld h, l
    ret z

    ld b, $0c
    ld [$080b], sp
    nop
    rst $38
    ld [bc], a
    nop
    nop
    add d
    ld h, l
    ret z

    ld b, $0c
    ld b, $04
    rlca
    nop
    rst $38
    inc b
    nop
    nop
    add d
    ld h, l
    ret z

    ld b, $2e
    ld [$0908], sp
    nop
    rst $38
    rst $38
    add b
    nop
    pop bc
    ld h, l
    sub d
    rlca
    nop
    ld [bc], a
    dec b
    or h
    ld l, e
    ld bc, $6bc5
    sub c
    rrca
    ld c, d
    nop
    inc sp
    rlca
    nop
    ld sp, $0036
    add hl, bc
    call nz, $0c6b
    jr jr_01e_6bc3

jr_01e_6bc3:
    sub b
    sub b
    rrca
    ld c, c
    nop
    sub b
    nop
    nop
    nop
    sbc d
    ld bc, $029a
    sbc d
    inc bc
    sbc d
    inc b
    call z, $d802
    ld l, e
    sbc d
    nop
    ld sp, $001a
    add hl, bc
    rlca
    ld l, h
    ld sp, $0325
    add hl, bc
    ld a, [bc]
    ld l, h
    ld a, a
    dec e
    nop
    ld b, a
    ld c, h
    inc h
    ld l, h
    adc e
    dec l
    ld c, h
    ld d, l
    ld l, h
    adc e
    dec l
    ld c, h
    ld h, h
    ld l, h
    adc e
    dec l
    add c
    inc a
    nop
    db $10
    ld c, h
    add h
    ld l, h
    adc e
    dec l
    ld c, c
    inc sp
    dec h
    inc bc
    sub c
    inc c
    dec bc
    nop
    ld b, a
    ld c, h
    add h
    ld l, h
    adc e
    dec l
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    ld b, a
    rrca
    dec e
    nop
    add hl, bc
    ld e, $6c
    ld c, c
    sub c
    inc a
    nop
    nop
    nop
    nop
    sub c
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ldh [$92], a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub e
    add b
    adc e
    adc d
    rst $20
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    or h
    xor l
    and h
    ld d, l
    xor b
    xor l
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    add e
    adc c
    ld a, a
    adc h
    add b
    sub c
    sbc b
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    db $e3
    and a
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    ld [hl], l
    ld d, a
    nop
    nop
    ld bc, $0700
    inc bc
    jr jr_01e_6ca7

    nop
    inc b
    ld bc, $0102
    dec d

jr_01e_6ca7:
    ld l, h
    ld bc, $0003
    jp c, $016b

    dec b
    nop
    ld [de], a
    ld l, h
    nop
    ld b, $05
    call nc, $046b
    ldh a, [rTMA]
    ld [$0001], sp
    rst $38
    rst $38
    nop
    nop
    jp nc, Jump_01e_416b

    rlca
    pop af
    ld [$0108], sp
    nop
    rst $38
    rst $38
    nop
    nop
    call z, Call_01e_426b
    rlca
    ld a, [c]
    ld [$0109], sp
    nop
    rst $38
    rst $38
    nop
    nop
    adc $6b
    ld b, e
    rlca
    di
    dec b
    inc b
    ld hl, $ff00
    rst $38
    nop
    nop
    ret nc

    ld l, e
    ld b, h
    rlca
    nop
    nop
    ld d, c
    cpl
    ld l, l
    ld d, c
    call nc, $0c6d
    inc bc
    nop
    ld sp, $001a
    add hl, bc
    inc h
    ld l, l
    ld sp, $0325
    add hl, bc
    daa
    ld l, l
    ld a, a
    dec e
    nop
    ld b, a
    ld c, h
    dec sp
    ld l, [hl]
    adc e
    dec l
    ld c, h
    ld l, h
    ld l, [hl]
    adc e
    dec l
    ld c, h
    ld a, e
    ld l, [hl]
    adc e
    dec l
    add c
    inc a
    nop
    db $10
    ld c, h
    sbc e
    ld l, [hl]
    adc e
    dec l
    ld c, c
    inc sp
    dec h
    inc bc
    sub c
    inc c
    dec bc
    nop
    ld b, a
    ld c, h
    sbc e
    ld l, [hl]
    adc e
    dec l
    ld c, c
    sub c
    nop
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor l
    ld c, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    xor h
    and b
    cp c
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    call nc, $a57f
    xor b
    xor l
    and e
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    or d
    add sp, $51
    add a
    and h
    call nc, $b27f
    xor [hl]
    ld a, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and a
    xor b
    or d
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld a, a
    xor [hl]
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    ld [hl], l
    or d
    xor b
    and [hl]
    and a
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    and b
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    and h
    or c
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    and a
    xor b
    xor h
    ld [hl], l
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld c, a
    and b
    and e
    and b
    xor h
    and b
    xor l
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, c
    and c
    and h
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    add h
    adc e
    adc h
    call nc, $a07f
    or d
    or d
    xor b
    or d
    or e
    and b
    xor l
    or e
    add sp, $51
    sub d
    and a
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    xor l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    rst $20
    ld d, a
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ldh [$92], a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub e
    add b
    adc e
    adc d
    rst $20
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    or h
    xor l
    and h
    ld d, l
    xor b
    xor l
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    add e
    adc c
    ld a, a
    adc h
    add b
    sub c
    sbc b
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    db $e3
    and a
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    jr @+$06

    rlca
    inc bc
    inc bc
    jr @+$06

    nop
    inc bc
    ld bc, $0000
    db $f4
    ld l, h
    ld bc, $0001
    db $f4
    ld l, h
    ld bc, $0007
    rst $30
    ld l, h
    ld [bc], a
    inc h
    rlca
    ld b, $09
    nop
    rst $38
    rst $38
    add b
    nop
    xor $6c
    rst $38
    rst $38
    ld l, $07
    add hl, bc
    ld [$ff00], sp
    rst $38
    add b
    nop
    pop af
    ld l, h
    sub e
    rlca
    nop
    nop
    ld d, c
    rst $30
    ld l, [hl]
    ld d, c
    ld l, e
    ld l, a
    ld d, e
    dec de
    ld [hl], b
    inc c
    ld bc, $0000
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld a, a
    adc h
    cp b
    ld c, a
    and a
    or h
    or d
    and c
    and b
    xor l
    and e
    call nc, $a07f
    xor e
    or [hl]
    and b
    cp b
    or d
    ld d, c
    or d
    xor [hl]
    ld a, a
    and c
    or h
    or d
    cp b
    db $e3
    db $e3
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld c, a
    and a
    and h
    call nc, $8e7f
    adc d
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and a
    and h
    call nc, $a27f
    and b
    or h
    and [hl]
    and a
    or e
    ld c, a
    or h
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    db $f4
    ld a, a
    and a
    and h
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    and b
    or e
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    or h
    xor a
    db $f4
    ld c, a
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    xor e
    xor a
    ld d, l
    xor h
    cp b
    ld a, a
    and e
    and b
    and e
    rst $20
    ld d, c
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor a
    or c
    xor [hl]
    and l
    and h
    or d
    or d
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $b27f
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $7f
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
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    add b
    add c
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $b27f
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    and $7f
    ld d, c
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    sub [hl]
    and a
    cp b
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    and h
    or l
    and h
    or c
    ld a, a
    or [hl]
    xor b
    or e
    xor l
    and h
    or d
    or d
    and h
    and e
    ld a, a
    and b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a17f
    xor b
    or c
    or e
    and a
    and $51
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and e
    and h
    and e
    xor b
    and d
    and b
    or e
    and h
    ld a, a
    xor h
    cp b
    ld d, c
    xor e
    xor b
    and l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    ld [hl], l
    ld d, c
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    call nc, $b17f
    and h
    db $e3
    ld d, l
    or d
    and h
    and b
    or c
    and d
    and a
    ld a, a
    xor a
    and b
    xor a
    and h
    or c
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    jr @+$06

    rlca
    inc bc
    inc b
    jr @+$06

    nop
    inc bc
    ld bc, $0000
    pop af
    ld l, [hl]
    ld bc, $0006
    db $f4
    ld l, [hl]
    ld bc, $0007
    db $f4
    ld l, [hl]
    ld [bc], a
    add hl, hl
    add hl, bc
    dec b
    inc b
    db $10
    rst $38
    rst $38
    and b
    nop
    db $eb
    ld l, [hl]
    rst $38
    rst $38
    dec h
    ld [$0709], sp
    nop
    rst $38
    rst $38
    nop
    nop
    xor $6e
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld c, h
    ld c, l
    ld [hl], c
    ld d, h
    ld c, c
    rrca
    jr nc, jr_01e_712f

jr_01e_712f:
    rrca
    inc sp
    nop
    rrca
    sbc l
    nop
    ld a, a
    dec c
    nop
    rrca
    dec de
    nop
    adc e
    inc a
    rrca
    ld [hl-], a
    nop
    rrca
    dec a
    nop
    ld b, a
    ld c, h
    adc e
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or c
    and h
    or d
    or e
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, c
    adc d
    and h
    and h
    xor a
    ld a, a
    and b
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    jr jr_01e_71c4

    rlca

jr_01e_71c4:
    inc bc
    ld [bc], a
    jr jr_01e_71c9

    nop

jr_01e_71c9:
    ld [bc], a
    ld bc, $0000
    ld c, d
    ld [hl], c
    ld bc, $0001
    ld c, d
    ld [hl], c
    ld bc, $0729
    ld b, $06
    nop
    rst $38
    rst $38
    sub b
    nop
    dec h
    ld [hl], c
    rst $38
    rst $38
    nop
    nop
    ld b, a
    ld c, h
    ld sp, hl
    ld [hl], c
    ld c, [hl]
    ld [$71f7], sp
    ld c, h
    ld [hl+], a
    ld [hl], d
    ld c, [hl]
    ld [$71f7], sp
    ld c, h
    cp c
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $b27f
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    or c
    xor b
    or e
    or e
    and h
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub c
    and h
    and b
    and e
    ld a, a
    xor b
    or e
    and $57
    nop
    sub e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or d
    xor b
    or d
    or e
    and h
    or c
    or d
    sbc h
    ld d, c
    sub [hl]
    and h
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor a
    or c
    xor b
    and e
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    or d
    and h
    or c
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    or e
    and b
    xor e
    xor d
    ld c, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    or d
    and h
    and l
    or h
    xor e
    add sp, $51
    adc e
    xor [hl]
    or l
    and h
    db $f4
    ld c, a
    adc h
    adc [hl]
    adc l
    adc b
    add d
    add b
    ld d, c
    adc d
    and h
    and h
    xor a
    ld a, a
    or c
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    and $57
    nop
    adc h
    xor [hl]
    xor l
    and e
    and b
    cp b
    db $f4
    ld a, a
    adc h
    adc [hl]
    adc l
    adc b
    add d
    add b
    ld c, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$51f6]
    sub e
    or h
    and h
    or d
    and e
    and b
    cp b
    db $f4
    ld a, a
    sub e
    sub h
    sub d
    add d
    add b
    adc l
    sbc b
    ld c, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$01
    ld d, c
    sub [hl]
    and h
    and e
    xor l
    and h
    or d
    and e
    and b
    cp b
    db $f4
    ld a, a
    sub [hl]
    add h
    sub d
    adc e
    add h
    sbc b
    ld c, a
    adc e
    add b
    adc d
    add h
    ld a, a
    adc [hl]
    add l
    ld a, a
    sub c
    add b
    add [hl]
    add h
    ld d, c
    sub e
    and a
    or h
    or c
    or d
    and e
    and b
    cp b
    db $f4
    ld a, a
    add b
    sub c
    sub e
    add a
    sub h
    sub c
    ld c, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    db $fc
    ld d, c
    add l
    or c
    xor b
    and e
    and b
    cp b
    db $f4
    ld a, a
    add l
    sub c
    adc b
    add h
    add e
    add b
    ld c, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    ld hl, sp+$51
    sub d
    and b
    or e
    or h
    or c
    and e
    and b
    cp b
    db $f4
    ld a, a
    sub d
    add b
    adc l
    sub e
    adc [hl]
    sub d
    ld c, a
    add c
    adc e
    add b
    add d
    adc d
    sub e
    add a
    adc [hl]
    sub c
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, c
    sub d
    or h
    xor l
    and e
    and b
    cp b
    db $f4
    ld a, a
    sub d
    sub h
    adc l
    adc l
    sbc b
    ld c, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    db $fd
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    jr jr_01e_737e

    rlca

jr_01e_737e:
    inc bc
    inc bc
    jr jr_01e_7383

    nop

jr_01e_7383:
    nop
    ld bc, $0755
    rlca
    ld bc, $ff00
    rst $38
    nop
    nop
    db $e4
    ld [hl], c
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0075
    add hl, bc
    or a
    ld [hl], e
    rrca
    ld e, c
    nop
    ld c, h
    add $73
    ld d, l
    ld a, [bc]
    sub l
    xor d
    ld [hl], e
    inc bc
    cp l
    ld [hl], e
    ld c, h
    dec hl
    ld [hl], h
    ld d, l
    sbc [hl]
    push hl
    ld bc, $bb08
    ld [hl], e
    inc sp
    ld [hl], l
    nop
    ld c, h
    adc a
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld c, h
    rra
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    inc c
    inc bc
    nop
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    and $51
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor e
    xor [hl]
    cp b
    and b
    xor e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    and $51
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or d
    and h
    and h
    ld [hl], l
    ld d, a
    nop
    add b
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    or c
    or h
    or d
    or e
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or l
    and h
    or c
    cp b
    ld d, l
    xor h
    or h
    and d
    and a
    add sp, $51
    adc b
    or e
    call nc, $ad7f
    xor b
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $51
    add a
    and h
    or c
    and h
    add sp, $7f
    add b
    ld a, a
    and [hl]
    xor b
    and l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    add sp, $57
    nop
    sub e
    adc h
    ld sp, hl
    db $fd
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    sub d
    add b
    adc l
    add e
    sub d
    sub e
    adc [hl]
    sub c
    adc h
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    or d
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    xor [hl]
    xor l
    ld d, l
    and c
    xor [hl]
    or e
    and a
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or c
    or d
    add sp, $51
    adc b
    or e
    call nc, $a57f
    xor [hl]
    or c
    ld a, a
    and b
    and e
    or l
    and b
    xor l
    and d
    and h
    and e
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and e
    and b
    or c
    and h
    add sp, $7f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor e
    or h
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    or h
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, c
    xor h
    xor [hl]
    or c
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    or c
    or h
    or d
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and c
    xor b
    xor l
    and e
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    xor l
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $0218
    rlca
    inc bc
    ld bc, $0218
    nop
    ld [bc], a
    ld bc, $0000
    jp $0173


    ld bc, $c300
    ld [hl], e
    ld bc, $0830
    ld b, $06
    nop
    rst $38
    rst $38
    nop
    nop
    sub h
    ld [hl], e
    rst $38
    rst $38
    nop
    nop
    ld d, c
    pop bc
    ld [hl], l
    ld d, c
    dec c
    halt
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and d
    xor e
    xor b
    xor h
    and c
    ld c, a
    xor e
    and h
    and e
    and [hl]
    and h
    or d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor c
    or h
    xor h
    xor a
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    and d
    or h
    or e
    add sp, $57
    nop
    add e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld d, l
    xor a
    and b
    or d
    or e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    xor e
    xor e
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and h
    or l
    and h
    or c
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    nop
    inc b
    nop
    inc b
    ld bc, $0905
    nop
    dec b
    ld [bc], a
    dec b
    add hl, bc
    rlca
    inc b
    ld bc, $0318
    rlca
    dec b
    ld bc, $0318
    nop
    nop
    ld [bc], a
    ld b, e
    ld [$0904], sp
    nop
    rst $38
    rst $38
    add b
    nop
    cp e
    ld [hl], l
    rst $38
    rst $38
    daa
    ld [$040a], sp
    db $10
    rst $38
    rst $38
    and b
    nop
    cp [hl]
    ld [hl], l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
