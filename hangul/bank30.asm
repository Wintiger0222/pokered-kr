; home/text.asm에서 불러옴.
; bc = 고유번호 (b가 0일 경우 영문)
; de = 대사 주소
; hl = 타일 주소 (wram)

Korean::
	ld a, SRAM_ENABLE
	ld [MBC1SRamEnable], a
	ld a, $1
	ld [MBC1SRamBankingMode], a
	xor a
	ld [MBC1SRamBank], a
	
	push de
	push hl
	push bc

	call CheckTable
	jr nc, .done
	call TrimTable
	call CheckTable
	jr nc, .done
	ld a, $80
.done
	pop bc
	push af
	push bc
	call RenderFont
	pop bc
	pop af
	pop hl
	call SetTile
	pop de
	; ld a, $0
	; ld [MBC1SRamEnable], a
	; ld [MBC1SRamBankingMode], a
	; ld [MBC1SRamBank], a
	ret

; 폰트 속성, 테이블 초기화
Korean_Init::
	; di
	ld a, SRAM_ENABLE
	ld [MBC1SRamEnable], a
	ld a, $1
	ld [MBC1SRamBankingMode], a
	xor a
	ld [MBC1SRamBank], a
	
	ld c, wKoreanTextTableBufferEnd - wKoreanTextTableBuffer
	ld hl, wKoreanTextTableBuffer
.loop
	ld [hli], a
	dec c
	jr nz, .loop
	; ld a, $0
	; ld [MBC1SRamEnable], a
	; ld [MBC1SRamBankingMode], a
	; ld [MBC1SRamBank], a
	ld a, $E2
	ld [hHangulMaxLimit], a 
	xor a
	ld [H_HANGUL_OPTION], a 
	; ei
	ret

; 사용가능한 테이블이 있는지 체크
; 반환값 a = 타일번호, 캐리 시 테이블 정리 필요
CheckTable:
	; di
	ld hl, wKoreanTextTableBuffer
.loop
	ld a, [hHangulMaxLimit]
	ld d, a
	ld a, l
	; cp a, $E2
	cp a, d
	jr nc,.notfound
	bit 7, [hl]
	jr z, .unused_test
; 중복 테이블 검사
	ld a, [hli]
	res 7, a
	cp b
	jr nz, .next
	ld a, [hl]
	cp c
	jr z, .same_table
.next
	inc l
	jr nz, .loop
.notfound
; 공간부족
	; ei
	scf
	ret
	
.unused_test
	ld a, [H_HANGUL_OPTION]
	and a
	jr z, .found; 0이면
	dec a
	and a
	jr z, .force_unused_test;1이면
	dec a
	and a
	jr z, .party_menu_hack;2이면
	; jr nz, .force_unused_test ;0이 아니면	
	jr .found
.force_unused_test
	ld a, l
	call FindTileMapBackup 
	and a
	jr z,.found
	; jr .loop
	inc l
	jr .next
.party_menu_hack
	ld a, l
	cp a, $D8
	jr c,.found;d8이하이면
	call FindTileMap 
	and a
	jr z,.found
	; jr .loop
	inc l
	jr .next


.same_table
	dec l
.found
	; ei
	sub a
	ld a, l
	ret

FindTileMapBackup:
	push bc
	push hl
	ld hl,wTileMapBackup 
	ld c,SCREEN_HEIGHT
.loop
	ld b,SCREEN_WIDTH
.loop2
	cp a,[hl]
	jr z,.Found 
	inc hl
	dec b
	jr nz,.loop2
	dec c
	jr nz,.loop
	pop hl
	pop bc
.NotFound
	ld a,$00
	ret
.Found
	pop hl
	pop bc
	ld a,$01
	ret

FindTileMap:
	push bc
	push hl
	ld hl,wTileMap
	ld c,SCREEN_HEIGHT
.loop
	ld b,SCREEN_WIDTH
.loop2
	cp a,[hl]
	jr z,.Found 
	inc hl
	dec b
	jr nz,.loop2
	dec c
	jr nz,.loop
	pop hl
	pop bc
.NotFound
	ld a,$00
	ret
.Found
	pop hl
	pop bc
	ld a,$01
	ret


; 테이블 정리
Korean_TrimTable::
	push bc
	push de
	push hl
	call TrimTable
	pop hl
	pop de
	pop bc
	ret

TrimTable:
	; di
	ld hl, wKoreanTextTableBuffer
	ld c, wKoreanTextTableBufferEnd - wKoreanTextTableBuffer
