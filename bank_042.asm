; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $042", ROMX[$4000], BANK[$42]

    ld a, $80
    ld [$cf65], a

Jump_042_4005:
    ld de, $400b
    jp Jump_042_4089


    dec c
    ld [de], a
    db $10
    inc bc
    ld b, $0f
    inc c
    ld a, $80
    jr jr_042_4018

    ld a, $00

jr_042_4018:
    ld [$cf65], a
    ld de, $4021
    jp Jump_042_4089


    ld de, $0807
    ld c, $0c
    ld a, $00
    jr jr_042_402c

    ld a, $01

jr_042_402c:
    ld [$cf65], a
    ld de, $4035
    jp Jump_042_405b


    ld bc, $0212
    inc bc
    dec b
    ld [$0c0b], sp
    ld a, $00
    ld [$cf65], a
    ld de, $4048
    jp Jump_042_4089


    ld de, $0807
    inc de
    inc c
    ld a, $00
    ld [$cf65], a
    ld de, $4058
    jp Jump_042_4089


    ld de, $0c0e

Jump_042_405b:
    ld hl, $c734
    ld [hl], e
    inc hl
    ld [hl], d
    ldh a, [$de]
    push af
    xor a
    ldh [$de], a
    ld hl, $d0ed
    ld a, [hl]
    push af
    res 0, [hl]
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call Call_042_40b7

jr_042_4078:
    call Call_042_424b
    jr nc, jr_042_4078

    pop af
    ld [$cfcc], a
    pop af
    ld [$d0ed], a
    pop af
    ldh [$de], a
    ret


Jump_042_4089:
    ld hl, $c734
    ld [hl], e
    inc hl
    ld [hl], d
    ldh a, [$de]
    push af
    xor a
    ldh [$de], a
    ld hl, $d0ed
    ld a, [hl]
    push af
    res 0, [hl]
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call Call_042_4157

jr_042_40a6:
    call Call_042_424b
    jr nc, jr_042_40a6

    pop af
    ld [$cfcc], a
    pop af
    ld [$d0ed], a
    pop af
    ldh [$de], a
    ret


Call_042_40b7:
    xor a
    ld [$cf63], a
    call $31f3
    call $300b
    call $0fc8
    call $0568
    call Call_042_41ad
    call Call_042_41ca
    call $0e51
    call $0e58
    ld a, $01
    ldh [rVBK], a
    ld hl, $4da7
    ld de, $9000
    call $0b50
    ld a, $00
    ldh [rVBK], a
    ld hl, $4d27
    ld de, $8200
    call $0b50
    call $058a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    call $045a
    ld de, $5adb
    ld hl, $8000
    ld bc, $0a06
    call $0eba
    ld de, $5b3b
    ld hl, $8060
    ld bc, $0a0c
    call $0eba
    xor a
    ld hl, $c300
    ld [hl+], a
    ld [hl], $00
    ld a, [$c6d0]
    ld hl, $c6fd
    ld de, $8300
    call Call_042_41e9
    ld a, [$c702]
    ld hl, $c72f
    ld de, $9310
    call Call_042_41e9
    ld a, [$c6d0]
    ld de, $c6d1
    call Call_042_4239
    ld a, [$c702]
    ld de, $c703
    call Call_042_4239
    xor a
    call Call_042_4b98
    call Call_042_4af4
    ret


Call_042_4157:
    xor a
    ld [$cf63], a
    call $31f3
    call $300b
    call $0fc8
    call $0568
    call Call_042_41ad
    call Call_042_41ca
    call $0e51
    call $0e58
    call $058a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    xor a
    ld hl, $c300
    ld [hl+], a
    ld [hl], $00
    call $045a
    ld a, [$c6d0]
    ld de, $c6d1
    call Call_042_4239
    ld a, [$c702]
    ld de, $c703
    call Call_042_4239
    xor a
    call Call_042_4b98
    call Call_042_4af4
    ret


Call_042_41ad:
    ld a, $01
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $1800
    xor a
    call $3041
    ld a, $00
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $1800
    xor a
    call $3041
    ret


Call_042_41ca:
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0800
    ld a, $00
    call $3041
    ld a, $00
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    call $3041
    ret


Call_042_41e9:
    push de
    push af
    ld a, $2d
    call $2d83
    pop af
    ld [$d108], a
    ld [$cf60], a
    call $3856
    pop de
    ld a, $3c
    call $2d83
    ret


Call_042_4201:
    push de
    push af
    ld a, $2d
    call $2d83
    pop af
    ld [$d108], a
    ld [$cf60], a
    call $3856
    pop de
    ld a, $3e
    call $2d83
    ret


    ld [$d108], a
    ld hl, $c4cf
    ld d, $00
    ld e, $03
    ld a, $47
    call $2d83
    ret


Call_042_4229:
    ld [$d108], a
    ld hl, $c4cf
    ld d, $00
    ld e, $03
    ld a, $46
    call $2d83
    ret


Call_042_4239:
    push de
    ld [$d265], a
    call $343b
    ld hl, $d073
    pop de
    ld bc, $000b
    call $3026
    ret


Call_042_424b:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_042_425a

    call Call_042_427b
    call $045a
    and a
    ret


jr_042_425a:
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    call $0e51
    call $0e58
    ld a, $41
    ld hl, $6462
    rst $08
    ld a, $41
    ld hl, $6464
    rst $08
    scf
    ret


Call_042_427b:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $428a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or a
    ld b, d
    ld c, $43
    jr c, @+$48

    ld h, e
    ld b, a
    rst $08
    ld b, a
    ld de, $3848
    ld c, b
    ld c, h
    ld c, b
    ld h, e
    ld c, b
    sub h
    ld c, b
    ld a, [bc]
    ld c, c
    sbc e
    ld b, e
    add $42
    inc l
    ld b, h
    rst $10
    ld b, h
    add hl, de
    ld c, c
    adc c
    ld b, [hl]
    db $f4
    ld b, [hl]
    dec a
    ld c, c
    adc c
    ld b, l

Call_042_42b2:
    ld hl, $cf63
    inc [hl]
    ret


Call_042_42b7:
    ld hl, $c734
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld [$cf63], a
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


    ld hl, $cf63
    set 7, [hl]
    ret


Call_042_42cc:
jr_042_42cc:
    push bc
    ld a, $23
    ld hl, $4f69
    rst $08
    pop bc
    call $045a
    dec c
    jr nz, jr_042_42cc

    ret


Call_042_42db:
jr_042_42db:
    ld a, $23
    ld hl, $4f69
    rst $08
    ld a, $34
    ld hl, $40b4
    rst $08
    ld a, $41
    ld hl, $402d
    rst $08
    jr nc, jr_042_42db

    ret


Call_042_42f0:
jr_042_42f0:
    call Call_042_4b78
    call $045a
    dec c
    jr nz, jr_042_42f0

    ret


Call_042_42fa:
jr_042_42fa:
    call Call_042_4b78
    push hl
    push bc
    ld a, $23
    ld hl, $4f69
    rst $08
    pop bc
    pop hl
    call $045a
    dec c
    jr nz, jr_042_42fa

    ret


    ld de, $0022
    call $3bbc
    ld a, $80
    ldh [$cf], a
    xor a
    ldh [$d0], a
    ld a, $87
    ldh [$d1], a
    ld a, $50
    ldh [$d2], a
    call Call_042_49a8
    ld a, [$c6d0]
    ld [$d108], a
    call Call_042_495e
    ld a, [$c6fd]
    ld [$d123], a
    ld a, [$c6fe]
    ld [$d124], a
    ld b, $1a
    call $3340
    ld a, $e4
    call $0c9f
    call $31f6

jr_042_4348:
    ldh a, [$d1]
    cp $07
    jr z, jr_042_435d

    sub $04
    ldh [$d1], a
    ldh a, [$cf]
    sub $04
    ldh [$cf], a
    call $045a
    jr jr_042_4348

jr_042_435d:
    ld a, $07
    ldh [$d1], a
    xor a
    ldh [$cf], a
    ld a, [$c6d0]
    call $381e
    jr c, jr_042_4371

    ld e, c
    ld d, b
    call $3be3

jr_042_4371:
    ld c, $50
    call $0468
    call Call_042_4bec
    ld de, $5458
    ld a, $20
    call $3b2a
    ld de, $0029
    call $3c23
    ld hl, $c4a0
    ld bc, $00f0
    ld a, $7f
    call $3041
    ld c, $50
    call Call_042_42cc
    call Call_042_42b7
    ret


    call $31f3
    call $300b
    call $0fc8
    call $0568
    call Call_042_41ca
    ld a, [$c702]
    ld [$d108], a
    ld hl, $c72f
    ld de, $9000
    call Call_042_4201
    call $058a
    ld a, $23
    ld hl, $503d
    rst $08
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld de, $5458
    ld a, $21
    call $3b2a
    call Call_042_4b45
    ld a, $01
    call Call_042_4b98
    call Call_042_4af4
    ld c, $30
    call Call_042_42cc
    ld de, $0029
    call $3c23
    call Call_042_49d2
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $50
    ldh [$d2], a
    ld a, [$c702]
    ld [$d108], a
    ld a, [$c72f]
    ld [$d123], a
    ld a, [$c730]
    ld [$d124], a
    ld b, $1a
    call $3340
    ld a, $e4
    call $0c9f
    call Call_042_4963
    ld a, [$c702]
    call Call_042_4229
    call Call_042_42db
    call Call_042_4c16
    call Call_042_42b7
    ret


    ld de, $0022
    call $3bbc
    ld a, $80
    ldh [$cf], a
    xor a
    ldh [$d0], a
    ld a, $87
    ldh [$d1], a
    ld a, $50
    ldh [$d2], a
    call Call_042_49a8
    ld a, [$c6d0]
    ld [$d108], a
    ld hl, $c6fd
    call Call_042_498a
    call $045a
    ld de, $5adb
    ld hl, $8000
    ld bc, $0a06
    call $0eba
    ld de, $5b3b
    ld hl, $8060
    ld bc, $0a0c
    call $0eba
    ld a, [$c6fd]
    ld [$d123], a
    ld a, [$c6fe]
    ld [$d124], a
    ld b, $1a
    call $3340
    ld a, $e4
    call $0c9f
    call $31f6

jr_042_4484:
    ldh a, [$d1]
    cp $07
    jr z, jr_042_4499

    sub $04
    ldh [$d1], a
    ldh a, [$cf]
    sub $04
    ldh [$cf], a
    call $045a
    jr jr_042_4484

jr_042_4499:
    ld a, $07
    ldh [$d1], a
    xor a
    ldh [$cf], a
    ld a, [$c6d0]
    call $381e
    jr c, jr_042_44ad

    ld e, c
    ld d, b
    call $3be3

jr_042_44ad:
    ld c, $50
    call $0468
    call Call_042_4c2b
    ld de, $5458
    ld a, $20
    call $3b2a
    ld de, $0029
    call $3c23
    ld hl, $c4a0
    ld bc, $00f0
    ld a, $7f
    call $3041
    ld c, $50
    call Call_042_42cc
    call Call_042_42b7
    ret


    call $31f3
    call $300b
    call $0fc8
    call $0568
    call Call_042_41ca
    ld a, [$c702]
    ld [$d108], a
    ld hl, $c72f
    ld de, $9000
    call Call_042_4201
    call $058a
    ld a, $23
    ld hl, $503d
    rst $08
    call $045a
    ld de, $5adb
    ld hl, $8000
    ld bc, $0a06
    call $0eba
    ld de, $5b3b
    ld hl, $8060
    ld bc, $0a0c
    call $0eba
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld de, $5458
    ld a, $21
    call $3b2a
    call Call_042_4b45
    ld a, $01
    call Call_042_4b98
    call Call_042_4af4
    ld c, $30
    call Call_042_42cc
    ld de, $0029
    call $3c23
    call Call_042_49d2
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $50
    ldh [$d2], a
    ld a, [$c702]
    ld [$d108], a
    ld a, [$c72f]
    ld [$d123], a
    ld a, [$c730]
    ld [$d124], a
    ld b, $1a
    call $3340
    ld a, $e4
    call $0c9f
    ld a, [$c702]
    ld hl, $c72f
    call Call_042_498a
    ld a, [$c702]
    call Call_042_4229
    call Call_042_42db
    call Call_042_4c40
    call Call_042_42b7
    ret


    call $31f3
    call $300b
    call $0fc8
    call $0568
    call Call_042_41ca
    ld a, [$c702]
    ld [$d108], a
    ld hl, $c72f
    ld de, $9000
    call Call_042_4201
    call $058a
    ld a, $23
    ld hl, $503d
    rst $08
    call $045a
    ld de, $5adb
    ld hl, $8000
    ld bc, $0a06
    call $0eba
    ld de, $5b3b
    ld hl, $8060
    ld bc, $0a0c
    call $0eba
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld de, $5458
    ld a, $21
    call $3b2a
    call Call_042_4b45
    ld a, $01
    call Call_042_4b98
    call Call_042_4af4
    ld c, $30
    call Call_042_42cc
    ld de, $0029
    call $3c23
    call Call_042_4a33
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $50
    ldh [$d2], a
    ld a, [$c702]
    ld [$d108], a
    ld a, [$c72f]
    ld [$d123], a
    ld a, [$c730]
    ld [$d124], a
    ld b, $1a
    call $3340
    ld a, $e4
    call $0c9f
    ld a, [$c702]
    ld hl, $c72f
    call Call_042_498a
    ld a, [$c702]
    call Call_042_4229
    call Call_042_42db
    call Call_042_42b7
    ret


    ld a, $23
    ld hl, $503d
    rst $08
    call $31f3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    call $0568
    call Call_042_41ca
    call Call_042_4c80
    call Call_042_4c6d
    call $058a
    ld a, $0c
    ldh [$cf], a
    ld a, $78
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $5107
    ld de, $d000
    ld bc, $0040
    call $3026
    pop af
    ldh [rSVBK], a
    call Call_042_4d07
    call Call_042_4af4
    call Call_042_42b7
    ret


    ld a, $23
    ld hl, $503d
    rst $08
    call $31f3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    call $0568
    call Call_042_41ca
    ld a, $01
    ldh [rVBK], a
    ld hl, $4da7
    ld de, $9000
    call $0b50
    ld a, $00
    ldh [rVBK], a
    ld hl, $4d27
    ld de, $8200
    call $0b50
    call Call_042_4c80
    call Call_042_4c6d
    call $058a
    ld a, $0c
    ldh [$cf], a
    ld a, $78
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $5107
    ld de, $d000
    ld bc, $0040
    call $3026
    pop af
    ldh [rSVBK], a
    call Call_042_4d07
    call Call_042_4af4
    call Call_042_42b7
    ret


    call $31f3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    call $0568
    ld a, $01
    ldh [rVBK], a
    ld hl, $4da7
    ld de, $9000
    call $0b50
    ld a, $00
    ldh [rVBK], a
    ld hl, $4d27
    ld de, $8200
    call $0b50
    call Call_042_4c80
    call Call_042_4c6d
    call $058a
    ld a, $80
    ldh [$cf], a
    ld a, $90
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $5107
    ld de, $d000
    ld bc, $0040
    call $3026
    pop af
    ldh [rSVBK], a
    call Call_042_4d07
    call Call_042_4af4
    call Call_042_4b5a
    ld a, $e0
    ldh [$cf], a
    ld de, $0022
    call $3bbc
    call Call_042_42b7
    ret


    ld de, $00b7
    call $3c23
    ld c, $28
    ld hl, $d0b0
    call Call_042_42f0
    call Call_042_4af4

