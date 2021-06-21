; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    nop
    nop
    ld d, e
    dec b
    ld b, b
    nop
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
    ld d, c
    sub l
    adc b
    add d
    sub e
    adc [hl]
    sub c
    sbc b
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld c, a
    add h
    adc l
    sub e
    sub c
    add b
    adc l
    add d
    add h
    ld d, a
    nop
    nop
    ld bc, $0d05
    ld bc, $0d17
    nop
    ld bc, $0f07
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    inc bc
    dec b
    ld b, e
    ld b, b
    ld bc, $4076
    ld [bc], a
    add d
    ld b, b
    ld [hl-], a
    db $d3
    ld [bc], a
    ld [hl-], a
    call nc, $3202
    push de
    ld [bc], a
    ld [hl-], a
    sub $02
    ld [hl-], a
    rst $10
    ld [bc], a
    ld [hl-], a
    ret c

    ld [bc], a
    ld [hl-], a
    reti


    ld [bc], a
    ld [hl-], a
    jp c, $3202

    db $db
    ld [bc], a
    ld [hl-], a
    call c, $3202
    db $dd
    ld [bc], a
    ld [hl-], a
    sbc $02
    ld [hl-], a
    rst $18
    ld [bc], a
    ld [hl-], a
    ldh [rSC], a
    ld [hl-], a
    pop hl
    ld [bc], a
    dec d
    nop
    ld a, [de]
    ld h, e
    reti


    sub b
    ld sp, $0049
    ld [$407d], sp
    sub b
    ld a, d
    ld [de], a
    ld b, $3d
    sub b
    inc e
    dec bc
    ld b, $01
    and l
    ld b, b
    ld b, $02
    or l
    ld b, b
    ld b, $03
    cp [hl]
    ld b, b
    ld b, $04
    rst $00
    ld b, b
    ld b, $05
    ret nc

    ld b, b
    ld b, $06
    reti


    ld b, b
    ld l, [hl]
    rlca
    ld l, [hl]
    ld [$096f], sp
    ld l, a
    ld a, [bc]
    sub b
    ld l, [hl]
    rlca
    dec hl
    ld bc, $ae08
    ld b, b
    ld l, a
    rlca
    ld l, [hl]
    ld [$096e], sp
    ld l, [hl]
    ld a, [bc]
    sub b
    ld l, [hl]
    rlca
    ld l, a
    ld [$096e], sp
    ld l, [hl]
    ld a, [bc]
    sub b
    ld l, [hl]
    rlca
    ld l, [hl]
    ld [$096f], sp
    ld l, [hl]
    ld a, [bc]
    sub b
    ld l, [hl]
    rlca
    ld l, a
    ld [$096e], sp
    ld l, [hl]
    ld a, [bc]
    sub b
    ld l, [hl]
    rlca
    ld l, [hl]
    ld [$096f], sp
    ld l, [hl]
    ld a, [bc]
    sub b
    ld l, [hl]
    rlca
    ld l, a
    ld [$096e], sp
    ld l, a
    ld a, [bc]
    sub b
    add d
    dec b
    add hl, hl
    ld [bc], a
    inc d
    ld b, e
    ld h, c
    ld b, e
    nop
    nop
    xor $40
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, h
    ld b, e
    ld d, h
    ld c, c
    sub c
    adc d
    dec b
    add hl, hl
    ld a, [bc]
    sbc d
    ld b, e
    inc bc
    ld b, h
    nop
    nop
    ld [bc], a
    ld b, c
    ld h, [hl]
    ld b, a
    ld c, h
    db $10
    ld b, h
    ld d, h
    ld c, c
    sub c
    xor $04
    ld e, $0b
    ld d, d
    ld b, h
    adc [hl]
    ld b, h
    nop
    nop
    ld d, $41
    ld h, [hl]
    ld b, a
    ld c, h
    sbc b
    ld b, h
    ld d, h
    ld c, c
    sub c
    rst $28
    inc b
    ld e, $0c
    pop de
    ld b, h
    dec c
    ld b, l
    nop
    nop
    ld a, [hl+]
    ld b, c
    ld h, [hl]
    ld b, a
    ld c, h
    cpl
    ld b, l
    ld d, h
    ld c, c
    sub c
    ld b, a
    inc e
    dec bc
    ld b, $00
    ld b, b
    ld b, c
    ld b, $06
    ld b, b
    ld b, c
    inc bc
    nop
    ld b, e
    sub h
    ld bc, $0021
    ld c, c
    sub c
    ld b, a
    inc [hl]
    ld d, [hl]
    nop
    add hl, bc
    nop
    ld b, e
    inc e
    dec bc
    ld b, $01
    ld d, [hl]
    ld b, c
    inc bc
    nop
    ld b, e
    dec hl
    ld bc, $0008
    ld b, e
    sub h
    ld [bc], a
    nop
    nop
    ld c, c
    sub c
    ld b, a
    inc e
    dec bc
    ld b, $02
    ld [hl], e
    ld b, c
    ld b, $04
    ld [hl], e
    ld b, c
    ld b, $06
    ld [hl], e
    ld b, c
    inc bc
    nop
    ld b, e
    inc [hl]
    ld e, d
    nop
    add hl, bc
    ld [$0f42], sp
    ld d, c
    nop
    ld c, h
    ld sp, hl
    ld b, l
    ld c, [hl]
    ld [$41fc], sp
    inc h
    nop
    nop
    ld bc, $06f4
    ld [bc], a
    ld [bc], a
    ld b, d
    ld c, h
    sbc d
    ld b, [hl]
    ld d, l
    rrca
    ld h, c
    nop
    ld b, $00
    db $fc
    ld b, c
    ld b, $01
    db $fc
    ld b, c
    ld [hl], $5a
    nop
    ld b, $02
    xor c
    ld b, c
    ld b, $03
    or l
    ld b, c
    inc bc
    pop bc
    ld b, c
    inc sp
    nop
    nop
    ld [hl-], a
    ld bc, $3200
    ld [bc], a
    nop
    inc bc
    call $3241
    nop
    nop
    inc sp
    ld bc, $3200
    ld [bc], a
    nop
    inc bc
    call $3241
    nop
    nop
    ld [hl-], a
    ld bc, $3300
    ld [bc], a
    nop
    inc bc
    call $2341
    nop
    nop
    ld bc, $0ff4
    ld d, c
    nop
    ld c, h
    cp b
    ld b, [hl]
    ld d, h
    ld c, c
    rrca
    ld l, $00
    ld a, a
    dec c
    nop
    adc e
    inc a
    rrca
    ld sp, $0f00
    dec a
    nop
    ld b, a
    ld c, h
    ret c

    ld b, [hl]
    ld d, h
    ld sp, $0000
    add hl, bc
    cp e
    ld b, d
    ld sp, $0001
    add hl, bc
    call nz, $0342
    call Call_01f_4c42
    ld [$5446], a
    ld c, c
    sub c
    ld c, h
    add hl, bc
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec hl
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld b, a
    inc e
    dec bc
    ld b, $00
    jr nz, jr_01f_4257

    ld b, $03
    jr nz, @+$44

    ld b, $05
    jr nz, jr_01f_425f

    inc bc
    nop
    ld b, e
    inc [hl]
    ld e, d
    nop
    add hl, bc
    or l
    ld b, d
    rrca
    ld d, c
    nop
    ld c, h
    ld e, h
    ld b, a
    ld c, [hl]
    ld [$42a9], sp
    inc h
    nop
    nop
    ld bc, $062c
    ld [bc], a
    xor a
    ld b, d
    ld c, h
    pop af
    ld b, a
    ld d, l
    rrca
    ld h, d
    nop
    ld b, $00
    xor c
    ld b, d
    ld b, $01
    xor c
    ld b, d
    ld [hl], $5a
    nop
    ld b, $02
    ld d, [hl]
    ld b, d
    ld b, $03
    ld h, d
    ld b, d
    inc bc
    ld l, [hl]
    ld b, d
    inc sp

jr_01f_4257:
    nop
    nop
    ld [hl-], a
    ld bc, $3200
    ld [bc], a
    nop

