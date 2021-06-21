; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $073", ROMX[$4000], BANK[$73]

    add l
    adc b
    sub d
    add a
    ld d, b
    db $d3
    nop
    call c, $9300
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor a
    and b
    or e
    and a
    and h
    or e
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    and [hl]
    and h
    or e
    or d
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld a, a
    xor a
    or h
    or d
    and a
    and h
    and e
    ld d, b
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or c
    xor b
    or l
    and h
    or c
    or d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, [hl]
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
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    and d
    or h
    or c
    or c
    and h
    xor l
    or e
    or d
    add sp, $50
    add b
    sub e
    sub c
    adc [hl]
    add d
    adc b
    adc [hl]
    sub h
    sub d
    ld d, b
    jr c, jr_073_4079

    inc a
    inc d
    adc b
    or e
    ld a, a
    and b
    xor a
    xor a

jr_073_4079:
    and h
    and b
    or c
    or d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    db $e3
    ld c, [hl]
    and h
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld c, [hl]
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    xor e
    xor b
    and d
    or e
    db $f4
    ld d, b
    and c
    or h
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    xor l
    cp b
    ld c, [hl]
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    or d
    ld c, [hl]
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $50
    sub e
    sub c
    add b
    adc l
    sub d
    adc a
    adc [hl]
    sub c
    sub e
    ld d, b
    ld [hl+], a
    inc bc
    ld a, [c]
    ld [de], a
    sub e
    and a
    xor b
    or d
    ld a, a
    and [hl]
    and h
    xor l
    or e
    xor e
    and h
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or c
    xor b
    and e
    and h
    or d
    ld d, b
    and b
    xor l
    and e
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    xor b
    and e
    and h
    or d
    ld a, a
    and b
    ld a, a
    or l
    and h
    db $e3
    ld c, [hl]
    or c
    cp b
    ld a, a
    and d
    xor [hl]
    xor h
    and l
    xor [hl]
    or c
    or e
    and b
    and c
    xor e
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $50
    sub e
    sub c
    add b
    adc l
    sub d
    add l
    adc [hl]
    sub c
    adc h
    ld d, b
    ld h, h
    nop
    ld e, d
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and h
    xor l
    and d
    xor [hl]
    or h
    xor l
    or e
    db $e3
    ld c, [hl]
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    add e
    adc b
    sub e
    sub e
    adc [hl]
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld d, b
    and l
    and b
    or d
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and e
    or h
    xor a
    xor e
    xor b
    and d
    and b
    or e
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld a, a
    and h
    or a
    and b
    and d
    or e
    xor e
    cp b
    add sp, $50
    add h
    sub l
    adc [hl]
    adc e
    sub h
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld h, h
    nop
    adc h
    nop
    adc b
    or e
    or d
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
    ld c, [hl]
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, [hl]
    and l
    xor [hl]
    or c
    xor h
    or d
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld d, b
    and b
    and e
    and b
    xor a
    or e
    ld a, a
    or d
    xor h
    xor [hl]
    xor [hl]
    or e
    and a
    xor e
    cp b
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and b
    xor l
    cp b
    ld a, a
    and h
    xor l
    or l
    xor b
    or c
    xor [hl]
    xor l
    xor h
    and h
    xor l
    or e
    add sp, $50
    add c
    sub h
    add c
    add c
    adc e
    add h
    ld a, a
    adc c
    add h
    sub e
    ld d, b
    cpl
    ld bc, $0280
    add b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and l
    xor b
    xor l
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor a
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld a, a
    or e
    xor [hl]
    ld d, b
    or d
    or [hl]
    xor b
    xor h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and c
    xor e
    and h
    xor l
    and e
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld c, [hl]
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    xor e
    cp b
    add sp, $50
    adc e
    adc b
    add [hl]
    add a
    sub e
    adc l
    adc b
    adc l
    add [hl]
    ld d, b
    rst $08
    nop
    inc e
    ld [bc], a
    sub e
    and a
    and h
    ld a, a
    xor l
    and h
    and [hl]
    and b
    or e
    xor b
    or l
    and h
    xor e
    cp b
    ld c, [hl]
    and d
    and a
    and b
    or c
    and [hl]
    and h
    and e
    ld a, a
    xor b
    xor [hl]
    xor l
    or d
    ld c, [hl]
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld d, b
    and l
    or h
    or c
    ld a, a
    and d
    or c
    and h
    and b
    or e
    and h
    ld a, a
    and b
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or d
    or e
    and b
    xor l
    or e
    ld a, a
    or d
    xor a
    and b
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor l
    xor [hl]
    xor b
    or d
    and h
    add sp, $50
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    db $d3
    nop
    ld h, $02
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    ld c, [hl]
    or h
    xor a
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and a
    and h
    and b
    or e
    db $f4
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a150
    xor [hl]
    and e
    cp b
    ld a, a
    or e
    and h
    xor h
    xor a
    and h
    or c
    and b
    or e
    or h
    or c
    and h
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    or c
    and h
    and b
    and d
    and a
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    rst $30
    db $fd
    or $f6
    ld a, a
    and e
    and h
    and [hl]
    or c
    and h
    and h
    or d
    add sp, $50
    sub l
    adc b
    sub c
    sub e
    sub h
    add b
    adc e
    ld d, b
    rst $08
    nop
    jr nz, jr_073_4362

    add b
    xor l
    ld a, a