jr_042_4774:
    ldh a, [$cf]
    cp $e0
    jr z, jr_042_4791

    dec a
    dec a
    ldh [$cf], a
    cp $f8
    jr nz, jr_042_478a

    ld de, $5458
    ld a, $22
    call $3b2a

jr_042_478a:
    ld c, $01
    call Call_042_42cc
    jr jr_042_4774

jr_042_4791:
    ldh a, [$d0]
    cp $f8
    jr z, jr_042_47cb

    dec a
    dec a
    ldh [$d0], a
    cp $40
    jr z, jr_042_47a9

    cp $30
    jr z, jr_042_47b7

    cp $68
    jr z, jr_042_47bc

    jr jr_042_47c4

jr_042_47a9:
    ld de, $5458
    ld a, $22
    call $3b2a
    xor a
    call Call_042_4ad4
    jr jr_042_47c4

jr_042_47b7:
    call Call_042_4bbd
    jr jr_042_47c4

jr_042_47bc:
    call Call_042_4bbd
    ld a, $01
    call Call_042_4ad4

jr_042_47c4:
    ld c, $01
    call Call_042_42cc
    jr jr_042_4791

jr_042_47cb:
    call Call_042_42b2
    ret


    ld c, $28
    ld hl, $d088
    call Call_042_42f0
    call Call_042_4af4
    call Call_042_4b5a
    ld de, $4a50
    ld a, $25
    call $3b2a
    ld de, $0081
    call $3c23
    ld c, $0a
    call Call_042_42cc
    xor a
    ld [$cf64], a
    ld de, $4a50
    ld a, $23
    call $3b2a

jr_042_47fc:
    ldh a, [$d0]
    cp $90
    jr z, jr_042_480d

    sub $08
    ldh [$d0], a
    ld c, $01
    call Call_042_42cc
    jr jr_042_47fc

jr_042_480d:
    call Call_042_42b7
    ret


    ld c, $28
    call Call_042_42cc
    ld a, $01
    ld [$cf64], a
    ld de, $005a
    call $3c23
    ld c, $3c
    call Call_042_42cc
    ld de, $f250
    ld a, $24
    call $3b2a
    call Call_042_42b7
    ld de, $0028
    call $3c23
    ret


    ld c, $28
    call Call_042_42cc
    ld a, $01
    ld [$cf64], a
    ld de, $005a
    call $3c23
    call Call_042_42b7
    ret


    ld c, $50
    call $0468
    ld de, $f250
    ld a, $24
    call $3b2a
    call Call_042_42b7
    ld de, $0028
    call $3c23
    ret


    ld c, $28
    call Call_042_42cc

jr_042_4868:
    ldh a, [$d0]
    cp $f8
    jr z, jr_042_4879

    add $08
    ldh [$d0], a
    ld c, $01
    call Call_042_42cc
    jr jr_042_4868

jr_042_4879:
    ld a, $23
    ld hl, $503d
    rst $08
    ld de, $4a50
    ld a, $25
    call $3b2a
    ld de, $00bd
    call $3c23
    call Call_042_4af4
    call Call_042_42b2
    ret


    ld c, $14
    ld hl, $d088
    call Call_042_42fa
    ld de, $00b7
    call $3c23
    ld c, $14
    ld hl, $d088
    call Call_042_42fa
    call Call_042_4af4

jr_042_48ad:
    ldh a, [$d0]
    cp $78
    jr z, jr_042_48ee

    inc a
    inc a
    ldh [$d0], a
    cp $30
    jr z, jr_042_48c5

    cp $40
    jr z, jr_042_48dd

    cp $68
    jr z, jr_042_48cf

    jr jr_042_48e7

jr_042_48c5:
    ld de, $5458
    ld a, $22
    call $3b2a
    jr jr_042_48e7

jr_042_48cf:
    ld de, $5458
    ld a, $22
    call $3b2a
    xor a
    call Call_042_4ad4
    jr jr_042_48e7

jr_042_48dd:
    call Call_042_4bbd
    ld a, $01
    call Call_042_4ad4
    jr jr_042_48e7

jr_042_48e7:
    ld c, $01
    call Call_042_42cc
    jr jr_042_48ad

jr_042_48ee:
    ldh a, [$cf]
    cp $0c
    jr z, jr_042_4906

    inc a
    inc a
    ldh [$cf], a
    cp $f8
    jr nz, jr_042_48e7

    call Call_042_4bbd
    ld c, $01
    call Call_042_42cc
    jr jr_042_48ee

jr_042_4906:
    call Call_042_42b2
    ret


    ld c, $28
    ld hl, $d0b0
    call Call_042_42f0
    call Call_042_4af4
    call Call_042_42b7
    ret


    ld c, $28
    call Call_042_42cc
    ld a, $23
    ld hl, $503d
    rst $08
    call $31f3
    call $300b
    call $0fc8
    call $0568
    call Call_042_41ad
    call Call_042_41ca
    call $058a
    call Call_042_42b7
    ret


jr_042_493d:
    ldh a, [rBGP]
    and a
    jr z, jr_042_4953

    sla a
    sla a
    call $0c9f
    call $0cf8
    ld c, $04
    call $0468
    jr jr_042_493d

jr_042_4953:
    xor a
    call $0c9f
    call $0cf8
    call Call_042_42b7
    ret


Call_042_495e:
    ld de, $8300
    jr jr_042_4966

Call_042_4963:
    ld de, $9310

jr_042_4966:
    call $045a
    ld hl, $9000
    ld bc, $0a31
    call $0eba
    call $163a
    call Call_042_4ac8
    ld hl, $c4cf
    xor a
    ldh [$ad], a
    ld bc, $0707
    ld a, $13
    call $2d83
    call $31f6
    ret


Call_042_498a:
    ld de, $9000
    call Call_042_41e9
    call $163a
    call Call_042_4ac8
    ld hl, $c4cf
    xor a
    ldh [$ad], a
    ld bc, $0707
    ld a, $13
    call $2d83
    call $31f6
    ret


Call_042_49a8:
    ld de, $c6d0
    ld a, [de]
    cp $fd
    jr z, jr_042_49fc

    call Call_042_4a5b
    ld de, $c6d0
    call Call_042_4a92
    ld de, $c6d1
    call Call_042_4a9c
    ld a, [$c701]
    ld de, $c6f2
    call Call_042_4aa3
    ld de, $c6ff
    call Call_042_4abe
    call Call_042_4a87
    ret


Call_042_49d2:
    ld de, $c702
    ld a, [de]
    cp $fd
    jr z, jr_042_49fc

    call Call_042_4a5b
    ld de, $c702
    call Call_042_4a92
    ld de, $c703
    call Call_042_4a9c
    ld a, [$c733]
    ld de, $c724
    call Call_042_4aa3
    ld de, $c731
    call Call_042_4abe
    call Call_042_4a87
    ret


jr_042_49fc:
    call $163a
    call Call_042_4ac8
    ld a, $9c
    ldh [$d7], a
    ld hl, $c4a5
    ld b, $06
    ld c, $09
    call $0fe8
    ld hl, $c4ce
    ld de, $4a1d
    call $1078
    call Call_042_4a87
    ret


    adc a
    sbc l
    add hl, bc
    ld c, [hl]
    or l
    call nc, $e6f3
    and $e6
    and $e6
    ld c, [hl]
    ld [hl], e
    ld [hl], h
    ld a, [c]
    and $e6
    and $e6
    and $50

Call_042_4a33:
    call $163a
    call Call_042_4ac8
    ld a, $9c
    ldh [$d7], a
    ld hl, $c4a5
    ld b, $06
    ld c, $09
    call $0fe8
    ld hl, $c4f7
    ld de, $4a54
    call $1078
    call Call_042_4a87
    ret


    push bc
    cpl
    ret


    adc a
    sbc l
    add hl, bc
    ld d, b

Call_042_4a5b:
    call $163a
    call Call_042_4ac8
    ld a, $9c
    ldh [$d7], a
    ld hl, $c4a4
    ld b, $06
    ld c, $0a
    call $0fe8
    ld hl, $c4a5
    ld de, $4a79
    call $1078
    ret


    ld a, d
    ld a, a
    ld [hl], h
    ld a, [c]
    ld c, [hl]
    ld c, [hl]
    or l
    call nc, Call_042_4ef3
    ld [hl], e
    ld [hl], h
    ld a, [c]
    ld d, b

Call_042_4a87:
    call $31f6
    call $163a
    ld a, $98
    ldh [$d7], a
    ret


Call_042_4a92:
    ld hl, $c4a9
    ld bc, $8103
    call $3198
    ret


Call_042_4a9c:
    ld hl, $c4cd
    call $1078
    ret


Call_042_4aa3:
    cp $03
    jr c, jr_042_4aa8

    xor a

jr_042_4aa8:
    push af
    ld hl, $c4f8
    call $1078
    inc bc
    pop af
    ld hl, $4abb
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld [bc], a
    ret


    ld a, a
    rst $28
    push af

Call_042_4abe:
    ld hl, $c520
    ld bc, $8205
    call $3198
    ret


Call_042_4ac8:
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ret


Call_042_4ad4:
    and a
    jr z, jr_042_4adc

    ld de, $52c7
    jr jr_042_4adf

jr_042_4adc:
    ld de, $51c7

jr_042_4adf:
    ld a, $01
    ldh [rVBK], a
    ld hl, $94a0
    ld bc, $4210
    call $0dc9
    call $045a
    ld a, $00
    ldh [rVBK], a
    ret


Call_042_4af4:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, [$cf65]
    and $01
    jr z, jr_042_4b1c

    ld hl, $5187
    ld de, $d040
    ld bc, $0040
    call $3026
    ld hl, $5187
    ld de, $d0c0
    ld bc, $0040
    call $3026
    jr jr_042_4b34

jr_042_4b1c:
    ld hl, $5147
    ld de, $d040
    ld bc, $0040
    call $3026
    ld hl, $5147
    ld de, $d0c0
    ld bc, $0040
    call $3026

jr_042_4b34:
    pop af
    ldh [rSVBK], a
    ld a, $e4
    call $0cf8
    ld a, $e4
    call $0c9f
    call $045a
    ret


Call_042_4b45:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld de, $7fff
    ld hl, $d000
    ld a, e
    ld [hl+], a
    ld d, a
    ld [hl+], a
    pop af
    ldh [rSVBK], a
    ret


Call_042_4b5a:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld de, $3ff2
    ld hl, $d0a0
    ld c, $10

jr_042_4b69:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    dec c
    jr nz, jr_042_4b69

    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


Call_042_4b78:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, c
    and $02
    jr z, jr_042_4b89

    ld de, $7fff
    jr jr_042_4b8c

jr_042_4b89:
    ld de, $05ff

jr_042_4b8c:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl-], a
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


Call_042_4b98:
    ld d, a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, [$cf65]
    and $01
    xor d
    jr z, jr_042_4bad

    ld hl, $4ba0
    jr jr_042_4bb0

jr_042_4bad:
    ld hl, $4b98

jr_042_4bb0:
    ld de, $d038
    ld bc, $0040
    call $3026
    pop af
    ldh [rSVBK], a
    ret


Call_042_4bbd:
    ld a, $23
    ld hl, $503d
    rst $08
    call $300b
    ret


    ld a, [$cf64]
    and a
    ret z

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $f2
    jr z, jr_042_4bd9

    sub $08
    ld [hl], a
    ret


jr_042_4bd9:
    ld a, $23
    ld hl, $5036
    rst $08
    ret


    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $4a
    ret z

    add $08
    ld [hl], a
    ret


Call_042_4bec:
    ld a, $90
    ldh [$d2], a
    ld hl, $4c07
    call $1057
    ld c, $50
    call $0468
    ld hl, $4c0c
    call $1057
    ld c, $50
    call $0468
    ret


    ld d, $87
    ld b, a
    ld l, a
    ld d, b
    ld d, $9d
    ld b, a
    ld l, a
    ld d, b
    ld d, $b0
    ld b, a
    ld l, a
    ld d, b