jr_01f_425f:
    inc bc
    ld a, d
    ld b, d
    ld [hl-], a
    nop
    nop
    inc sp
    ld bc, $3200
    ld [bc], a
    nop
    inc bc
    ld a, d
    ld b, d
    ld [hl-], a
    nop
    nop
    ld [hl-], a
    ld bc, $3300
    ld [bc], a
    nop
    inc bc
    ld a, d
    ld b, d
    inc hl
    nop
    nop
    ld bc, $0f2c
    ld d, c
    nop
    ld c, h
    ld c, $48
    ld d, h
    ld c, c
    rrca
    ld l, $00
    ld a, a
    dec c
    nop
    adc e
    inc a
    rrca
    ld sp, $0f00
    dec a
    nop
    ld b, a
    ld c, h
    ld a, [hl+]
    ld c, b
    ld d, h
    ld sp, $0000
    add hl, bc
    cp e
    ld b, d
    ld sp, $0001
    add hl, bc
    call nz, $0342
    call Call_01f_4c42
    ld b, d
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld e, e
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, e
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    cp a
    ld c, b
    rrca
    ld h, h
    nop
    ld d, h
    ld c, c
    sub c
    ld c, h
    call c, $0f48
    ld h, h
    nop
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor $48
    rrca
    ld h, h
    nop
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld sp, $0049
    add hl, bc
    ld a, [$2142]
    add l
    add hl, bc
    add sp, $42
    ld c, h
    or b
    ld b, l
    ld d, h
    ld c, c
    sub c
    add l
    ld [hl+], a
    nop
    ld c, h
    sub $45
    ld d, h
    ld c, c
    ld a, d
    ld [de], a
    ld b, $2e
    ld a, h
    ld c, c
    inc sp
    ld c, c
    nop
    sub c
    ld c, h
    jp Jump_01f_5445


    ld c, c
    sub c
    ld c, h
    inc b
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld [hl], $01
    ld d, e
    ld a, [de]
    ld c, c
    adc e
    nop
    dec c
    adc h
    nop
    ld de, $008d
    add hl, bc
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and c
    xor [hl]
    xor [hl]
    or e
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    db $e3
    ld d, l
    adc l
    add h
    sub c
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    and a
    and h
    and b
    or e
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    add [hl]
    or c
    or h
    xor h
    and c
    xor e
    and h
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and l
    and b
    xor b
    or c
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or d
    or b
    or h
    and b
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    ld c, a
    or e
    cp b
    xor a
    and h
    ld a, a
    and b
    xor e
    xor b
    and [hl]
    xor l
    xor h
    and h
    xor l
    or e
    or d
    ld a, a
    xor b
    xor l
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or e
    cp b
    xor a
    and h
    ld a, a
    and b
    and e
    or l
    and b
    xor l
    or e
    and b
    and [hl]
    and h
    or d
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and e
    xor [hl]
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    xor b
    xor l
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
    or [hl]
    db $f4
    ld a, a
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    cp b
    xor a
    and h
    ld a, a
    and b
    xor e
    xor b
    and [hl]
    xor l
    xor h
    and h
    xor l
    or e
    or d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    or e
    cp b
    xor a
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    and a
    and b
    xor b
    or c
    and d
    or h
    or e
    rst $20
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    rst $20
    ld d, a
    nop
    add b
    xor b
    cp b
    and h
    and h
    and h
    and h
    rst $20
    ld d, a
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
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    and l
    ld d, c
    cp b
    xor [hl]
    or h
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
    ld c, a
    and a
    and b
    xor b
    or c
    and d
    or h
    or e
    or d
    add sp, $57
    nop
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
    and a
    and b
    or l
    and h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or c
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
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
    ld a, a
    or e
    and a
    and h
    xor h
    rst $20
    ld d, a
    nop
    add [hl]
    and b
    and b
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor h
    and h
    ld a, a
    xor h
    and b
    and e
    rst $20
    ld d, a
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    ld d, h
    add e
    add h
    sub a
    and $7f
    add a
    and h
    or c
    and h
    call nc, $a07f
    ld d, l
    and a
    xor [hl]
    or e
    ld a, a
    or e
    xor b
    xor a
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    add a
    adc b
    adc d
    add h
    sub c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld c, a
    ld sp, hl
    ld sp, hl
    db $f4
    ld a, a
    add b
    adc l
    sub e
    add a
    adc [hl]
    adc l
    sbc b
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and [hl]
    or h
    cp b
    add sp, $51
    add a
    and h
    pop de
    xor e
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    and l
    ld c, a
    and a
    and h
    ld a, a
    or d
    and h
    and h
    or d
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or c
    and b
    or c
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    call nc, $ab7f
    xor [hl]
    and d
    xor d
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add c
    add b
    sub d
    add h
    adc h
    add h
    adc l
    sub e
    ld a, a
    adc d
    add h
    sbc b
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    add sp, $57
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    or c
    or h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub d
    add b
    adc e
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld d, l
    add a
    add b
    adc b
    sub c
    add d
    sub h
    sub e
    ld a, a
    add c
    sub c
    adc [hl]
    sub e
    add a
    add h
    sub c
    sub d
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    ldh a, [$fb]
    or $f6
    add sp, $51
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
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    or e
    and a
    and b
    or e
    and $57
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    xor [hl]
    xor l
    and $57
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    ld c, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    rst $20
    ld a, a
    add b
    xor e
    xor e
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $4f
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    or d
    and a
    and b
    xor h
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    and a
    and b
    xor b
    or c
    and d
    or h
    or e
    ld a, a
    and b
    ld a, a
    and e
    and b
    cp b
    add sp, $7f
    adc b
    jp nc, $a355

    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $57
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
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
    sub d
    add b
    adc e
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor e
    and h
    or d
    or d
    ld a, a
    and h
    or a
    xor a
    and h
    xor l
    db $e3
    ld d, l
    or d
    xor b
    or l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld d, l
    add a
    add b
    adc b
    sub c
    add d
    sub h
    sub e
    ld a, a
    add c
    sub c
    adc [hl]
    sub e
    add a
    add h
    sub c
    sub d
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    or d
    xor a
    xor b
    and l
    and l
    ld a, a
    or h
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    ldh a, [$f9]
    or $f6
    add sp, $51
    sub d
    xor [hl]
    and $7f
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    and $57
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    and $57
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and h
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld c, a
    add b
    xor e
    xor e
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    and $7f
    ld c, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor b
    or d
    and b
    xor a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld c, a
    or d
    and a
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and l
    or h
    xor l
    and e
    or d
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    and a
    and b
    xor b
    or c
    and d
    or h
    or e
    ld a, a
    and b
    ld a, a
    and e
    and b
    cp b
    add sp, $51
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    jp nc, $a07f

    xor e
    xor e
    ld c, a
    and e
    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $57
    ld bc, $d099
    nop
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
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
    and a
    and b
    xor a
    xor a
    xor b
    and h
    or c
    add sp, $57
    ld bc, $d099
    nop
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld c, a
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $57
    ld bc, $d099
    nop
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld c, a
    and e
    and h
    xor e
    xor b
    and [hl]
    and a
    or e
    and h
    and e
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    ld c, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $57
    nop
    adc l
    adc [hl]
    ld a, a
    add h
    adc l
    sub e
    sub c
    sbc b
    ld a, a
    add c
    add h
    sbc b
    adc [hl]
    adc l
    add e
    ld c, a
    sub e
    add a
    adc b
    sub d
    ld a, a
    adc a
    adc [hl]
    adc b
    adc l
    sub e
    ld d, a
    nop
    nop
    ld b, $02
    inc bc
    rlca
    inc bc
    ld [hl], $22
    inc bc
    inc b
    inc bc
    ld [hl], $06
    ld [de], a
    inc b
    inc bc
    dec [hl]
    rra
    dec d
    inc bc
    inc bc
    dec [hl]
    rra
    ld d, $03
    inc bc
    dec [hl]
    dec de
    ld d, $01
    inc bc
    ld [hl], $00
    dec b
    ld b, $12
    nop
    sub $42
    ld b, $13
    nop
    ld [$0d43], sp
    ld b, $07
    dec bc
    ld b, e
    ld [de], a
    inc b
    rlca
    ld c, $43
    ld [$0711], sp
    ld de, $0943
    dec hl
    ld c, $09
    ld [$ff00], sp
    rst $38
    or d
    inc bc
    ld [c], a
    ld b, b
    rst $38
    rst $38
    dec hl
    jr jr_01f_498c

    ld [$ff00], sp
    rst $38
    or d
    ld [bc], a
    or $40
    rst $38

jr_01f_498c:
    rst $38
    dec hl
    inc de
    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    ld a, [bc]
    ld b, c
    rst $38
    rst $38
    dec hl
    ld a, [bc]
    ld b, $09
    nop
    rst $38
    rst $38
    sub d
    inc bc
    ld e, $41
    rst $38
    rst $38
    ld d, h
    dec e
    dec bc
    ld bc, $ff00
    rst $38
    ld bc, $0600
    ld b, e
    ld [hl], d
    ld b, $2f
    rrca
    dec bc
    ld [$ff00], sp
    rst $38
    or b
    nop
    ld b, [hl]
    ld b, c
    ld d, e
    rlca
    dec hl
    ld [de], a
    dec bc
    ld [$ff00], sp
    rst $38
    sub b
    nop
    ld h, c
    ld b, c
    ld d, h
    rlca
    dec hl
    inc de
    dec bc
    ld [$ff00], sp
    rst $38
    and b
    nop
    ld c, $42
    ld d, l
    rlca
    jr nc, jr_01f_49f6

    dec bc
    ld [$ff00], sp
    rst $38
    or b
    nop
    ld [hl-], a
    ld b, c
    ld d, d
    rlca
    ld [bc], a
    push af
    ld c, c
    nop
    nop
    or $49
    nop
    nop
    ld bc, $f701
    ld c, c
    sub c

jr_01f_49f6:
    sub c
    ld sp, $02d7
    ld [$4a01], sp
    ld a, d
    db $10
    ld b, $2d
    ld sp, $02d8
    ld [$4a0b], sp
    ld a, d
    ld a, [bc]
    ld b, $2d
    ld sp, $02d9
    ld [$4a15], sp
    ld a, d
    ld [bc], a
    ld b, $2d
    ld sp, $02da
    ld [$4a1f], sp
    ld a, d
    ld [bc], a
    ld a, [bc]
    dec l
    ld sp, $02db
    ld [$4a29], sp
    ld a, d
    ld a, [bc]
    ld a, [bc]
    dec l
    ld sp, $02dc
    ld [$4a33], sp
    ld a, d
    db $10
    ld a, [bc]
    dec l
    ld sp, $02dd
    ld [$4a41], sp
    ld a, d
    inc c
    ld b, $2a
    ld a, d
    inc c
    ld [$312d], sp
    sbc $02
    ld [$4a4f], sp
    ld a, d
    ld b, $06
    ld a, [hl+]
    ld a, d
    ld b, $08
    dec l
    ld sp, $02df
    ld [$4a5d], sp
    ld a, d
    inc c
    ld a, [bc]
    ld a, [hl+]
    ld a, d
    inc c
    inc c
    dec l
    ld sp, $02e0
    ld [$4a6b], sp
    ld a, d
    ld b, $0a
    ld a, [hl+]
    ld a, d
    ld b, $0c
    dec l
    ld sp, $02e1
    ld [$4a79], sp
    ld a, d
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    ld a, d
    ld [de], a
    inc c
    dec l
    sub b
    ld d, c
    db $76
    ld d, c
    ld d, c
    ret nc

    ld d, c
    halt
    inc bc
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    add l
    inc hl
    nop
    ld l, a
    inc c
    add [hl]
    ld l, c
    inc c
    add a
    ld c, [hl]
    halt
    inc bc
    nop
    call nc, Call_01f_694a
    inc c
    sub d
    ld c, [hl]
    add l
    inc hl
    nop
    ld l, [hl]
    inc c
    inc d
    ld bc, $8286
    sub c
    halt
    inc bc
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    add l
    inc hl
    nop
    ld l, a
    inc c
    add [hl]
    ld l, c
    inc c
    adc h
    ld c, [hl]
    halt
    inc bc
    nop
    call nc, Call_01f_694a
    inc c
    sub a
    ld c, [hl]
    add l
    inc hl
    nop
    ld l, [hl]
    inc c
    inc d
    ld bc, $8286
    sub c
    ld sp, $06c5
    add hl, bc
    pop hl
    ld c, d
    inc sp
    push bc
    ld b, $12
    inc bc
    dec c
    ld bc, $1f7f
    nop
    ld b, a
    ld c, h
    sbc l
    ld c, [hl]
    ld d, h
    ld c, c
    inc sp
    pop bc
    ld b, $31
    inc e
    nop
    add hl, bc
    add hl, bc
    ld c, e
    ld sp, $001d
    add hl, bc
    add hl, de
    ld c, e
    ld h, h
    ld e, l
    ld c, a
    ld [bc], a
    ld d, c
    ld l, b
    inc c
    ld e, [hl]
    add hl, bc
    inc c
    ld e, a
    add e
    ld h, b
    inc bc
    add hl, hl
    ld c, e
    ld h, h
    ld e, l
    ld c, a
    ld [bc], a
    ld d, c
    ld l, b
    inc c
    ld e, [hl]
    add hl, bc
    ld a, [bc]
    ld e, a
    add e
    ld h, b
    inc bc
    add hl, hl
    ld c, e
    ld h, h
    ld e, l
    ld c, a
    ld [bc], a
    ld d, c
    ld l, b
    inc c
    ld e, [hl]
    add hl, bc
    dec bc
    ld e, a
    add e
    ld h, b
    inc bc
    add hl, hl
    ld c, e
    ld a, a
    jr nz, jr_01f_4b2c

