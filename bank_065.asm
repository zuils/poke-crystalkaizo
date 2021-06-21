; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $065", ROMX[$4000], BANK[$65]

    ld [bc], a
    dec c
    ld b, b
    nop
    nop
    ld c, $40
    nop
    nop
    ld bc, $0f02
    ld b, b
    sub c
    sub c
    inc e
    dec bc
    ld b, $04
    jr jr_065_4055

    ld l, [hl]
    ld [$6f90], sp
    ld [$7590], sp
    nop
    nop
    rrca
    adc e
    rrca
    add l
    inc d
    nop
    halt
    ld bc, $0a69
    ld h, d
    ld b, d
    ld l, [hl]
    ld a, [bc]
    halt
    nop
    adc e
    ld a, [bc]
    inc d
    nop
    ld [hl-], a
    xor [hl]
    rlca
    ld [de], a
    ld d, $03
    ld bc, $2191
    xor a
    add hl, bc
    ld c, d
    ld b, b
    add [hl]
    add l
    ld l, l
    nop
    ld l, c
    inc b
    ld c, c
    ld b, d
    sub c
    ld b, a
    ld c, h
    ld l, e
    ld b, d
    ld c, [hl]
    ld [$4079], sp
    ld c, c
    ld b, a
    ld c, h

jr_065_4055:
    sub b
    ld b, d
    ld d, h
    ld c, c
    add [hl]
    add l
    ld l, l
    nop
    ld l, c
    inc b
    ld c, c
    ld b, d
    ld b, a
    ld c, h
    xor d
    ld b, d
    ld d, h
    ld c, c
    ld e, l
    cp c
    inc h
    ld e, a
    inc sp
    ld a, [hl+]
    nop
    ld b, $02
    ld a, e
    ld b, b
    ld l, [hl]
    inc b
    ld l, l
    inc b
    ld h, $60
    sub c
    ld c, c
    sub c
    ld h, b
    ld l, c
    inc b
    ld c, e
    ld b, d
    ld l, [hl]
    inc b
    ld l, l
    inc b
    ld h, $0f
    ld e, [hl]
    nop
    rrca
    sbc [hl]
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $00ba
    add hl, bc
    or e
    ld b, b
    inc sp
    cp c
    nop
    ld c, h
    pop af
    ld b, d
    ld d, h
    ld c, c
    ld [hl-], a
    ld l, b
    rlca
    inc e
    add hl, bc
    ld b, $01
    xor h
    ld b, b
    ld l, c
    add hl, bc
    ld c, [hl]
    ld b, d
    ld l, [hl]
    add hl, bc
    sub c
    ld l, c
    add hl, bc
    ld e, b
    ld b, d
    ld l, [hl]
    add hl, bc
    sub c
    ld c, h
    db $ed
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $004b
    add hl, bc
    jp c, $3140

    ld a, [hl+]
    nop
    add hl, bc
    call Call_065_4c40
    ld l, a
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ret nc

    ld b, h
    ld d, l
    sbc [hl]
    rst $00
    ld bc, $de08
    ld b, b
    inc sp
    ld c, e
    nop
    ld c, h
    inc l
    ld b, l
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $002a
    add hl, bc
    xor $40
    ld c, h
    ld h, $46
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc [hl]
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld l, [hl]
    inc b
    rla
    inc bc
    ld h, b
    ld b, a
    sub b
    ld b, a
    nop
    nop
    nop
    ld b, c
    ld e, $17
    jr jr_065_416a

    ld b, a
    inc [hl]
    ld [hl], e
    nop
    add hl, bc
    ld b, b
    ld b, c
    inc [hl]
    add c
    nop
    add hl, bc
    or h
    ld b, c
    ld a, [hl+]
    jr jr_065_411d

    push de
    ld b, c
    ld sp, $0285
    add hl, bc
    add hl, hl
    ld b, c
    ld c, h

jr_065_411d:
    xor d
    ld b, a
    ld d, l
    inc sp
    add l
    ld [bc], a
    nop
    ret


    ld b, c
    inc bc
    inc l
    ld b, c
    nop
    call $9741
    jr jr_065_4135

    ld bc, $41dd
    ld b, $02
    reti


jr_065_4135:
    ld b, c
    ld b, e
    rla
    inc bc
    nop
    nop
    pop de
    ld b, c
    inc bc
    push de
    ld b, c
    nop
    pop hl
    ld b, c
    ld h, h
    sub b
    ld b, a
    nop
    nop
    add hl, de
    ld [bc], a
    jp c, $0406

    ld e, a
    ld b, c
    ld b, $03
    ld h, l
    ld b, c
    ld b, $02
    ld l, e
    ld b, c
    ld b, $01
    ld [hl], c
    ld b, c
    ld b, $00
    ld [hl], a
    ld b, c
    ld sp, $00cd
    add hl, bc
    xor e
    ld b, c
    ld sp, $0044
    add hl, bc
    sbc [hl]

jr_065_416a:
    ld b, c
    inc [hl]
    ld c, e
    nop
    add hl, bc
    sub c
    ld b, c
    inc [hl]
    ld b, a
    nop
    add hl, bc
    add h
    ld b, c
    ld e, [hl]
    rla
    inc bc
    ld e, a
    ld h, b
    dec de
    ld [bc], a
    jp c, $3501

    ld [hl], e
    nop
    sub c
    ld e, [hl]
    rla
    rrca
    ld e, a
    ld h, b
    dec de
    ld [bc], a
    jp c, $3502

    ld [hl], e
    nop
    sub c
    ld e, [hl]
    rla
    db $10
    ld e, a
    ld h, b
    dec de
    ld [bc], a
    jp c, $3503

    ld [hl], e
    nop
    sub c
    ld e, [hl]
    rla
    dec d
    ld e, a
    ld h, b
    dec de
    ld [bc], a
    jp c, $3504

    ld [hl], e
    nop
    sub c
    ld e, [hl]
    rla
    ld d, $5f
    ld h, b
    dec [hl]
    ld [hl], e
    nop
    sub c
    nop
    push hl
    ld b, c
    sbc [hl]
    ld d, $01
    ld [$41c6], sp
    dec [hl]
    add c
    nop
    inc sp
    ld bc, $0301
    push de
    ld b, c
    inc bc
    jp hl


    ld b, c
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
    inc c
    jr nz, jr_065_41e8

jr_065_41e8:
    sub c
    inc c
    ld hl, $9100
    ld b, b
    inc b
    inc [hl]
    rlca
    db $ed
    ld b, [hl]
    ld c, $47
    nop
    nop
    ld sp, hl
    ld b, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, $47
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0067
    add hl, bc
    cpl
    ld b, d
    inc e
    dec bc
    rlca
    inc b
    dec [hl]
    ld b, d
    ld sp, $0066
    add hl, bc
    inc e
    ld b, d
    ld c, h
    nop
    ld c, b
    ld d, l
    inc sp
    ld h, [hl]
    nop
    ld c, h
    dec l
    ld c, b
    ld d, l
    sbc [hl]
    ld a, l
    ld bc, $3308
    ld b, d
    inc sp
    ld h, a
    nop
    ld c, h
    ld b, a
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor d
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    di
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld d, e
    inc h
    ld c, c
    ld d, e
    ld l, $49
    ld d, e
    ld c, h
    ld c, c
    ld d, e
    xor $49
    sbc e
    dec c
    ld d, [hl]
    ld b, a
    dec [hl]
    dec [hl]
    ld b, a
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, a
    ld c, $0c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $47
    add hl, sp
    inc [hl]
    inc [hl]
    inc [hl]
    scf
    scf
    scf
    jr c, jr_065_42b2

    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or [hl]
    and h
    xor b
    or c
    and e
    ld a, a
    or e
    or c
    and h
    and h
    add sp, $4f
    sub h
    or d
    and h
    ld a, a
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    add c
    adc [hl]
    sub e
    sub e
    adc e
    add h
    and $57
    nop
    ld d, d
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    add c
    adc [hl]
    sub e
    sub e
    adc e
    add h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and h
    xor b

jr_065_42b2:
    or c
    and e
    ld a, a
    or e
    or c
    and h
    and h
    ld c, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld d, l
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    add c
    adc [hl]
    sub e
    sub e
    adc e
    add h
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and h
    xor b
    or c
    and e
    ld a, a
    or e
    or c
    and h
    and h
    ld c, a
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    add l
    adc e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld c, a
    sub d
    add a
    adc [hl]
    adc a
    call nc, $857f
    adc e
    adc [hl]
    sub c
    adc b
    add b
    rst $20
    ld d, c
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or d
    xor a
    or c
    xor b
    xor l
    xor d
    xor e
    and h
    and e
    ld c, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    or [hl]
    xor b
    and [hl]
    and [hl]
    xor e
    cp b
    ld a, a
    or e
    or c
    and h
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld c, a
    xor c
    or h
    xor h
    xor a
    and h
    and e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or h
    xor a
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    and c
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld d, c
    and e
    xor b
    or d
    and [hl]
    or h
    xor b
    or d
    and h
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    xor [hl]
    and b
    xor d
    and h
    and e
    ld a, a
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
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld c, a
    xor h
    cp b
    ld a, a
    or d
    xor b
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    ld d, l
    and a
    and h
    or c
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    and c
    xor [hl]
    or e
    or e
    xor e
    and h
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
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    xor b
    or d
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor c
    xor b
    and [hl]
    and [hl]
    xor e
    cp b
    ld d, c
    or e
    or c
    and h
    and h
    db $f4
    ld a, a
    or d
    and a
    and h
    ld a, a
    or d
    and b
    xor b
    and e
    ld c, a
    xor b
    or e
    call nc, $a37f
    and b
    xor l
    and [hl]
    and h
    or c
    xor [hl]
    or h
    or d
    add sp, $51
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    sub [hl]
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    db $f4
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    xor b
    and l
    ld a, a
    or d
    and a
    and h
    pop de
    xor e
    ld d, c
    xor e
    and h
    xor l
    and e
    ld a, a
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld c, a
    and c
    xor [hl]
    or e
    or e
    xor e
    and h
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and b
    db $e3
    and a
    and h
    cp b
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    xor l
    and b
    xor a
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    or c
    and h
    and h
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    or e
    or c
    and b
    xor b
    and [hl]
    and a
    or e
    db $e3
    ld c, a
    and b
    or c
    xor h
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    rst $20
    ld c, a
    adc b
    jp nc, $a07f

    ld a, a
    and l
    and b
    xor b
    xor e
    or h
    or c
    and h
    rst $20
    ld d, a
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor e
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or [hl]
    or c
    and h
    or e
    and d
    and a
    and h
    and e
    ld a, a
    or e
    or c
    and h
    and h
    and $51
    adc b
    jp nc, $a87f

    xor h
    xor a
    or c
    and h
    or d
    or d
    and h
    and e
    rst $20
    ld c, a
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
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
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
    adc h
    or $fe
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
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
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub d
    adc h
    add b
    sub d
    add a
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and a
    and b
    or e
    or e
    and h
    or c
    ld c, a
    or c
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    ld d, c
    or d
    xor b
    xor l
    and [hl]
    xor e
    and h
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    db $e3
    and b
    xor b
    xor h
    and h
    and e
    ld c, a
    or d
    xor h
    and b
    and d
    xor d
    add sp, $51
    adc b
    and l
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    and b
    or c
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
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    or d
    xor h
    and b
    or d
    and a
    ld a, a
    ldh [$a4], a
    xor h
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    nop
    add b
    xor l
    ld a, a
    xor [hl]
    and e
    and e
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    xor b
    or d
    ld c, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld d, l
    or e
    xor [hl]
    ld a, a
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
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    and a
    or h
    and [hl]
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    add b
    xor l
    ld a, a
    xor [hl]
    and e
    and e
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    xor b
    or d
    ld c, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld d, l
    or e
    xor [hl]
    ld a, a
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
    add sp, $51
    adc b
    or e
    call nc, $af7f
    or c
    and h
    or l
    and h
    xor l
    or e
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
    or d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    add sp, $51
    sub d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and c
    and h
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    and e
    and e
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    and e
    xor b
    or d
    db $e3
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld d, l
    or e
    or c
    and b
    and d
    and h
    add sp, $51
    adc [hl]
    and a
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    or c
    and h
    and b
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a