Call_042_4c16:
    ld a, $90
    ldh [$d2], a
    ld hl, $4c26
    call $1057
    ld c, $50
    call $0468
    ret


    ld d, $c3
    ld b, a
    ld l, a
    ld d, b

Call_042_4c2b:
    ld a, $90
    ldh [$d2], a
    ld hl, $4c3b
    call $1057
    ld c, $50
    call $0468
    ret


    ld d, $dd
    ld b, a
    ld l, a
    ld d, b

Call_042_4c40:
    ld a, $90
    ldh [$d2], a
    ld a, [$cf65]
    and $80
    jr z, jr_042_4c57

    ld hl, $4c68
    call $1057
    ld c, $50
    call $0468
    ret


jr_042_4c57:
    ld hl, $4c63
    call $1057
    ld c, $50
    call $0468
    ret


    ld d, $f0
    ld b, a
    ld l, a
    ld d, b
    ld d, $0a
    ld c, b
    ld l, a
    ld d, b

Call_042_4c6d:
    ld hl, $4fe7
    ld de, $9800
    call $0b50
    ld hl, $4fe7
    ld de, $9c00
    call $0b50
    ret


Call_042_4c80:
    ld a, $01
    ldh [rVBK], a
    ld hl, $50a7
    ld de, $9800
    call $0b50
    ld hl, $50a7
    ld de, $9c00
    call $0b50
    ld a, $00
    ldh [rVBK], a
    ret


    ld hl, $4ce9
    ld a, [hl+]
    ld [$c6d0], a
    ld de, $c6e7
    ld c, $0b

jr_042_4ca7:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_042_4ca7

    ld de, $c6ff
    ld c, $02

jr_042_4cb2:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_042_4cb2

    ld de, $c6f2
    ld c, $0b

jr_042_4cbd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_042_4cbd

    ld a, [hl+]
    ld [$c702], a
    ld de, $c719
    ld c, $0b

jr_042_4ccc:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_042_4ccc

    ld de, $c731
    ld c, $02

jr_042_4cd7:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_042_4cd7

    ld de, $c724
    ld c, $0b

jr_042_4ce2:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_042_4ce2

    ret


    inc bc
    ld [$9be3], sp
    ret c

    ld d, b
    ld d, b
    inc hl
    ld bc, $3bb6
    db $e3
    sbc $50
    ld d, b
    ld b, $87
    ret c

    db $e3
    sub b
    xor l
    ld d, b
    ld d, [hl]
    inc b
    sbc l
    sub c

Call_042_4d03:
    sbc [hl]
    and d
    ld d, b
    ld d, b

Call_042_4d07:
    ld a, [$c74e]
    and $7f
    cp $08
    jr c, jr_042_4d12

    ld a, $07

jr_042_4d12:
    ld bc, $0008
    ld hl, $53c7
    call $30fe
    ld a, $05
    ld de, $d020
    ld bc, $0008
    call $306b
    ret


    ld h, c
    inc bc
    jr jr_042_4d43

    inc a
    inc l
    inc hl
    ld a, [hl]
    nop
    inc a
    call nz, $0586
    inc a
    inc a
    ld a, [hl]
    ld c, [hl]
    rst $38
    rst $08
    dec h
    rst $38
    add e
    sub e
    rlca
    inc bc
    inc bc
    rrca
    rrca

jr_042_4d43:
    rra
    rra
    ccf
    ccf
    inc hl
    ld a, a
    inc hl
    rst $38
    ld h, d
    rrca
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, $00
    ld a, h
    nop
    ld a, [hl]
    nop
    ld b, l
    rst $38
    nop
    nop
    jp $0366


    ld a, b
    nop
    ld hl, sp+$00
    ld b, e
    ldh a, [rP1]
    add $81
    ld [hl], l
    ld [bc], a
    ld bc, $0300
    add [hl]
    call nz, $030c
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    add b
    and h
    cp [hl]
    ld b, e
    inc a
    nop
    ld b, l
    ld a, b
    nop
    ld b, e
    ldh a, [rP1]
    ld [bc], a
    nop
    jr jr_042_4d91

jr_042_4d91:
    add sp, $2b
    inc a
    nop
    ld bc, $0018
    add d
    or c
    adc d
    adc c
    nop
    jr @+$81

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rra
    rra
    ccf
    ccf
    ld a, a
    ld [hl], b
    rst $38
    ldh [rIE], a
    jp $ff46


    rst $00
    ld [hl+], a
    rst $38
    ld b, e
    cp a
    ld b, b
    inc l
    rst $38
    ld bc, $ff00
    ret z

    add c
    xor a
    sbc a
    or b
    cp a
    ld c, e
    rst $00
    rst $38
    ld [bc], a
    add $ff
    add $2c
    ld hl, sp+$02
    ld a, b
    ld hl, sp+$78
    ld l, a
    cpl
    rra
    ld c, c
    rst $38
    db $e3
    sub d
    rst $08
    ld [bc], a
    rst $00
    rst $38
    rst $00
    add hl, sp
    ld hl, sp-$7b
    nop
    rra
    ld h, h
    jp z, $af80

    sbc a
    jp $0c00


    ld c, h
    rst $38
    ret nz

    inc hl
    rst $38
    nop
    ld a, a
    ld b, l
    cp a
    ld b, b
    adc d
    nop
    inc d
    ld [bc], a
    nop
    ldh [$1f], a
    ld b, e
    rst $18
    jr nz, @+$03

    ldh [$1f], a
    or h
    adc a
    xor d
    xor a
    or b
    rst $08
    ld b, a
    ret nz

    rst $38
    ld b, h
    rst $00
    db $fd
    inc b
    rst $38
    rst $00
    rst $38
    ld a, b
    rst $08
    ld b, h
    ld a, b
    rst $38
    nop
    rst $08
    ld b, h
    rst $38
    or [hl]
    ld bc, $ffcf
    ld c, b
    rst $38
    nop
    ld b, e
    add b
    rst $38
    res 0, c
    ld [bc], a
    inc bc
    db $fc
    rlca
    ld b, e
    ei
    rrca
    ld bc, $02fd
    add [hl]
    adc c
    inc c
    adc a
    ld a, e
    rst $08
    cp h
    rst $20
    cp a
    db $e3
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    jp $bf45


    db $e3
    inc bc
    ld a, a
    jp $83ff


    add $c9
    nop
    ld a, b
    add a
    ld bc, $4f08
    rst $38
    nop
    inc b
    ei
    rrca
    db $fc
    rlca
    rst $38
    ret


    rlc [hl]
    nop
    cp l
    ld [c], a
    ld a, l
    jp nz, $82fd

    adc c
    ld bc, $4336
    rst $38
    inc bc
    sub h
    ld bc, $4644
    ret nz

    rst $38
    ld b, a
    cp a
    ld b, b
    inc bc
    rst $08
    jr nc, @-$0e

    rrca
    add [hl]
    pop bc
    ld [bc], a
    ld a, [hl]
    cp l
    ld a, [hl]
    ld b, l
    rst $38
    nop
    dec e
    nop
    rst $38
    rst $38
    nop
    db $fc
    rlca
    db $fd
    ld [bc], a
    ld sp, hl
    rla
    db $fd
    ld [bc], a
    and $5d
    rrca
    ldh a, [$bb]
    ld d, l
    rst $38
    nop
    rst $38
    ld b, e
    rst $38
    inc bc
    cp a
    ld d, e
    rst $38
    inc bc
    rst $28
    ld d, e
    add l
    add a
    ld c, $ff
    ret nz

    ld a, a
    ld h, b
    ld a, a
    ld [hl], b
    ccf
    inc a
    rra
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    adc c
    ld bc, $05c5
    ret nz

    rst $38
    rst $38
    ccf
    ccf
    nop
    adc l
    ld bc, $22c1
    rst $38
    dec b
    xor $55
    rst $38
    nop
    ei
    inc d
    xor d
    sbc a
    nop
    ld b, e
    xor l
    cp a
    ld [bc], a
    ld a, a
    ld a, a
    and $48
    rst $38
    cp $03
    and $ff
    ld a, a
    ld a, a
    adc c
    nop
    sub $00
    rst $38
    add $da
    ld bc, $0303
    inc hl
    ld bc, $0367
    ret nz

    ret nz

    ldh [$e0], a
    dec h
    rst $38
    ld bc, $3f3f
    add e
    sbc a
    cpl

Call_042_4ef3:
    inc bc
    cpl
    ret nz

    ld b, l
    inc c
    rrca
    inc bc
    ld c, $0f
    rlca
    rlca
    or l
    adc a
    rst $00
    sub b
    add $a1
    nop
    rrca
    xor a
    adc a
    ld c, d
    rlca
    ld b, $00
    rlca
    add e
    ld [bc], a
    jp nz, $0005

    adc h
    add b
    ld b, [hl]
    call nz, $a33b
    ld bc, $8576
    ld [bc], a
    ld a, d
    xor a
    adc a
    or b
    xor a
    add h
    xor a
    ld bc, $7f80
    add a
    add a
    or b
    adc a
    inc b
    call c, Call_042_6698
    db $fc
    inc bc
    cp c
    adc a
    rrca
    ld a, a
    add b
    sbc a
    ld h, b
    ldh [$1f], a
    db $fc
    inc bc
    sbc b
    ld h, [hl]
    nop
    cp h
    nop
    sbc b
    nop
    sbc b
    xor a
    adc a
    ld c, e
    ld b, b
    ret nz

    inc bc
    ld a, a
    rst $38
    ld a, a
    cp a
    xor a
    adc a
    ld c, a
    rlca
    ld b, $07
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    add b
    ld a, a
    cp a
    ld b, a
    ld b, b
    ret nz

    xor a
    adc a
    ld c, a

jr_042_4f61:
    ldh [$60], a
    add h
    inc bc
    ld b, a
    ld bc, $0707
    add [hl]
    add [hl]
    ld bc, $0707
    ld b, e
    jr nc, jr_042_4f61

    ld [bc], a
    ldh a, [$f0]
    rst $38
    jp $da02


    inc bc
    ldh [rIE], a
    add b
    rst $38
    add [hl]
    ld [bc], a
    rst $00
    nop
    db $fc
    xor [hl]
    adc a
    jp nz, $c682

    inc bc
    add b
    ld bc, $0000
    call Call_042_4d03
    jp $008e


    ldh a, [rWY]
    ldh a, [$30]
    ld l, a
    ld bc, $c1fe
    ld b, l
    ld a, [hl]
    ld h, c
    ld b, e
    ld a, $31
    inc bc
    inc e
    rra
    rrca
    rrca
    xor [hl]
    adc a
    nop
    ldh a, [$7f]
    ld bc, $c3fc
    ld c, l
    cp $c1
    xor a
    adc a
    ld a, a
    ld bc, $605f
    ld b, e
    sbc $e1
    add hl, bc
    rst $08
    ldh a, [$ee]
    pop de
    and $d9
    di
    call z, $c7f8
    xor a
    adc a
    ld a, a
    rlca
    rrca
    rrca
    ccf
    inc a
    ld a, a
    ld [hl], b
    ld a, a
    ld h, b
    ld b, e
    rst $38
    ret nz

    inc bc
    cp $c1
    ld a, [hl]
    ld b, c
    xor a
    adc a
    xor $6f
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
    db $e4
    jp $017f


    ld c, b
    ld c, c
    dec a
    ld a, a
    inc bc
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    dec sp
    ld a, a
    inc bc
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    sbc h
    sbc a
    ld bc, $3f3e
    sbc l
    sbc a
    ld bc, $3d3c
    sbc l
    sbc a
    ld bc, $3b3a
    sbc l
    sbc a
    ld bc, $3938
    sbc h
    sbc a
    inc bc
    inc [hl]
    dec [hl]
    ld [hl], $37
    inc a
    ld a, a
    ld bc, $3130
    dec a
    ld a, a
    ld bc, $2f2e
    dec a
    ld a, a
    ld bc, $3332
    inc a
    ld a, a
    inc bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    dec sp
    ld a, a
    inc bc
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    dec sp
    ld a, a
    inc bc
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    dec sp
    ld a, a
    inc bc
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ldh a, [rNR41]
    ld bc, $05a8
    nop
    ld bc, $0202
    inc bc
    inc b
    sbc c
    ld bc, $05cf
    dec b
    ld b, $07
    rlca
    ld [$3509], sp
    ld a, a
    dec b
    inc l
    dec l
    dec hl
    ld a, [hl+]
    ld a, [bc]
    dec bc
    sbc c
    sbc a
    inc hl
    ld a, a
    inc b
    ld a, [bc]
    inc c
    dec c
    dec c
    ld c, $9a
    sbc a
    dec b
    rrca
    db $10
    ld de, $1312
    inc d
    add hl, sp
    ld a, a
    dec b
    dec d
    ld d, $17
    jr jr_042_5093

    ld a, [de]
    add hl, sp
    ld a, a
    dec b
    jr nz, jr_042_509b

    inc e
    dec e
    ld e, $1f
    sbc d
    sbc a
    inc b
    ld hl, $2222
    inc hl
    inc h
    add hl, sp
    ld a, a
    dec b
    dec h
    ld h, $27
    daa

jr_042_5093:
    jr z, jr_042_50be

    db $e4
    ld d, b
    ld a, a
    rst $38
    nop
    nop

jr_042_509b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    jp $0a00


    sbc $80
    ld bc, $0a0a
    sbc l
    and c
    ld [bc], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    ldh a, [$bc]
    sbc a
    ld bc, $0b00
    rst $08
    add b