.loop1
	res 7, [hl]
	inc hl
	dec c
	jr nz, .loop1
	ld h, HIGH(wKoreanTextTableBuffer)
	ld de, wTileMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT + $100
.loop2
	ld a, [de]
	inc de
	cp $7f
	jr c, .pass
	and $fe
	ld l, a
	
	set 7, [hl]
.pass
	dec c
	jr nz, .loop2
	dec b
	jr nz, .loop2
	; ei
	ret

; 폰트 그래픽 출력
RenderFont:
	ld h, HIGH(wKoreanTextTableBuffer)
	ld l, a
	; di
	ld a, b
	set 7, a
	ld [hli], a
	ld a, c
	ld [hl], a
	dec hl
	push bc
; get vram addr
	ld b, $8
	ld c, l
rept 4
	sla c
	rl b
endr
	ld d, b
	ld e, c
	pop bc
	push de
; 영문자 검사
	ld a, b
	and a
	jr nz, .korean
	ld a, c
	sub "A"
; b = 0
	ld c, a
rept 3
	sla c
	rl b
endr
	ld hl, Legacy_Font
	add hl, bc
	ld b, $8
	ld c, BANK(Legacy_Font)
	jr .render
.korean
; get bank
	push bc
	ld a, b
	and a, $0c
	rrca
	rrca
	add a, BANK(Hangul_Font)
	pop bc
	push af
	ld a, b
	and a, 3
	add a, 4
	ld b, a
rept 4
	sla c
	rl b
endr
	ld h, b
	ld l, c
	ld b, $10
	pop af
	ld c, a
.render
	
; 필요 인자값
; b  : length
; c  : bank
; hl : dest
; de : scr
	ld de, wKoreanFontDataBuffer
	call LoadKoreanFont
	pop hl
; Copy to VRAM
	di
	
	ld a, [wd730]
	bit 6, a
	jr nz, .HBlankCopy
	ld a, [wLetterPrintingDelayFlags]
	bit 1, a
	jr z, .HBlankCopy
.VBlankCopy		
	ld a, 2
	ld [H_VBCOPYDOUBLESIZE] ,a
	ld a, LOW(wKoreanFontDataBuffer)
	ld [H_VBCOPYDOUBLESRC] , a
	ld a, HIGH(wKoreanFontDataBuffer)
	ld [H_VBCOPYDOUBLESRC+1] ,a
	ld a, l
	ld [H_VBCOPYDOUBLEDEST] ,a
	ld a, h
	ld [H_VBCOPYDOUBLEDEST+1] ,a
	;call VBlankCopyDouble
	jr .return
.HBlankCopy	
	ld de,wKoreanFontDataBuffer
	ld c,2
	call HBlankCopyDouble
.return
	ei
	ret
	
; 타일 적용
SetTile:
	; di
	ld c, a
	ld a, b
	and a
	jr nz, .korean
	ld a, c
	jr .return
.korean
	ld a, c
	push hl
	ld bc, -SCREEN_WIDTH
	add hl, bc
	ld [hl], a
	inc a
	pop hl
.return
	ld [hli], a
	; ei
	ret
	
HBlankCopyDouble:: 
;	ld a,[H_LOADEDROMBANK]
;	push af
;	ld a,b
;	rst Bankswitch_rst
	ld a,[rLCDC]
	bit rLCDC_ENABLE,a
	sla c
	sla c
	sla c
	jr nz,.LCDOn
.loop ;8bytes : 1
	ld a,[de]
	ld [hli],a
	ld [hli],a
	inc de
	dec c
	jr nz,.loop
	jr .Done
.LCDOn
	;if LCD is on
	ld a,[rSTAT]
	and a,%00000011 
	cp a,$00 ;is H-Blank Period?
	jr z,.LCDOn 
.WaitForHBlank
	ld a,[rSTAT]
	and a,%00000011
	cp a,$00
	jr nz,.WaitForHBlank 
	;Wait For H-Blank Period
.HBlankLoop
	ld a,[de]
	ld [hli],a
	ld [hli],a
.CheckHBlank
	ld a,[rSTAT]
	and a,%00000011 
	cp a,$00 ;is H-Blank Period?
	jr nz,.ReWrite
	
	inc de
	dec c
	jr nz,.HBlankLoop
.Done
;	pop af
;	rst Bankswitch_rst
	ret
.ReWrite
	dec hl
	dec hl
	jr .WaitForHBlank