Call_065_4704:
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor h
    xor b
    or d
    or c
    and h
    and b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc b
    ret nc

    ld a, a
    and c
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor b
    and l
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld d, c
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
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
    xor h
    cp b
    ld a, a
    or d
    or e
    or h
    and e
    db $e3
    ld c, a
    xor b
    and h
    or d
    db $f4
    ld a, a
    adc b
    jp nc, $b17f

    and h
    and b
    and e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    add d
    xor [hl]
    xor h
    xor a
    or h
    or e
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    and h
    or c
    or c
    xor [hl]
    or c
    and $57
    nop
    add e
    and b
    or c
    xor l
    add sp, $7f
    adc b
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld a, a
    and l
    xor b
    or l
    and h
    ld c, a
    and a
    xor [hl]
    or h
    or c
    or d
    ld a, a
    and b
    ld a, a
    and e
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $ac7f
    xor [hl]
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor e
    and h
    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    or c
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    xor [hl]
    xor [hl]
    xor d
    or d
    add sp, $57
    nop
    add b
    sub c
    sub e
    add a
    sub h
    sub c
    sbc h
    ld a, a
    sub [hl]
    and a
    xor [hl]
    ld a, a
    and b
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    and $51
    adc b
    jp nc, $807f

    sub c
    sub e
    add a
    sub h
    sub c
    ld a, a
    xor [hl]
    and l
    ld c, a
    sub e
    and a
    or h
    or c
    or d
    and e
    and b
    cp b
    add sp, $57
    nop
    add a
    and h
    or c
    and h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
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
    add sp, $57
    nop
    add b
    sub c
    sub e
    add a
    sub h
    sub c
    sbc h
    ld a, a
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    db $e3
    ld d, c
    or e
    cp b
    xor a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $51
    adc b
    or e
    ld a, a
    xor a
    or h
    xor h
    xor a
    or d
    ld a, a
    or h
    xor a
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    db $e3
    ld c, a
    or e
    cp b
    xor a
    and h
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    add sp, $57
    nop
    add b
    sub c
    sub e
    add a
    sub h
    sub c
    sbc h
    ld a, a
    adc b
    jp nc, $807f

    sub c
    sub e
    add a
    sub h
    sub c
    ld c, a
    xor [hl]
    and l
    ld a, a
    sub e
    and a
    or h
    or c
    or d
    and e
    and b
    cp b
    add sp, $7f
    adc b
    jp nc, $b351

    and a
    and h
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    ld a, a
    or d
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    or d
    and h
    or l
    and h
    xor l
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    or c
    and h
    xor l
    add sp, $57
    nop
    add b
    sub c
    sub e
    add a
    sub h
    sub c
    sbc h
    ld a, a
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, $ad4f
    xor [hl]
    or e
    ld a, a
    sub e
    and a
    or h
    or c
    or d
    and e
    and b
    cp b
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    ld d, l
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
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    db $fc
    ld d, a
    nop
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    adc [hl]
    add l
    ld a, a
    add b
    adc e
    adc a
    add a
    ld c, a
    adc l
    adc [hl]
    sub c
    sub e
    add a
    ld a, a
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    and b
    or e
    or d
    ld c, a
    or l
    and b
    or c
    cp b
    db $e3
    db $e3
    and h
    or l
    and h
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    or d
    and b
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
    add sp, $51
    sub e
    and a
    and h
    xor b
    or c
    ld a, a
    or d
    or e
    and b
    or e
    or d
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
    or d
    xor b
    xor h
    xor b
    xor e
    and b
    or c
    ld a, a
    and b
    or e
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    add sp, $51
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    and e
    xor b
    and l
    and l
    and h
    or c
    db $e3
    ld c, a
    and h
    xor l
    and d
    and h
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld d, c
    xor a
    or c
    xor [hl]
    xor l
    xor [hl]
    or h
    xor l
    and d
    and h
    and e
    ld a, a
    and b
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
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    add sp, $57
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
    sub h
    or d
    and h
    ld a, a
    add e
    adc b
    add [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    or e
    or c
    and b
    xor l
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    and b
    xor l
    cp b
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    add sp, $51
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
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
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld d, c
    and d
    and b
    or l
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    xor e
    and b
    xor l
    and e
    xor h
    and b
    or c
    xor d
    or d
    add sp, $57
    nop
    nop
    inc b
    ld [$0312], sp
    ld a, [bc]
    ld de, $1209
    inc b
    ld a, [bc]
    ld de, $2f0d
    ld bc, $100a
    dec c
    jr nc, jr_065_4a7d

    ld a, [bc]
    db $10

jr_065_4a7d:
    ld [bc], a
    ld bc, $1407
    nop
    dec de
    ld b, b
    nop
    nop
    ld bc, $1607
    nop
    dec de
    ld b, b
    nop
    nop
    inc b
    dec bc
    rra
    nop
    ld b, h
    ld b, d
    dec bc
    dec l
    nop
    ld a, $42
    rlca
    scf
    nop
    dec sp
    ld b, d
    rlca
    dec d
    nop
    ld b, c
    ld b, d
    add hl, bc
    daa
    inc c
    inc hl
    ld b, $00
    rst $38
    rst $38
    sub d
    inc bc
    db $ed
    ld b, c
    rst $38
    rst $38
    daa
    inc de
    dec e
    ld [$ff00], sp
    rst $38
    sub d
    dec b
    db $f4
    ld b, b
    rst $38
    rst $38
    db $f4
    dec c
    daa
    rla
    nop
    rst $38
    rst $38
    nop
    nop
    inc a
    ld b, b
    ld hl, sp+$06
    jr z, jr_065_4ad9

    scf
    dec b
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    ldh [rLCDC], a
    rst $38
    rst $38
    ld a, [hl-]

jr_065_4ad9:
    dec c
    jr nc, jr_065_4ae4

    nop
    rst $38
    rst $38
    nop
    nop
    cp c
    ld b, b
    rst $38

jr_065_4ae4:
    rst $38
    ld e, l
    ld [$0119], sp
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, a
    ld b, d
    rst $38
    rst $38
    daa
    ld a, [bc]
    ld [hl-], a
    ld [bc], a
    ld de, $ffff
    nop
    nop
    ld bc, $5a42
    rlca
    jr z, @+$12

    dec h
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    adc h
    ld b, b
    ld l, c
    rlca
    ld h, e
    ld a, [bc]
    add hl, de
    ld bc, $ff00
    rst $38
    sub b
    nop
    rst $28
    ld h, $b0
    rlca
    nop
    ld bc, $1e05
    ld c, e
    ld [hl], $3e
    nop
    sub b
    ld d, c
    ld b, l
    ld c, e
    ld d, c
    add e
    ld c, e
    ld d, c
    db $d3
    ld c, e
    ld d, e
    ld [hl+], a
    ld c, h
    ld d, e
    ld c, d
    ld c, h
    ld d, e
    adc e
    ld c, h
    ld d, e
    push de
    ld c, h
    ld d, e
    ldh a, [$4c]
    ld d, e
    scf
    ld c, l
    inc c
    stop
    inc c
    ld de, $9b00
    ld e, $00
    adc [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    adc e
    adc b
    sub e
    add h
    ld c, a
    add l
    adc [hl]
    sub h
    sub c
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld d, c
    or e
    and a
    and h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld a, a
    xor [hl]
    and l
    ld c, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    call nc, $867f
    sbc b
    adc h
    add sp, $57
    nop
    adc d
    adc [hl]
    add [hl]
    add b
    call nc, $a37f
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld c, a
    or d
    or h
    and d
    and d
    and h
    and h
    and e
    and h
    and e
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    and b
    or d
    ld d, c
    or e
    and a
    and h
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
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and a
    and h
    ld a, a
    xor c
    xor [hl]
    xor b
    xor l
    and h
    and e
    ld d, l
    or e
    and a
    and h
    ld a, a
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld a, a
    xor b
    or d
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld [hl], l
    ld a, a
    adc b
    or e
    call nc, $b27f
    and b
    and e
    db $f4
    ld d, c
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    call nc, $854f
    sub h
    add d
    add a
    sub d
    adc b
    add b
    call nc, $ac7f
    and b
    xor b
    xor l
    ld d, l
    and b
    or e
    or e
    or c
    and b
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, c
    add c
    and h
    and a
    xor [hl]
    xor e
    and e
    rst $20
    ld a, a
    adc b
    or e
    call nc, $8f4f
    and b
    or d
    or d

Call_065_4c40:
    xor b
    xor [hl]
    xor l
    ld a, a
    adc a
    xor b
    xor l
    xor d
    rst $20
    ld d, a
    nop
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]

Jump_065_4c5e:
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    adc c
    add b
    adc l
    adc b
    adc l
    add h
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    ld c, a
    adc l
    xor b
    xor l
    xor c
    and b
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld c, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld a, a
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld c, a
    xor b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld d, l
    and l
    or h
    or c
    or e
    and a
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    add sp, $57
    nop
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld c, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    ldh [$92], a
    ld a, a
    add a
    adc [hl]
    adc h
    add h
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    or e
    or c
    and b
    or l
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and c
    or c
    xor [hl]
    and b
    and e
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    and l
    xor [hl]
    or c
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld a, a
    xor b
    or d
    ld d, l
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    add sp, $57
    nop
    adc l
    xor [hl]
    ld a, a
    xor e
    xor b
    or e
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
    add sp, $51
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
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or [hl]
    and b
    or d
    or e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    nop
    dec bc
    dec c
    dec b
    ld [bc], a
    ld de, $0d06
    ld d, $01
    ld de, $1b07
    ld [$1101], sp
    ld [$0b1b], sp
    ld bc, $0911
    dec de
    inc de
    ld bc, $0a11
    dec de
    dec de
    ld bc, $0c11
    inc bc
    ld [de], a
    inc bc
    inc bc
    ld e, c
    ld d, $25
    ld bc, $0d11
    rla
    dec h
    ld [bc], a
    ld de, $230d
    rlca
    ld bc, $0306
    inc hl
    ld [$0602], sp
    inc bc
    nop
    ld [$150f], sp
    nop
    dec hl
    ld c, e
    dec e
    dec b
    nop
    ld l, $4b
    rrca
    add hl, de
    nop
    ld sp, $1d4b
    dec de
    nop
    inc [hl]
    ld c, e
    dec b
    ld de, $3700
    ld c, e
    rrca
    dec c
    nop
    ld a, [hl-]
    ld c, e
    dec de
    inc d
    nop
    dec a
    ld c, e
    dec c
    ld b, $00
    ld b, b
    ld c, e
    inc b
    daa
    ld d, $1b
    ld [bc], a
    ld de, $ffff
    and b
    nop
    ld [hl+], a
    ld c, e
    rst $38
    rst $38
    dec l
    inc c
    ld de, $1102
    rst $38
    rst $38
    or b
    nop
    dec h
    ld c, e
    rst $38
    rst $38
    add hl, hl
    ld [de], a
    inc d
    ld [bc], a
    ld de, $ffff
    add b
    nop
    jr z, jr_065_4e3c

    rst $38
    rst $38
    ld e, l
    dec b
    inc c
    ld bc, $ff00
    rst $38
    nop
    nop
    ld b, e
    ld c, e
    rst $38
    rst $38
    nop
    ld bc, $0501
    ld c, [hl]
    ld sp, $0706
    ld [$4e0f], sp
    ld a, d
    ld [$3b02], sp
    ld sp, $0707
    ld [$4e19], sp
    ld a, d
    ld [bc], a
    inc b
    ld a, [hl-]
    ld sp, $0708
    ld [$4e23], sp
    ld a, d
    ld [$3b06], sp
    sub b
    ld l, e
    ld b, a
    inc [hl]
    ld [hl+], a
    nop
    add hl, bc
    ld l, c
    ld c, [hl]
    ld sp, $04c4
    add hl, bc
    ld h, e
    ld c, [hl]
    ld c, h
    ld a, [$544e]
    ld c, c
    ld h, h
    sub $4f
    nop
    nop

jr_065_4e3c:
    ld e, [hl]
    ld [$5f01], sp
    ld h, b
    inc sp
    call nz, Call_065_4704
    ld c, h
    ld c, $50
    ld d, h
    ld c, c
    inc sp
    ld c, d
    dec b
    inc sp
    ld c, e
    dec b
    inc sp
    ld c, h
    dec b
    inc sp
    ld e, l
    dec b
    inc sp
    ld e, [hl]
    dec b
    ld [hl-], a
    ld [hl], $07
    inc sp
    ld c, h
    rlca
    ld [hl-], a
    ld c, l
    rlca
    sub c
    ld c, h
    ld h, d
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld sp, $000f
    add hl, bc
    sub h
    ld c, [hl]
    ld c, h
    sub [hl]
    ld d, c
    ld d, l
    rra
    rst $10
    ld bc, $8e08
    ld c, [hl]
    ld b, c
    rst $10
    nop
    ld c, h
    cp a
    ld d, c
    add l
    ld bc, $8600
    ld b, l
    inc sp
    rrca
    nop
    ld c, h
    pop de
    ld d, c
    ld d, l
    inc bc
    sub h
    ld c, [hl]
    ld c, h
    ld c, a
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], d
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld c, d
    dec b
    dec de
    inc bc
    sub [hl]
    ld d, e
    db $db
    ld d, e
    nop
    nop
    and [hl]
    ld c, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    pop af
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec b
    dec de
    dec b
    cpl
    ld d, h
    ld e, e
    ld d, h
    nop
    nop
    cp d
    ld c, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    ld h, a
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld e, [hl]
    dec b
    inc e
    inc b
    sbc l
    ld d, h
    ld a, [bc]
    ld d, l
    nop
    nop
    adc $4e
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, $55
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04c4
    add hl, bc
    db $e4
    ld c, [hl]
    ld c, h
    ld b, h
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl-], a
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    inc [hl]
    ld [hl+], a
    nop
    add hl, bc
    di
    ld c, [hl]
    inc c
    dec l
    nop
    ld b, e
    ld [$0101], sp
    inc c
    ld l, $00
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    add d
    adc e
    add b
    adc b
    sub c
    add sp, $51
    sub e
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
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    and h
    or l
    and h
    xor l
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
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    call nc, $844f
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    add sp, $51
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    and $51
    ld [hl], l
    add l
    xor b
    xor l
    and h
    add sp, $4f
    adc e
    and h
    or e
    call nc, $a37f
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    add b
    or d
    ld a, a
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
    db $f4
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    or h
    xor e
    xor e
    ld d, c
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
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
    and $51
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld c, a
    xor b
    or e
    add sp, $7f
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and b
    and e
    xor h
    xor b
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    add sp, $51
    adc b
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld d, c
    xor l
    xor [hl]
    or e
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
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
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    add sp, $7f
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
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    ld d, l
    or h
    or d
    and h
    or c
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
    add sp, $51
    add c
    and h
    and a
    xor b
    xor l
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor b
    or d
    ld c, a
    and b
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld d, l
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ldh [$92], a
    ld a, a
    add e
    add h
    adc l
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    ld c, a
    or d
    and a
    or c
    xor b
    xor l
    and h
    ld a, a
    and b
    or e
    ld a, a
    xor b
    or e
    or d
    ld d, c
    and d
    and h
    xor l
    or e
    and h
    or c
    add sp, $4f
    add [hl]
    xor [hl]
    ld a, a
    or e
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
    and d
    and b
    xor l
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor e
    and b
    cp c
    cp b
    ld a, a
    xor b
    and e
    and h
    and b
    xor e
    or d
    db $f4
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or c
    and h
    and d
    xor [hl]
    and [hl]
    xor l
    xor b
    cp c
    and h
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or d
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
    ld c, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    add c
    add b
    add e
    add [hl]
    add h
    rst $20
    ld d, a
    nop