jr_042_50be:
    call $f080
    ccf
    sbc a
    ld bc, $0c0c
    rst $08
    add b
    call $f080
    ld e, a
    sbc a
    ld [bc], a
    nop
    dec c
    dec c
    ld h, c
    dec h
    rrca
    ld [hl], l
    add h
    sbc a
    inc bc
    ld c, $0e
    ld c, $0e
    sbc b
    sbc a
    ld bc, $0d0d
    adc c
    sbc a
    push de
    adc [hl]
    ldh a, [rNR41]
    sbc a
    inc bc
    rrca
    rrca
    rrca
    rrca
    ldh a, [$9a]
    sbc a
    db $ec
    ld [hl], $ff
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    rra
    ld h, h
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    ld l, c
    ld a, [hl]
    nop
    nop
    ld a, [c]
    ccf
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    dec b
    adc $7d
    inc l
    ld a, l
    nop
    nop
    ld a, [c]
    ccf
    adc $7d
    inc l
    ld a, l
    nop
    nop
    ld a, [c]
    ccf
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    ld a, [c]
    ccf
    rst $38
    inc h
    ld [de], a
    inc b
    nop
    nop
    ld a, [c]
    ccf
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    dec b
    ld [de], a
    ld a, b
    add hl, bc
    ld b, h
    nop
    nop
    ld a, [c]
    ccf
    ld [de], a
    ld a, b
    add hl, bc
    ld b, h
    nop
    nop
    rst $38
    ld a, a
    rst $38
    inc sp
    cp a
    ld sp, $0000
    rst $38
    ld a, a
    rst $38
    ld a, $5f
    ld e, $ff
    ld bc, $7fff
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    rra
    ld h, h
    rra
    ld h, h
    nop
    nop
    rst $38
    ld a, a
    ld l, c
    ld a, [hl]
    ld l, c
    ld a, [hl]
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
    rst $38
    ld a, a
    rst $38
    inc sp
    cp a
    ld sp, $0000
    rst $38
    ld a, a
    rst $38
    ld a, $5f
    ld e, $ff
    ld bc, $7fff
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    ld l, c
    ld a, [hl]
    ld l, c
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    rra
    ld h, h
    rra
    ld h, h
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
    cp $c1
    ld a, [hl]
    ld h, c
    ld a, [hl]
    ld h, c
    ld a, [hl]
    ld h, c
    ld a, $31
    ld a, $31
    inc e
    rra
    rrca
    rrca
    ld a, a
    add e
    ld a, [hl]
    add [hl]
    ld a, [hl]
    add [hl]

jr_042_51ed:
    ld a, [hl]
    add [hl]
    ld a, h
    adc h
    ld a, h
    adc h
    jr c, jr_042_51ed

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jp $c1fe


    cp $c1
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    ccf
    jp $837f


    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld h, b
    sbc $e1
    sbc $e1
    rst $08
    ldh a, [$ee]
    pop de
    and $d9
    di
    call z, $c7f8
    ld a, [$7b06]
    add a
    ld a, e
    add a
    di
    rrca
    ld [hl], a
    adc e
    ld h, a
    sbc e
    rst $08
    inc sp
    rra
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ccf
    inc a
    ld a, a
    ld [hl], b
    ld a, a
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    cp $c1
    ld a, [hl]
    ld b, c
    ldh a, [$f0]
    db $fc
    inc a
    cp $0e
    cp $06
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    add e
    ld a, [hl]
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    cp $01
    cp $81
    cp $81
    cp $c1
    cp $e1
    ld a, [hl]
    ld [hl], c
    inc a
    dec sp
    rrca
    rrca
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    add a
    ld a, [hl]
    adc [hl]
    inc a
    call c, $f0f0
    ret nz

    ret nz

    ret nz

    ret nz

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
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    ret nz

jr_042_5344:
    ret nz

    ret nz

    ret nz

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $fe
    ld bc, $817e
    ld a, a
    add b
    ld a, $c1
    sbc [hl]
    ld h, c
    rst $00
    jr c, jr_042_5344

    rra
    ld hl, sp+$07
    ld a, a
    add b
    ld a, [hl]
    add c
    cp $01
    ld a, h
    add e
    ld a, c
    add [hl]
    db $e3
    inc e
    rlca
    ld hl, sp+$1f
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ccf
    ccf
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp $01
    cp $01
    rst $38
    nop
    db $fc
    db $fc
    cp $0e
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    ld a, a
    add b
    ld a, a
    add b
    rst $38
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
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld a, [c]
    ccf
    and h
    ld a, l
    nop
    ld a, h
    nop
    nop
    ld a, [c]
    ccf
    rst $38
    inc bc
    rst $38
    ld bc, $0000
    ld a, [c]
    ccf
    add hl, bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, [c]
    ccf
    rst $38
    inc h
    ld [de], a
    inc b
    nop
    nop
    ld a, [c]
    ccf
    cp h
    ld a, h
    ld de, $0044
    nop
    ld a, [c]
    ccf

jr_042_53f1:
    add hl, hl
    dec h
    add h
    stop
    nop
    ld a, [c]
    ccf
    cp a
    ld d, l
    ei
    jr nc, jr_042_53fe

jr_042_53fe:
    nop
    ld a, [c]
    ccf
    sub l
    ld d, d
    adc $7d
    nop
    nop
    db $ec
    add e
    ld b, $01
    nop
    ld [bc], a
    ld bc, $0304
    nop
    ld b, h
    rlca
    ld [$0261], sp
    ld b, d
    inc a
    nop
    ld c, e
    rst $38
    nop
    ld h, d
    xor e
    sbc a
    ld a, c
    add h
    jp $9fa8


    rlca
    add hl, bc
    ld b, $50
    adc a
    nop
    rst $38
    inc b
    rst $38
    ld l, c
    dec b
    jr nz, jr_042_53f1

    ld [$00f0], sp
    ld hl, sp+$77
    nop
    ld bc, $8283
    ld [de], a
    ld bc, $0102
    ld d, b
    jr nz, jr_042_5449

    ld [hl], b
    sub b
    ld l, h
    nop
    cp $01
    cp $10

jr_042_5449:
    rst $28
    nop
    rst $20
    inc b
    db $e3
    xor l
    pop hl
    ld bc, $4080
    db $ec
    ld d, b
    ld c, h
    rrca

jr_042_5457:
    nop
    ld [bc], a
    ld [$0007], sp
    ld c, a
    rst $38
    nop
    xor h
    sbc a
    sub d
    nop

jr_042_5463:
    xor [hl]
    ld bc, $0407
    ld b, h
    inc bc
    nop
    nop
    ld [bc], a
    ld b, a
    ld bc, $0500
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc bc
    ld c, b
    rst $38
    nop
    ld bc, $fc40
    add e
    ld bc, $0016
    ret nz

    adc b
    nop
    sub a
    xor l
    ld bc, $0200
    add b
    nop
    nop
    ld b, l
    inc bc
    nop
    ld c, b
    inc bc
    inc b
    ld b, e
    jr nz, jr_042_5457

    inc b
    inc b
    jp $c708


    nop
    ld b, h
    rst $08
    db $10
    ld bc, $df00
    ld b, e
    jr nz, jr_042_5463

    ld b, e
    ld b, b
    and b
    ld bc, $e010
    add l
    ld bc, $99a6
    nop
    or h
    dec bc
    ld [$1007], sp
    rrca
    jr nz, jr_042_54d5

    rrca
    nop
    jr nz, jr_042_54d9

    add b
    ld a, a
    add a
    db $ed
    ld bc, $e112
    add e
    ld bc, $072a
    db $10
    ldh [rDIV], a
    ld hl, sp+$02
    db $fc
    ld bc, $83fe
    rst $38
    xor l
    nop
    db $fc

jr_042_54d2:
    ld [bc], a
    ld b, b
    add b

jr_042_54d5:
    ld [$074d], sp
    nop

jr_042_54d9:
    sub b
    ld bc, $ae8f
    sbc a
    sub c
    ld bc, $03af
    ld bc, $0102
    nop
    ld c, d
    inc bc
    nop
    nop
    nop
    ld d, c
    rst $38
    nop
    inc bc
    cp $00
    db $fc
    inc b
    ld b, [hl]
    ld hl, sp+$00
    sub c
    nop
    xor $4f
    inc b
    inc bc
    ld b, l
    ld b, b
    sbc a
    add hl, bc
    ld b, d
    sbc h
    ld b, b
    sbc h
    ld b, d
    sbc h
    nop
    sbc $21
    sbc $45
    ld [$02f0], sp
    add b
    ld a, b
    ld b, b
    ld b, [hl]
    jr c, jr_042_5514

jr_042_5514:
    ld [hl], b
    ld a, [bc]
    ccf
    ld b, b
    ccf
    ld bc, $007e
    ld a, [hl]
    add d
    ld a, h
    nop
    db $fc
    add e
    rst $20
    inc bc
    ld b, b
    add c
    add b
    ld bc, $00a3
    ld [$2007], a
    rra
    ld b, b
    ccf
    nop
    ld a, a
    add b
    ld a, a
    adc l
    ld [bc], a
    call nc, $8803
    rlca
    nop
    ret nz

    and h
    nop
    call z, $e000
    add a
    ld [bc], a
    jr z, jr_042_54d2

    ld [bc], a
    add d
    nop
    inc b
    sub c
    ld [bc], a
    rst $08
    xor [hl]

jr_042_554d:
    sbc a
    ld [hl], b
    ld [bc], a
    inc bc
    nop
    inc bc
    and e
    db $d3
    sub a
    ld [bc], a
    adc b
    ld [bc], a
    nop
    ld hl, sp+$08
    sbc h
    ld bc, $c7a3
    ld [bc], a
    ld a, [bc]
    rlca
    ld b, $01
    ld [bc], a
    ld bc, HeaderLogo
    nop
    dec b
    ld b, e
    jr nz, jr_042_554d

    dec de
    jr nc, @-$2f

    db $10
    rst $28
    ld bc, $10ee
    and $10
    ldh [rSB], a
    ldh a, [rLCDC]
    jr c, jr_042_557e

jr_042_557e:
    ld a, b
    add b
    ld a, b
    adc b
    ld [hl], b
    ld [$20f0], sp
    ret nc

    nop
    ret nc

    db $10
    ret nz

    jp nc, $0001

    inc c
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    add b
    ld a, h
    nop
    ld a, [hl]
    ld b, b
    ccf
    nop
    ccf
    add l
    push af
    add hl, bc
    add b
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    nop
    rra
    ld c, c
    add [hl]
    add e

jr_042_55aa:
    db $db
    dec bc
    ld b, b
    add e
    inc b
    db $e3
    jr nz, @-$37

    ld [$00c7], sp
    adc a
    jr nz, @+$21

    adc d
    inc bc
    and $a4
    ld bc, $84c1
    ld [bc], a
    add $8a
    ld bc, $90c3
    inc bc
    ret nc

    xor [hl]
    sbc a
    sub c
    ld bc, $cab0
    ld [bc], a
    adc d
    ld [bc], a
    rlca
    nop
    rrca
    sbc e
    ld [bc], a
    sub b
    ld bc, $e010
    sub c
    ld [bc], a
    ld l, $06
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0402
    add e
    db $fd
    ld [$0207], sp
    dec c
    db $10
    rrca
    ld [$02f1], sp
    ld sp, hl
    adc c
    cp l
    rlca
    ld a, [bc]
    db $f4
    ld b, b
    and b
    nop
    and b
    jr nz, @-$7e

    and e
    and c
    add e
    cp l
    ld bc, $6090
    or c
    inc b
    jr nc, jr_042_55aa

    inc bc
    ld [c], a
    ld [$0207], sp
    ld bc, $0609
    db $10
    rrca
    ld b, $01
    xor a
    ld bc, $858e
    inc bc
    ld e, [hl]
    inc c
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$09
    or $00
    rst $38
    ld b, $f8
    nop
    add b
    add b
    xor e
    nop
    rst $38
    inc bc
    nop
    nop
    ld bc, $6101
    rst $08
    ld [bc], a
    ld a, e
    rlca
    rst $38
    add c
    ld a, [hl]
    nop
    ld a, [hl]
    inc h
    jr jr_042_563b

jr_042_563b:
    and l
    sbc a
    ld a, l
    xor d
    inc b
    ld [hl], l
    nop
    ld bc, $00ce
    and e
    inc bc
    ld [hl+], a
    pop bc
    nop
    nop
    adc e
    inc b
    ld [hl], d
    ld bc, $8040
    db $ed
    rla
    inc bc
    add hl, bc
    ld b, $10
    rrca
    xor c
    ld [bc], a
    ld [$2206], a
    inc e
    ld b, b
    ccf
    nop
    rst $38
    db $10
    adc d
    ld bc, $83eb
    ld [bc], a
    ld h, d
    dec b
    nop
    ld hl, sp+$40
    db $fc
    ld [bc], a
    db $fc
    db $ec
    rst $08
    nop
    db $10
    and h
    dec b
    pop hl
    adc c
    ld [bc], a
    add b
    ld [bc], a
    inc a
    rst $38
    inc bc
    adc [hl]
    ld [bc], a
    push de
    nop
    ret nz

    adc l
    ld [bc], a
    rst $10
    adc e
    ld bc, $64f5
    ld bc, $1824
    and l
    inc bc
    ld c, d
    add l
    dec b
    ld b, b
    inc bc
    ld [hl+], a
    inc e
    add b
    ld a, a
    add a
    rlca
    jr @-$7b

    res 0, l
    rlca
    inc h
    ld [bc], a
    ld [$40f0], sp
    add h
    inc b
    ld b, e
    ld bc, $fec1
    ld a, e
    ld [bc], a
    add hl, hl
    stop
    xor d
    sbc a
    ld bc, $3844
    adc a
    ld [bc], a
    ld l, h
    inc bc
    ld b, b
    add b
    db $10
    ldh [$ec], a
    ld d, b
    ld [bc], a
    rlca
    ld [$a907], sp
    ld bc, $91a0
    inc b
    adc $85
    ld [bc], a
    db $e4
    add e
    inc bc
    ldh [$96], a
    ld [bc], a
    ld a, [hl+]
    ld bc, $080f
    sbc h
    inc b
    jp $05ab


    ld d, [hl]
    add e
    dec b
    ld h, [hl]
    adc l
    ld [$0534], sp
    nop
    nop
    nop
    ld a, a
    ld b, b
    ccf
    xor e
    db $e3
    nop
    jr nz, @+$46

    rst $38
    nop
    ld [bc], a
    ld a, b
    rst $38
    rlca
    adc b
    ld bc, $0099
    add b
    add h
    ld [$0069], sp
    add d
    add [hl]
    ld [bc], a
    ld l, c
    db $ec
    ld c, a
    ld [bc], a
    db $10
    rrca
    nop
    ld c, d
    rra
    nop
    ld bc, $1f20
    ldh a, [$30]
    ld [bc], a
    sub b
    inc b
    rrca
    nop
    rrca
    db $10
    rrca
    adc b
    cp l
    nop
    ccf
    sbc e
    inc bc
    ret nc

    nop
    db $10
    sub [hl]
    cp a
    ld bc, $0f00
    adc b
    ld a, [bc]
    nop
    nop
    rra
    sub l
    add hl, bc
    ld e, b
    adc b
    add hl, bc
    jr nz, jr_042_572f

