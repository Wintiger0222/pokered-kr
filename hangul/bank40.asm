HangulStart::
	ld a,$02
	ld [rSVBK],a
	;코드부분
	call IsHangulOnScreen
	cp a,$FF 
	jr z,.fontExtend
	push hl
	push bc
	ld bc,-SCREEN_WIDTH
	add hl,bc
	pop bc
	ld [hl],a
	call BGMapBankChange
	pop hl
	inc a
	ld [hl],a
	call BGMapBankChange
	jr .endofmain
.fontExtend
.TileFind
	ld a,[H_FONTCOUNT];적합한 타일 검색
.TileFindLoop
	push af
	call IsTileOnScreen
	and a ; 1 : 있음, 0 : 없음
	jr z,.getTile
	pop af
	inc a
	inc a
	jr .TileFindLoop
.getTile
	pop af
	push af
	inc a
	inc a
	ld [H_FONTCOUNT],a;다음에 사용할거 미리 넣어두기
	pop af
	push bc
	push hl
	ld bc,-SCREEN_WIDTH
	add hl,bc
	ld [hl],a
	call BGMapBankChange
	pop hl
	inc a
	ld [hl],a
	call BGMapBankChange
	dec a
	pop bc
	push af
	push hl
	ld hl,$D000
	push bc
	ld b,$00
	ld c,a
	add hl,bc
	pop bc
	ld a,b
	ld [hli],a
	ld a,c
	ld [hl],a
	pop hl
	pop af
	push bc
	cp $80
	jr c,.VRAM90
.VRAM80 ;80-FF
	ld b,$08
	jr .CalcVRAMAddr
.VRAM90 ;00-7F
	ld b,$09
.CalcVRAMAddr
	ld c,a
	ld a,$04
.CalcVRAMAddrLoop
	sla c
	rl b
	dec a
	jr nz,.CalcVRAMAddrLoop
	ld a,c
	ld [H_VBCOPYDOUBLEDEST],a
	ld a,b
	ld [H_VBCOPYDOUBLEDEST+1],a
	pop bc
	ld a,b
	and a,$0C
	rrca
	rrca
	add a,$40
	push af
	ld a,b
	and a,$03
	add a,$04
	ld b,a
	ld a,$04
.CalcFontAddr
	sla c
	rl b
	dec a
	jr nz,.CalcFontAddr
	ld a,c
	ld [H_VBCOPYDOUBLESRC],a
	ld a,b
	ld [H_VBCOPYDOUBLESRC+1],a
	pop af
	ld b,a
.endofmain_Extend
	ld a,$01
	ld [rSVBK],a
	ld a,b
	ret
	;코드부분 끝
.endofmain
	ld a,$01
	ld [rSVBK],a
	ld a,$00
	ret
IsHangulOnScreen: ;bc : 한글 2바이트 a : 반환 FF : false, 00,02,~FE : true
	push hl
	push de
	ld de,$0000
.loop
	ld hl,$D000
	add hl,de
	add hl,de
	ld a,b
	cp [hl]
	jr nz,.skip
	inc hl
	ld a,c
	cp [hl]
	jr nz,.skip
.found
	ld a,e
	rla
.foundtile
	pop de
	pop hl
	ret
.skip
	inc e
	ld a,$40
	cp e
	jr z,.notfoundtile
	jr .loop
.notfoundtile
	pop de
	pop hl
	ld a,$FF
	ret
IsTileOnScreen: ;a : 타일번호, VRAM1전용, 반환 0 : false, 1 : true
	push hl
	ld hl, wTileMap
.loop
	cp [hl]
	jr nz,.skip
	push hl
	push bc
	ld bc,$D800-wTileMap
	add hl,bc
	pop bc
	bit 3,[hl]
	pop hl
	jr z,.skip
.found
	pop hl
	ld a,$01
	ret
.skip
	push af
	ld a,$C5 ;C507
	cp h
	jr nz,.checkaddr
	ld a,$07
	cp l
	jr nz,.checkaddr
.notfound
	pop af
	ld a,$00
	pop hl
	ret
.checkaddr
	pop af
	inc hl
	jr .loop

BGMapBankChange:: ;hl 매개변수,C3A0이상
	push bc
	push hl
	ld bc, $D800-wTileMap
	add hl,bc
	set 3,[hl]
	pop hl
	pop bc
	ret