jr_073_4362:
    and b
    or c
    or e
    xor b
    and l
    xor b
    and d
    xor b
    and b
    xor e
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    or c
    and h
    and b
    or e
    and h
    and e
    ld c, [hl]
    and e
    or h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    or e
    and h
    xor l
    or d
    xor b
    or l
    and h
    ld d, b
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
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    xor a
    and h
    or c
    and l
    xor [hl]
    or c
    xor h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    add sp, $50
    sub d
    adc a
    adc b
    sub c
    add b
    adc e
    ld d, b
    ld l, b
    nop
    xor d
    nop
    adc b
    xor l
    ld a, a
    xor a
    or c
    and h
    and a
    xor b
    or d
    or e
    xor [hl]
    or c
    xor b
    and d
    ld c, [hl]
    or e
    xor b
    xor h
    and h
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or d
    or [hl]
    and b
    xor h
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    db $f4
    ld d, b
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    xor e
    and b
    xor l
    xor d
    or e
    xor [hl]
    xor l
    add sp, $4e
    adc b
    or e
    or d
    ld a, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    add sp, $50
    sub d
    adc a
    adc b
    sub c
    add b
    adc e
    ld d, b
    cpl
    ld bc, $0302
    adc b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    or l
    cp b
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld c, [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or c
    and h
    and b
    and d
    and a
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor l
    and h
    and b
    or c
    and c
    cp b
    ld d, b
    and l
    xor [hl]
    xor [hl]
    and e
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, [hl]
    and c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    and b
    or d
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    and h
    or a
    or e
    xor b
    xor l
    and d
    or e
    add sp, $50
    sub d
    add a
    add h
    adc e
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    ld l, h
    nop
    ld a, [$9300]
    and a
    or c
    and h
    and h
    ld a, a
    and a
    or h
    xor l
    and e
    or c
    and h
    and e
    ld c, [hl]
    xor h
    xor b
    xor e
    xor e
    xor b
    xor [hl]
    xor l
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    and b
    and [hl]
    xor [hl]
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and a
    xor b
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld d, b
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    add sp, $7f
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    and h
    cp b
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor e
    xor [hl]
    or [hl]
    add sp, $50
    sub d
    add a
    add h
    adc e
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    sub e
    ld bc, $037a
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    or [hl]
    xor b
    xor h
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    ld a, a
    or e
    and a
    or c
    xor [hl]
    db $e3
    ld c, [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    and c
    cp b
    ld d, b
    and d
    xor [hl]
    xor h
    xor a
    and b
    and d
    or e
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or h
    xor a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or c
    and b
    cp c
    xor [hl]
    or c
    db $e3
    or d
    and a
    and b
    or c
    xor a
    ld c, [hl]
    or d
    xor b
    and d
    xor d
    xor e
    and h
    or d
    add sp, $50
    add l
    adc [hl]
    sub d
    sub d
    adc b
    adc e
    ld d, b
    rst $38
    ld bc, $0514
    adc b
    xor l
    ld a, a
    xor a
    or c
    and h
    and a
    xor b
    or d
    or e
    xor [hl]
    or c
    xor b
    and d
    ld c, [hl]
    or e
    xor b
    xor h
    and h
    or d
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor e
    and h
    or [hl]
    ld d, b
    and l
    or c
    and h
    and h
    xor e
    cp b
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and l
    and h
    and b
    or c
    xor e
    and h
    or d
    or d
    xor e
    cp b
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    xor d
    xor b
    and h
    or d
    add sp, $50
    sub d
    adc e
    add h
    add h
    adc a
    adc b
    adc l
    add [hl]
    ld d, b
    ld h, e
    ld [bc], a
    sbc h
    daa
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $b24e
    or e
    xor [hl]
    xor h
    and b
    and d
    and a
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld c, [hl]
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, b
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    xor e
    and e
    cp b
    ld a, a
    xor [hl]
    or c
    ld c, [hl]
    or c
    xor [hl]
    or e
    or e
    and h
    xor l
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    and l
    and l
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    add sp, $50
    add l
    sub c
    add h
    add h
    sbc c
    add h
    ld d, b
    ei
    ld bc, $04c4
    adc e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    add b
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    xor e
    xor b
    and h
    or d
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    and a
    and h
    ld d, b
    or d
    xor d
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and b
    xor b
    or c
    db $f4
    ld a, a
    and d
    and b
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor l
    xor [hl]
    or [hl]
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and l
    and b
    xor e
    xor e
    add sp, $50
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc b
    add d
    ld d, b
    rst $30
    ld bc, $0488
    adc e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    and b
    cp b
    ld c, [hl]
    xor e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    and b
    or h
    or d
    and h
    and e
    ld d, b
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor e
    and b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld c, [hl]
    or d
    or h
    xor h
    xor h
    and h
    or c
    ld a, a
    or d
    or e
    xor [hl]
    or c
    xor h
    or d
    add sp, $50
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    ld e, a
    ld [bc], a
    jr z, jr_073_4715

    adc e
    and h
    and [hl]
    and h
    xor l

jr_073_4715:
    and e
    and b
    or c
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor b
    and [hl]
    or c
    and b
    or e
    and h
    ld d, b
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor [hl]
    or h
    or e
    and a
    ld c, [hl]
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    xor a
    or c
    xor b
    xor l
    and [hl]
    add sp, $50
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    rst $38
    ld bc, $0046
    adc b
    or e
    ld a, a
    or d
    and a
    and h
    and e
    or d
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    xor e
    and b
    cp b
    db $e3
    ld c, [hl]
    and h
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or d
    xor d
    xor b
    xor l
    ld a, a
    and b
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    or c
    add sp, $7f
    add e
    or h
    or c
    db $e3
    ld d, b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    and d
    and h
    or d
    or d
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, [hl]
    and b
    ld a, a
    or c
    and b
    xor a
    xor b
    and e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    and l
    and b
    xor e
    xor e
    add sp, $50
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    dec d
    dec b
    ld l, b
    ld bc, $b388
    ld a, a
    xor b
    or d
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and e
    xor b
    or l
    xor b
    xor l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $4e
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and h
    xor l
    or e
    xor b
    or c
    and h
    ld d, b
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    or d
    ld c, [hl]
    or d
    xor e
    xor b
    and [hl]
    and a
    or e
    xor e
    cp b
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or [hl]
    and h
    and b
    or e
    and a
    and h
    or c
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    or d
    add sp, $50
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    cp a
    ld [bc], a
    ld d, $12
    adc b
    or e
    ld a, a
    xor b
    or d
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
    ld c, [hl]
    or d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor [hl]
    and d
    and h
    and b
    xor l
    ld a, a
    xor e
    xor b
    and h
    or d
    ld a, a
    and b
    xor l
    ld d, b
    xor b
    or d
    xor e
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld c, [hl]
    and [hl]
    and b
    or e
    and a
    and h
    or c
    add sp, $7f
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, [hl]
    xor e
    xor b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $50
    add [hl]
    add h
    adc l
    add h
    sub e
    adc b
    add d
    ld d, b
    ld e, a
    ld [bc], a
    add d
    ld a, [bc]
    sub d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    or d
    or e
    ld a, a
    or b
    or h
    xor b
    db $e3
    ld c, [hl]
    and h
    or e
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    xor l
    ld c, [hl]
    or h
    xor l
    and e
    xor b
    or d
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld a, a
    and d
    and b
    or l
    and h
    db $f4
    ld d, b
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and b
    or d
    ld c, [hl]
    and d
    or c
    and h
    and b
    or e
    and h
    and e
    ld a, a
    or d
    xor [hl]
    xor e
    and h
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld c, [hl]
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    add sp, $50
    adc l
    add h
    sub [hl]
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add h
    ld d, b
    ld l, b
    nop
    ld e, d
    nop
    add c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    db $f4
    ld c, [hl]
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and c
    and h
    and [hl]
    and b
    xor l
    ld d, b
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    and l
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    xor l
    and d
    and h
    or d
    or e
    xor [hl]
    or c
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $50
    adc e
    add h
    add b
    add l
    ld d, b
    db $d3
    nop
    adc h
    nop
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and b
    or d
    xor d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    add sp, $4e
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and h
    and b
    and l
    ld d, b
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    and h
    and h
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and b
    or c
    xor h
    ld c, [hl]
    xor a
    xor e
    and b
    and d
    and h
    or d
    add sp, $50
    adc e
    add h
    add b
    add l
    ld d, b
    scf
    ld bc, $015e
    sub e
    and a
    and h
    ld a, a
    or d
    and d
    and h
    xor l
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or [hl]
    and b
    and l
    or e
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor e
    and h
    and b
    or l
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor l
    and h
    and d
    xor d
    ld d, b
    and d
    and b
    or h
    or d
    and h
    or d
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld c, [hl]
    or d
    xor h
    and h
    xor e
    xor e
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    and h
    or e
    xor b
    and d
    add sp, $50
    add a
    add h
    sub c
    add c
    ld d, b
    rst $38
    ld bc, $08ac
    add b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    or d
    ld c, [hl]
    and c
    and h
    or d
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, [hl]
    or c
    and h
    and l
    or c
    and h
    or d
    and a
    and h
    and e
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    or d
    ld d, b
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, [hl]
    or c
    and h
    xor e
    and b
    or a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, [hl]
    or d
    or h
    xor l
    xor l
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    add sp, $50
    add l
    adc b
    sub c
    add h
    ld a, a
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld l, h
    nop
    xor d
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or d
    xor a
    xor [hl]
    or h
    or e
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    and c
    or h
    or c
    xor l
    or d
    ld a, a
    and a
    xor [hl]
    or e
    or e
    and h
    or d
    or e
    ld d, b
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor l
    and [hl]
    or c
    cp b
    add sp, $4e
    sub e
    and a
    and h
    ld a, a
    and l
    xor e
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    or d
    ld c, [hl]
    xor b
    xor l
    or e
    xor b
    xor h
    xor b
    and e
    and b
    or e
    and h
    ld a, a
    and l
    xor [hl]
    and h
    or d
    add sp, $50
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
    ld d, b
    db $d3
    nop
    and h
    ld bc, $a481
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld d, b
    and e
    and h
    xor h
    xor [hl]
    xor l
    or d
    or e
    or c
    and b
    or e
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, [hl]
    and l
    and h
    or c
    xor [hl]
    and d
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    xor b
    or c
    and h
    ld a, a
    and c
    xor e
    and b
    cp c
    and h
    or d
    add sp, $50
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
    ld d, b
    ei
    ld bc, $06d6
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and a
    and h
    and b
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and b
    xor b
    or c
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld d, b
    or d
    and a
    xor b
    xor h
    xor h
    and h
    or c
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, [hl]
    or d
    xor b
    and [hl]
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $50
    add c
    adc b
    add [hl]
    ld a, a
    adc c
    add b
    sub [hl]
    ld d, b
    ret z

    nop
    jp nc, $9300

    and a
    xor b
    or d
    ld a, a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and d
    or c
    xor b
    or e
    or e
    and h
    or c
    ld c, [hl]
    and d
    and a
    xor [hl]
    xor h
    xor a
    or d
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor l
    cp b
    ld c, [hl]
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    ld d, b
    or d
    and h
    and h
    or d
    add sp, $7f
    sub e
    or h
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, [hl]
    or c
    and h
    and d
    xor [hl]
    xor h
    xor h
    and h
    xor l
    and e
    and h
    and e
    add sp, $50
    add c
    adc b
    add [hl]
    ld a, a
    adc c
    add b
    sub [hl]
    ld d, b
    inc sp
    ld bc, $0226
    sub e
    and a
    and h
    ld a, a
    or e
    xor b
    xor a
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    and b
    xor l
    and [hl]
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    xor e
    and b
    xor l
    or e
    and h
    and e
    ld c, [hl]
    and c
    and b
    and d
    xor d
    or [hl]
    and b
    or c
    and e
    add sp, $7f
    adc [hl]
    xor l
    and d
    and h
    ld d, b
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and l
    and b
    xor l
    and [hl]
    or d
    ld a, a
    and d
    xor e
    and b
    xor h
    xor a
    ld c, [hl]
    and e
    xor [hl]
    or [hl]
    xor l
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    xor l
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    add sp, $50
    add c
    adc b
    add [hl]
    ld a, a
    adc c
    add b
    sub [hl]
    ld d, b
    jp $a802


    rlca
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld c, [hl]
    xor h
    and b
    or d
    or d
    xor b
    or l
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    and a
    xor b
    xor l
    and e
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld d, b
    and h
    xor l
    and b
    and c
    xor e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld c, [hl]
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $50
    sub d
    add d
    adc [hl]
    sub h
    sub e
    ld d, b
    rst $08
    nop
    add d
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and b
    and d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld c, [hl]
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor [hl]
    or h
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or c
    xor l
    or d
    ld c, [hl]
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    ld d, b
    and c
    cp b
    ld a, a
    or d
    and d
    or c
    and h
    and h
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and a
    xor b
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    add sp, $50
    adc e
    adc [hl]
    adc l
    add [hl]
    ld a, a
    add c
    adc [hl]
    add e
    sbc b
    ld d, b
    rst $38
    ld bc, $02d0
    adc b
    or e
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor l
    and b
    or c
    or c
    xor [hl]
    or [hl]
    ld c, [hl]
    and c
    or h
    or c
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    xor b
    or e
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or d
    xor e
    xor b
    xor h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $7f
    sub e
    and a
    and h
    ld d, b
    and e
    and h
    and h
    xor a
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or d
    or e
    or d
    ld c, [hl]
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor h
    and b
    cp c
    and h
    db $e3
    ld c, [hl]
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    add sp, $50
    adc [hl]
    sub [hl]
    adc e
    ld d, b
    call z, $d600
    ld bc, $b388
    ld a, a
    and c
    and h
    and [hl]
    xor b
    xor l
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor [hl]
    or e
    ld c, [hl]
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, [hl]
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    and e
    and b
    cp b
    add sp, $7f
    sub d
    xor [hl]
    xor h
    and h
    ld d, b
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and d
    xor e
    xor [hl]
    and d
    xor d
    or d
    add sp, $50
    adc [hl]
    sub [hl]
    adc e
    ld d, b
    rst $30
    ld bc, $0384
    adc b
    or e
    or d
    ld a, a
    and h
    or a
    or e
    or c
    and h
    xor h
    and h
    xor e
    cp b
    ld a, a
    or d
    xor [hl]
    and l
    or e
    ld c, [hl]
    and l
    and h
    and b
    or e
    and a
    and h
    or c
    or d
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor l
    xor [hl]
    ld c, [hl]
    or d
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    xor e
    xor b
    and [hl]
    and a
    or e
    add sp, $50
    adc b
    or e
    ld a, a
    or d
    xor b
    xor e
    and h
    xor l
    or e
    xor e
    cp b
    ld a, a
    or d
    xor l
    and h
    and b
    xor d
    or d
    ld c, [hl]
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld c, [hl]
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    and h
    or e
    and h
    and d
    or e
    and h
    and e
    add sp, $50
    add l
    adc b
    sub l
    add h
    ld a, a
    sub d
    sub e
    add b
    sub c
    ld d, b
    cpl
    ld bc, $00f0
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor b
    xor h
    xor b
    and e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and d
    xor e
    or h
    or d
    or e
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    add sp, $7f
    sub e
    and a
    and h
    ld d, b
    and l
    xor e
    or h
    xor b
    and e
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and l
    and h
    and h
    or e
    ld a, a
    xor b
    xor l
    and e
    xor b
    and d
    and b
    or e
    and h
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor e
    xor [hl]
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $50
    add l
    adc b
    sub l
    add h
    ld a, a
    sub d
    sub e
    add b
    sub c
    ld d, b
    sub a
    ld bc, $030c
    adc b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    cp b
    or e
    xor b
    xor h
    and h
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    or [hl]
    and b
    or c
    xor h
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and d
    or h
    or c
    xor e
    or d
    ld a, a
    or h
    xor a
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld d, b
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    xor e
    and h
    and b
    and l
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and e
    or c
    xor b
    and l
    or e
    or d
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, [hl]
    and b
    ld a, a
    and e
    and h
    and h
    xor a
    ld a, a
    or d
    xor e
    or h
    xor h
    and c
    and h
    or c
    add sp, $50
    sub d
    sub e
    sub c
    adc b
    adc l
    add [hl]
    sub d
    adc a
    adc b
    sub e
    ld d, b
    ld l, h
    nop
    cp [hl]
    nop
    adc b
    and l
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, [hl]
    and h
    xor l
    or d
    xor l
    and b
    or c
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor l
    and h
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or d
    xor a
    or h
    xor l
    ld d, b
    or d
    or e
    or c
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    xor b
    or e
    or d
    ld c, [hl]
    xor h
    xor [hl]
    or e
    xor b
    xor [hl]
    xor l
    xor e
    and h
    or d
    or d
    xor e
    cp b
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld c, [hl]
    xor b
    or e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    and e
    and b
    or c
    xor d
    add sp, $50
    adc e
    adc [hl]
    adc l
    add [hl]
    ld a, a
    adc e
    add h
    add [hl]
    ld d, b
    inc sp
    ld bc, $02e4
    sub c
    and b
    or e
    and a
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor h
    and b
    xor d
    db $e3
    ld c, [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    xor l
    and h
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, [hl]
    or d
    xor a
    and h
    and d
    xor b
    and l
    xor b
    and d
    ld a, a
    or d
    xor a
    xor [hl]
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld d, b
    or [hl]
    and b
    xor l
    and e
    and h
    or c
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    and h
    and b
    or c
    and d
    and a
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld c, [hl]
    and e
    and b
    or c
    xor d
    xor l
    and h
    or d
    or d
    ld a, a
    and l
    and b
    xor e
    xor e
    or d
    add sp, $50
    add c
    add b
    sub e
    ld d, b
    rst $38
    ld bc, $0672
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
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor a
    or h
    or c
    or d
    or h
    xor b
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    and b
    or d
    or e
    and h
    or c
    db $f4
    ld c, [hl]
    cp b
    and h
    or e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or d
    xor b
    xor e
    and h
    xor l
    or e
    ld d, b
    and l
    xor e
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    and b
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    or d
    and h
    or e
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and [hl]
    or c
    and h
    or [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and a
    xor b
    xor l
    and e
    ld a, a
    xor e
    and h
    and [hl]
    or d
    add sp, $50
    add b
    adc l
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    ld l, h
    nop
    inc b
    ld bc, $b388
    or d
    ld a, a
    and b
    xor l
    or e
    and h
    xor l
    xor l
    and b
    and h
    db $f4
    ld a, a
    or [hl]
    and a
    xor b
    db $e3
    ld c, [hl]
    and d
    and a
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld c, [hl]
    and l
    xor b
    xor l
    db $f4
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    xor a
    xor [hl]
    db $e3
    ld d, b
    or d
    xor b
    or e
    xor b
    or l
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor l
    and h
    and [hl]
    db $e3
    ld c, [hl]
    and b
    or e
    xor b
    or l
    and h
    ld a, a
    and d
    and a
    and b
    or c
    and [hl]
    and h
    or d
    ld a, a
    and l
    xor e
    xor [hl]
    db $e3
    ld c, [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $50
    adc e
    adc b
    add [hl]
    add a
    sub e
    ld d, b
    scf
    ld bc, $01f4
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    or d
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    db $f4
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld d, b
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld c, [hl]
    and e
    xor [hl]
    or c
    or d
    and b
    xor e
    ld a, a
    and l
    xor b
    xor l
    db $f4
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor e
    or h
    or c
    and h
    ld a, a
    xor a
    or c
    and h
    cp b
    add sp, $50
    sub e
    adc b
    adc l
    sbc b
    ld a, a
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld h, h
    nop
    jr z, jr_073_5252

jr_073_5252:
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or h
    xor l
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    and b
    or e
    ld c, [hl]
    or d
    or e
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $7f
    add b
    xor l
    cp b
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld d, b
    or d
    and a
    xor [hl]
    and d
    xor d
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and e
    xor b
    or d
    and d
    and a
    and b
    or c
    and [hl]
    and h
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld c, [hl]
    or d
    xor a
    xor [hl]
    xor l
    or e
    and b
    xor l
    and h
    xor [hl]
    or h
    or d
    xor e
    cp b
    add sp, $50
    sub d
    sub e
    add b
    sub c
    sub d
    add a
    add b
    adc a
    add h
    ld d, b
    ld h, h
    nop
    ld b, [hl]
    nop
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor b
    xor h
    xor a
    and b
    and d
    or e
    ld a, a
    or d
    xor b
    or e
    and h
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    xor h
    and h
    or e
    and h
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    xor b
    or d
    ld c, [hl]
    and l
    xor [hl]
    or h
    xor l
    and e
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor b
    xor h
    xor h
    and h
    and e
    xor b
    and b
    or e
    and h
    ld a, a
    and b
    or c
    and h
    and b
    add sp, $50
    add c
    add b
    adc e
    adc e
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ld h, h
    nop
    inc d
    nop
    adc b
    xor l
    or d
    or e
    and h
    and b
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    ld c, [hl]
    xor e
    and h
    and [hl]
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld d, b
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and c
    cp b
    ld a, a
    and c
    xor [hl]
    or h
    xor l
    and d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    xor [hl]
    and l
    or e
    db $f4
    ld c, [hl]
    or e
    and h
    xor l
    and e
    and h
    or c
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $50
    sub d
    adc a
    adc b
    adc d
    add h
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    ld h, h
    nop
    ld e, $00
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    and h
    and e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    or d
    cp b
    xor h
    and c
    xor [hl]
    xor e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor e
    or h
    and d
    xor d
    add sp, $7f
    adc b
    or e
    or d
    ld d, b
    or d
    and a
    and h
    xor e
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and c
    and h
    ld a, a
    and l
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    and a
    and b
    xor a
    xor a
    xor b
    xor l
    and h
    or d
    or d
    add sp, $50
    add a
    add b
    adc a
    adc a
    adc b
    adc l
    add h
    sub d
    sub d
    ld d, b
    ret z

    nop
    ld b, [hl]
    nop
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld c, [hl]
    xor l
    xor [hl]
    or e
    ld a, a
    and l
    xor e
    and b
    xor a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    or l
    and h
    or c
    cp b
    ld a, a
    xor h
    or h
    and d
    and a
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld d, b
    or d
    or e
    and b
    cp b
    ld a, a
    or h
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    xor b
    or c
    ld c, [hl]
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and b
    and [hl]
    or d
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $50
    adc e
    adc b
    sub e
    sub e
    adc e
    add h
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    ld [$2800], sp
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and h
    or a
    or e
    or c
    and h
    xor h
    and h
    xor e
    cp b
    ld c, [hl]
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld a, a
    and d
    xor e
    xor b
    xor h
    and c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    or c
    and h
    and h
    ld a, a
    or e
    or c
    or h
    xor l
    xor d
    or d
    ld a, a
    and b
    xor l
    and e
    ld d, b
    xor e
    xor b
    xor d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor l
    and h
    or [hl]
    ld a, a
    or d
    xor a
    or c
    xor [hl]
    or h
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and h
    and h
    or d
    add sp, $50
    adc h
    sbc b
    sub d
    sub e
    adc b
    add d
    ld d, b
    sbc e
    ld bc, HeaderDestinationCode
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and c
    and h
    and [hl]
    xor b
    xor l
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor h
    and h
    and e
    xor b
    or e
    and b
    or e
    and h
    ld a, a
    and b
    or e
    ld a, a
    or d
    or h
    xor l
    db $e3
    ld c, [hl]
    or c
    xor b
    or d
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    or e
    xor b
    or c
    and h
    ld d, b
    and e
    and b
    cp b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor a
    and b
    or d
    or d
    ld c, [hl]
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $50
    sub [hl]
    adc [hl]
    adc [hl]
    adc e
    ld d, b
    ret z

    nop
    xor d
    nop
    adc b
    or e
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and b
    xor b
    or c
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    xor [hl]
    and l
    or e
    ld c, [hl]
    and l
    or h
    or c
    db $f4
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld d, b
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    cp b
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or d
    or h
    xor h
    xor h
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and b
    or c
    xor h
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or [hl]
    xor b
    xor l
    or e
    and h
    or c
    add sp, $50
    sub [hl]
    adc [hl]
    adc [hl]
    adc e
    ld d, b
    rst $08
    nop
    ld [hl+], a
    ld bc, $a481
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or c
    or h
    and c
    and c
    and h
    or c
    cp b
    db $f4
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    db $e3
    ld c, [hl]
    xor b
    or e
    cp b
    db $e3
    or c
    and h
    or d
    xor b
    or d
    or e
    and b
    xor l
    or e
    ld d, b
    or d
    xor d
    xor b
    xor l
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld c, [hl]
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    db $e3
    ld c, [hl]
    xor b
    or e
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    or h
    or c
    add sp, $50
    adc e
    adc b
    add [hl]
    add a
    sub e
    ld d, b
    sub a
    ld bc, $0550
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    and e
    and b
    or c
    xor d
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    or d
    and a
    xor b
    xor l
    cp b
    ld a, a
    or e
    and b
    xor b
    xor e
    ld d, b
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    and l
    and b
    or c
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor [hl]
    and d
    and h
    and b
    xor l
    call nc, $b27f
    or h
    or c
    and l
    and b
    and d
    and h
    add sp, $50
    add l
    adc e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    ld l, b
    nop
    add d
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    and e
    and b
    xor l
    and d
    and h
    ld c, [hl]
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    db $f4
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, [hl]
    xor a
    and h
    or e
    and b
    xor e
    or d
    ld a, a
    or c
    or h
    and c
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld d, b
    and h
    and b
    and d
    and a
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    db $f4
    ld c, [hl]
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    db $f4
    ld c, [hl]
    or c
    and h
    xor e
    and b
    or a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    or d
    add sp, $50
    add b
    sub b
    sub h
    add b
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld l, b
    nop
    cp [hl]
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    or h
    or c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor l
    and b
    or e
    or h
    or c
    and b
    xor e
    xor e
    cp b
    ld c, [hl]
    or c
    and h
    xor a
    and h
    xor e
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $7f
    adc b
    or e
    ld d, b
    and d
    and b
    xor l
    ld a, a
    or d
    or e
    and b
    cp b
    ld a, a
    and e
    or c
    cp b
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor a
    xor e
    and b
    cp b
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $50
    add b
    sub b
    sub h
    add b
    sub c
    add b
    add c
    add c
    adc b
    sub e
    ld d, b
    rst $08
    nop
    db $76
    ld [bc], a
    sub e
    and a
    and h
    ld a, a
    and c
    or h
    and c
    and c
    xor e
    and h
    db $e3
    xor e
    xor b
    xor d
    and h
    ld c, [hl]
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    or e
    xor [hl]
    xor h
    and b
    and d
    and a
    ld a, a
    and a
    and h
    xor e
    xor a
    or d
    ld a, a
    xor b
    or e
    ld d, b
    and d
    and b
    xor h
    xor [hl]
    or h
    and l
    xor e
    and b
    and [hl]
    and h
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    call nc, $a87f
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $50
    adc b
    adc h
    adc b
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    scf
    ld bc, $0348
    adc b
    and l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    and c
    or c
    and b
    xor l
    and d
    and a
    ld c, [hl]
    or d
    and a
    and b
    xor d
    and h
    or d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, [hl]
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    db $f4
    ld a, a
    xor b
    or e
    call nc, $a07f
    ld d, b
    sub d
    sub h
    add e
    adc [hl]
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    adc [hl]
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    ld c, [hl]
    or e
    or c
    and h
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    and a
    xor b
    and e
    and h
    or d
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and b
    xor b
    xor l
    add sp, $50
    add l
    sub c
    adc [hl]
    add [hl]
    ld d, b
    inc sp
    ld bc, $02ee
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and h
    or a
    xor a
    and b
    xor l
    and e
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or e
    and a
    or c
    xor [hl]
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and d
    or c
    xor [hl]
    and b
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    or e
    or h
    xor l
    and h
    db $f4
    ld d, b
    xor l
    and h
    and b
    or c
    and c
    cp b
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add b
    add [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld a, a
    and [hl]
    and b
    or e
    and a
    and h
    or c
    ld c, [hl]
    xor b
    xor h
    xor h
    and h
    and e
    xor b
    and b
    or e
    and h
    xor e
    cp b
    add sp, $50
    add d
    adc [hl]
    sub e
    sub e
    adc [hl]
    adc l
    sub [hl]
    add h
    add h
    add e
    ld d, b
    ld l, b
    nop
    ld a, [bc]
    nop
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or c
    or c
    xor b
    and h
    and e
    ld c, [hl]
    and b
    or [hl]
    and b
    cp b
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and [hl]
    and h
    xor l
    or e
    xor e
    and h
    or d
    or e
    ld a, a
    and c
    or c
    and h
    and h
    cp c
    and h
    add sp, $50
    adc b
    or e
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
    and l
    xor e
    xor [hl]
    and b
    or e
    ld c, [hl]
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor l
    and h
    or a
    or e
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    add sp, $50
    add d
    adc [hl]
    sub e
    sub e
    adc [hl]
    adc l
    sub [hl]
    add h
    add h
    add e
    ld d, b
    ret z

    nop
    inc d
    nop
    add b
    or d
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    or c
    and b
    xor b
    xor l
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld d, b
    and a
    xor b
    and e
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    and b
    and e
    and h
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    or l
    xor [hl]
    xor b
    and e
    ld c, [hl]
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and h
    or e
    add sp, $50
    add d
    adc [hl]
    sub e
    sub e
    adc [hl]
    adc l
    sub [hl]
    add h
    add h
    add e
    ld d, b
    rst $08
    nop
    ld b, [hl]
    nop
    add h
    or l
    and h
    xor l
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    and h
    or c
    and d
    db $e3
    ld c, [hl]
    and h
    or d
    or e
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    xor e
    or h
    and l
    and l
    ld d, b
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
    or d
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and b
    xor l
    cp b
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    xor l
    or e
    or d
    add sp, $50
    adc e
    adc [hl]
    adc l
    add [hl]
    ld a, a
    sub e
    add b
    adc b
    adc e
    ld d, b
    rst $08
    nop
    ld a, [$8800]
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and a
    and b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and h
    and h
    ld c, [hl]
    and c
    or c
    and b
    xor l
    and d
    and a
    and h
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld d, b
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
    or h
    xor h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, [hl]
    and c
    or c
    and b
    xor l
    and d
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    add sp, $50
    sub d
    add h
    add h
    add e
    ld d, b
    ld h, h
    nop
    jr z, jr_073_5a90

jr_073_5a90:
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    or [hl]
    and h
    and b
    xor d
    add sp, $4e
    adc b
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor h
    and h
    and b
    xor l
    or d
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and e
    and h
    and l
    and h
    xor l
    or d
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld d, b
    or d
    and a
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    or d
    ld c, [hl]
    and e
    and h
    or d
    xor a
    and h
    or c
    and b
    or e
    and h
    xor e
    cp b
    ld a, a
    and b
    or e
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    or c
    add sp, $50
    sub d
    sub h
    adc l
    ld d, b
    rst $08
    nop
    cp [hl]
    nop
    add b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    or e
    ld a, a
    or d
    and h
    and b
    or d
    xor [hl]
    xor l
    ld c, [hl]
    and b
    xor a
    xor a
    or c
    xor [hl]
    and b
    and d
    and a
    and h
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor a
    and h
    or e
    and b
    xor e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a57f
    and b
    and d
    and h
    ld c, [hl]
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or l
    xor b
    or l
    xor b
    and e
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    xor e
    xor b
    or l
    and h
    xor e
    cp b
    add sp, $50
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