jr_042_572f:
    ldh a, [$98]
    nop
    pop af
    ld [bc], a
    inc bc
    ld [$8707], sp
    rlca
    inc c
    ld bc, $6390
    add e
    or a
    nop
    ld hl, $008a
    sbc e
    inc bc
    db $10
    ldh [$08], a
    ldh a, [$96]
    cp a
    nop
    ccf
    adc c
    ld [$0344], sp
    ld [$0007], sp
    nop
    adc [hl]
    inc bc
    ld h, d
    ld [bc], a
    nop
    db $10
    ldh [$9e], a
    dec b
    ld [c], a
    and e
    rlca
    dec l
    ld b, h
    ld a, a
    nop
    dec b
    ld b, b
    ccf
    ld [hl+], a
    inc e
    nop
    nop
    xor [hl]
    ld a, [bc]
    inc d
    nop
    nop
    adc c
    inc bc
    ld [hl], h
    nop
    db $10
    sub e
    inc bc
    xor l
    ld [bc], a
    nop
    jr nz, @+$21

    add e
    pop bc
    sbc d
    cp a
    and l
    ld a, [bc]
    add e
    and e
    dec bc
    rlca
    ld [bc], a
    ldh a, [rNR10]
    ldh [$95], a
    dec b
    xor [hl]
    ld bc, $0f10
    add h
    ld a, [bc]
    ld c, h
    add h
    cp a
    nop
    ld a, $4a
    rst $38
    nop
    ld bc, $3c42
    xor h
    ld a, [bc]
    ld a, [hl]
    ld [bc], a
    db $fc
    add h
    ld a, b
    db $ed
    rla
    nop
    ld bc, $0289
    cp a
    ld [bc], a
    jr c, jr_042_57af

jr_042_57af:
    ld a, h
    and e
    inc bc
    ld e, h
    adc a
    ld bc, $83e8
    ld [$0232], sp
    nop
    add b
    nop
    sbc [hl]
    dec b
    db $ed
    ld bc, $3844
    db $ec
    xor a
    ld bc, $0304
    sbc l
    inc bc
    add d
    xor l
    ld [bc], a
    jp nz, Jump_042_4005

    add b
    ld bc, $0000
    inc bc
    add e
    add hl, bc
    ld c, d
    add a
    ld a, [bc]
    add h
    xor a
    inc bc
    ld e, [hl]
    and l
    ld a, [bc]
    call nz, $2001
    ret nz

    add e
    inc bc
    db $76
    add e
    add hl, bc
    inc l
    xor [hl]
    ld [$a8a2], sp
    ld [bc], a
    rst $28
    ld bc, $7c82
    sub c
    dec c
    ld a, [de]
    inc bc
    jr nz, @-$3e

    nop
    ldh a, [$ec]
    ld [hl], b
    add e
    inc b
    add a
    and e
    add hl, bc
    ld [hl], e
    adc $0d
    daa
    ld [bc], a
    ld bc, $00fe
    call nz, $150d
    add h
    add hl, bc
    ld [hl], d
    sub b
    dec b
    dec [hl]
    add e
    add hl, bc
    ld b, d
    sub c
    dec b
    jp z, $0103

    cp $44
    jr c, @-$74

    inc b
    halt
    add b
    add l
    dec bc
    ld a, h
    add a
    dec bc
    add h
    inc b
    jr nz, jr_042_584b

    db $10
    rrca
    ld [bc], a
    sub b
    inc b
    adc a
    and a
    dec bc
    call nz, $0400
    add h
    dec bc
    xor c
    ldh a, [$71]
    dec b
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
    bit 6, b
    ld a, $00

jr_042_584b:
    jr z, jr_042_584f

    ld a, $40

jr_042_584f:
    ld [$cf63], a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    call $31f3
    call $0fc8
    call $300b
    ld hl, $ca00
    ld c, $80
    ld de, $ff00

jr_042_586a:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    dec c
    jr nz, jr_042_586a

    ld de, $5c24
    ld hl, $9200
    ld bc, $4209
    call $0eba
    ld de, $4000
    ld hl, $9600
    ld bc, $391d
    call $0eba
    ld de, $7d2e
    ld hl, $9400
    ld bc, $3210
    call $0eba
    ld a, $ff
    ld [$cf64], a
    xor a
    ld [$cf65], a
    call Call_042_5bca
    ld e, l
    ld d, h
    ld hl, $9000
    ld bc, $4210
    call $0eba
    call Call_042_5a95
    xor a
    ld [$cf66], a
    ld hl, $d100
    ld bc, $0100
    xor a
    call $3041
    ld a, $43
    ldh [$c6], a
    call Call_042_5b2c
    call $32f9
    ldh a, [$9e]
    push af
    ld a, $05
    ldh [$9e], a
    ld a, $01
    ldh [$aa], a
    xor a
    ldh [$d4], a
    ld [$cd20], a
    ld [$cd21], a
    ld [$cd22], a

jr_042_58de:
    call Call_042_5908
    call Call_042_58fd
    jr nz, jr_042_58ee

    call Call_042_5926
    call $045a
    jr jr_042_58de

jr_042_58ee:
    call $31f3
    xor a
    ldh [$c6], a
    ldh [$d6], a
    pop af
    ldh [$9e], a
    pop af
    ldh [rSVBK], a
    ret


Call_042_58fd:
    ldh a, [$a4]
    and $01
    ret z

    ld a, [$cf63]
    bit 7, a
    ret


Call_042_5908:
    ldh a, [$a4]
    and $02
    ret z

    ld a, [$cf63]
    bit 6, a
    ret z

    ld hl, $cd20
    ld a, [hl+]
    cp $0d
    jr nc, jr_042_591e

    ld a, [hl+]
    and a
    ret z

jr_042_591e:
    ld hl, $cd22
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret


Call_042_5926:
    ld a, [$cf63]
    and $0f
    ld e, a
    ld d, $00
    ld hl, $5937
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor d
    ld e, c
    ld d, c
    ld e, c
    ld d, c
    ld e, c
    ld e, [hl]
    ld e, c
    ld h, h
    ld e, c
    ld a, e
    ld e, c
    add [hl]
    ld e, c
    ld d, c
    ld e, c
    ld d, c
    ld e, c
    ld d, c
    ld e, c
    ld h, h
    ld e, c
    ld a, e
    ld e, c
    ld d, [hl]
    ld e, c

Jump_042_5951:
    ld hl, $cf63
    inc [hl]
    ret


    ld hl, $cf63
    ld a, [hl]
    and $f0
    ld [hl], a
    ret


    xor a
    ldh [$d4], a
    jp Jump_042_5951


    call Call_042_5bca
    ld a, l
    ld [$cf68], a
    ld a, h
    ld [$cf69], a
    ld a, $00
    ld [$cf6a], a
    ld a, $90
    ld [$cf6b], a
    jr jr_042_597b

jr_042_597b:
    xor a
    ldh [$d4], a
    ld a, $08
    ld [$cf67], a
    jp Jump_042_5951


jr_042_5986:
    ldh a, [rLY]
    cp $30
    jr c, jr_042_5986

    ld a, [$cf66]
    dec a
    dec a
    ld [$cf66], a
    ld hl, $d11f
    call Call_042_59a3
    ld hl, $d187
    call Call_042_59a3
    jp Jump_042_5951


Call_042_59a3:
    ld c, $08

jr_042_59a5:
    ld [hl+], a
    dec c
    jr nz, jr_042_59a5

    ret


    ld hl, $cf63
    bit 7, [hl]
    jp nz, Jump_042_5a62

    ld hl, $cd22
    ld a, [hl]
    and a
    jr z, jr_042_59bd

    dec [hl]
    jp Jump_042_5a62


jr_042_59bd:
    xor a
    ldh [$d4], a
    ld hl, $c504
    ld bc, $00f0
    ld a, $7f
    call $3041

Jump_042_59cb:
jr_042_59cb:
    call Call_042_5a7a
    cp $ff
    jp z, Jump_042_5a65

    cp $fe
    jr z, jr_042_5a55

    cp $fd
    jr z, jr_042_5a20

    cp $fc
    jr z, jr_042_5a32

    cp $fb
    jr z, jr_042_5a39

    cp $fa
    jr z, jr_042_5a4d

    cp $f9
    jr z, jr_042_5a1b

    push af
    ld e, a
    ld d, $00
    ld hl, $6e13
    add hl, de
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop af
    cp $62
    jr z, jr_042_5a05

    cp $48
    jr c, jr_042_5a0a

    ld hl, $c518
    jr jr_042_5a0d

jr_042_5a05:
    ld hl, $c51a
    jr jr_042_5a0d

jr_042_5a0a:
    ld hl, $c518

jr_042_5a0d:
    call Call_042_5a7a
    ld bc, $0028
    call $30fe
    call $1078
    jr jr_042_59cb

jr_042_5a1b:
    call Call_042_5c11
    jr jr_042_59cb

jr_042_5a20:
    call Call_042_5a7a
    ld [$cf65], a
    xor a
    ld [$cf64], a
    call Call_042_5b2c
    call $32f9
    jr jr_042_59cb

jr_042_5a32:
    ld a, $ff
    ld [$cf64], a
    jr jr_042_59cb

jr_042_5a39:
    ld de, $0024
    push de
    ld de, $0000
    call $3b97
    call $045a
    pop de
    call $3b97
    jp Jump_042_59cb


jr_042_5a4d:
    call Call_042_5a7a
    ld [$cd22], a
    jr jr_042_5a62

jr_042_5a55:
    call Call_042_5a7a
    ld [$cd22], a
    xor a
    ldh [$d5], a
    ld a, $01
    ldh [$d4], a

Jump_042_5a62:
jr_042_5a62:
    jp Jump_042_5951


Jump_042_5a65:
    ld hl, $cf63
    set 7, [hl]
    ld a, $20
    ld [$c2a7], a
    ld a, $5c
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    ret


Call_042_5a7a:
    push hl
    push de
    ld a, [$cd20]
    ld e, a
    ld a, [$cd21]
    ld d, a
    ld hl, $6cb4
    add hl, de
    inc de
    ld a, e
    ld [$cd20], a
    ld a, d
    ld [$cd21], a
    ld a, [hl]
    pop de
    pop hl
    ret


Call_042_5a95:
    xor a
    ldh [$d4], a
    ld a, $0c
    ldh [$d6], a
    ld a, $28
    ld hl, $c4a0
    ld bc, $0168
    call $3041
    ld a, $7f
    ld hl, $c4f0
    ld bc, $0118
    call $3041
    ld hl, $c4f0
    ld a, $24
    call Call_042_5b1d
    ld hl, $c5f4
    ld a, $20
    call Call_042_5b1d
    ld hl, $cdd9
    ld bc, $0050
    xor a
    call $3041
    ld hl, $ce29
    ld bc, $0014
    ld a, $01
    call $3041
    ld hl, $ce3d
    ld bc, $00f0
    ld a, $02
    call $3041
    ld hl, $cf2d
    ld bc, $0014
    ld a, $01
    call $3041
    call $3200
    xor a
    ldh [$d4], a
    ldh [$d6], a
    ld hl, $c4a0
    call Call_042_5aff
    call $3200
    ret


Call_042_5aff:
    ld b, $05

jr_042_5b01:
    push hl
    ld de, $0011
    ld c, $04
    xor a

jr_042_5b08:
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    add hl, de
    dec c
    jr nz, jr_042_5b08

    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_042_5b01

    ret


Call_042_5b1d:
    ld c, $05

jr_042_5b1f:
    push af
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    pop af
    dec c
    jr nz, jr_042_5b1f

    ret


Call_042_5b2c:
    call Call_042_5b37
    push hl
    ld a, $00
    call Call_042_5b49
    pop hl
    ret


Call_042_5b37:
    ld a, [$cf65]
    and $03
    add a
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $5b6a
    add hl, de
    add hl, de
    add hl, de
    ret


Call_042_5b49:
    push af
    push hl
    add $00
    ld e, a
    ld a, $00
    adc $d0
    ld d, a
    ld bc, $0018
    call $3026
    pop hl
    pop af
    add $80
    ld e, a
    ld a, $00
    adc $d0
    ld d, a
    ld bc, $0018
    call $3026
    ret


    rra
    ld a, h
    ccf
    inc bc
    bit 7, l
    rst $20
    inc e
    cp a
    inc d
    bit 7, l
    bit 7, l
    rst $38
    ld a, a
    cp a
    inc d
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    inc bc
    jp c, $e77c

    inc e
    and e
    ld a, l
    inc d
    ld h, b
    jp c, $ff7c

    ld a, a
    and e
    ld a, l
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    sub a
    ld [hl], c
    rst $18
    ld [bc], a
    rst $20
    inc e
    add e
    ld [bc], a
    rst $18
    ld [bc], a
    rst $18
    ld [bc], a
    rst $38
    ld a, a
    add e
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld a, l
    rra
    inc h
    rst $20
    inc e
    rst $18
    ld bc, $241f
    rra
    inc h
    rst $38
    ld a, a
    rst $18
    ld bc, $7fff
    rst $38
    ld a, a
    rst $38
    ld a, a