Jump_065_5163:
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    xor h
    and b
    or e
    or e
    and h
    or c
    and $51
    adc b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    or e
    xor [hl]
    ld c, a
    and h
    or a
    xor a
    and h
    and d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    xor d
    and h
    xor a
    or e
    ld a, a
    xor h
    and h
    ld c, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    rst $20
    ld a, a
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
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
    sub e
    adc h
    ld hl, sp-$06
    add sp, $57
    nop
    sub e
    and a
    and b
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
    ld c, a
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    add c
    sub c
    add h
    add b
    sub e
    add a
    add sp, $51
    adc l
    xor [hl]
    db $f4
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
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    and e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    or c
    and h
    and b
    or e
    and a
    add sp, $51
    adc b
    and l
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
    ld c, a
    xor b
    or e
    db $f4
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
    and a
    and b
    or l
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    and $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    and $57
    nop
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    xor h
    and b
    or e
    or e
    and h
    or c
    and $51
    add b
    or c
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    and b
    and e
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    and $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    and $51
    add l
    or c
    xor [hl]
    xor h
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc l
    add h
    sub [hl]
    ld a, a
    add c
    add b
    sub c
    adc d
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    add sp, $51
    sub e
    and a
    and h
    xor l
    ld a, a
    sub d
    sub h
    sub c
    add l
    ld a, a
    and h
    and b
    or d
    or e
    add sp, $4f
    sub e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    or h
    or e
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld d, l
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    and b
    or c
    and h
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    db $e3
    ld d, l
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
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld c, a
    and l
    and h
    and h
    xor e
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or [hl]
    xor [hl]
    or c
    or d
    and h
    ld d, c
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    add [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    db $e3
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    or d
    and $51
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
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor e
    xor [hl]
    or d
    or e
    and $57
    nop
    adc e
    add b
    adc l
    add d
    add h
    ld a, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and a
    and h
    ret nc

    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld d, c
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $4f
    adc l
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    and d
    and a
    and b
    xor l
    and d
    and h
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and d
    and a
    and b
    xor l
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    and $7f
    adc l
    xor [hl]
    or e
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, l
    xor [hl]
    xor l
    and h
    ld a, a
    xor a
    and h
    or c
    and d
    and h
    xor l
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    call nc, $ae7f
    and e
    and e
    add sp, $57
    nop
    adc b
    ld a, a
    xor d
    xor l

Jump_065_546c:
    xor [hl]
    or [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    db $e3
    ld c, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    xor l
    xor [hl]
    or [hl]
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
    or d
    and a
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    add e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    and b
    and d
    or c
    and h
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld c, a
    xor e
    xor b
    and l
    and h
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld d, c
    and c
    and h
    ld a, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    sub [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    db $e3
    ld d, l
    or e
    cp b
    xor a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
    sbc b
    xor [hl]
    rst $20
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or [hl]
    and h
    ld d, c
    and b
    or c
    and h
    ld a, a
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    rst $20
    ld c, a
    add d
    xor [hl]
    or h
    xor l
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    add d
    adc e
    add b
    adc b
    sub c
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor h
    cp b
    or e
    and a
    xor b
    and d
    and b
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and b
    and d
    db $e3
    ld d, l
    or c
    and h
    and e
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    db $e3
    or e
    cp b
    xor a
    and h
    ld d, l
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
    push de
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
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
    xor [hl]
    or [hl]
    db $f4
    ld c, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or d
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    and e
    ld d, c
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld c, a
    xor b
    and d
    and h
    db $e3
    or e
    cp b
    xor a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    and b
    or e
    ld a, a
    add d
    adc e
    add b
    adc b
    sub c
    rst $20
    ld d, c
    add b
    xor e
    xor e
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $ab7f
    and h
    and l
    or e
    ld a, a
    xor b
    or d
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
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
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
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    nop
    rlca
    ld de, HeaderLogo
    dec b
    ld a, [bc]
    ld de, $0105
    dec b
    ld a, [bc]
    rlca
    ld bc, $0501
    ld [bc], a
    add hl, bc
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    inc bc
    dec b
    ld [bc], a
    rlca
    rlca
    inc b
    dec b
    ld [bc], a
    ld b, $07
    dec b
    dec b
    ld [bc], a
    nop
    ld [bc], a
    rrca
    inc bc
    nop
    ld [$0f4e], a
    ld b, $00
    ld [$054e], a
    add hl, de
    rlca
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    inc h
    ld c, [hl]
    rst $38
    rst $38
    inc hl
    dec bc
    ld a, [bc]
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    xor [hl]
    ld c, [hl]
    rst $38
    rst $38
    inc hl
    ld [de], a
    dec b
    ld b, $00
    rst $38
    rst $38
    add d
    inc bc
    sbc d
    ld c, [hl]
    rst $38
    rst $38
    inc h
    ld b, $0d
    ld b, $00
    rst $38
    rst $38
    add d
    ld bc, $4ec2
    rst $38
    rst $38
    ld c, b
    inc de
    dec bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    sub $4e
    rst $38
    rst $38
    nop
    ld bc, $2703
    ld d, a
    ld a, l
    dec hl
    ld d, a
    sub b
    ld [bc], a
    jr nc, jr_065_5785

    nop
    nop
    dec b
    inc b
    dec a
    ld d, a
    inc bc
    dec b
    ld b, d
    ld d, a
    inc b
    ld b, $47
    ld d, a
    rst $38
    ld l, [hl]
    inc b
    inc bc
    ld c, h
    ld d, a
    ld l, [hl]
    dec b
    inc bc
    ld c, h
    ld d, a
    ld l, [hl]
    ld b, $03
    ld c, h
    ld d, a
    adc e
    ld e, $00
    ld e, b
    ld d, a
    ld b, a
    ld c, h
    and l
    ld e, b
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
    ld c, e
    dec b
    dec de
    inc b
    adc c
    ld d, a
    or [hl]
    ld d, a
    nop
    nop
    ld l, l
    ld d, a
    ld h, [hl]
    ld b, a
    ld c, h
    push de
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld e, l
    dec b
    inc e
    inc bc
    dec hl
    ld e, b
    ld [hl], h
    ld e, b
    nop
    nop
    add c
    ld d, a
    ld h, [hl]
    ld b, a
    ld c, h
    add e

jr_065_5785:
    ld e, b
    ld d, h
    ld c, c
    sub c
    nop
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    and b
    or d
    ld a, a
    xor b
    and l
    ld a, a
    or [hl]
    and h
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or h
    or d
    and h
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    db $e3
    ld d, l
    or e
    cp b
    xor a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub c
    and b
    or e
    or d
    rst $20
    ld a, a
    adc b
    and l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    adc b
    ld c, a
    and a
    and b
    and e
    ld a, a
    and b
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    adc h
    and h
    xor h
    and c
    and h
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    db $e3
    or h
    or d
    and h
    or c
    ld a, a
    and d
    xor e
    and b
    xor l
    ld d, c
    and d
    and b
    xor l
    ld a, a
    or h
    or d
    and h
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld d, c
    xor [hl]
    or h
    or c
    ld a, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld c, a
    xor b
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    and b
    ld c, a
    xor l
    and b
    xor h
    and h
    xor e
    and h
    or d
    or d
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld d, l
    xor a
    and b
    or d
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    add d
    adc e
    add b
    adc b
    sub c
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    xor e
    xor b
    or l
    xor b
    and e
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    and e
    xor b
    and e
    rst $20
    ld d, a
    nop
    add b
    or [hl]
    or [hl]
    or [hl]
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld d, a
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    ld [hl], l
    ld a, a
    add d
    adc e
    add b
    adc b
    sub c
    ld a, a
    xor b
    or d
    ld c, a
    and [hl]
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
    xor h
    and b
    and e
    ld [hl], l
    ld d, a
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
    rst $20
    ld d, a
    nop
    nop
    dec b
    rlca
    ld bc, $0503
    ld bc, $0709
    inc b
    dec b
    ld bc, $0205
    dec b
    dec b
    ld bc, $0807
    ld b, $05
    ld bc, $0803
    rlca
    dec b
    ld bc, $0000
    ld [$0523], sp
    ld [$0009], sp
    rst $38
    rst $38
    add d
    ld bc, $5761
    rst $38
    rst $38
    inc h
    rrca
    ld [$0008], sp
    rst $38
    rst $38
    add d
    ld bc, $5775
    rst $38
    rst $38
    ld e, d
    ld b, $0c
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, [hl]
    ld d, a
    ld b, $07
    ld e, d
    rlca
    ld b, $19
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, [hl]
    ld d, a
    rlca
    rlca
    ld e, d
    inc d
    ld a, [bc]
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, [hl]
    ld d, a
    ld [$5a07], sp
    rlca
    rlca
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, [hl]
    ld d, a
    rst $38
    rst $38
    ld e, d
    dec b
    ld a, [bc]
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, [hl]
    ld d, a
    rst $38
    rst $38
    ld e, d
    ld [de], a
    inc c
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, [hl]
    ld d, a
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld e, h
    ld e, c
    ld b, a
    ld c, h
    xor $59
    add h
    sub e
    nop
    ld d, h
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    inc c
    inc bc
    nop
    nop
    add b
    ld a, a
    and d
    xor e
    and b
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld c, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and l
    or c
    and h
    and h
    xor e
    cp b
    ld d, c
    and d
    xor [hl]
    xor h
    xor h
    and b
    xor l
    and e
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    or d
    ld c, a
    xor e
    xor b
    or l
    and h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    ld d, l
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
    add sp, $51
    add b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and h
    or d
    or h
    xor e
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    and b
    or c
    and h
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    or d
    ld d, c
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    add sp, $57
    nop
    add e
    sub c
    add b
    sub e
    adc b
    adc l
    adc b
    sbc h
    ld a, a
    add e
    or c
    and b
    and b
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    ld a, [bc]
    rlca
    inc bc
    ld [bc], a
    dec b
    ld a, [bc]
    nop
    nop
    ld [bc], a
    jr nc, jr_065_5a17

    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop

jr_065_5a17:
    ld c, c
    ld e, c
    rst $38
    rst $38
    sub [hl]
    add hl, bc
    add hl, bc
    ld d, $00
    rst $38
    rst $38
    sub b
    nop
    ld c, h
    ld e, c
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    sub [hl]
    inc bc
    ld d, h
    ld c, c
    sub c
    inc c
    inc bc
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    dec b
    ld a, [bc]
    rlca
    inc bc
    inc bc
    dec b
    ld a, [bc]
    nop
    ld [bc], a
    ld bc, $0000
    ld sp, $015a
    ld bc, $3100
    ld e, d
    ld bc, $0728
    ld b, $03
    nop
    rst $38
    rst $38
    and b
    nop
    ld a, [hl+]
    ld e, d
    rst $38
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    ld de, $4900
    sub c
    ld d, c
    ld l, d
    ld e, d
    ld d, c
    jp hl


    ld e, d
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    or h
    cp b
    ld a, a
    adc h
    add b
    sub a
    ld c, a
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld d, c
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    or c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    and b
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add c
    and h
    or [hl]
    and b
    or c
    and h
    db $e3
    db $e3
    xor b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld c, a
    or c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    adc a
    adc a
    db $f4
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
    adc [hl]
    adc b
    adc l
    sub e
    sub d
    ld c, a
    xor l
    and h
    and h
    and e
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
    adc h
    add b
    sub a
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld a, a
    xor d
    and h
    and h
    xor a
    or d
    ld c, a
    or [hl]
    and h
    and b
    xor d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or d
    or e
    ld c, a
    xor e
    and b
    or d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld d, l
    sub c
    add h
    adc a
    add h
    adc e
    ld a, a
    or d
    xor a
    or c
    and b
    cp b
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    dec b
    ld a, [bc]
    rlca
    inc bc
    inc b
    dec b
    ld a, [bc]
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
    ld e, l
    ld e, d
    rst $38
    rst $38
    inc hl
    ld a, [bc]
    dec bc
    dec b
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    ld h, h
    ld e, d
    rst $38
    rst $38
    ld b, c
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld h, a
    ld e, d
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld d, c
    add l
    ld e, e
    ld d, c
    db $fd
    ld e, e
    inc c
    inc sp
    nop
    nop
    add e
    and h
    and h
    xor a
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    and l
    and b
    or c
    db $e3
    ld c, a
    xor [hl]
    and l
    and l
    ld a, a
    adc b
    adc l
    add e
    adc b
    add [hl]
    adc [hl]
    ld a, a
    adc a
    adc e
    add b
    sub e
    add h
    add b
    sub h
    ld d, c
    xor b
    or d
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
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
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
    and [hl]
    and b
    or e
    and a
    and h
    or c
    ld d, c
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    or h
    xor l
    or e
    or c
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
    or e
    and a
    xor b
    or d
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and a
    and b
    and e
    ld d, c
    or e
    xor [hl]
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    adc [hl]
    sub l
    add h
    ld c, a
    add e
    add h
    adc e
    add h
    sub e
    add h
    sub c
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld d, l
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    and b
    xor l
    ld a, a
    add a
    adc h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    dec b
    dec b
    ld a, [bc]
    rlca
    inc b
    dec b
    dec b
    ld a, [bc]
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
    ld a, c
    ld e, e
    rst $38
    rst $38
    ld b, b
    rlca
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld a, h
    ld e, e
    rst $38
    rst $38
    ld h, $08
    dec b
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld a, a
    ld e, e
    rst $38
    rst $38
    inc hl
    ld a, [bc]
    dec bc
    dec b
    ld bc, $ffff
    add b
    nop
    add d
    ld e, e
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    rrca
    ld hl, $5400
    ld c, c
    sub c
    inc c
    ld bc, $0000
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $05
    ld a, [bc]
    rlca
    inc bc
    ld b, $05
    ld a, [bc]
    nop
    ld [bc], a
    ld bc, $0000
    cp h
    ld e, h
    ld bc, $0001
    cp h
    ld e, h
    ld bc, $072b
    ld b, $06
    nop
    rst $38
    rst $38
    nop
    nop
    or h
    ld e, h
    rst $38
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    dec e
    nop
    ld c, c
    sub c
    ld d, c
    push af
    ld e, h
    ld d, c
    ld [hl], $5d
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    xor [hl]
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    or h
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld d, c
    sbc c
    adc [hl]
    adc l
    add h
    ld a, a
    or d
    xor [hl]
    or h
    or l
    and h
    xor l
    xor b
    or c
    or d
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $a27f
    xor e
    xor [hl]
    or d
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld c, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    call nc, $a67f
    or c
    and b
    xor l
    and e
    db $e3
    ld d, l
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    xor [hl]
    or [hl]
    xor l
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $0511
    rlca
    inc bc
    ld bc, $0511
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
    add sp, $5c
    rst $38
    rst $38
    ld a, [hl-]
    ld b, $07
    ld [$ff00], sp
    rst $38
    add b
    nop
    rst $28
    ld e, h
    rst $38
    rst $38
    inc h
    ld a, [bc]
    dec bc
    dec b
    ld [bc], a
    rst $38
    rst $38
    and b
    nop
    ld a, [c]
    ld e, h
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld de, $0705
    inc bc
    ld [bc], a
    ld de, $0005
    nop
    nop
    nop
    nop
    inc [hl]
    daa
    nop
    add hl, bc
    nop
    ld e, [hl]
    ld l, c
    ld [bc], a
    daa
    ld e, a
    ld l, e
    ld b, a
    ld c, h
    dec [hl]
    ld e, a
    ld d, h
    ld c, c
    ld h, h
    and c
    ld e, a
    nop
    nop
    ld e, [hl]
    ld a, [de]
    ld bc, $605f
    inc sp
    ret


    inc b
    inc sp
    rla
    dec b
    inc sp
    ld a, [de]
    dec b
    inc sp
    add d
    inc b
    inc sp
    ld e, $04
    ld l, l
    rlca
    jr z, jr_065_5e54

    ld [$6d28], sp
    add hl, bc
    jr z, jr_065_5e5a

    ld a, [bc]
    daa
    rrca
    ld e, [hl]
    nop
    ld b, a
    ld c, h
    db $eb
    ld e, a
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $27
    nop
    inc bc
    ld [bc], a
    ld e, [hl]
    ld l, e
    ld b, a
    ld sp, $00dd
    add hl, bc
    dec d
    ld e, [hl]
    ld c, h
    ld [bc], a
    ld h, b
    ld d, l
    sbc [hl]
    push bc
    ld bc, $1508
    ld e, [hl]
    inc sp
    db $dd
    nop
    ld c, h
    ld [hl], h
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld sp, $0517
    add hl, bc
    inc l
    ld e, [hl]
    ld l, c
    inc bc
    daa
    ld e, a
    ld l, e
    ld l, l
    rlca
    jr z, jr_065_5e39

    ld e, [hl]
    nop
    ld l, e
    ld b, a
    ld sp, $0517
    add hl, bc
    ld c, a
    ld e, [hl]
    ld c, h
    and $60
    ld d, h
    ld c, c

jr_065_5e39:
    ld h, h
    ld h, $61
    nop
    nop
    ld e, [hl]
    add hl, de
    inc bc
    ld e, a
    add hl, bc
    ld c, d
    ld e, [hl]
    ld h, b
    inc sp
    rla
    dec b
    sub c
    ld l, l
    rlca
    ld a, [bc]
    ld h, b
    sub c
    ld c, h
    add hl, sp
    ld h, c
    ld d, h
    ld c, c

jr_065_5e54:
    sub c
    ld sp, $051a
    add hl, bc
    ld h, [hl]

jr_065_5e5a:
    ld e, [hl]
    ld l, c
    inc b
    daa
    ld e, a
    ld l, e
    ld l, l
    ld [$0f28], sp
    ld e, [hl]
    nop
    ld l, e
    ld b, a
    ld sp, $051a
    add hl, bc
    adc c
    ld e, [hl]
    ld c, h
    ld h, [hl]
    ld h, c
    ld d, h
    ld c, c
    ld h, h
    ld a, e
    ld h, c
    nop
    nop
    ld e, [hl]
    add hl, de
    ld b, $5f
    add hl, bc
    add h
    ld e, [hl]
    ld h, b
    inc sp
    ld a, [de]
    dec b
    sub c
    ld l, l
    ld [$600a], sp
    sub c
    ld c, h
    sbc c
    ld h, c
    ld d, h
    ld c, c
    sub c
    ld sp, $0482
    add hl, bc
    and b
    ld e, [hl]
    ld l, c
    dec b
    daa
    ld e, a
    ld l, e
    ld l, l
    add hl, bc
    jr z, jr_065_5ead

    ld e, [hl]
    nop
    ld l, e
    ld b, a
    ld sp, $0482
    add hl, bc
    jp Jump_065_4c5e


    cp e
    ld h, c
    ld d, h
    ld c, c

jr_065_5ead:
    ld h, h
    pop af
    ld h, c
    nop
    nop
    ld e, [hl]
    dec [hl]
    dec b
    ld e, a
    add hl, bc
    cp [hl]
    ld e, [hl]
    ld h, b
    inc sp
    add d
    inc b
    sub c
    ld l, l
    add hl, bc
    ld a, [bc]
    ld h, b
    sub c
    ld c, h
    inc c
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld sp, $041e
    add hl, bc
    jp c, Jump_065_695e

    ld b, $27
    ld e, a
    ld l, e
    ld l, l
    ld a, [bc]
    daa
    rrca
    ld e, [hl]
    nop
    ld l, e
    ld b, a
    ld sp, $041e
    add hl, bc
    db $fd
    ld e, [hl]
    ld c, h
    jr z, jr_065_5f47

    ld d, h
    ld c, c
    ld h, h
    ld c, d
    ld h, d
    nop
    nop
    ld e, [hl]
    ld [hl], $05
    ld e, a
    add hl, bc
    ld hl, sp+$5e
    ld h, b
    inc sp
    ld e, $04
    sub c
    ld l, l
    ld a, [bc]
    ld a, [bc]
    ld h, b
    sub c
    ld c, h
    ld l, e
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04c9
    add hl, bc
    ld de, $4c5f
    sbc c
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec h
    ld h, e
    ld d, h
    ld c, c
    sub c
    inc [hl]
    daa
    nop
    add hl, bc
    jr nz, jr_065_5f7c

    inc c
    dec l
    nop
    ld b, e
    ld a, [de]
    ld bc, $0c01
    ld l, $00
    nop
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    ld b, a
    nop
    add l
    or h
    and l
    or h
    and l
    or h
    and l
    or h
    ld [hl], l
    ld d, c
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c

jr_065_5f47:
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor b
    or d
    db $e3
    ld c, a
    and b
    xor a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld [hl], l
    ld d, c
    adc b
    jp nc, $ae7f

    xor l
    xor e
    cp b
    ld a, a
    xor c
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    ld a, a
    and e
    and h

jr_065_5f7c:
    and b
    xor e
    rst $20
    ld d, c
    adc c
    add b
    adc l
    adc b
    adc l
    add h
    ld a, a
    xor [hl]
    and l
    ld a, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld c, a
    add [hl]
    sbc b
    adc h
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $ac7f
    and h
    rst $20
    ld d, a
    nop
    adc c
    add b
    adc l
    adc b
    adc l
    add h
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld d, l
    and e
    and h
    and l
    xor b
    xor l
    xor b
    or e
    and h
    xor e
    cp b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld [hl], l
    ld d, c
    add a
    and h
    or c
    and h
    call nc, $927f
    adc [hl]
    sub h
    adc e
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $4f
    sub e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
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
    sub d
    adc [hl]
    sub h
    adc e
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    adc c
    add b
    adc l
    adc b
    adc l
    add h
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    xor [hl]
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld d, l
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld a, a
    and [hl]
    xor b
    and l
    or e
    rst $20
    ld d, c
    adc b
    or e
    call nc, $937f
    adc [hl]
    sub a
    adc b
    add d
    db $f4
    ld a, a
    and b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    db $e3
    ld c, a
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    or d
    or e
    and h
    and b
    and e
    xor b
    xor e
    cp b
    ld a, a
    or d
    and b
    xor a
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or l
    xor b
    and d
    or e
    xor b
    xor h
    call nc, $877f
    adc a
    add sp, $57
    nop
    adc c
    add b
    adc l
    adc b
    adc l
    add h
    sbc h
    ld a, a
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and b
    xor a
    xor a
    xor e
    cp b
    ld d, c
    xor h
    cp b
    or d
    and h
    xor e
    and l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor b
    xor h
    xor a
    or c
    xor [hl]
    or l
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    or d
    add sp, $51
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
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld d, l
    add l
    and b
    or e
    and a
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add l
    or h
    and l
    or h
    and l
    or h
    rst $20
    ld d, c
    adc b
    jp nc, $897f

    add b
    adc l
    adc b
    adc l
    add h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    rst $20
    ld d, c
    adc l
    xor [hl]
    db $f4
    ld a, a
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    or e
    and d
    and a
    and b
    db $f4
    ld a, a
    or d
    or h
    and d
    xor d
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    xor [hl]
    xor e
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    or d
    db $e3
    ld c, a
    or e
    xor b
    xor l
    and [hl]
    or h
    xor b
    or d
    and a
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    or c
    and h
    and b
    xor e
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    and $57
    nop
    add l
    xor [hl]
    xor [hl]
    xor e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld c, a
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and a
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld c, a
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
    or [hl]
    and h
    and b
    xor d
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and h
    xor e
    xor e
    and $7f
    sub [hl]
    and b
    or d
    xor l
    push de
    ld a, a
    xor h
    cp b
    ld c, a
    and e
    xor b
    or d
    and [hl]
    or h
    xor b
    or d
    and h
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    and $57
    nop
    adc b
    jp nc, $897f

    add b
    adc l
    adc b
    adc l
    add h
    rst $20
    ld d, c
    add a
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    and $51
    adc e
    and h
    or e
    call nc, $a17f
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
    ld a, a
    xor b
    or e
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld d, a
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
    or e
    xor b
    or c
    and h
    and e
    add sp, $57
    nop
    sub [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    or e
    and d
    and a
    and b
    rst $20
    ld c, a
    adc b
    jp nc, $897f

    add b
    adc l
    adc b
    adc l
    add h
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and e
    xor b
    or d
    and [hl]
    or h
    xor b
    or d
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld a, a
    add e
    and b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    sub [hl]
    and b
    or d
    ld a, a
    xor h
    cp b
    ld c, a
    and e
    xor b
    or d
    and [hl]
    or h
    xor b
    or d
    and h
    ld a, a
    and d
    or h
    or e
    and h
    ld a, a
    xor [hl]
    or c
    ld d, l
    or [hl]
    and a
    and b
    or e
    db $f4
    ld a, a
    and a
    or h
    and a
    and $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    sub e
    and b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld d, c
    cp b
    xor [hl]
    or h
    add sp, $7f
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    db $f4
    ld a, a
    adc c
    add b
    adc l
    adc b
    adc l
    add h
    add sp, $51
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    ld a, a
    adc c
    add b
    adc l
    adc b
    adc l
    add h
    and $57
    nop
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
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    ld de, $0304
    ld de, $1105
    dec b
    inc bc
    ld de, $0005
    ld [bc], a
    nop
    ld [bc], a
    nop
    rla
    ld e, a
    nop
    ld b, $00
    rla
    ld e, a
    ld b, $0a
    dec b
    dec bc
    ld a, [bc]
    nop
    rst $38
    rst $38
    sub b
    nop
    cp c
    ld e, l
    rst $38
    rst $38
    rst $30
    dec b
    dec b
    ld a, [bc]
    nop
    rst $38
    rst $38
    sub b
    nop
    dec de
    ld e, [hl]
    rst $38
    rst $38
    ld hl, sp+$05
    add hl, bc
    ld a, [bc]
    nop
    rst $38
    rst $38
    sub b
    nop
    ld d, l
    ld e, [hl]
    rst $38
    rst $38
    ld sp, hl
    dec b
    rlca
    ld a, [bc]
    nop
    rst $38
    rst $38
    sub b
    nop
    adc a
    ld e, [hl]
    rst $38
    rst $38
    ld a, [$0d05]
    ld a, [bc]
    nop
    rst $38
    rst $38
    sub b
    nop
    ret


    ld e, [hl]
    rst $38
    rst $38
    ld c, b
    inc d
    ld [$0006], sp
    rst $38
    rst $38
    sub b
    nop
    inc bc
    ld e, a
    rst $38
    rst $38
    nop
    nop
    ld d, c
    jp Jump_065_5163


    ld sp, hl
    ld h, e
    nop
    adc h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    ld a, a
    xor b
    or d
    ld a, a
    and b
    or e
    ld a, a
    ld c, a
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
    ld a, a
    add c
    adc b
    adc e
    adc e
    call nc, $ae55
    xor l
    ld a, a
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    add b
    adc a
    add h
    add sp, $57
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    or [hl]
    and h
    xor b
    or c
    and e
    db $f4
    ld c, a
    or d
    xor e
    xor [hl]
    or [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    xor l
    ld d, l
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    ld de, $0705
    inc bc
    inc b
    ld de, $0005
    nop
    ld [bc], a
    ld l, $07
    ld b, $09
    nop
    rst $38
    rst $38
    add b
    nop
    cp l
    ld h, e
    rst $38
    rst $38
    daa
    ld [$040a], sp
    db $10
    rst $38
    rst $38
    nop
    nop
    ret nz

    ld h, e
    rst $38
    rst $38
    ld bc, $6458
    nop
    nop
    nop
    sub c
    inc c
    nop
    nop
    ld d, c
    sub h
    ld h, h
    ld d, c
    call c, $6b64
    ld b, a
    ld c, h
    ld l, $65
    ld d, h
    ld c, c
    ld l, c
    dec b
    add [hl]
    ld h, h
    ld l, e
    ld l, l
    inc c
    ld a, [bc]
    rrca
    ld e, [hl]
    nop
    ld b, a
    ld c, h
    ld c, [hl]
    ld h, l
    ld d, h
    ld c, c
    ld l, c
    dec b
    add [hl]
    ld h, h
    ld l, e
    ld l, l
    inc c
    jr z, @+$11

    ld e, [hl]
    nop
    sub c
    nop
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    ld b, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld c, a
    and c
    or c
    and b
    xor l
    and e
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld d, l
    ld d, h
    add e
    add h
    sub a
    add sp, $51
    add e
    xor b
    and e
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    and b
    ld c, a
    or d
    and a
    xor [hl]
    and d
    xor d
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, l
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and d
    and b
    xor e
    add sp, $57
    nop
    adc b
    jp nc, $897f

    add b
    adc l
    adc b
    adc l
    add h
    rst $20
    ld a, a
    add a
    xor [hl]
    and d
    or h
    or d
    db $e3
    ld c, a
    xor a
    xor [hl]
    and d
    or h
    or d
    ld [hl], l
    ld a, a
    adc a
    xor [hl]
    xor [hl]
    and l
    rst $20
    ld d, a
    nop
    sub d
    and h
    and h
    and $7f
    adc b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and a
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    nop
    inc bc
    rlca
    inc bc
    dec b
    ld de, $0705
    inc b
    dec b
    ld de, $0705
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
    and b
    nop
    ld e, c
    ld h, h
    rst $38
    rst $38
    inc hl
    ld [$050c], sp
    ld bc, $ffff
    nop
    nop
    ld e, h
    ld h, h
    rst $38
    rst $38
    inc h
    ld [$0505], sp
    ld bc, $ffff
    nop
    nop
    ld e, a
    ld h, h
    rst $38
    rst $38
    db $fc
    rlca
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld h, d
    ld h, h
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0007
    inc bc
    ld de, $000a
    nop
    nop
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $00d9
    add hl, bc
    rst $10
    ld h, l
    ld c, h
    and $65
    ld d, h
    ld c, c
    inc sp
    reti


    nop
    sub c
    ld c, h
    sub c
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld [$5366], a
    ld h, $67
    inc c
    ld [bc], a
    nop
    nop
    adc h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld a, a
    sub [hl]
    add b
    sub c
    db $e3
    ld d, l
    add e
    add h
    adc l
    add sp, $51
    add b
    or e
    ld a, a
    xor e
    and h
    and b
    or d
    or e
    ld a, a
    and a
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld [hl], l
    ld d, c
    add a
    and h
    ld a, a
    and e
    and h
    and d
    xor b
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or l
    and b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    and e
    ld d, c
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    xor [hl]
    or l
    and h
    or c
    or d
    and h
    and b
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and c
    cp b
    ld a, a
    and a
    xor b
    xor h
    or d
    and h
    xor e
    and l
    add sp, $51
    add a
    and h
    ld a, a
    or b
    or h
    xor b
    or e
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and b
    or e
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
    or [hl]
    and h
    or c
    and h
    ld c, a
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
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    ld d, l
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    or e
    or h
    and c
    and c
    xor [hl]
    or c
    xor l
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor a
    and a
    xor [hl]
    or e
    xor [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and b
    xor l
    ld d, c
    or [hl]
    and a
    xor [hl]
    call nc, $b27f
    or h
    or c
    or c
    xor [hl]
    or h
    xor l
    and e
    and h
    and e
    ld c, a
    and c
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor a
    and a
    xor [hl]
    or e
    xor [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld c, a
    and a
    or h
    and [hl]
    and h
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    cp b
    ld a, a
    xor a
    xor e
    and b
    xor b
    xor l
    ld d, c
    or [hl]
    xor b
    or e
    and a
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
    ld c, a
    and l
    or c
    xor [hl]
    xor e
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $11
    dec b
    rlca
    inc bc
    ld b, $11
    dec b
    nop
    inc b
    ld bc, $0000
    db $e3
    ld h, l
    ld bc, $0001
    db $e3
    ld h, l
    nop
    rlca
    nop
    db $dd
    ld h, l
    nop
    add hl, bc
    nop
    ldh [$65], a
    ld bc, $0828
    ld b, $09
    nop
    rst $38
    rst $38
    and b
    nop
    add $65
    rst $38
    rst $38
    nop
    nop
    ld d, c
    and c
    ld h, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and b
    ld a, a
    ld d, h
    add e
    add h
    sub a
    and $7f
    sub e
    and a
    and b
    or e
    call nc, $b151
    and h
    and b
    xor e
    xor e
    cp b
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
    add sp, $4f
    add e
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
    rst $20
    ld d, a
    nop
    nop
    inc b
    inc b
    nop
    ld [$0511], sp
    dec b
    nop
    add hl, bc
    ld de, $0405
    add hl, bc
    ld bc, $0311
    dec b
    add hl, bc
    ld [bc], a
    ld de, $0003
    nop
    ld bc, $0643
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    sbc [hl]
    ld h, a
    rst $38
    rst $38
    nop
    nop
    ld b, a
    ld sp, $001f
    add hl, bc
    rla
    ld l, b
    sub h
    nop
    nop
    nop
    ld c, c
    sub c
    sub h
    nop
    ld bc, $4900
    sub c
    ld l, e
    ld b, a
    ld sp, $001f
    add hl, bc
    dec hl
    ld l, b
    ld c, h
    inc [hl]
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], e
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld d, c
    and b
    ld l, b
    nop
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    and l
    or c
    and h
    or d
    and a
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    xor h
    xor [hl]
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
    and $57
    nop
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    or d
    or e
    xor [hl]
    and d
    xor d
    rst $20
    ld a, a
    adc l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld d, l
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
    or [hl]
    and b
    or d
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    db $f4
    ld a, a
    and b
    ld d, c
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor a
    xor [hl]
    xor b
    db $e3
    ld c, a
    or d
    xor [hl]
    xor l
    and h
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor d
    and h
    xor a
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    xor l
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
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
    xor d
    and h
    and h
    xor a
    ld a, a
    and b
    xor l
    ld c, a
    add b
    adc l
    sub e
    adc b
    add e
    adc [hl]
    sub e
    add h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $031a
    rlca
    inc bc
    ld bc, $031a
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
    ld a, [bc]
    ld l, b
    rst $38
    rst $38
    inc hl
    ld a, [bc]
    dec bc
    dec b
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    dec e
    ld l, b
    rst $38
    rst $38

Jump_065_695e:
    daa
    add hl, bc
    ld b, $06
    nop
    rst $38
    rst $38
    add b
    nop
    ld sp, $ff68
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld d, c
    adc d
    ld l, c
    ld d, c
    ret z

    ld l, c
    ld l, e
    ld b, a
    ld sp, $001f
    add hl, bc
    add h
    ld l, c
    ld c, h
    pop af
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, [hl]
    ld l, d
    ld d, h
    ld c, c
    sub c
    nop
    adc b
    or e
    call nc, $a67f
    or c
    and h
    and b
    or e
    add sp, $7f
    adc b
    ld a, a
    and d
    and b
    xor l
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld d, c
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld c, a
    xor b
    or e
    call nc, $a07f
    xor e
    xor e
    ld a, a
    and l
    or c
    and h
    and h
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    adc a
    add d
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or c
    and h
    and h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld d, l
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add d
    adc [hl]
    adc h
    adc h
    sub h
    adc l
    adc b
    add d
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld c, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    or h
    xor a
    or d
    or e
    and b
    xor b
    or c
    or d
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    or h
    xor b
    xor e
    or e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld c, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add d
    adc [hl]
    adc h
    adc h
    sub h
    adc l
    adc b
    add d
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld c, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    or h
    xor a
    or d
    or e
    and b
    xor b
    or c
    or d
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    or h
    xor b
    xor e
    or e
    add sp, $51
    adc b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    rst $20
    ld d, a
    nop
    nop
    inc bc
    rlca
    inc bc
    ld [bc], a
    ld a, [de]
    inc bc
    rlca
    inc b
    ld [bc], a
    ld a, [de]
    inc bc
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
    ld l, l
    ld l, c
    rst $38
    rst $38
    ld a, [hl-]
    rlca
    ld b, $07
    nop
    rst $38
    rst $38
    add b
    nop
    ld [hl], b
    ld l, c
    rst $38
    rst $38
    ld b, b
    ld a, [bc]
    inc c
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    ld [hl], e
    ld l, c
    rst $38
    rst $38
    add hl, hl
    ld a, [bc]
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    db $76
    ld l, c
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld [$516a], a
    ld h, l
    ld l, e
    inc c
    ld [bc], a
    nop
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
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
    or d
    and h
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and b
    or c
    and h
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
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
    sub d
    ld d, c
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
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
    and h
    or e
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
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
    and c
    and h
    ld a, a
    and b
    ld d, l
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
    rst $20
    ld d, c
    adc b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
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
    cp b
    ld d, c
    and l
    or c
    xor b
    and h
    xor l
    and e
    call nc, $b37f
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld a, [de]
    inc bc
    rlca
    inc bc
    inc bc
    ld a, [de]
    inc bc
    nop
    ld [bc], a
    ld bc, $0000
    rst $20
    ld l, d
    ld bc, $0001
    rst $20
    ld l, d
    ld [bc], a
    dec l
    rlca
    ld b, $06
    nop
    rst $38
    rst $38
    nop
    nop
    pop hl
    ld l, d
    rst $38
    rst $38
    dec h
    add hl, bc
    add hl, bc
    dec b
    ld bc, $ffff
    add b
    nop
    db $e4
    ld l, d
    rst $38
    rst $38
    nop
    nop
    ld d, c
    dec c
    ld l, h
    inc c
    inc bc
    nop
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    or [hl]
    and h
    and h
    ld c, a
    xor e
    and b
    and e
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor [hl]
    or e
    db $e3
    ld d, l
    or d
    and a
    xor [hl]
    or e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    and e
    or l
    xor b
    and d
    and h
    sbc h
    ld a, a
    add d
    and b
    or e
    and d
    and a
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld d, l
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub e
    or c
    and h
    and b
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor d
    xor b
    xor l
    and e
    xor l
    and h
    or d
    or d
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    ld a, [de]
    inc bc
    rlca
    inc bc
    inc b
    ld a, [de]
    inc bc
    nop
    ld [bc], a
    ld bc, $0000
    ld a, [bc]
    ld l, h
    ld bc, $0001
    ld a, [bc]
    ld l, h
    ld bc, $072f
    ld b, $09
    nop
    rst $38
    rst $38
    nop
    nop
    rlca
    ld l, h
    rst $38
    ld b, $00
    nop
    ld b, a
    ld c, h
    jp Jump_065_546c


    ld c, c
    sub c
    ld b, a
    ld c, h
    db $fc
    ld l, h
    ld d, h
    ld c, c
    sub c
    inc c
    inc bc
    nop
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    and b
    xor b
    xor l
    ld a, a
    and h
    or a
    xor a
    and h
    db $e3
    ld c, a
    or c
    xor b
    and h
    xor l
    and d
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld d, c
    and b
    xor l
    and e
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
    xor b
    or c
    ld c, a
    and l
    xor [hl]
    or c
    xor h
    add sp, $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    and $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    ld c, a
    xor b
    and l
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    ld a, [de]
    inc bc
    rlca
    inc bc
    dec b
    ld a, [de]
    inc bc
    nop
    ld [bc], a
    ld bc, $0000
    ret nz

    ld l, h
    ld bc, $0001
    ret nz

    ld l, h
    ld [bc], a
    jr z, jr_065_6d53

    rlca
    ld [$ff00], sp
    rst $38
    and b
    nop
    cp c
    ld l, h

jr_065_6d53:
    rst $38
    rst $38
    daa
    add hl, bc
    ld b, $09
    nop
    rst $38
    rst $38
    add b
    nop
    or d
    ld l, h
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0027
    add hl, bc
    ld a, c
    ld l, l
    ld c, h
    add d
    ld l, l
    ld d, l
    sbc [hl]
    xor l
    ld bc, $7d08
    ld l, l
    inc sp
    daa
    nop
    ld c, h
    db $ec
    ld l, l
    ld d, h
    ld c, c
    sub c
    inc c
    inc bc
    nop
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and h
    and b
    or e
    ld a, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    add sp, $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    xor b
    and h
    or c
    ld a, a
    and c
    cp b
    ld d, l
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    add c
    add h
    sub c
    sub c
    sbc b
    add sp, $51
    add a
    and h
    or c
    and h
    add sp, $7f
    adc b
    pop de
    xor e
    ld a, a
    or d
    and a
    and b
    or c
    and h
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    or c
    and h
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    and e
    or c
    xor [hl]
    xor a
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    and l
    and l
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $011a
    rlca
    inc bc
    ld bc, $011a
    nop
    ld [bc], a
    ld bc, $0000
    ld a, a
    ld l, l
    ld bc, $0001
    ld a, a
    ld l, l
    ld bc, $072d
    ld b, $06
    nop
    rst $38
    rst $38
    or b
    nop
    ld h, h
    ld l, l
    rst $38
    rst $38
    ld [bc], a
    ld d, c
    ld l, [hl]
    nop
    nop
    ld d, l
    ld l, [hl]
    nop
    nop
    nop
    adc l
    ld d, [hl]
    ld l, [hl]
    sub c
    sub c
    ld [hl], l
    nop
    ld [bc], a
    rrca
    db $76
    ld [bc], a
    nop
    ld b, a
    ld c, h
    ld h, [hl]
    ld l, a
    ld d, h
    ld c, c
    ld l, c
    nop
    ld e, d
    ld l, a
    ld b, a
    ld c, h
    xor b
    ld l, a
    ld d, l
    add [hl]
    rra
    ld b, l
    ld bc, $d24c
    ld l, a
    add l
    sub c
    nop
    add [hl]
    ld b, l
    inc sp
    ld e, $00
    dec sp
    ld a, [de]
    inc bc
    ld c, h
    db $eb
    ld l, a
    ld d, l
    db $76
    ld [bc], a
    inc bc
    ld c, h
    sub d
    ld [hl], b
    ld d, l
    db $76
    ld [bc], a
    nop
    db $76
    inc bc
    ld [bc], a
    ld c, h
    or a
    ld [hl], b
    ld d, h
    ld c, c
    inc bc
    ret


    ld l, [hl]
    ld l, e
    ld b, a
    ld hl, $0942
    or b
    ld l, [hl]
    ld sp, $001f
    add hl, bc
    xor d
    ld l, [hl]
    ld c, h
    inc [hl]
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, d
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $76
    ld [hl], h
    ld c, [hl]
    ld [$6ec3], sp
    sbc [hl]
    add hl, sp
    ld bc, $c708
    ld l, [hl]
    jr nz, jr_065_6f01

    ld bc, $aa03
    ld l, [hl]
    ld c, h
    dec c
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    ld a, a
    ld e, $00
    ld l, c
    inc bc
    ld e, l
    ld l, a
    halt
    inc bc
    ld b, a
    ld c, h
    add l
    ld [hl], c
    ld d, l
    add [hl]
    ld c, h
    call z, $8573
    ld bc, $8600
    ld [hl], $0b
    nop
    ld c, h
    sbc $73
    ld d, h
    ld c, c
    halt
    nop
    ld l, c
    inc bc
    ld h, c
    ld l, a
    add l
    inc hl
    nop
    ld l, [hl]
    inc bc
    add [hl]
    rrca
    dec a
    nop
    adc e
    rrca
    halt
    ld bc, $4c47
    db $ed
    ld [hl], b

jr_065_6f01:
    ld d, h
    ld c, c
    rrca
    jr nc, jr_065_6f06

jr_065_6f06:
    rrca
    inc sp
    nop
    ld a, a
    dec c
    nop
    rrca
    sbc l
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
    inc [hl]
    ld [hl], c
    ld d, h
    ld c, c
    inc sp
    cp l
    ld b, $33
    sub d
    rlca
    ld [hl-], a
    sub e
    rlca
    inc d
    ld bc, $1a12
    inc bc
    ld bc, $1812
    dec b
    inc bc
    sbc h
    ld [bc], a
    nop
    ld [hl-], a
    ld [bc], a
    rlca
    ld sp, $001c
    add hl, bc
    ld c, c
    ld l, a
    ld sp, $001d
    add hl, bc
    ld c, l
    ld l, a
    inc sp
    ld b, c
    ld b, $91
    inc sp
    ld b, d
    ld b, $91
    inc sp
    ld b, b
    ld b, $91
    ld d, e
    ld b, e
    ld [hl], l
    ld d, e
    add h
    ld [hl], l
    ld d, e
    xor h
    ld [hl], l
    rrca
    dec c
    ld b, a
    inc c
    ld c, $0e
    ld b, a
    inc c
    ld c, $00
    ccf
    ld b, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    inc d
    add sp, $51
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    add sp, $57
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
    and b
    or e
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld a, a
    or e
    xor [hl]
    ld d, l
    and h
    or a
    and b
    xor h
    xor b
    xor l
    and h
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
    add sp, $57
    nop
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    or h
    xor a
    xor e
    and h
    ld c, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    add e
    add b
    sbc b
    db $e3
    add d
    add b
    sub c
    add h
    ld a, a
    or d
    and h
    or c
    or l
    xor b
    and d
    and h
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    add h
    add [hl]
    add [hl]
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    xor l
    or e
    or c
    xor b
    and [hl]
    or h
    and h
    and e
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    or d
    and h
    xor l
    or e
    ld a, a
    xor h
    and b
    xor b
    xor e
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
    add sp, $51
    add l
    xor [hl]
    or c
    ld a, a
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
    db $e3
    ld c, a
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld a, a
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
    ld d, l
    or e
    and a
    and h
    ld a, a
    and b
    or h
    or e
    and a
    xor [hl]
    or c
    xor b
    or e
    cp b
    add sp, $57
    nop
    add h
    or l
    and h
    xor l
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    and a
    and h
    or c
    and h
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
    or d
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    and b
    or d
    or d
    or h
    xor h
    xor a
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    or c
    or c
    and h
    and d
    or e
    db $f4
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $55
    add h
    adc e
    adc h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    and $51
    add a
    and h
    or c
    and h
    add sp, $7f
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
    or d
    xor [hl]
    xor h
    and h
    ld d, l
    or c
    and h
    or d
    or e
    add sp, $57
    nop
    adc b
    jp nc, $a37f

    and h
    xor a
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc e
    xor b
    and l
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and e
    and h
    xor e
    xor b
    and [hl]
    and a
    or e
    db $e3
    ld c, a
    and l
    or h
    xor e
    rst $20
    ld a, a
    add b
    xor e
    or [hl]
    and b
    cp b
    or d
    db $f4
    ld a, a
    xor l
    and h
    or [hl]
    ld d, c
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    xor h
    and b
    and e
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add b
    and a
    and b
    rst $20
    ld a, a
    sub d
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    inc d
    rst $20
    ld d, c
    adc b
    jp nc, $8e7f

    add b
    adc d
    rst $20
    ld a, a
    add b
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
    and h
    or c
    add sp, $51
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
    or l
    xor b
    or d
    xor b
    or e
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld d, l
    adc h
    sub c
    add sp, $54
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    ld a, a
    and h
    or c
    or c
    and b
    xor l
    and e
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
    xor b
    or e
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc [hl]
    and a
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    and $4f
    add b
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
    rst $20
    ld d, c
    adc e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld [hl], l
    ld d, c
    add a
    xor h
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    rst $20
    ld d, c
    adc b
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
    ld a, a
    or [hl]
    and a
    cp b
    ld c, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and h
    or c
    or c
    and b
    xor l
    and e
    add sp, $51
    sub e
    xor [hl]
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
    or d
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld a, a
    and b
    xor l
    and e
    ld d, c
    adc b
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
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    add sp, $51
    add a
    and h
    ld a, a
    or d
    and b
    or [hl]
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
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    or c
    and h
    and b
    or e
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
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or c
    and h
    add sp, $51
    ld [hl], l
    add b
    and a
    rst $20
    ld d, c
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
    and e
    and h
    xor a
    and h
    xor l
    and e
    and b
    and c
    xor e
    and h
    add sp, $51
    add a
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    and $51
    sub d
    and h
    and h
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor e
    and b
    or e
    and h
    or d
    or e
    ld a, a
    or l
    and h
    or c
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld d, l
    ld d, h
    add e
    add h
    sub a
    add sp, $51
    adc b
    or e
    ld a, a
    and b
    or h
    or e
    xor [hl]
    xor h
    and b
    or e
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    ld c, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    or d
    ld a, a
    and e
    and b
    or e
    and b
    ld a, a
    xor [hl]
    xor l
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld c, a
    or d
    and h
    and h
    xor l
    ld a, a
    xor [hl]
    or c
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    and a
    xor b
    db $e3
    or e
    and h
    and d
    and a
    ld c, a
    and h
    xor l
    and d
    cp b
    and d
    xor e
    xor [hl]
    xor a
    and h
    and e
    xor b
    and b
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
    ld d, h
    add e
    add h
    sub a
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    ld a, a
    xor h
    and h
    and h
    or e
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld d, c
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    ld d, h
    add e
    add h
    sub a
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    adc b
    sub $a4
    ld a, a
    or d
    or e
    and b
    cp b
    and h
    and e
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or l
    and h
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
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld d, l
    or h
    or d
    or h
    and b
    xor e
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    add sp, $51
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
    add a
    xor h
    and $7f
    sub e
    and a
    and b
    or e
    ld a, a
    sub d
    add d
    add b
    adc e
    add h
    rst $20
    ld c, a
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    and b
    or e
    and $55
    add b
    ld a, a
    or c
    and h
    and e
    ld a, a
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    and $51
    sub e
    and a
    and b
    or e
    call nc, $b17f
    and b
    or c
    and h
    rst $20
    ld a, a
    ld c, a
    adc b
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor b
    or e
    ld [hl], l
    ld d, c
    inc d
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    and $51
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor [hl]
    and l
    and l
    and h
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    add h
    sub a
    adc a
    add sp, -$6e
    add a
    add b
    sub c
    add h
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
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
    add sp, -$72
    add b
    adc d
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    call nc, $a37f
    xor b
    or d
    and b
    xor a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    add sp, $7f
    sub e
    and a
    and b
    or e
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    or d
    ld d, l
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    or c
    and b
    or c
    and h
    add sp, $57
    nop
    adc b
    or e
    call nc, $af7f
    and b
    and d
    xor d
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    and l
    xor [hl]
    or c
    and h
    xor b
    and [hl]
    xor l
    ld a, a
    xor h
    and b
    and [hl]
    and b
    cp c
    xor b
    xor l
    and h
    or d
    add sp, $51
    add d
    and b
    xor l
    push de
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or c
    and h
    and b
    and e
    ld c, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or e
    xor b
    or e
    xor e
    and h
    or d
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    db $e3
    ld c, a
    xor a
    or h
    or e
    and h
    or c
    add sp, $7f
    add a
    xor h
    xor h
    add sp, $7f
    adc b
    or e
    call nc, $a155
    or c
    xor [hl]
    xor d
    and h
    xor l
    add sp, $57
    nop
    add b
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    xor a
    xor b
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, c
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
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
    xor [hl]
    or h
    xor l
    or e
    or c
    cp b
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld a, [de]
    ld bc, $0307
    ld [bc], a
    ld a, [de]
    ld bc, $0500
    ld bc, $0000
    ld d, c
    ld l, a
    ld bc, $0001
    ld d, c
    ld l, a
    ld bc, $0006
    ld d, h
    ld l, a
    ld bc, $0007
    ld d, h
    ld l, a
    inc b
    ld b, $00
    ld d, a
    ld l, a
    ld [bc], a
    ld b, b
    add hl, bc
    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    sub a
    ld l, [hl]
    rst $38
    rst $38
    dec b
    add hl, bc
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $c9
    ld b, $00
    nop
    ld d, c
    ld a, [hl-]
    db $76
    ld d, c
    ld h, c
    halt
    add a
    xor b
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld c, a
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld d, l
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    and $57
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
    xor [hl]
    ld a, a
    and l
    and b
    or c
    ld c, a
    xor [hl]
    or h
    or e
    add sp, $7f
    adc b
    ret nc

    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld d, l
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    nop
    inc b
    inc b
    nop
    ld [$050a], sp
    dec b
    nop
    add hl, bc
    ld a, [bc]
    dec b
    inc b
    add hl, bc
    ld bc, $021a
    dec b
    add hl, bc
    ld [bc], a
    ld a, [de]
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, e
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    inc [hl]
    db $76
    rst $38
    rst $38
    inc h
    ld b, $05
    inc bc
    nop
    rst $38
    rst $38
    sub b
    nop
    scf
    db $76
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