jr_01f_4b2c:
    ld b, a
    ld c, h
    jp nz, Jump_01f_544f

    ld c, c
    sub c
    ei
    inc b
    rra
    dec bc
    dec hl
    ld d, d
    ld l, a
    ld d, d
    nop
    nop
    ccf
    ld c, e
    ld h, [hl]
    ld b, a
    ld c, h
    sub b
    ld d, d
    ld d, h
    ld c, c
    sub c
    add hl, bc
    dec b
    rra
    add hl, de
    ret c

    ld d, d
    dec [hl]
    ld d, e
    nop
    nop
    ld d, e
    ld c, e
    ld h, [hl]
    ld b, a
    ld c, h
    ld b, a
    ld d, e
    ld d, h
    ld c, c
    sub c
    dec l
    inc b
    cpl
    ld bc, $53ae
    rst $00
    ld d, e
    nop
    nop
    ld h, a
    ld c, e
    ld h, [hl]
    ld b, a
    ld c, h
    rst $08
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld l, $04
    cpl
    ld [bc], a
    ei
    ld d, e
    ld c, h
    ld d, h
    nop
    nop
    ld a, e
    ld c, e
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, e
    ld d, h
    ld d, h
    ld c, c
    sub c
    db $fd
    inc b
    rra
    dec c
    or d
    ld d, h
    db $fc
    ld d, h
    nop
    nop
    adc a
    ld c, e
    ld h, [hl]
    ld b, a
    ld c, h
    rra
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld [de], a
    dec b
    ld b, d
    inc bc
    ld l, e
    ld d, l
    sub $55
    nop
    nop
    and e
    ld c, e
    ld h, [hl]
    ld b, a
    ld c, h
    and $55
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld d, h
    ld d, l
    ld d, l
    ld sp, $02d3
    add hl, bc
    bit 1, e
    ld c, h
    rla
    ld d, [hl]
    ld c, [hl]
    ld [$4c8b], sp
    add hl, de
    ld h, e
    reti


    ld d, $01
    ld a, [de]
    ld h, e
    reti


    inc sp
    db $d3
    ld [bc], a
    inc bc
    adc l
    ld c, h
    ld c, h
    dec l
    ld d, [hl]
    ld c, [hl]
    ld [$4c8b], sp
    add hl, de
    ld h, e
    reti


    ld d, $ff
    ld a, [de]
    ld h, e
    reti


    ld [hl-], a
    db $d3
    ld [bc], a
    inc bc
    adc l
    ld c, h
    ld b, a
    ld c, h
    ld b, e
    ld d, [hl]
    ld d, l
    ld sp, $02d4
    add hl, bc
    nop
    ld c, h
    ld c, h
    rla
    ld d, [hl]
    ld c, [hl]
    ld [$4c8b], sp
    add hl, de
    ld h, e
    reti


    ld d, $02
    ld a, [de]
    ld h, e
    reti


    inc sp
    call nc, $0302
    adc l
    ld c, h
    ld c, h
    dec l
    ld d, [hl]
    ld c, [hl]
    ld [$4c8b], sp
    add hl, de
    ld h, e
    reti


    ld d, $fe
    ld a, [de]
    ld h, e
    reti


    ld [hl-], a
    call nc, $0302
    adc l
    ld c, h
    ld b, a
    ld c, h
    ld e, d
    ld d, [hl]
    ld d, l
    ld sp, $02d5
    add hl, bc
    dec [hl]
    ld c, h
    ld c, h
    rla
    ld d, [hl]
    ld c, [hl]
    ld [$4c8b], sp
    add hl, de
    ld h, e
    reti


    ld d, $03
    ld a, [de]
    ld h, e
    reti


    inc sp
    push de
    ld [bc], a
    inc bc
    adc l
    ld c, h
    ld c, h
    dec l
    ld d, [hl]
    ld c, [hl]
    ld [$4c8b], sp
    add hl, de
    ld h, e
    reti


    ld d, $fd
    ld a, [de]

Call_01f_4c42:
    ld h, e
    reti


    ld [hl-], a
    push de
    ld [bc], a
    inc bc
    adc l
    ld c, h
    ld b, a
    ld c, h
    ld [hl], c
    ld d, [hl]
    ld d, l
    ld sp, $02d6
    add hl, bc
    ld [hl], b
    ld c, h
    ld c, h
    rla
    ld d, [hl]
    ld c, [hl]
    ld [$4c8b], sp
    dec d
    rlca
    ld a, [de]
    ld h, e
    reti


    inc sp
    sub $02
    inc sp
    db $d3
    ld [bc], a
    inc sp
    call nc, $3302
    push de
    ld [bc], a
    inc bc
    adc l
    ld c, h
    ld c, h
    dec l
    ld d, [hl]
    ld c, [hl]
    ld [$4c8b], sp
    dec d
    nop
    ld a, [de]
    ld h, e
    reti


    ld [hl-], a
    sub $02
    ld [hl-], a
    db $d3
    ld [bc], a
    ld [hl-], a
    call nc, $3202
    push de
    ld [bc], a
    inc bc
    adc l
    ld c, h
    ld c, c
    sub c
    add hl, de
    ld h, e
    reti


    ld b, $00
    or b
    ld c, h
    ld b, $01
    rst $10
    ld c, h
    ld b, $02
    ld a, [c]
    ld c, h
    ld b, $03
    dec c
    ld c, l
    ld b, $04
    jr z, jr_01f_4cf1

    ld b, $05
    ld b, e
    ld c, l
    ld b, $06
    ld e, [hl]
    ld c, l
    ld b, $07
    ld a, c
    ld c, l
    add l
    rra
    nop
    nop
    ld de, $004e
    add hl, de
    ld c, [hl]
    nop
    ld hl, $004e
    add hl, hl
    ld c, [hl]
    nop
    ld sp, $004e
    add hl, sp
    ld c, [hl]
    nop
    ld b, c
    ld c, [hl]
    nop
    ld c, l
    ld c, [hl]
    nop
    ld e, c
    ld c, [hl]
    nop
    ld h, l
    ld c, [hl]
    nop
    ld [hl], c
    ld c, [hl]
    ld a, h
    ld c, c
    sub c
    add l
    rra
    nop
    nop
    and l
    ld c, l
    nop
    push de
    ld c, l
    nop
    ld sp, hl
    ld c, l
    nop
    add hl, sp
    ld c, [hl]
    nop
    ld c, l
    ld c, [hl]
    nop
    ld e, c
    ld c, [hl]
    nop
    ld [hl], c
    ld c, [hl]
    ld a, h
    ld c, c