Call_042_5bca:
    ld hl, $cf64
    ld a, [hl]
    cp $ff
    jr z, jr_042_5bed

    and $03
    ld e, a
    inc a
    and $03
    ld [hl], a
    ld a, [$cf65]
    and $03
    add a
    add a
    add e
    add a
    ld e, a
    ld d, $00
    ld hl, $5bf1
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_042_5bed:
    ld hl, $ca00
    ret


    or h
    ld e, h
    or h
    ld e, l
    or h
    ld e, [hl]
    or h
    ld e, a
    or h
    ld h, b
    or h
    ld h, c
    or h
    ld h, d
    or h
    ld h, e
    or h
    ld h, h
    or h
    ld h, l
    or h
    ld h, [hl]
    or h
    ld h, a
    or h
    ld l, b
    or h
    ld l, c
    or h
    ld l, d
    or h
    ld l, e

Call_042_5c11:
    ld a, $40
    ld hl, $c55a
    call Call_042_5c1c
    ld hl, $c56e

Call_042_5c1c:
    ld c, $08

jr_042_5c1e:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_042_5c1e

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
    inc bc
    nop
    rla
    nop
    xor a
    nop
    ld a, [hl+]
    nop
    ld d, a
    nop
    cpl
    nop
    rra
    nop
    xor a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    and b
    nop
    call nc, $fa00
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
    nop
    nop
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    jp hl


    nop
    call nc, $af00
    nop
    rla
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
    nop
    rst $38
    nop
    ld a, a
    nop
    xor a
    nop
    rra
    nop
    cpl
    nop
    ld d, a
    nop
    ld a, [hl+]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$d400]
    nop
    and b
    nop
    nop
    nop
    call nc, $e900
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    nop
    nop
    nop
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
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    ld hl, sp+$7f
    ldh [rP1], a
    rst $38
    ld bc, $0fff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    add b
    inc e
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    ccf
    db $fc
    ld a, a
    db $fc
    rst $18
    db $fc
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $3f
    rst $20
    ccf
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    cp $0f
    cp $03
    rst $38
    ld bc, $01ff
    ld hl, sp+$1f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    cp $03
    cp $01
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
    rst $30
    nop
    db $e3
    nop
    inc hl
    nop
    or a
    add b
    ld a, a
    ldh [$1f], a
    rst $38
    rra
    cp $3f
    db $e4
    rst $38
    ld bc, $01ff
    cp $03
    db $fc
    rlca
    ld hl, sp+$5f
    ldh a, [$bf]
    ldh a, [$1f]
    ldh a, [$1f]
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
    ld bc, $03ff
    cp $03
    cp $01
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
    ret nz

    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    db $10
    rst $28
    cp a
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    and $7f
    cp $ff
    rst $30
    ld a, a
    ei
    rst $08
    ei
    adc a
    ldh a, [$1f]
    ldh [rIE], a
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
    rra
    rst $38
    ccf
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $3f
    cp $7f
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
    ld bc, $01ff
    rst $38
    inc bc
    cp $3f
    ldh a, [$1f]
    rst $30
    rra
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    jr nz, @+$01

    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rrca
    cp $03
    rst $38
    ld bc, $cffc
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp+$3f
    ldh a, [$7f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    inc bc
    cp $03
    cp $03
    cp $01
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
    ld b, b
    rst $30
    nop
    db $e3
    nop
    inc hl
    nop
    or a
    add b
    ld a, a
    ldh [$1f], a
    rst $38
    rra
    cp $ff
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$5f
    ldh a, [$bf]
    ldh a, [$1f]
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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    db $e4
    ld a, a
    ret nz

    ld a, a
    pop bc
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    rrca
    ei
    adc $31
    rst $38
    ldh a, [$1f]
    and $7f
    rst $38
    rst $38
    db $e3
    ld a, a
    pop af
    rst $38
    ldh a, [$9f]
    ldh [$3f], a
    ret nz

    rst $38
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
    inc bc
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rra
    cp $1f
    ld hl, sp+$0f
    rst $38
    rra
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    ld a, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    cp $7f
    cp $0f
    db $fc
    rra
    ld hl, sp+$3f
    ldh a, [rIE]
    ldh [rIE], a
    inc bc
    cp $03
    cp $03
    cp $03
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    jr nz, @+$01

    ld b, b
    rst $30
    nop
    db $e3
    nop
    inc hl
    nop
    or a
    add b
    ld a, a
    ldh [$1f], a
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp $03
    db $fc
    rlca
    ld hl, sp+$5f
    ldh a, [$bf]
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
    rra
    cp $3f
    db $e4
    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    ret nz

    ccf
    ld sp, hl
    rra
    or $1f
    rst $38
    ldh a, [$1f]
    rst $30
    rra
    rst $28
    ld a, a
    di
    rst $38
    ldh [$3f], a
    ldh [rIE], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
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
    rra
    rst $38
    ccf
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $3f
    cp $7f
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
    ld bc, $01ff
    rst $38
    inc bc
    cp $3f
    ldh a, [$1f]
    rst $30
    rra
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    jr nz, @+$01

    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rrca
    cp $03
    rst $38
    ld bc, $cffc
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp+$3f
    ldh a, [$7f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    inc bc
    cp $03
    cp $03
    cp $01
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
    ld b, b
    rst $30
    nop
    db $e3
    nop
    inc hl
    nop
    or a
    add b
    ld a, a
    ldh [$1f], a
    rst $38
    rra
    cp $ff
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$5f
    ldh a, [$bf]
    ldh a, [$1f]
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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    db $e4
    ld a, a
    ret nz

    ld a, a
    pop bc
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    rrca
    ei
    adc $31
    rst $38
    ldh a, [$1f]
    and $7f
    rst $38
    rst $38
    db $e3
    ld a, a
    pop af
    rst $38
    ldh a, [$9f]
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b

jr_042_60ad:
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rra
    di
    rst $38
    ld hl, sp-$01
    ld b, $ff
    ret nz

    ccf
    ld hl, sp-$01
    ret nz

    nop
    rst $38
    jr nc, @+$01

    ld a, b
    rst $08
    rst $38
    sbc a
    rst $38
    ld h, b
    rst $38
    add e
    db $fc
    rra
    rst $38
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    rrca
    ld hl, sp+$07
    db $fc
    rrca
    ei
    rrca
    ld hl, sp+$1f
    pop af
    rra
    pop af
    rst $38
    db $10
    rst $38
    ld hl, $21ff
    cp $3f
    ret c

    db $db
    xor h
    xor l
    inc a
    cp l
    jr jr_042_60ad

    rst $38
    ld [$04ff], sp
    rst $38
    add h
    rst $38
    db $fc
    dec de
    db $db
    dec l
    xor l
    inc a
    cp l
    jr @-$65

    ret nz

    rst $38
    ldh [$3f], a
    ldh a, [$1f]
    ldh [$3f], a
    ldh a, [$df]
    ldh a, [$1f]
    ld hl, sp-$71
    ld hl, sp-$71
    rra
    pop af
    rrca
    ld sp, hl
    rrca
    ld hl, sp+$07
    rst $38
    inc bc
    cp $07
    db $fc
    rlca
    db $fc
    inc bc
    rst $38
    rlca
    rst $00
    rrca
    ld hl, sp-$71
    ei
    rst $08
    ld a, c
    rst $30
    db $fc
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld b, b
    ldh [$e3], a
    ldh a, [$1f]
    pop af
    rst $18
    di
    sbc [hl]
    rst $28
    ccf
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld [bc], a
    ld hl, sp-$71
    ldh a, [$9f]
    ldh a, [$1f]
    ldh [rIE], a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    ld b, a
    ld hl, sp+$30
    rst $38
    ld a, b
    rst $08
    ld a, h
    rst $00
    ccf
    rst $20
    jr @+$01

    nop
    rst $38
    rst $38
    inc bc
    ld [c], a
    rra
    inc c
    rst $38
    ld e, $f3
    ld a, $e3
    db $fc
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_042_61ab:
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    rra
    di
    rst $38
    ld hl, sp-$01
    ld b, $ff
    ret nz

    ccf
    ld hl, sp-$01
    ret nz

    rst $38
    db $10
    jr nc, @+$01

    ld a, b
    rst $08
    rst $38
    sbc a
    rst $38
    ld h, b
    rst $38
    add e
    db $fc
    rra
    rst $38
    inc bc
    rst $38
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rlca
    db $fc
    rrca
    ld hl, sp+$07
    db $fc
    rrca
    ei
    rrca
    ld hl, sp+$1f
    pop af
    rra
    pop af
    rra
    pop af
    rst $38
    ld hl, $21ff
    cp $3f
    ret c

    db $db
    xor h
    xor l
    inc a
    cp l
    jr jr_042_61ab

    inc bc
    rst $00
    rst $38
    inc b
    rst $38
    add h
    rst $38
    db $fc
    dec de
    db $db
    dec l
    xor l
    inc a
    cp l
    jr @-$65

    ret nz

    db $e3
    ldh [$3f], a
    ldh a, [$1f]
    ldh [$3f], a
    ldh a, [$df]
    ldh a, [$1f]
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rlca
    cp $07
    db $fc
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    rlca
    db $fc
    adc a
    ei
    rst $08
    ld sp, hl
    rst $30
    ld a, l
    rst $38
    ld c, $ff
    ld bc, $80ff
    ld a, a
    ret nz

    ldh [$3f], a
    pop af
    rst $18
    di
    sbc a
    rst $28
    cp [hl]
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    ld bc, $03fe
    ldh a, [$9f]
    ldh a, [$9f]
    ldh [$7f], a
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    ldh a, [$e0]
    ccf
    ldh [$3f], a
    ld hl, sp+$1f
    rst $30
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    rrca
    rlca
    db $fc
    rlca
    db $fc
    rra
    ld hl, sp-$11
    ld sp, hl
    ld b, $ff
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
    add b
    rst $38
    nop

jr_042_62ad:
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rra
    di
    rst $38
    ld hl, sp-$01
    ld b, $ff
    ret nz

    ccf
    ld hl, sp-$01
    ret nz

    nop
    rst $38
    jr nc, @+$01

    ld a, b
    rst $08
    rst $38
    sbc a
    rst $38
    ld h, b
    rst $38
    add e
    db $fc
    rra
    rst $38
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    rrca
    ld hl, sp+$07
    db $fc
    rrca
    ei
    rrca
    ld hl, sp+$1f
    pop af
    rra
    pop af
    rst $38
    db $10
    rst $38
    ld hl, $21ff
    cp $3f
    ret c

    db $db
    xor h
    xor l
    inc a
    cp l
    jr jr_042_62ad

    rst $38
    ld [$04ff], sp
    rst $38
    add h
    rst $38
    db $fc
    dec de
    db $db
    dec l
    xor l
    inc a
    cp l
    jr @-$65

    ret nz

    rst $38
    ldh [$3f], a
    ldh a, [$1f]
    ldh [$3f], a
    ldh a, [$df]
    ldh a, [$1f]
    ld hl, sp-$71
    ld hl, sp-$71
    rra
    pop af
    rrca
    ld sp, hl
    rrca
    ld hl, sp+$07
    rst $38
    inc bc
    cp $07
    db $fc
    rlca
    db $fc
    inc bc
    rst $38
    rlca
    rst $00
    rrca
    ld hl, sp-$71
    ei
    rst $08
    ld a, c
    rst $30
    db $fc
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld b, b
    ldh [$e3], a
    ldh a, [$1f]
    pop af
    rst $18
    di
    sbc [hl]
    rst $28
    ccf
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld [bc], a
    ld hl, sp-$71
    ldh a, [$9f]
    ldh a, [$1f]
    ldh [rIE], a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    ld b, a
    ld hl, sp+$30
    rst $38
    ld a, b
    rst $08
    ld a, h
    rst $00
    ccf
    rst $20
    jr @+$01

    nop
    rst $38
    rst $38
    inc bc
    ld [c], a
    rra
    inc c
    rst $38
    ld e, $f3
    ld a, $e3
    db $fc
    rst $20
    jr @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rra
    di
    rst $38
    ld hl, sp-$01
    ld b, $ff
    ret nz

    ccf
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld a, b
    rst $08
    rst $38
    sbc a
    rst $38
    ld h, b
    rst $38
    add e
    db $fc
    rra
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    rrca
    ld hl, sp+$07
    db $fc
    rrca
    ei
    rrca
    ld hl, sp+$1f
    pop af
    rst $38
    ret nz

    rst $38
    db $10
    rst $38
    ld hl, $21ff
    cp $3f
    ret nz

    jp $9998


    inc l
    xor l
    rst $38
    inc bc
    rst $38
    ld [$04ff], sp
    rst $38
    add h
    rst $38
    db $fc
    inc bc
    jp $9919


    inc l
    xor l
    nop
    rst $38
    ret nz

    rst $38
    ldh [$3f], a
    ldh a, [$1f]
    ldh [$3f], a
    ldh a, [$df]
    ldh a, [$1f]
    ld hl, sp-$71
    rra
    pop af
    rra
    pop af
    rrca
    ld sp, hl
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    cp l
    dec de
    db $db
    rlca
    db $fc
    adc a

jr_042_644b:
    ld a, [$79cf]
    rst $30
    inc a
    rst $38
    rst $08
    rst $38
    add b
    inc a
    cp l
    ret c

    db $db
    ldh [$3f], a
    pop af
    ld e, a
    di
    sbc [hl]
    rst $28
    inc a
    rst $38
    di
    rst $38
    ld bc, $8ff8
    ld hl, sp-$71
    ldh a, [$9f]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
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
    rst $38
    nop
    rst $38
    db $10
    rst $20
    jr c, jr_042_644b

    rst $38
    jr nz, @+$01

    inc a
    rst $38
    ccf
    db $e3
    inc e
    rst $38
    rst $38
    nop
    rst $38
    ld [$1ce7], sp
    inc bc
    rst $38
    inc b
    rst $38
    inc a
    rst $38
    db $fc
    rst $00
    jr c, @+$01

    add b
    rst $38
    add b
    rst $38
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
    inc b
    db $fc
    inc c
    ld hl, sp+$1e
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$87], a
    rst $38
    rst $08
    ld a, b
    ld a, a
    jr nc, jr_042_658a

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ld a, a
    ldh [$3f], a
    rra
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_042_658a:
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
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$3f]
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
    ld b, $ff
    rra
    ld sp, hl
    ccf
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    nop
    rst $38
    nop
    rst $38
    add a
    rst $38
    ld sp, hl
    ld a, b
    pop hl
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [$7f], a
    ldh a, [$1f]
    db $fc
    rrca
    rst $38
    inc bc
    rst $38
    nop
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
    ldh [rIE], a
    ldh a, [$1f]
    ld hl, sp+$0f
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$01
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rlca
    rrca
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [rIF]
    rst $38
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
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop

Call_042_6698:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    db $fc
    rlca
    ld hl, sp-$01
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
    inc bc
    rst $38
    rlca
    db $fc
    sbc h
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop af
    rst $38
    rst $38
    ld c, $3f
    nop
    ccf
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$61
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$fc], a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$fe], a
    inc bc
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ccf
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    rst $38
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
    nop
    rst $38
    rlca
    ld hl, sp-$01
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
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIE]
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
    ld bc, $03ff
    cp $e3
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld hl, sp+$0f
    db $fc
    rlca
    db $fc
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $07
    db $fc
    rlca
    db $fc
    ld bc, $03ff
    cp $0e
    db $fc
    ld a, [hl]
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    sbc a
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    rlca
    db $fc
    inc bc
    cp $03
    cp $03
    cp $03
    cp $07
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp-$01
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
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
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    rrca
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
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
    nop
    rst $38
    ld a, $c1
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [rIE], a
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
    ld bc, $03ff
    cp $1f
    db $fc
    ccf
    db $e4
    ld a, a
    jp nz, $c07f

    ccf
    ldh a, [rP1]
    rst $38
    ret nz

    rst $38
    ldh [$3f], a
    db $fc
    rra
    cp $13
    rst $38
    ld hl, $01ff

jr_042_68e2:
    cp $07
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
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $07
    db $fc
    rlca
    db $fc
    ld a, [hl]
    pop bc
    db $fd
    add d
    ei
    inc b
    ld a, [$fb05]
    inc b
    db $fc
    inc bc
    rst $38
    jr c, jr_042_68e2

    ld c, h
    ld a, a
    add c
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    ld c, $f3
    inc de
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $0f
    ld hl, sp+$0f
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    rst $08
    ld c, h
    rst $30
    ld a, h
    rst $28
    jr c, @+$01

    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    di
    inc de
    db $fd
    rra
    ei
    ld c, $ff
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$7f]
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
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $06ff
    ld sp, hl
    rra
    ldh [rIE], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rrca
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh a, [$7f]
    pop de
    ld a, a
    ret z

    ld a, a
    ldh [rP1], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$71
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
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
    ld bc, $03ff
    cp $03
    cp $07
    db $fc
    rlca
    db $fc
    rrca
    db $fc
    dec bc
    ld a, [$b0cf]
    cp a
    ld b, b
    ld e, a
    and b
    cpl
    ret nc

    ld l, a
    sub b
    sbc a
    ld h, b
    rst $38
    rlca
    ld sp, hl
    add hl, bc
    cp $03
    rst $38
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
    add b
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    dec bc
    ld a, [$fe0f]
    rrca
    db $fc
    rrca
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    ld sp, hl
    add hl, bc
    cp $0f
    db $fd
    rlca
    rst $38
    ldh [$bf], a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, $ff
    ld bc, $01ff
    rst $38
    ld c, $ff
    ld bc, $3fe0
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
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
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $30
    inc a
    jp $c0ff


    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $1f
    db $fc
    ccf
    db $e4
    ld a, a
    jp nz, $c07f

    ccf
    ldh a, [rP1]
    rst $38
    ret nz

    rst $38
    ldh [$3f], a
    db $fc
    rra
    cp $13
    rst $38
    ld hl, $01ff
    cp $07
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
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $07
    db $fc
    rlca
    db $fc
    ld a, a
    ret nz

    rst $38
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
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $0f
    ld a, [$f80f]
    rlca
    rst $38
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
    nop
    rst $38
    ld bc, $02ff
    rst $38
    add d
    rst $38

jr_042_6b55:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_042_6b55

    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ld hl, sp+$2f
    ld hl, sp+$0f
    ldh a, [$7f]
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
    ld a, a
    jp nz, $f13f

    rrca
    db $fc
    rlca
    rst $38
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    rst $38
    ld hl, $27fe
    ld hl, sp-$21
    ldh [rIE], a
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    rrca
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$00
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$71
    db $fc
    add a
    cp $87
    rst $38
    ld b, l
    rst $38
    add hl, bc
    rst $38
    inc bc
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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $3f
    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $fe
    ld bc, $02fd
    ld a, [$fb05]
    inc b
    db $fc
    inc bc
    rst $38
    ld [hl], b
    rst $08
    ret z

    add b
    rst $38
    ret nz

    ld a, a
    ld h, b
    cp a
    ld h, b
    cp a
    ld [hl], b
    sbc a
    ldh a, [$1f]
    ld hl, sp+$1f
    add sp, $2f
    inc bc
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    cp b
    ld a, a
    ret nz

    rst $08
    ret z

    cp a
    ld hl, sp-$21
    ld [hl], b
    rst $38
    inc bc
    cp $03
    cp $01
    rst $38
    nop
    rst $38
    nop
    add sp, $2f
    ld hl, sp+$3f
    ld hl, sp+$1f
    ld hl, sp-$71
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    and b
    rst $38
    sbc b
    rst $30
    sbc [hl]
    ld h, e
    rst $38
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rIE]
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
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
    db $fc
    ld c, b
    ld bc, $08fe
    ei
    ld a, [$fe0a]
    ld bc, $00fd
    ld c, c
    ld bc, $0200
    cp $0c
    ld c, d
    ld bc, $0201
    cp $0c
    ld c, e
    nop
    inc b
    ld bc, $0227
    jr z, @+$05

    add hl, hl
    inc b
    cp $0c
    ld c, e
    nop
    inc bc
    ld bc, $0202
    dec b
    inc bc
    cp $0c
    ld c, h
    ld bc, $0206
    cp $0c
    ld c, l
    nop
    ld b, $01
    rlca
    ld [bc], a
    inc bc
    inc bc
    dec c
    inc b
    ld a, [bc]
    dec b
    cp $0c
    ld c, l
    nop
    ld [$0901], sp
    ld [bc], a
    dec bc
    inc bc
    cp $0c
    ld e, h
    ld bc, $020d
    inc c
    inc bc
    cp $0c
    db $fc
    cp $01
    db $fd
    ld bc, $004e
    dec c
    ld bc, $020c
    ld c, $03
    ld [bc], a
    inc b
    cp $0c
    ld c, a
    nop
    ld bc, $1001
    ld [bc], a
    rrca
    inc bc
    cp $0c
    ld d, b
    nop
    db $10
    ld bc, $0201
    ld [bc], a
    inc bc
    cp $0c
    ld d, c
    nop
    ld bc, $0301
    ld [bc], a
    ld de, $fe03
    inc c
    ld d, c
    nop
    rla
    ld bc, $022a
    ld [de], a
    inc bc
    cp $0c
    ld d, d
    nop
    ld bc, $1101
    ld [bc], a
    inc de
    inc bc
    ld [de], a
    inc b
    cp $0c
    ld e, l
    ld bc, $0213
    cp $0c
    ld d, e
    ld bc, $0204
    dec b
    inc bc
    cp $0c
    ld d, h
    ld bc, $0211
    cp $0c
    db $fc
    cp $01
    db $fd
    ld [bc], a
    ld d, l
    ld bc, $0217
    dec d
    inc bc
    cp $0c
    ld d, [hl]
    ld bc, $0217
    ld d, $03
    cp $0c
    ld d, a
    nop
    rla
    ld bc, $0211
    dec d
    inc bc
    cp $0c
    ld h, c
    ld bc, $0225
    cp $0c
    ld e, d
    nop
    inc d
    ld bc, $0239
    ld a, [hl-]
    inc bc
    cp $0c
    ld e, d
    ld bc, $0220
    cp $0c
    db $fc
    cp $01
    db $fd
    inc bc
    ld h, e
    ld [bc], a
    cp $09
    ld h, h
    ld bc, $023b
    ld b, d
    inc bc
    cp $0c
    ld h, h
    ld bc, $0201
    dec a
    inc bc
    cp $0c
    ld h, h
    ld bc, $023e
    ccf
    inc bc
    cp $0c
    ld h, l
    ld bc, $023c
    cp $0c
    ld c, e
    ld bc, $0243
    ld b, h
    inc bc
    cp $0c
    ld h, [hl]
    ld bc, $0240
    ld b, c
    inc bc
    cp $0c
    ld e, b
    nop
    cpl
    ld bc, $0cfe
    ld e, b
    nop
    jr nc, @+$03

    ld sp, $3202
    inc bc
    inc sp
    inc b
    cp $0c
    ld e, b
    nop
    jr jr_042_6de4

    ld [hl+], a

jr_042_6de4:
    ld [bc], a
    inc hl
    inc bc
    inc [hl]
    inc b
    cp $0c
    ld e, c
    nop
    ld b, l
    ld bc, $021a
    cp $0c
    ld e, c
    nop
    dec [hl]
    ld bc, $0236
    ld h, $03
    cp $0c
    ld e, c
    nop
    scf
    ld bc, $0238
    cp $0c
    ld e, e
    ld bc, $0221
    cp $0c
    ld h, d
    ld bc, $09fe
    ld sp, hl
    cp $14
    rst $38
    pop hl
    ld l, [hl]
    di
    ld l, [hl]
    dec b
    ld l, a
    jr jr_042_6e8a

    dec hl
    ld l, a
    dec a
    ld l, a
    ld c, [hl]
    ld l, a
    ld e, a
    ld l, a
    ld [hl], d
    ld l, a
    add h
    ld l, a
    sub h
    ld l, a
    and l
    ld l, a
    or a
    ld l, a
    rst $00
    ld l, a
    jp c, $ec6f

    ld l, a
    db $fc
    ld l, a
    dec c
    ld [hl], b
    ld e, $70
    ld sp, $4570
    ld [hl], b
    ld d, [hl]
    ld [hl], b
    ld h, a
    ld [hl], b
    ld a, c
    ld [hl], b
    adc d
    ld [hl], b
    sbc a
    ld [hl], b
    xor a
    ld [hl], b
    cp a
    ld [hl], b
    pop de
    ld [hl], b
    db $e3
    ld [hl], b
    or $70
    ld [$1b71], sp
    ld [hl], c
    cpl
    ld [hl], c
    ld b, d
    ld [hl], c
    ld d, d
    ld [hl], c
    ld h, e
    ld [hl], c
    ld [hl], l
    ld [hl], c
    add a
    ld [hl], c
    sbc c
    ld [hl], c
    xor e
    ld [hl], c
    cp h
    ld [hl], c
    rst $08
    ld [hl], c
    rst $18
    ld [hl], c
    rst $28
    ld [hl], c
    rst $38
    ld [hl], c
    db $10
    ld [hl], d
    ld hl, $5972
    ld [hl], d
    ld l, e
    ld [hl], d
    ld a, l
    ld [hl], d
    adc a
    ld [hl], d
    and d
    ld [hl], d
    or d
    ld [hl], d
    jp $d372


    ld [hl], d
    and $72
    ld a, [$0c72]
    ld [hl], e
    ld a, [hl-]