jr_01f_4cf1:
    sub c
    add l
    rra
    nop
    nop
    xor l
    ld c, l
    nop
    pop hl
    ld c, l
    nop
    db $ed
    ld c, l
    nop
    ld sp, $004e
    ld b, c
    ld c, [hl]
    nop
    ld h, l
    ld c, [hl]
    nop
    ld [hl], c
    ld c, [hl]
    ld a, h
    ld c, c
    sub c
    add l
    rra
    nop
    nop
    or l
    ld c, l
    nop
    push de
    ld c, l
    nop
    ld sp, hl
    ld c, l
    nop
    add hl, hl
    ld c, [hl]
    nop
    ld c, l
    ld c, [hl]
    nop
    ld e, c
    ld c, [hl]
    nop
    ld [hl], c
    ld c, [hl]
    ld a, h
    ld c, c
    sub c
    add l
    rra
    nop
    nop
    cp l
    ld c, l
    nop
    pop hl
    ld c, l
    nop
    db $ed
    ld c, l
    nop
    ld hl, $004e
    ld b, c
    ld c, [hl]
    nop
    ld h, l
    ld c, [hl]
    nop
    ld [hl], c
    ld c, [hl]
    ld a, h
    ld c, c
    sub c
    add l
    rra
    nop
    nop
    push bc
    ld c, l
    nop
    push de
    ld c, l
    nop
    ld sp, hl
    ld c, l
    nop
    add hl, de
    ld c, [hl]
    nop
    ld c, l
    ld c, [hl]
    nop
    ld e, c
    ld c, [hl]
    nop
    ld [hl], c
    ld c, [hl]
    ld a, h
    ld c, c
    sub c
    add l
    rra
    nop
    nop
    call $004d
    pop hl
    ld c, l
    nop
    db $ed
    ld c, l
    nop
    dec b
    ld c, [hl]
    nop
    ld de, $004e
    ld b, c
    ld c, [hl]
    nop
    ld h, l
    ld c, [hl]
    ld a, h
    ld c, c
    sub c
    add l
    rra
    nop
    nop
    ld de, $004e
    add hl, de
    ld c, [hl]
    nop
    or l
    ld c, l
    nop
    add hl, hl
    ld c, [hl]
    nop
    push bc
    ld c, l
    nop
    call $004d
    ld b, c
    ld c, [hl]
    nop
    pop hl
    ld c, l
    nop
    db $ed
    ld c, l
    nop
    ld h, l
    ld c, [hl]
    nop
    dec b
    ld c, [hl]
    ld a, h
    ld c, c
    dec d
    ld b, $1a
    ld h, e
    reti


    sub c
    ld a, d
    db $10
    ld b, $2d
    inc sp
    rst $10
    ld [bc], a
    sub c
    ld a, d
    ld a, [bc]
    ld b, $2d
    inc sp
    ret c

    ld [bc], a
    sub c
    ld a, d
    ld [bc], a
    ld b, $2d
    inc sp
    reti


    ld [bc], a
    sub c
    ld a, d
    ld [bc], a
    ld a, [bc]
    dec l
    inc sp
    jp c, $9102

    ld a, d
    ld a, [bc]
    ld a, [bc]
    dec l
    inc sp
    db $db
    ld [bc], a
    sub c
    ld a, d
    db $10
    ld a, [bc]
    dec l
    inc sp
    call c, $9102
    ld a, d
    inc c
    ld b, $2a
    ld a, d
    inc c
    ld [$332d], sp
    db $dd
    ld [bc], a
    sub c
    ld a, d
    ld b, $06
    ld a, [hl+]
    ld a, d
    ld b, $08
    dec l
    inc sp
    sbc $02
    sub c
    ld a, d
    inc c
    ld a, [bc]
    ld a, [hl+]
    ld a, d
    inc c
    inc c
    dec l
    inc sp
    rst $18
    ld [bc], a
    sub c
    ld a, d
    ld b, $0a
    ld a, [hl+]
    ld a, d
    ld b, $0c
    dec l
    inc sp
    ldh [rSC], a
    sub c
    ld a, d
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    ld a, d
    ld [de], a
    inc c
    dec l
    inc sp
    pop hl
    ld [bc], a
    sub c
    ld a, d
    db $10
    ld b, $3e
    ld [hl-], a
    rst $10
    ld [bc], a
    sub c
    ld a, d
    ld a, [bc]
    ld b, $3e
    ld [hl-], a
    ret c

    ld [bc], a
    sub c
    ld a, d
    ld [bc], a
    ld b, $3e
    ld [hl-], a
    reti


    ld [bc], a
    sub c
    ld a, d
    ld [bc], a
    ld a, [bc]
    ld a, $32
    jp c, $9102

    ld a, d
    ld a, [bc]
    ld a, [bc]
    ld a, $32
    db $db
    ld [bc], a
    sub c
    ld a, d
    db $10
    ld a, [bc]
    ld a, $32
    call c, $9102
    ld a, d
    inc c
    ld b, $3f
    ld a, d
    inc c
    ld [$323d], sp
    db $dd
    ld [bc], a
    sub c
    ld a, d
    ld b, $06
    ccf
    ld a, d
    ld b, $08
    dec a
    ld [hl-], a
    sbc $02
    sub c
    ld a, d
    inc c
    ld a, [bc]
    ccf
    ld a, d
    inc c
    inc c
    dec a
    ld [hl-], a
    rst $18
    ld [bc], a
    sub c
    ld a, d
    ld b, $0a
    ccf
    ld a, d
    ld b, $0c
    dec a
    ld [hl-], a
    ldh [rSC], a
    sub c
    ld a, d
    ld [de], a
    ld a, [bc]
    ccf
    ld a, d
    ld [de], a
    inc c
    dec a
    ld [hl-], a
    pop hl
    ld [bc], a
    sub c
    ld l, d
    ld bc, $0126
    adc [hl]
    nop
    rrca
    adc a
    nop
    daa
    inc c
    ld c, $0e
    ld c, $47
    inc c
    inc c
    ld c, $0e
    ld c, $47
    rrca
    rrca
    rrca
    dec c
    ld b, a
    rrca
    rrca
    rrca
    dec c
    dec c
    ld b, a
    nop
    add a
    xor [hl]
    xor e
    and e
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld c, a
    or e
    and b
    xor b
    xor e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or h
    xor l
    and e
    and h
    or c
    and l
    xor [hl]
    xor [hl]
    or e
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    adc b
    ld d, c
    or e
    and b
    xor d
    and h
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    sub e
    add h
    add b
    adc h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    add sp, $51
    ld [hl], l
    sub [hl]
    and b
    xor b
    or e
    ld a, a
    and b
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    add sp, $4f
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and c
    and h
    db $e3
    ld d, l
    and l
    xor [hl]
    or c
    and h
    db $f4
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    sub e
    and a
    and b
    or e
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
    and b
    ld c, a
    and l
    xor e
    or h
    xor d
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    or c
    and h
    xor a
    and b
    cp b
    ld a, a
    xor h
    cp b
    ld c, a
    and e
    and h
    and c
    or e
    or d
    rst $20
    ld d, a
    nop
    ld [hl], l
    sub [hl]
    and a
    cp b
    ld [hl], l
    ld c, a
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    and $51
    adc b
    sub $a4
    ld a, a
    and b
    or d
    or d
    and h
    xor h
    and c
    xor e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    and h
    and b
    or d
    and h
    ld a, a
    or h
    xor a
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    or d
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    or [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    and $57
    nop
    ld [hl], l
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    db $e3
    ld c, a
    or d
    or e
    and b
    xor l
    and e
    ld [hl], l
    ld d, c
    adc b
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc e
    add b
    adc l
    add d
    add h
    ld c, a
    and [hl]
    or h
    cp b
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    or c
    or h
    and h
    and $51
    sub e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or e
    or c
    and h
    and b
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    xor e
    cp b
    and $51
    adc e
    xor [hl]
    or l
    and h
    ld [hl], l
    ld d, c
    sub e
    or c
    or h
    or d
    or e
    ld [hl], l
    ld d, c
    add b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    xor e
    and b
    and d
    xor d
    and $51
    add b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor d
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    and $51
    adc b
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
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
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and h
    xor l
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc l
    xor [hl]
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $7f
    adc l
    xor [hl]
    or e
    ld c, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or h
    xor a
    ld a, a
    xor h
    cp b
    ld c, a
    and e
    or c
    and h
    and b
    xor h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld d, c
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    call nc, $a17f
    and h
    or d
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, a
    nop
    add a
    or h
    xor h
    xor a
    and a
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld c, a
    or c
    and h
    and b
    xor e
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    db $f4
    ld a, a
    or [hl]
    xor b
    xor h
    xor a
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    sub e
    add h
    add b
    adc h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    and a
    xor b
    or d
    or e
    xor [hl]
    or c
    cp b
    add sp, $51
    add b
    xor l
    and e
    ld a, a
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    or c
    xor b
    xor l
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc e
    add b
    adc l
    add d
    add h
    ld d, l
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    and a
    and h
    and h
    xor e
    or d
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    db $e3
    ld d, l
    or d
    or e
    and b
    xor b
    or c
    or d
    add sp, $51
    adc b
    or e
    call nc, $b17f
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    or c
    and h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ret nc

    ld d, l
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
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
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    or d
    and a
    xor [hl]
    xor a
    or d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    or d
    or e
    and b
    xor b
    or c
    or d
    ld [hl], l
    ld d, c
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
    ld c, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $51
    adc b
    jp nc, $b27f

    and d
    and b
    or c
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc [hl]
    xor a
    and h
    xor l
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or d
    and a
    or h
    or e
    or e
    and h
    or c
    db $f4
    ld c, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    or d
    add sp, $51
    add c
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    rst $20
    ld d, a
    nop
    add e
    or c
    and b
    or e
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    or h
    xor l
    xor d
    ld c, a
    and c
    cp b
    ld a, a
    xor b
    xor l
    and e
    and h
    and d
    xor b
    or d
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $a27f

    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld [hl], l
    ld c, a
    sub e
    and a
    and h
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    and h
    xor l
    and e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor a
    or c
    and h
    or d
    or d
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, a
    nop
    adc d
    or [hl]
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, c
    add d
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
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and a
    or h
    or e
    or e
    and h
    or c
    or d
    db $f4
    ld a, a
    and b
    or c
    and h
    ld a, a
    or [hl]
    and h
    and $51
    adc b
    pop de
    xor e
    ld a, a
    xor e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub h
    or [hl]
    or [hl]
    or [hl]
    ld [hl], l
    ld c, a
    adc b
    ld a, a
    and c
    xor e
    and h
    or [hl]
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add b
    xor e
    xor e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    add sp, $7f
    add b
    ld a, a
    and a
    xor b
    xor l
    or e
    rst $20
    ld d, c
    add d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    ld c, a
    xor [hl]
    and l
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    and b
    or e
    pop de
    xor e
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    or h
    or e
    or e
    and h
    or c
    or d
    ld d, l
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    add sp, $57
    nop
    add l
    xor [hl]
    or c
    xor d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    xor b
    and h
    or d
    rst $20
    ld d, a
    nop
    adc h
    and h
    or c
    and d
    cp b
    rst $20
    ld d, a
    nop
    sub d
    or e
    and h
    and b
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    xor e
    xor e
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $a17f
    and b
    or d
    xor b
    and d
    ld a, a
    xor b
    xor l
    ld d, l
    and d
    or c
    xor b
    xor h
    and h
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
    and e
    xor b
    or e
    and d
    and a
    and h

Jump_01f_5407:
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor a
    or c
    xor [hl]
    xor c
    and h
    and d
    or e
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld d, l
    or e
    and a
    and h
    cp b
    ld a, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    and e
    add sp, $51
    adc b
    jp nc, $b27f

    and h
    and b
    or c
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor e
    and h
    and l
    or e
    xor [hl]
    or l
    and h
    or c

Jump_01f_5445:
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    or e
    add sp, $57
    nop
    adc [hl]
    or l

Jump_01f_544f:
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    xor a
    rst $20
    ld d, a
    nop
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    sub [hl]
    add b
    sub c
    add h
    db $e3
    ld c, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    and $51
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
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
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    xor b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    or h
    xor a
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    or h
    or e
    ld d, l
    and b
    ld a, a
    or l
    xor b
    and d
    or e
    xor b
    xor h
    rst $20
    ld d, a
    nop
    sub h
    or c
    xor d
    rst $20
    ld a, a
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    db $f4
    ld a, a
    and a
    or h
    and a
    and $57
    nop
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
    xor b
    and d
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or l
    and h
    xor b
    xor l
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    and e
    xor b
    or d
    ld a, a
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    add sp, $57
    nop
    adc b
    or e
    call nc, $ab7f
    and b
    and c
    and h
    xor e
    and h
    and e
    ld c, a
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    ld a, a
    rst $30
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
    xor e
    xor [hl]
    or d
    or e
    and $7f
    adc l
    xor [hl]
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    and d
    and b
    or c
    and h
    and e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
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
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld d, l
    or d
    and d
    and b
    or c
    and h
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    add [hl]
    xor [hl]
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    or l
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    ret nc

    ld c, a
    xor e
    xor b
    xor d
    and h
    rst $20
    ld a, a
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, l
    sub d
    and h
    and h
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    and d
    and b
    or c
    and h
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $8e7f
    add l
    add l
    add sp, $4f
    sub e
    or h
    or c
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    adc [hl]
    adc l
    and $57
    nop
    adc b
    or e
    call nc, $8e7f
    adc l
    add sp, $4f
    sub e
    or h
    or c
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    adc [hl]
    add l
    add l
    and $57
    nop
    adc b
    or e
    call nc, $ab7f
    and b
    and c
    and h
    xor e
    and h
    and e
    ld c, a
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    ld a, a
    ld hl, sp-$18
    ld d, a
    nop
    adc b
    or e
    call nc, $ab7f
    and b
    and c
    and h
    xor e
    and h
    and e
    ld c, a
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    ld a, a
    ld sp, hl
    add sp, $57
    nop
    adc b
    or e
    call nc, $ab7f
    and b
    and c
    and h
    xor e
    and h
    and e
    ld c, a
    add h
    adc h
    add h
    sub c
    add [hl]
    add h
    adc l
    add d
    sbc b
    add sp, $57
    nop
    nop
    add hl, bc
    inc bc
    rla
    ld b, $03
    dec [hl]
    ld a, [bc]
    ld d, $01
    inc bc
    jr c, jr_01f_56a1

    rla
    ld [bc], a
    inc bc
    jr c, jr_01f_56b5

    dec b
    ld [bc], a
    inc bc
    dec [hl]
    dec e

jr_01f_56a1:
    inc b
    ld c, $0b
    ld [bc], a
    dec e
    dec b
    ld c, $0b
    ld [bc], a
    rla
    dec d
    ld bc, $3503
    dec e
    inc d
    dec c
    dec bc
    ld [bc], a
    dec e

jr_01f_56b5:
    dec d
    dec c
    dec bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc de
    nop
    add b
    ld c, d
    nop
    nop
    nop
    dec b
    inc de
    nop
    xor d
    ld c, d
    nop
    nop
    ld b, $01
    stop
    xor e
    ld c, e
    ld bc, $000a
    ldh [rWX], a
    ld bc, $0002
    dec d
    ld c, h
    dec bc
    inc d
    nop
    ld c, d
    ld c, h
    add hl, bc
    ld [$8107], sp
    ld c, [hl]
    ld [$0701], sp
    add h
    ld c, [hl]
    dec bc
    ld c, e
    inc c
    ld [$0008], sp
    rst $38
    rst $38
    and d
    ld [bc], a
    ld e, e
    ld c, e
    adc $06
    ld c, e
    db $10
    dec c
    add hl, bc
    nop
    rst $38
    rst $38
    and d
    ld [bc], a
    ld l, a
    ld c, e
    adc $06
    dec [hl]
    ld b, $1b
    ld b, $00
    rst $38
    rst $38
    ld [bc], a
    inc bc
    add e
    ld c, e
    adc $06
    dec [hl]
    ld b, $0f
    ld b, $00
    rst $38
    rst $38
    ld [bc], a
    inc bc
    inc sp
    ld c, e
    adc $06
    dec [hl]
    ld b, $07
    ld b, $00
    rst $38
    rst $38
    ld [bc], a
    inc bc
    ld b, a
    ld c, e
    adc $06
    ld [hl], $10
    rla
    ld b, $00
    rst $38
    rst $38
    add d
    ld bc, $4b97
    adc $06
    add hl, hl
    rra
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld a, l
    ld c, d
    rst $38
    rst $38
    dec hl
    rra
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld a, d
    ld c, d
    rst $38
    rst $38
    ld d, h
    db $10
    dec b
    ld bc, $ff00
    rst $38
    ld bc, $7d00
    ld c, [hl]
    ld [hl], e
    ld b, $54
    dec c
    ld [de], a
    ld bc, $ff00
    rst $38
    ld bc, $7f00
    ld c, [hl]
    ld [hl], h
    ld b, $04
    rlca
    dec de
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $c1
    ld b, $00
    ld [bc], a
    ld bc, $5781
    dec b
    xor h
    ld d, a
    ld sp, $004a
    add hl, bc
    adc d
    ld d, a
    inc bc
    sub c
    ld d, a
    ld a, d
    db $10
    inc b
    dec c
    inc bc
    sub c
    ld d, a
    ld sp, $0305
    add hl, bc
    and d
    ld d, a
    ld sp, $0306
    add hl, bc
    and a
    ld d, a
    ld a, d
    ld a, [bc]
    ld [$900d], sp
    ld a, d
    inc b
    ld a, [bc]
    dec c
    sub b
    ld a, d
    ld a, [bc]
    inc c
    dec c
    sub b
    ld [hl-], a
    rlca
    inc bc
    sub b
    ld d, c
    bit 2, a
    ld d, c
    inc l
    ld e, b
    ld d, c
    ld [hl], l
    ld e, b
    ld b, a
    ld c, h
    cp e
    ld e, b
    add h
    ld b, e
    nop
    ld d, h
    ld c, c
    sub c
    ccf
    ld bc, $015b
    ld a, [bc]
    ld bc, $0102
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    or d
    ld a, a
    or h
    xor a
    rst $20
    ld d, c
    adc [hl]
    or h
    or c
    ld a, a
    xor a
    xor [hl]
    xor e
    xor b
    and d
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and c
    and h
    and a
    xor b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld d, c
    or d
    and d
    and h
    xor l
    and h
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor l
    xor [hl]
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    and h
    ld a, a
    or h
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    and b
    or d
    or d
    xor b
    xor [hl]
    xor l
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    xor b
    and l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld d, l
    xor [hl]
    xor l
    and h
    call nc, $b67f
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld a, a
    xor d
    xor b
    and e
    db $f4
    ld c, a
    or d
    and d
    xor [hl]
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and a
    and b
    and a
    rst $20
    ld a, a
    adc [hl]
    xor [hl]
    and a
    and b
    and a
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or d
    or e
    or h
    and l
    and l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    call nc, $a97f
    or h
    xor l
    xor d
    add sp, $51
    sub e
    and b
    xor d
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
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc h
    add b
    add d
    add a
    adc [hl]
    adc d
    add h
    sbc h
    ld a, a
    adc h
    and b
    and b
    and b
    and d
    and a
    xor [hl]
    rst $20
    ld d, a
    nop
    nop
    inc bc
    ld [bc], a
    ld de, $0303
    jr c, jr_01f_58db

    add hl, bc
    ld bc, $110b

jr_01f_58db:
    inc b
    ld a, [bc]
    ld [bc], a
    dec bc
    ld de, $0000
    ld [$1354], sp
    ld c, $01
    nop
    rst $38
    rst $38
    ld bc, $c300
    ld d, a
    ld [hl], l
    ld b, $54
    ld b, $12
    ld bc, $ff00
    rst $38
    ld bc, $c500
    ld d, a
    db $76
    ld b, $54
    rlca
    ld a, [bc]
    ld bc, $ff00
    rst $38
    ld bc, $c700
    ld d, a
    ld [hl], a
    ld b, $54
    inc de
    inc de
    ld bc, $ff00
    rst $38
    ld bc, $c900
    ld d, a
    ld a, b
    ld b, $41
    ld c, $0d
    inc b
    db $10
    rst $38
    rst $38
    and b
    nop
    or b
    ld d, a
    rst $38
    rst $38
    ld b, c
    inc c
    ld [$0003], sp
    rst $38
    rst $38
    add b
    nop
    or e
    ld d, a
    rst $38
    rst $38
    ld b, c
    ld de, $050a
    ld bc, $ffff
    sub b
    nop
    or [hl]
    ld d, a
    rst $38
    rst $38
    sbc d
    dec bc
    dec bc
    ld d, $00
    rst $38
    rst $38
    sub b
    nop
    cp c
    ld d, a
    rst $38
    rst $38
    nop
    ld bc, $5005
    ld e, c
    ld [hl-], a
    db $d3
    ld [bc], a
    ld [hl-], a
    call nc, $3202
    push de
    ld [bc], a
    ld [hl-], a
    sub $02
    ld [hl-], a
    rst $10
    ld [bc], a
    ld [hl-], a
    ret c

    ld [bc], a
    ld [hl-], a
    reti


    ld [bc], a
    ld [hl-], a
    jp c, $3202

    db $db
    ld [bc], a
    ld [hl-], a
    call c, $3202
    db $dd
    ld [bc], a
    ld [hl-], a

jr_01f_5972:
    sbc $02
    ld [hl-], a
    rst $18
    ld [bc], a
    ld [hl-], a
    ldh [rSC], a
    ld [hl-], a
    pop hl
    ld [bc], a
    dec d
    nop
    ld a, [de]
    ld h, e
    reti


    sub b
    ld [$1f05], sp
    jr jr_01f_5972

    ld e, c
    inc [hl]
    ld e, d
    nop
    nop
    adc a
    ld e, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, b
    ld e, d
    ld d, h
    ld c, c
    sub c
    cp $04
    rra
    ld c, $a7
    ld e, d
    or $5a
    nop
    nop
    and e
    ld e, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld bc, $545b
    ld c, c
    sub c
    rst $38
    inc b
    rra
    rrca
    daa
    ld e, e
    ld l, e
    ld e, e
    nop
    nop
    or a
    ld e, c
    ld h, [hl]
    ld b, a
    ld c, h
    adc [hl]
    ld e, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $004a
    add hl, bc
    sbc $59
    ld c, h
    add $5b
    ld d, l
    sbc [hl]
    ld a, a
    ld bc, $4a33
    nop
    inc sp
    inc b
    inc bc
    ld [hl-], a
    dec b
    inc bc
    ld [hl-], a
    ld b, $03
    ld c, h
    ld e, e
    ld e, h
    ld d, l
    ld c, h
    adc l
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld b, b
    ld bc, $01e3
    ld [bc], a
    ld bc, $8700
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and l
    and b
    or c
    and $51
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and c
    and h
    ld a, a
    and a
    and h
    xor e
    xor a
    and h
    and e
    add sp, $7f
    adc b
    pop de
    xor e
    ld d, l
    and e
    xor b
    or d
    xor a
    xor [hl]
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and e
    xor b
    or d
    xor a
    xor [hl]
    or d
    and h
    and e
    ld a, a
    xor [hl]
    and l
    ld [hl], l
    ld d, a
    nop
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or [hl]
    and b
    xor b
    or e
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    ld d, l
    xor [hl]
    and l
    ld a, a
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    add sp, $51
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    and e
    xor [hl]
    ld a, a
    or [hl]
    and a
    and b
    or e
    and h
    or l
    and h
    or c
    ld c, a
    xor b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    and l
    and b
    or c
    or e
    and a
    and h
    or c
    rst $20
    ld d, c
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    or c
    and d
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld d, l
    and h
    or l
    and h
    xor l
    ld a, a
    and c
    or c
    and b
    or e
    or d
    rst $20
    ld d, a
    nop
    add c
    xor e
    and b
    or d
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld c, a
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    rst $20
    ld d, a
    nop
    add a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    rst $20
    ld c, a
    adc b
    ld a, a
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and b
    or e
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and a
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    add a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    rst $20
    ld c, a
    sub d
    xor [hl]
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a77f
    xor [hl]
    or [hl]
    and $57
    nop
    add a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    and c
    xor e
    and b
    or d
    or e
    rst $20
    ld d, l
    adc b
    pop de
    xor e
    ld a, a
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    sbc h
    ld a, a
    sub [hl]
    and a
    xor [hl]
    and $4f
    sub [hl]
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    or c
    and h
    or d
    and d
    or h
    and h
    ld a, a
    xor h
    and h
    and $51
    sub e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    rst $20
    ld d, c
    sub [hl]
    and a
    and b
    or e
    call nc, $a77f
    and b
    xor a
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    or c
    and h
    and $51
    sub e
    and b
    xor d
    and h
    xor l
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and c
    cp b
    ld a, a
    sub e
    add h
    add b
    adc h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    and $51
    add a
    and h
    or c
    and h
    add sp, $7f
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    add d
    add b
    sub c
    add e
    ld a, a
    adc d
    add h
    sbc b
    add sp, $57
    nop
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    sbc h
    ld a, a
    sub h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    or h
    or e
    db $e3
    ld d, l
    or e
    and h
    or c
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    ld sp, hl
    add l
    add sp, $57
    nop
    adc b
    jp nc, $a17f

    and h
    and [hl]
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and h
    xor e
    xor a
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    or e
    and h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    pop de
    xor e
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor b
    and l
    ld d, c
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    or c
    and b
    xor l
    or d
    xor h
    xor b
    or e
    or e
    and h
    or c
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and c
    and h
    ld c, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or d
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld [hl], l
    ld d, c
    add b
    xor l
    and e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    xor l
    and b
    or e
    xor b
    xor [hl]
    xor l
    or [hl]
    xor b
    and e
    and h
    rst $20
    ld d, a
    nop
    nop
    inc bc
    inc c
    ld [bc], a
    ld [bc], a
    inc bc
    ld [hl], $0c
    inc bc
    inc bc
    inc bc
    ld [hl], $02
    ld de, $0301
    scf
    nop
    nop
    rlca
    dec [hl]
    inc de
    ld de, $0007
    rst $38
    rst $38
    ld [bc], a
    inc bc
    add e
    ld e, c
    adc $06
    dec [hl]
    db $10
    ld d, $08
    nop
    rst $38
    rst $38
    ld [bc], a
    dec b
    sub a
    ld e, c
    adc $06
    dec [hl]
    rrca
    ld de, $0006
    rst $38
    rst $38
    ld [bc], a
    inc b
    xor e
    ld e, c
    adc $06
    ld b, b
    inc c
    db $10
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
    ld e, c
    adc $06
    ld d, h
    inc de
    dec c
    ld bc, $ff00
    rst $38
    ld bc, $e400
    ld e, c
    ld a, c
    ld b, $54
    dec c
    ld de, $0001
    rst $38
    rst $38
    ld bc, $e600
    ld e, c
    ld a, d
    ld b, $54
    dec b
    rlca
    ld bc, $ff00
    rst $38
    ld bc, $e800
    ld e, c
    ld d, l
    ld b, $00
    nop
    ccf
    ld bc, $0127
    sub b
    nop
    stop
    nop
    add hl, bc
    ld hl, $0303
    ld [bc], a
    dec b
    ld hl, $0411
    ld [bc], a
    dec b
    ld hl, $0525
    ld [bc], a
    dec b
    dec b
    ld de, $0301
    dec sp
    dec d
    dec bc
    ld bc, $3a03
    dec d
    dec e
    ld [bc], a
    inc bc
    ld a, [hl-]
    dec e
    ld de, $0302
    inc a
    dec c
    add hl, bc
    inc bc
    inc bc
    ld a, [hl-]
    dec c
    ld hl, $0304
    ld a, [hl-]
    nop
    ld bc, $1916
    rlca
    ld a, [$025d]
    ld d, h
    inc d
    jr jr_01f_5e3a

    nop

jr_01f_5e3a:
    rst $38
    rst $38
    ld bc, $f600
    ld e, l
    ld a, e
    ld b, $5a
    ld [hl+], a
    rlca
    add hl, de
    nop
    rst $38
    rst $38
    dec b
    nop
    ld hl, sp+$5d
    ld a, h
    ld b, $00
    nop
    call nz, $1e05
    rrca
    adc l
    ld e, [hl]
    and a
    ld e, [hl]
    nop
    nop
    ld e, l
    ld e, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    cp l
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    add $05
    add hl, hl
    ld c, $6a
    ld e, a
    db $76
    ld e, a
    nop
    nop
    ld [hl], c
    ld e, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    sub a
    ld e, a
    ld d, h
    ld c, c
    sub c
    inc c
    ld c, $00
    inc de
    ld bc, $0128
    db $10
    ld bc, $010f
    inc h
    ld bc, $011c
    ld [bc], a
    ld bc, $0091
    dec hl
    nop
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    xor d
    xor b
    and e
    ld [hl], l
    and $57
    nop
    add b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor d
    and b
    or c
    and b
    or e
    and h
    ld a, a
    and e
    or h
    and e
    and h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld d, c
    or e
    xor [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $7f
    add a
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or c
    xor b
    and e
    xor b
    and d
    or h
    xor e
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    add sp, $51
    add a
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or e
    and a
    or c
    and b
    or d
    and a
    and h
    and e
    ld c, a
    or h
    or d
    ld a, a
    or d
    xor b
    xor e
    xor e
    cp b
    add sp, $51
    add a
    and h
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and e
    and h
    and h
    xor a
    and h
    or c
    ld c, a
    or d
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    and a
    xor b
    or d
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    ld c, a
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
    and a
    and h
    ld a, a
    xor b
    or d
    and $57
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    add a
    sub h
    add [hl]
    add a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor h
    xor b
    or d
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    and h
    xor e
    or d
    and h
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and h
    ld c, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    sub c
    sub e
    add b
    sub c
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld d, c
    and [hl]
    xor [hl]
    or e
    ld a, a
    or d
    and h
    xor a
    and b
    or c
    and b
    or e
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    xor h
    cp b
    ld a, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    ld [hl], l
    ld d, c
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    or h
    xor l
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
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
    or [hl]
    and a
    xor [hl]
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    and b
    ld d, c
    or e
    and h
    and b
    xor h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    ld a, a
    ld a, a
    ld c, a
    add h
    sub a
    adc a
    adc e
    adc [hl]
    sub d
    adc b
    adc [hl]
    adc l
    and $57
    nop
    nop
    ld b, $2d
    dec bc
    dec b
    inc bc
    add hl, sp
    cpl
    dec e
    ld b, $03
    add hl, sp
    daa
    dec b
    ld [$3903], sp
    add hl, hl
    ld hl, $0309
    add hl, sp
    inc de
    inc bc
    ld bc, $3c03
    add hl, bc
    add hl, bc
    ld [bc], a
    inc bc
    dec sp
    nop
    ld bc, $1e0b
    rlca
    adc d
    ld e, [hl]
    ld a, [bc]
    ld e, d
    dec d
    ld a, [de]
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, c
    ld e, [hl]
    rst $38
    rst $38
    ld d, h
    rrca
    db $10
    ld bc, $ff00
    rst $38
    ld bc, $7c00
    ld e, [hl]
    ld a, l
    ld b, $54
    ld c, $14
    ld bc, $ff00
    rst $38
    ld bc, $7e00
    ld e, [hl]
    ld a, [hl]
    ld b, $54
    ld h, $20
    ld bc, $ff00
    rst $38
    ld bc, $8000
    ld e, [hl]
    ld a, a
    ld b, $54
    ld a, [hl+]
    add hl, de
    ld bc, $ff00
    rst $38
    ld bc, $8200
    ld e, [hl]
    and [hl]
    rlca
    ld d, h
    inc de
    jr nz, jr_01f_608c

    nop

jr_01f_608c:
    rst $38
    rst $38
    ld bc, $8400
    ld e, [hl]
    and a
    rlca
    dec hl
    add hl, bc
    ld [$0008], sp
    rst $38
    rst $38
    sub d
    inc bc
    ld d, c
    ld e, [hl]
    rst $38
    rst $38
    dec hl
    ld de, $0612
    nop
    rst $38
    rst $38
    or d
    inc bc
    ld h, l
    ld e, [hl]
    rst $38
    rst $38
    ld d, h
    inc e
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $8600
    ld e, [hl]
    ret z

    rlca
    ld d, h
    ld d, $21
    ld bc, $ff00
    rst $38
    ld bc, $8800
    ld e, [hl]
    ret


    rlca
    nop
    nop
    push bc
    dec b
    add hl, hl
    dec c
    db $ed
    ld h, b
    ld a, [$0060]
    nop
    sub $60
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, $61
    ld d, h
    ld c, c
    sub c
    rrca
    ld bc, $0120
    add sp, $01
    sub a
    ld bc, $0141
    inc de
    ld bc, $0092
    daa
    nop
    sbc b
    xor [hl]
    rst $20
    ld a, a
    adc h
    add b
    sub c
    adc d
    sub h
    sub d
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    add sp, $57
    nop
    adc b
    jp nc, $a87f

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
    xor l
    and [hl]
    ld c, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    sub c
    sub e
    add b
    sub c
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor h
    cp b
    ld d, l
    xor a
    and b
    xor e
    call nc, $a67f
    xor [hl]
    xor l
    and h
    ld a, a
    add b
    sub [hl]
    adc [hl]
    adc e
    add sp, $51
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    xor l
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
    or [hl]
    and a
    xor [hl]
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld d, c
    sub b
    sub [hl]
    adc b
    adc e
    add l
    adc b
    sub d
    add a
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    and e
    and h
    and $7f
    sbc b
    and h
    or d
    and $57
    nop
    nop
    ld [bc], a
    ld hl, $0411
    inc bc
    add hl, sp
    dec b
    inc bc
    ld b, $03
    ld a, [hl-]
    nop
    ld bc, $1406
    rlca
    ld [$0760], a
    ld d, h
    inc de
    dec e
    ld bc, $ff00
    rst $38
    ld bc, $de00
    ld h, b
    add b
    ld b, $54
    dec h
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $e000
    ld h, b
    add c
    ld b, $54
    ld d, $10
    ld bc, $ff00
    rst $38
    ld bc, $e200
    ld h, b
    add d
    ld b, $54
    dec c
    jr z, jr_01f_61c5

    nop

jr_01f_61c5:
    rst $38
    rst $38
    ld bc, $e400
    ld h, b
    add e
    ld b, $54
    rrca
    dec c
    ld bc, $ff00
    rst $38
    ld bc, $e600
    ld h, b
    add h
    ld b, $54
    ld de, $0121
    nop
    rst $38
    rst $38
    ld bc, $e800
    ld h, b
    add l
    ld b, $2b
    db $10
    ld h, $08
    nop
    rst $38
    rst $38
    or d
    ld [bc], a
    jp z, $ff60

    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0061
    add hl, bc
    ld sp, $3162
    xor c
    inc b
    add hl, bc
    rla
    ld h, d
    ld c, h
    ld c, l
    ld h, d
    ld d, h
    ld c, c
    ld h, h
    xor c
    ld h, d
    nop
    nop
    ld e, [hl]
    ld [hl-], a
    ld b, $5f
    ld h, b
    inc sp
    xor c
    inc b
    ld b, a
    ld c, h
    ret nz

    ld h, d
    ld d, l
    add [hl]
    inc e
    ld bc, $0606
    scf
    ld h, d
    ld c, h
    ld d, l
    ld h, e
    add l
    ld [bc], a
    nop
    add [hl]
    dec l
    db $ec
    ld a, [bc]
    nop
    nop
    inc sp
    ld h, c
    nop
    ld c, h
    ld l, d
    ld h, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    rst $18
    ld h, e
    ld d, h
    ld c, c
    sub c
    inc c
    ld c, $00
    db $10
    ld bc, $011d
    daa
    ld bc, $0140
    ld a, $01
    sub e
    nop
    jr z, jr_01f_624e

jr_01f_624e:
    add a
    and h
    cp b
    rst $20
    ld d, c
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc d
    add b
    sub c
    add b
    sub e
    add h
    ld c, a
    adc d
    adc b
    adc l
    add [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    or c
    xor d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    rst $20
    ld c, a
    add c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    add a
    or [hl]
    and b
    and b
    and b
    or c
    and [hl]
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    and b
    and b
    and b
    or c
    and [hl]
    and [hl]
    and a
    rst $20
    ld c, a
    adc b
    jp nc, $a17f

    and h
    and b
    or e
    and h
    xor l
    rst $20
    ld d, a
    nop
    adc b
    ld [hl], l
    ld a, a
    adc b
    jp nc, $a27f

    or c
    or h
    or d
    and a
    and h
    and e
    ld [hl], l
    ld d, c
    adc h
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
    ld a, a
    xor b
    or d
    ld c, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or d
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    or d
    or d
    add sp, $7f
    adc b
    ld a, a
    and b
    and e
    xor h
    xor b
    or e
    ld a, a
    xor b
    or e
    add sp, $51
    add b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and e
    and h
    and l
    and h
    and b
    or e
    and h
    and e
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld d, c
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    or c
    and b
    or c
    and h
    ld c, a
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
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
    sub e
    sbc b
    sub c
    adc [hl]
    add [hl]
    sub h
    add h
    add sp, $57
    nop
    sub e
    sbc b
    sub c
    adc [hl]
    add [hl]
    sub h
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    db $e3
    or e
    cp b
    xor a
    and h
    add sp, $51
    adc b
    or e
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    or d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc d
    and h
    and h
    xor a
    ld a, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    and b
    or c
    and e
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    add sp, $7f
    adc b
    pop de
    xor e
    ld a, a
    xor d
    and h
    and h
    xor a
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    add l
    and b
    or c
    and h
    or [hl]
    and h
    xor e
    xor e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld c, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    dec b
    inc bc
    ld a, [hl-]
    dec e
    inc de
    rlca
    inc bc
    add hl, sp
    nop
    ld bc, $2103
    rlca
    ld c, d
    ld h, d
    rlca
    ld d, h
    db $10
    ld hl, $0001
    rst $38
    rst $38
    ld bc, $4000
    ld h, d
    add [hl]
    ld b, $54
    ld de, $0114
    nop
    rst $38
    rst $38
    ld bc, $4200
    ld h, d
    add a
    ld b, $5a
    dec c
    dec bc
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    dec a
    ld h, d
    rst $38
    rst $38
    ld b, c
    ld a, [bc]
    inc c
    ld [$ff00], sp
    rst $38
    or b
    nop
    or $61
    rst $38
    rst $38
    ld d, h
    ld a, [de]
    ld h, $01
    nop
    rst $38
    rst $38
    ld bc, $4400
    ld h, d
    jp z, Jump_01f_5407

    dec bc
    ld a, [de]
    ld bc, $ff00
    rst $38
    ld bc, $4600
    ld h, d
    rlc a
    ld d, h
    dec d
    inc e
    ld bc, $ff00
    rst $38
    ld bc, $4800
    ld h, d
    call z, $0007
    nop
    ld sp, hl
    ld bc, $013e
    dec de
    ld bc, $0000
    inc b
    inc de
    inc b
    ld bc, $0602
    dec de
    inc h
    rlca
    dec b
    ld a, [bc]
    inc bc
    dec h
    ld bc, $3e03
    dec c
    dec h
    rlca
    inc bc
    ld a, $00
    nop
    inc bc
    ld d, h
    ld c, $28
    ld bc, $ff00
    rst $38
    ld bc, $7200
    ld h, h
    adc b
    ld b, $54
    dec de
    add hl, hl
    ld bc, $ff00
    rst $38
    ld bc, $7400
    ld h, h
    adc c
    ld b, $54
    inc de
    jr z, jr_01f_64b1

    nop

jr_01f_64b1:
    rst $38
    rst $38
    ld bc, $7600
    ld h, h
    cp [hl]
    rlca
    nop
    ld bc, $be03
    ld h, h
    ld a, l
    jp nz, $9064

    ld [bc], a
    rst $00
    ld h, h
    nop
    nop
    inc bc
    ld [bc], a
    ret c

    ld h, h
    inc b
    inc bc
    ldh [$64], a
    dec b
    inc b
    add sp, $64
    ld b, $05
    ldh a, [$64]
    rst $38
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    dec c
    rlca
    inc bc
    ld hl, sp+$64
    ld l, [hl]
    inc bc
    ld [hl-], a
    ld c, $07
    inc bc
    ld hl, sp+$64
    ld l, [hl]
    inc b
    ld [hl-], a
    rrca
    rlca
    inc bc
    ld hl, sp+$64
    ld l, [hl]
    dec b
    ld [hl-], a
    db $10
    rlca
    inc bc
    ld hl, sp+$64
    adc e
    ld e, $00
    inc b
    ld h, l
    ld b, a
    ld c, h
    ld [de], a
    ld h, l
    ld d, h
    ld c, c
    sub c
    add l
    dec de
    nop
    ld a, b
    ld d, b
    sub c
    inc c
    ld c, $00
    inc e
    ld bc, $0094
    rrca
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    ld a, a
    and l
    and h
    xor e
    xor e
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    nop
    ld [$030f], sp
    inc bc
    inc bc
    dec a
    inc bc
    ld de, $0301
    ccf
    ld [bc], a
    dec bc
    inc bc
    inc bc
    ccf
    rlca
    inc b
    inc b
    inc bc
    ccf
    inc c
    dec b
    dec b
    inc bc
    ccf
    dec c
    inc c
    ld b, $03
    ccf
    add hl, de
    inc bc
    inc b
    inc bc
    dec a
    add hl, de
    add hl, bc
    ld bc, $4003
    nop
    ld bc, $001b
    rlca
    rrca
    ld h, l
    dec b
    ld e, d
    dec bc
    rrca
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [bc]
    ld h, l
    add hl, bc
    rlca
    ld e, d
    inc c
    dec bc
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [bc]
    ld h, l
    ld a, [bc]
    rlca
    ld e, d
    dec c
    inc c
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [bc]
    ld h, l
    dec bc
    rlca
    ld e, d
    ld [de], a
    dec b
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [bc]
    ld h, l
    inc c
    rlca
    ld d, h
    dec de
    dec b
    ld bc, $ff00
    rst $38
    ld bc, $0d00
    ld h, l
    adc d
    ld b, $00
    nop
    ld d, e
    xor l
    ld h, l
    jr nz, jr_01f_65a9

    rrca

jr_01f_65a9:
    ld bc, $0095
    dec e
    nop
    adc b
    or e
    call nc, $a87f
    xor h
    xor h
    xor [hl]
    or l
    and b
    and c
    xor e
    cp b
    ld c, a
    xor b
    xor h
    and c
    and h
    and e
    and e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    and d
    and h
    add sp, $57
    nop
    nop
    ld b, $01
    ld de, $0302
    ld a, $0b
    add hl, bc
    ld bc, $4103
    inc b
    dec bc
    inc bc
    inc bc
    ld a, $06
    inc b
    inc b
    inc bc
    ld a, $0c
    inc b
    dec b
    inc bc
    ld a, $0c
    inc c
    ld b, $03
    ld a, $00
    ld bc, $0011
    rlca
    xor d
    ld h, l
    ld b, $5a
    rlca
    rrca
    ld bc, $ff00
    rst $38
    nop
    nop
    and e
    ld h, l
    dec c
    rlca
    ld e, d
    dec bc
    ld [$0001], sp
    rst $38
    rst $38
    nop
    nop
    and e
    ld h, l
    ld c, $07
    ld e, d
    db $10
    rlca
    ld bc, $ff00
    rst $38
    nop
    nop
    and e
    ld h, l
    rrca
    rlca
    ld e, d
    ld de, $0110
    nop
    rst $38
    rst $38
    nop
    nop
    and e
    ld h, l
    db $10
    rlca
    ld d, h
    dec c
    inc c
    ld bc, $ff00
    rst $38
    ld bc, $a600
    ld h, l
    adc e
    ld b, $54
    ld b, $04
    ld bc, $ff00
    rst $38
    ld bc, $a800
    ld h, l
    adc h
    ld b, $00
    nop
    db $ec
    ld bc, $0096
    dec bc
    nop
    nop
    ld [bc], a
    rrca
    inc bc
    ld [$3e03], sp
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld b, c
    nop
    ld bc, $020a
    rlca
    ld c, b
    ld h, [hl]
    ld bc, $1454
    inc c
    ld bc, $ff00
    rst $38
    ld bc, $4600
    ld h, [hl]
    adc l
    ld b, $00
    nop
    ld l, e
    ld bc, $0f0c
    nop
    nop
    nop
    ld [bc], a
    dec b
    inc bc
    ld [bc], a
    inc bc
    ccf
    dec b
    rrca
    ld [bc], a
    inc bc
    ld b, b
    nop
    nop
    ld [bc], a
    ld d, h
    inc b
    dec c
    ld bc, $ff00
    rst $38
    ld bc, $6f00
    ld h, [hl]
    adc [hl]
    ld b, $59
    ld a, [bc]
    ld a, [bc]
    jr jr_01f_6696

jr_01f_6696:
    rst $38
    rst $38
    nop
    nop
    ld [hl], c
    ld h, [hl]
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld d, c
    cp l
    ld h, [hl]
    ld d, c
    db $10
    ld h, a
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    or a
    ld h, [hl]
    ld c, h
    ld a, c
    ld h, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $ed
    ld h, a
    ld d, h
    ld c, c
    sub c
    nop
    sub e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    xor [hl]
    or c
    or e
    and a
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld d, c
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
    add sp, $7f
    add [hl]
    xor [hl]
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld c, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor a
    xor e
    and b
    cp b
    or d
    ld d, l
    ld d, h
    ld a, a
    add l
    adc e
    sub h
    sub e
    add h
    ld a, a
    xor h
    or h
    or d
    xor b
    and d
    add sp, $51
    adc [hl]
    and a
    and $7f
    add b
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld c, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    and b
    xor l
    ld a, a
    add h
    sub a
    adc a
    adc l
    ld a, a
    add d
    add b
    sub c
    add e
    ld d, l
    or e
    xor [hl]
    ld a, a
    or e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    ld c, a
    xor b
    or d
    xor l
    push de
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld c, a
    or c
    or h
    xor l
    ld a, a
    and h
    xor b
    or e
    and a
    and h
    or c
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor h
    and h
    and b
    xor l
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub d
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, l
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    or c
    xor [hl]
    and b
    and e
    and d
    and b
    or d
    or e
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub d
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, l
    or d
    or h
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $51
    add a
    and h
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    xor b
    or c
    ld d, c
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld c, a
    adc a
    adc e
    add b
    adc l
    sub e
    ld a, a
    xor b
    or d
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld d, l
    or d
    xor h
    xor [hl]
    xor [hl]
    or e
    and a
    xor e
    cp b
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    ld bc, $0412
    rlca
    inc b
    ld bc, $0412
    rlca
    nop
    ld bc, $0114
    nop
    nop
    inc b
    scf
    dec b
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    and b
    ld h, [hl]
    rst $38
    rst $38
    ld b, b
    ld a, [bc]
    dec bc
    dec b
    ld bc, $ffff
    nop
    nop
    and e
    ld h, [hl]
    rst $38
    rst $38
    add hl, hl
    rlca
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    and [hl]
    ld h, [hl]
    rst $38
    rst $38
    daa
    add hl, bc
    dec b
    inc b
    db $10
    rst $38
    rst $38
    add b
    nop
    xor c
    ld h, [hl]
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0007
    inc bc
    ld [de], a
    dec b
    nop
    nop
    nop
    nop
    nop
    ld d, c
    pop af
    ld l, b
    ld d, c
    ld b, b
    ld l, c
    ld b, a
    ld c, h
    or [hl]
    ld l, c
    add h
    ld [hl], $00
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ret


    ld l, c
    add h
    ld hl, $5400
    ld c, c
    sub c
    ld b, a
    ld c, h
    jp c, $8469

    stop
    ld d, h
    ld c, c
    sub c
    inc c
    ld bc, $0000
    adc h
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld a, a
    xor e
    xor b
    or l
    and h
    ld c, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    and a
    and h
    call nc, $ad7f
    xor [hl]
    or e
    ld d, c
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
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
    and c
    and h
    ld a, a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub d
    adc [hl]
    sub h
    adc e
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    add sp, $57
    nop
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    and e

Call_01f_694a:
    db $e3
    and a
    and h
    and b
    or c
    or e
    and h
    and e
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    and d
    and b
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    xor [hl]
    or c
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    xor e
    and h
    or d
    or d
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld c, a
    and d
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    adc a
    sub d
    sbc b
    add e
    sub h
    add d
    adc d
    sbc h
    ld a, a
    add [hl]
    or h
    db $e3
    and [hl]
    or h
    or [hl]
    and b
    and $57
    nop
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    adc l
    adc [hl]
    sbc h
    ld a, a
    add [hl]
    cp b
    or h
    xor l
    rst $20
    ld d, a
    nop
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    sbc h
    ld a, a
    adc a
    xor b
    xor c
    xor c
    xor b
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc bc
    ld [bc], a
    ld [de], a
    inc b
    nop
    ld [bc], a
    ld bc, $0000
    xor $68
    ld bc, $0001
    xor $68
    dec b
    dec hl
    dec b
    ld [$0006], sp
    rst $38
    rst $38
    and b
    nop
    jp z, $ff68

    rst $38
    jr z, @+$0a

    rlca
    ld [bc], a
    ld de, $ffff
    nop
    nop
    call $ff68
    rst $38
    sbc l
    ld [$160b], sp
    nop
    rst $38
    rst $38
    nop
    nop
    ret nc

    ld l, b
    rst $38
    rst $38
    add d
    add hl, bc
    add hl, bc
    ld d, $00
    rst $38
    rst $38
    sub b
    nop
    jp c, $ff68

    rst $38
    sbc [hl]
    rlca
    dec b
    ld d, $00
    rst $38
    rst $38
    or b
    nop
    db $e4
    ld l, b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld c, l
    ld l, d
    inc c
    ld [bc], a
    nop
    nop
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    or e
    xor b
    xor l
    cp b
    db $f4
    ld a, a
    or b
    or h
    xor b
    and h
    or e
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    ld d, c
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    add sp, $51
    adc b
    or e
    call nc, $a67f
    xor [hl]
    or e
    or e
    and h
    xor l
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld c, a
    and c
    or h
    or d
    xor b
    and h
    or c
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and h
    ld d, c
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and c
    or h
    xor b
    xor e
    or e
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld [de], a
    inc b
    rlca
    inc bc
    inc bc
    ld [de], a
    inc b
    nop
    ld [bc], a
    ld bc, $0000
    ld c, d
    ld l, d
    ld bc, $0001
    ld c, d
    ld l, d
    ld bc, $072e
    ld b, $07
    nop
    rst $38
    rst $38
    sub b
    nop
    ld b, a
    ld l, d
    rst $38
    rst $38
    ld bc, $6af1
    nop
    nop
    nop
    sub c
    ld l, e
    ld b, a
    rrca
    ld d, a
    nop
    ld d, h
    ld c, c
    sub c
    inc c
    ld bc, $0000
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    ld [de], a
    inc b
    rlca
    inc bc
    inc b
    ld [de], a
    inc b
    nop
    nop
    ld bc, $0740
    ld b, $06
    nop
    rst $38
    rst $38
    add b
    nop
    ld a, [c]
    ld l, d
    rst $38
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    dec d
    nop
    ld c, c
    sub c
    ld d, c
    add hl, hl
    ld l, e
    ld d, c
    xor h
    ld l, e
    nop
    sub c
    add h
    adc a
    add h
    adc e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor l
    and h
    and d
    and h
    or d
    db $e3
    ld c, a
    or d
    xor b
    or e
    cp b
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld d, c
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and h
    ld a, a
    and b
    ld c, a
    and d
    and b
    or l
    and h
    add sp, $51
    add h
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld d, c
    and a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    and b
    or l
    and h
    or d
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
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld c, a
    and d
    or c
    and b
    and l
    or e
    or d
    xor h
    and b
    xor l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, c
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    and d
    or h
    or d
    or e
    xor [hl]
    xor h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    ld d, c
    xor [hl]
    and l
    ld a, a
    add b
    sbc c
    add b
    adc e
    add h
    add b
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld c, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    ld [de], a
    inc b
    rlca
    inc bc
    dec b
    ld [de], a
    inc b
    nop
    nop
    inc bc
    add hl, sp
    rlca
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    inc e
    ld l, e
    rst $38
    rst $38
    dec l
    ld a, [bc]
    ld a, [bc]
    dec b
    ld [bc], a
    rst $38
    rst $38
    add b
    nop
    inc hl
    ld l, e
    rst $38
    rst $38
    inc l
    ld b, $0d
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, $6b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld d, e
    ld l, h
    ld d, c
    ld c, l
    ld l, l
    ld d, c
    or c
    ld l, l
    ld d, c
    db $db
    ld l, l
    nop
    adc h
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    sbc h
    ld a, a
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    add sp, $51
    add a
    xor h
    xor h
    ld [hl], l
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    ld a, a
    or c
    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    xor l
    xor l
    and h
    or c
    add sp, $51
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or c
    or d
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    and b
    cp b
    ld d, c
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or c
    and h
    or d
    xor a
    and h
    and d
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and e
    and h
    xor a
    and b
    or c
    or e
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    xor [hl]
    and l
    and l
    and h
    or c
    ld a, a
    and d
    xor [hl]
    xor l
    db $e3
    ld c, a
    and e
    xor [hl]
    xor e
    and h
    xor l
    and d
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld d, c
    or d
    xor [hl]
    or h
    xor e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and h
    db $e3
    ld c, a
    xor a
    and b
    or c
    or e
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    jp nc, $b27f

    or h
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
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
    or e
    and a
    and h
    or c
    ld c, a
    and [hl]
    or c
    and b
    or l
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    add sp, $51
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
    xor h
    and b
    xor l
    cp b
    ld c, a
    and d
    and a
    and b
    xor h
    and c
    and h
    or c
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld d, l
    adc h
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and h
    xor l
    or e
    and h
    or c
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    xor [hl]
    xor h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and [hl]
    or c
    and b
    or l
    and h
    or d
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor e
    xor b
    or l
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    and e
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    and d
    and a
    xor b
    xor e
    and e
    or c
    and h
    xor l
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    inc b
    ld b, $12
    inc b
    rlca
    dec b
    ld b, $12
    inc b
    nop
    nop
    inc b
    cpl
    ld b, $08
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld b, a
    ld l, h
    rst $38
    rst $38
    add hl, hl
    rlca
    dec bc
    dec b
    ld bc, $ffff
    sub b
    nop
    ld c, d
    ld l, h
    rst $38
    rst $38
    jr z, jr_01f_6e52

    ld b, $07
    nop
    rst $38
    rst $38
    sub b
    nop
    ld c, l
    ld l, h

jr_01f_6e52:
    rst $38
    rst $38
    jr nc, jr_01f_6e5d

    dec b
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop

jr_01f_6e5d:
    ld d, b
    ld l, h
    rst $38
    rst $38
    nop
    nop
    ld d, c
    cp a
    ld l, [hl]
    ld d, c
    ld a, [$516e]
    sub b
    ld l, a
    ld l, e
    ld b, a
    inc [hl]
    inc bc
    nop
    add hl, bc
    adc [hl]
    ld l, [hl]
    ld sp, $00c9
    add hl, bc
    add b
    ld l, [hl]
    ld c, h
    ei
    ld l, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    and c
    ld [hl], b
    ld d, l
    ld b, h
    sbc b
    ld l, [hl]
    ld bc, $9400
    ld l, [hl]
    ld [hl], $03
    nop
    ld c, h
    ld b, c
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    inc c
    cpl
    nop
    sub c
    add h
    sub a
    adc a
    adc l
    ld a, a
    add d
    add b
    sub c
    add e
    ld d, b
    ld l, e
    ld b, a
    inc [hl]
    inc bc
    nop
    add hl, bc
    or b
    ld l, [hl]
    ld c, h
    sub e
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, b
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    ld d, e
    db $e3
    ld [hl], d
    ld d, e
    dec l
    ld [hl], e
    ld d, e
    ld l, e
    ld [hl], e
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld c, a
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld d, c
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    add sp, $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    and c
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
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    add sp, $51
    add h
    or l
    and h
    or c
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    call nc, $914f
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld c, a
    and d
    or c
    xor b
    xor h
    xor b
    xor l
    and b
    xor e
    ld a, a
    and [hl]
    and b
    xor l
    and [hl]
    db $f4
    ld a, a
    or [hl]
    and h
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    and a
    and b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and h
    xor a
    ld c, a
    or h
    xor a
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    or d
    and h
    and d
    or h
    or c
    xor b
    or e
    cp b
    add sp, $57
    nop
    adc h
    and b
    xor l
    cp b
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    or c
    and h
    ld c, a
    and a
    and b
    or c
    and e
    ld a, a
    and b
    or e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and a
    and h
    or c
    and h
    ld d, c
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or h
    or e
    ld d, l
    xor [hl]
    xor l
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    or d
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    db $f4
    ld a, a
    xor l
    xor [hl]
    db $f4
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld d, c
    sub [hl]
    and h
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and b
    xor b
    or c
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    ld a, a
    or d
    and a
    or h
    or e
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    add b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld a, a
    and h
    and l
    and l
    xor [hl]
    or c
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    or e
    and b
    or c
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or d
    or e
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld d, c
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    or [hl]
    and b
    or d
    or e
    and h
    and e
    ld a, a
    xor b
    and l
    ld c, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    or c
    xor [hl]
    and b
    and e
    and d
    and b
    or d
    or e
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or c
    or h
    xor b
    xor l
    and h
    and e
    rst $20
    ld d, a
    nop
    add b
    and a
    rst $20
    ld a, a
    sub d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    inc d
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or d
    xor [hl]
    xor e
    or l
    and h
    and e
    ld d, c
    or e
    and a
    and h
    ld a, a
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    call nc, $af4f
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    and $51
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
    adc b
    ld c, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    xor c
    xor [hl]
    and c
    add sp, $51
    adc b
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    and b
    ld a, a
    or c
    and h
    and b
    xor e
    ld a, a
    xor e
    xor b
    and l
    and h
    or d
    and b
    or l
    and h
    or c
    rst $20
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    add sp, $57
    nop
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, c
    or e
    and a
    and h
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    or d
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $51
    add [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    ld c, a
    adc h
    sub h
    sub d
    adc b
    add d
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    rst $20
    ld d, c
    add a
    or h
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    or e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld d, c
    xor h
    or h
    or d
    xor b
    and d
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    or d
    add sp, $4f
    add a
    xor [hl]
    or [hl]
    ld a, a
    or h
    xor l
    and l
    xor [hl]
    or c
    or e
    or h
    xor l
    and b
    or e
    and h
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    xor l
    ld a, a
    add h
    sub a
    adc a
    adc l
    ld c, a
    add d
    add b
    sub c
    add e
    ld a, a
    or h
    xor a
    and [hl]
    or c
    and b
    and e
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and d
    and b
    xor l
    ld a, a
    or e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ret nc

    ld c, a
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
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    ld c, a
    adc h
    sub h
    sub d
    adc b
    add d
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    rst $20
    ld d, c
    adc b
    jp nc, $b17f

    and h
    or d
    xor a
    xor [hl]
    xor l
    or d
    xor b
    and c
    xor e
    and h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    xor [hl]
    or c
    and [hl]
    and h
    xor [hl]
    or h
    or d
    ld d, c
    xor h
    and h
    xor e
    xor [hl]
    and e
    xor b
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    xor b
    or c
    add sp, $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    or d
    or b
    or h
    and b
    or c
    and h
    add sp, $4f
    add [hl]
    or c
    and b
    and c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    or h
    or d
    xor b
    and d
    ld d, l
    xor [hl]
    and l
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    xor b
    or c
    rst $20
    ld d, a
    nop
    rst $30
    add l
    ld a, a
    sub c
    add h
    add d
    add h
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld c, a
    ld hl, sp-$7b
    ld a, a
    sub d
    add b
    adc e
    add h
    sub d
    ld d, c
    ld sp, hl
    add l
    ld a, a
    adc a
    add h
    sub c
    sub d
    adc [hl]
    adc l
    adc l
    add h
    adc e
    ld c, a
    ld a, [$7f85]
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    sub e
    adc b
    adc [hl]
    adc l
    ld d, c
    ei
    add l
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ldh [$92], a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld d, a
    nop
    adc a
    and h
    or c
    xor d
    ld a, a
    sub h
    xor a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    adc h
    and h
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    sub d
    xor [hl]
    or h
    xor l
    and e
    or d
    ld d, c
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    ld a, a
    add l
    adc e
    sub h
    sub e
    add h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    ld a, a
    ld hl, sp-$0a
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add b
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    or c
    and b
    and d
    xor d
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add e
    or d
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or l
    xor b
    and e
    and h
    xor [hl]
    or d
    add sp, $51
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and h
    and l
    and h
    or c
    and h
    xor l
    and d
    and h
    ld a, a
    xor e
    xor b
    and c
    or c
    and b
    or c
    cp b
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [de], a
    inc b
    rlca
    inc bc
    rlca
    ld [de], a
    inc b
    nop
    ld [bc], a
    nop
    dec bc
    nop
    or [hl]
    ld l, [hl]
    nop
    dec b
    nop
    cp c
    ld l, [hl]
    dec b
    ld b, d
    ld a, [bc]
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    ld h, e
    ld l, [hl]
    rst $38
    rst $38
    ld b, e
    dec b
    inc de
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld h, [hl]
    ld l, [hl]
    rst $38
    rst $38
    dec hl
    rlca
    dec b
    ld [bc], a
    ld de, $ffff
    add b
    nop
    ld l, c
    ld l, [hl]
    rst $38
    rst $38
    ld b, b
    dec b
    dec c
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    ld l, h
    ld l, [hl]
    rst $38
    rst $38
    dec hl
    ld a, [bc]
    ld [de], a
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    and d
    ld l, [hl]
    rst $38
    rst $38
    nop
    nop
    ld d, c
    add hl, de
    ld [hl], h
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
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    and $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    or e
    and b
    xor e
    xor e
    ld c, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    nop
    inc b
    inc b
    nop
    ld c, $19
    ld [bc], a
    dec b
    nop
    rrca
    add hl, de
    ld [bc], a
    inc b
    add hl, bc
    ld bc, $0112
    dec b
    add hl, bc
    ld [bc], a
    ld [de], a
    ld bc, $0000
    ld bc, $0643
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld d, $74
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0019
    add hl, bc
    and b
    ld [hl], h
    ld c, h
    xor a
    ld [hl], h
    ld c, [hl]
    ld [$74a6], sp
    ld c, h
    cpl
    ld [hl], l
    ld d, l
    sbc [hl]
    dec a
    ld bc, $aa08
    ld [hl], h
    inc sp
    add hl, de
    nop
    ld c, h
    ld a, h
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $ec
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    nop
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld c, a
    add [hl]
    sub h
    sub c
    sub h
    call nc, $b87f
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    ld d, l
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and h
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
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    and e
    xor [hl]
    or h
    and c
    or e
    ld c, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    xor b
    xor l
    and e
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    rst $20
    ld d, c
    sub d
    xor [hl]
    and $7f
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    jp nc, $b14f

    xor b
    and [hl]
    and a
    or e
    add sp, $57
    nop
    sbc b
    and h
    or d
    db $f4
    ld a, a
    cp b
    and h
    or d
    add sp, $7f
    adc c
    or h
    or d
    or e
    ld a, a
    and b
    or d
    ld c, a
    adc b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    and b
    xor l
    rst $20
    ld c, a
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    db $e3
    db $e3
    xor b
    or e
    call nc, $a07f
    ld d, l
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    sub c
    adc [hl]
    add e
    add sp, $57
    nop
    sub e
    or c
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and a
    and b
    xor l
    and e
    ld a, a
    and b
    or e
    ld c, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    or l
    and h
    or c
    ld d, l
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $51
    sub c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    db $e3
    db $e3
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld a, a
    sub c
    adc [hl]
    add e
    sub d
    add sp, $57
    nop
    add a
    or h
    and a
    and $7f
    adc h
    cp b
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and h
    cp b
    and h
    or d
    ld c, a
    and e
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld a, a
    xor h
    and h
    and $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $0212
    rlca
    inc bc
    ld bc, $0212
    nop
    nop
    ld bc, $073b
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    add h
    ld [hl], h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