jr_042_6e8a:
    ld [hl], e
    ld c, d
    ld [hl], e
    ld e, e
    ld [hl], e
    ld l, h
    ld [hl], e
    ld a, a
    ld [hl], e
    sub d
    ld [hl], e
    and h
    ld [hl], e
    or l
    ld [hl], e
    add $73
    ret c

    ld [hl], e
    ld [$1f73], a
    ld [hl], e
    dec hl
    ld [hl], e
    db $fd
    ld [hl], e
    daa
    ld [hl], h
    ld [hl], $74
    ld b, [hl]
    ld [hl], h
    ld d, [hl]
    ld [hl], h
    ld l, c
    ld [hl], h
    ld a, e
    ld [hl], h
    adc l
    ld [hl], h
    sbc d
    ld [hl], h
    xor e
    ld [hl], h
    cp e
    ld [hl], h
    call z, $df74
    ld [hl], h
    ld a, [c]
    ld [hl], h
    inc bc
    ld [hl], l
    dec d
    ld [hl], l
    dec h
    ld [hl], l
    scf
    ld [hl], l
    ld c, c
    ld [hl], l
    ld e, b
    ld [hl], l
    ld l, h
    ld [hl], l
    ld a, h
    ld [hl], l
    adc d
    ld [hl], l
    sbc [hl]
    ld [hl], l
    or c
    ld [hl], l
    push bc
    ld [hl], l
    rra
    db $76
    sub $75
    jp hl


    ld [hl], l
    ei
    ld [hl], l
    ld c, $76
    ld a, a
    ld a, a
    ld a, a
    sub d
    add b
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sub e
    add b
    adc c
    adc b
    sub c
    adc b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    adc c
    sub h
    adc l
    adc b
    add d
    add a
    adc b
    ld a, a
    adc h
    add b
    sub d
    sub h
    add e
    add b
    ld d, b
    ld a, a
    ld a, a
    sub e
    add h
    sub e
    sub d
    sub h
    sbc b
    add b
    ld a, a
    sub [hl]
    add b
    sub e
    add b
    adc l
    add b
    add c
    add h
    ld d, b
    ld a, a
    ld a, a
    sub d
    add a
    adc b
    add [hl]
    add h
    adc d
    adc b
    ld a, a
    adc h
    adc [hl]
    sub c
    adc b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub d
    adc [hl]
    sub h
    sub d
    sub h
    adc d
    add h
    ld a, a
    sub e
    add b
    adc h
    add b
    add e
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub e
    add b
    adc d
    add h
    adc l
    adc [hl]
    sub c
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc d
    add h
    adc l
    ld a, a
    sub d
    sub h
    add [hl]
    adc b
    adc h
    adc [hl]
    sub c
    adc b
    ld d, b
    ld a, a
    adc h
    adc [hl]
    sub e
    adc [hl]
    add l
    sub h
    adc h
    adc b
    ld a, a
    add l
    sub h
    adc c
    adc b
    sub [hl]
    add b
    sub c
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    add b
    sub e
    sub d
    sub h
    adc d
    adc [hl]
    ld a, a
    adc l
    adc b
    sub d
    add a
    adc b
    add e
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    sub h
    adc l
    add h
    adc [hl]
    ld a, a
    sub d
    add b
    adc b
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    add b
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub c
    add h
    adc l
    add b
    ld a, a
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc c
    sub h
    adc l
    ld a, a
    adc [hl]
    adc d
    sub h
    sub e
    add b
    adc l
    adc b
    ld d, b
    ld a, a
    ld a, a
    add a
    adc b
    sub c
    adc [hl]
    adc l
    adc [hl]
    add c
    sub h
    ld a, a
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    add e
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    add b
    sub d
    sub h
    adc d
    add b
    ld a, a
    adc b
    sub [hl]
    add b
    sub d
    add a
    adc b
    sub e
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add [hl]
    adc [hl]
    ld a, a
    adc b
    add d
    add a
    adc b
    adc l
    adc [hl]
    sub d
    add h
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    adc h
    adc [hl]
    sub c
    adc b
    adc d
    add b
    sbc c
    sub h
    ld a, a
    add b
    adc [hl]
    adc d
    adc b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    adc d
    adc [hl]
    add a
    adc c
    adc b
    ld a, a
    adc l
    adc b
    sub d
    add a
    adc b
    adc l
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    adc d
    add h
    adc l
    adc c
    adc b
    ld a, a
    adc h
    add b
    sub e
    sub d
    sub h
    sub d
    add a
    adc b
    adc h
    add b
    ld d, b
    sub e
    adc [hl]
    sub d
    add a
    adc b
    adc l
    adc [hl]
    add c
    sub h
    ld a, a
    adc h
    add b
    sub e
    sub d
    sub h
    adc h
    adc b
    sbc b
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    add b
    sub e
    adc [hl]
    sub c
    sub h
    ld a, a
    adc b
    sub [hl]
    add b
    sub e
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    adc l
    adc [hl]
    add c
    sub h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    sub d
    add h
    sbc b
    add b
    ld d, b
    ld a, a
    ld a, a
    adc d
    add b
    sbc c
    sub h
    add a
    adc b
    sub e
    adc [hl]
    ld a, a
    sub d
    add h
    adc d
    adc b
    adc l
    add h
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub e
    add h
    sub e
    sub d
    sub h
    adc c
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    adc l
    add d
    adc e
    ld a, a
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc [hl]
    ld a, a
    add d
    adc e
    sub h
    add c
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    add b
    sub c
    sub h
    add [hl]
    add b
    adc d
    sub h
    add d
    add a
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add b
    adc d
    adc b
    sub e
    adc [hl]
    ld a, a
    adc h
    adc [hl]
    sub c
    adc b
    ld d, b
    ld a, a
    ld a, a
    sub e
    add b
    adc d
    add b
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    add a
    add b
    sub c
    add b
    add e
    add b
    ld d, b
    ld a, a
    ld a, a
    sub e
    adc [hl]
    add a
    sub c
    sub h
    ld a, a
    add a
    add b
    sub d
    add a
    adc b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    adc l
    adc [hl]
    add c
    adc [hl]
    sub c
    sub h
    ld a, a
    adc h
    add b
    sub e
    sub d
    sub h
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    sub e
    add b
    adc d
    add h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc b
    sbc c
    sub h
    sub d
    add a
    adc b
    ld d, b
    ld a, a
    sub e
    add b
    adc d
    add b
    sub d
    add a
    adc b
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld a, a
    sub e
    sub d
    sub h
    adc l
    add h
    adc d
    add b
    sbc c
    sub h
    ld a, a
    adc b
    sub d
    add a
    adc b
    add a
    add b
    sub c
    add b
    ld d, b
    ld a, a
    ld a, a
    add a
    adc b
    sub c
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sbc b
    add b
    adc h
    add b
    sub h
    add d
    add a
    adc b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc d
    add h
    adc l
    adc c
    adc b
    ld a, a
    sub d
    add b
    adc b
    adc d
    adc b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add b
    sub e
    sub d
    sub h
    sub d
    add a
    adc b
    ld a, a
    sub e
    add b
    add e
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    adc l
    add b
    adc [hl]
    adc d
    adc [hl]
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    adc d
    add b
    adc h
    adc b
    ld d, b
    ld a, a
    ld a, a
    add a
    adc b
    sub c
    adc [hl]
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    sbc c
    adc b
    adc l
    adc l
    add b
    adc b
    ld d, b
    ld a, a
    ld a, a
    adc d
    sub h
    adc l
    adc b
    adc h
    adc b
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    add a
    adc b
    sub d
    add b
    sub d
    add a
    adc b
    ld a, a
    sub d
    adc [hl]
    add [hl]
    add b
    add c
    add h
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc d
    add h
    adc b
    sub e
    add b
    ld a, a
    adc d
    add b
    add [hl]
    add b
    sbc b
    add b
    ld d, b
    ld a, a
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    adc l
    adc [hl]
    sub c
    adc b
    ld a, a
    adc h
    add b
    sub e
    sub d
    sub h
    add e
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add a
    adc b
    sub e
    adc [hl]
    adc h
    adc b
    ld a, a
    sub d
    add b
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub e
    adc [hl]
    sub c
    sub h
    ld a, a
    adc [hl]
    sub d
    add b
    sub [hl]
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub e
    add b
    adc d
    add b
    adc [hl]
    ld a, a
    adc [hl]
    add a
    add b
    sub c
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sbc b
    sub h
    adc b
    add d
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc b
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub e
    add b
    adc d
    add b
    adc [hl]
    ld a, a
    sub d
    add a
    adc b
    adc h
    adc b
    sbc c
    sub h
    ld d, b
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld a, a
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
    ld c, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc a
    adc e
    add b
    adc l
    adc l
    adc b
    adc l
    add [hl]
    ld c, [hl]
    ld a, a
    jp hl


    ld a, a
    add e
    add h
    sub l
    add h
    adc e
    adc [hl]
    adc a
    adc h
    add h
    adc l
    sub e
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, $50
    ld a, a
    ld a, a
    ld a, a
    adc d
    add h
    adc b
    sub e
    add b
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, a
    ld a, a
    add a
    adc b
    sub c
    adc [hl]
    sub e
    add b
    adc d
    add b
    ld a, a
    sub h
    add h
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    add a
    adc b
    sub c
    adc [hl]
    add b
    adc d
    adc b
    ld a, a
    sub e
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, a
    adc l
    adc [hl]
    sub c
    adc b
    add b
    adc d
    adc b
    ld a, a
    sub d
    add b
    adc d
    add b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    adc b
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    sub d
    add b
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    add [hl]
    add b
    adc d
    sub h
    sbc c
    adc b
    ld a, a
    adc l
    adc [hl]
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add b
    adc b
    ld a, a
    adc h
    add b
    sub d
    add a
    adc b
    adc h
    add b
    ld d, b
    ld a, a
    adc h
    adc b
    adc d
    adc b
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc b
    sub d
    add a
    adc b
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ld a, a
    add a
    adc b
    add e
    add h
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    add a
    add b
    sub d
    add a
    adc b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub d
    add b
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sbc b
    add b
    adc h
    add b
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    sub d
    add a
    adc b
    add [hl]
    add h
    sub c
    sub h
    ld a, a
    adc h
    adc b
    sbc b
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add h
    adc l
    add e
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    and $e6
    and $e6
    and $e6
    and $e6
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add [hl]
    add b
    adc b
    adc e
    ld a, a
    sub e
    adc b
    adc e
    add e
    add h
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    adc l
    adc [hl]
    add c
    ld a, a
    adc [hl]
    add [hl]
    add b
    sub d
    add b
    sub [hl]
    add b
    sub c
    add b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub d
    add h
    sub e
    add a
    ld a, a
    adc h
    and d
    adc h
    add b
    add a
    adc b
    adc e
    adc e
    ld d, b
    ld a, a
    ld a, a
    add a
    adc b
    sub c
    adc [hl]
    sub e
    adc [hl]
    ld a, a
    add b
    adc e
    add h
    sub a
    add b
    adc l
    add e
    add h
    sub c
    ld d, b
    ld a, a
    ld a, a
    sub e
    add h
    sub c
    add h
    sub d
    add b
    ld a, a
    adc e
    adc b
    adc e
    adc e
    sbc b
    add [hl]
    sub c
    add h
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub e
    add a
    adc [hl]
    adc h
    add b
    sub d
    ld a, a
    add a
    add h
    sub c
    sub e
    sbc c
    adc [hl]
    add [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add h
    sub c
    adc b
    adc d
    ld a, a
    adc c
    adc [hl]
    add a
    adc l
    sub d
    adc [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, a
    ld a, a
    sub e
    add h
    sub c
    sub h
    adc d
    adc b
    ld a, a
    adc h
    sub h
    sub c
    add b
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ld a, a
    ld a, a
    adc d
    add b
    sbc c
    sub h
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc [hl]
    sub d
    add b
    sub [hl]
    add b
    ld d, b
    ld a, a
    ld a, a
    adc d
    adc b
    adc h
    adc b
    adc d
    adc [hl]
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    adc b
    add d
    add a
    adc b
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    ld a, a
    ld a, a
    add d
    sub c
    sbc b
    sub d
    sub e
    add b
    adc e
    ld a, a
    sub l
    add h
    sub c
    sub d
    adc b
    adc [hl]
    adc l
    ld c, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    sub e
    add b
    add l
    add l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add d
    adc [hl]
    db $e3
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc a
    sub c
    adc [hl]
    add [hl]
    sub c
    add b
    adc h
    adc h
    add h
    sub c
    sub d
    ld d, b
    ld a, a
    add [hl]
    sub c
    add b
    adc a
    add a
    adc b
    add d
    sub d
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    adc h
    adc [hl]
    adc l
    sub d
    sub e
    add h
    sub c
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    add [hl]
    sub c
    add b
    adc a
    add a
    adc b
    add d
    sub d
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    sub h
    sub d
    adc b
    add d
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub d
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    add h
    add l
    add l
    add h
    add d
    sub e
    sub d
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    sub d
    add d
    add h
    adc l
    add b
    sub c
    adc b
    adc [hl]
    ld d, b
    ld a, a
    ld a, a
    sub e
    adc [hl]
    adc [hl]
    adc e
    ld a, a
    adc a
    sub c
    adc [hl]
    add [hl]
    sub c
    add b
    adc h
    adc h
    adc b
    adc l
    add [hl]
    ld d, b
    ld a, a
    adc a
    add b
    sub c
    add b
    adc h
    add h
    sub e
    sub c
    adc b
    add d
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub d
    add d
    sub c
    adc b
    adc a
    sub e
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    adc h
    add b
    adc a
    ld a, a
    add e
    add b
    sub e
    add b
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    add b
    adc a
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    sub e
    ld a, a
    sub e
    add h
    sub d
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld a, a
    sub e
    add a
    add b
    adc l
    adc d
    sub d
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    sub d
    ld d, b
    ld a, a
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld a, a
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    ld d, b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add b
    adc l
    adc b
    adc h
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    sub e
    add h
    sub a
    sub e
    ld d, b
    ld a, a
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    adc a
    sub c
    adc c
    add sp, $7f
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    ld a, a
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    sub d
    sbc b
    sub d
    sub e
    add h
    adc h
    ld a, a
    add b
    add e
    add sp, $50
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    sub d
    sub e
    add b
    add e
    adc b
    sub h
    adc h
    ld a, a
    add e
    adc b
    sub c
    add sp, $50
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add d
    adc [hl]
    adc [hl]
    sub c
    add e
    adc b
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    sub h
    sub d
    ld a, a
    sub l
    add h
    sub c
    sub d
    adc b
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    add b
    add l
    add l
    ld d, b
    ld a, a
    ld a, a
    sub h
    sub d
    ld a, a
    add d
    adc [hl]
    adc [hl]
    sub c
    add e
    adc b
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    sub e
    add h
    sub a
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc l
    sub d
    adc e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc a
    add b
    add b
    add e
    ld a, a
    sub e
    add h
    sub d
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld c, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld a, d
    ld a, e
    ld a, h
    ld c, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
