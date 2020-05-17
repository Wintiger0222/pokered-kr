DisplayDiploma:
	call SaveScreenTilesToBuffer2
	call GBPalWhiteOutWithDelay3
	call ClearScreen
	xor a
	ld [wUpdateSpritesEnabled], a
	ld hl, wd730
	set 6, [hl]
	call DisableLCD
	ld hl, CircleTile
	ld de, vChars2 + $700
	ld bc, $0010
	ld a, BANK(CircleTile)
	call FarCopyData2
	call EnableLCD
	coord hl, 0, 0
	lb bc, 16, 18
	predef Diploma_TextBoxBorder
	ld hl, DiplomaTextPointersAndCoords
	ld c, $5
.asm_56715
	push bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call PlaceString
	pop hl
	inc hl
	pop bc
	dec c
	jr nz, .asm_56715
	coord hl, 8, 4
	ld de, wPlayerName
	call PlaceString
	callba DrawPlayerCharacter

; Move the player 33 pixels right and set the priority bit so he appears
; behind the background layer.
	call DisableLCD
	ld hl, wOAMBuffer + $01
	lb bc, $80, $28
.adjustPlayerGfxLoop
	ld a, [hl] ; X
	; add 33
	add 130
	ld [hli], a
	inc hl
	ld a, b
	ld [hli], a ; attributes
	inc hl
	dec c
	jr nz, .adjustPlayerGfxLoop

	call EnableLCD
	callba LoadTrainerInfoTextBoxTiles
	ld b, SET_PAL_GENERIC
	call RunPaletteCommand
	call Delay3
	call GBPalNormal
	ld a, $90
	ld [rOBP0], a
	call WaitForTextScrollButtonPress
	ld hl, wd730
	res 6, [hl]
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call Delay3
	jp GBPalNormal

UnusedPlayerNameLengthFunc:
; Unused function that does a calculation involving the length of the player's
; name.
	ld hl, wPlayerName
	ld bc, $ff00
.loop
	ld a, [hli]
	cp "@"
	ret z
	dec c
	jr .loop

DiplomaTextPointersAndCoords:
	dw DiplomaText
	dwCoord 7, 2
	dw DiplomaPlayer
	dwCoord 3, 4
	dw DiplomaEmptyText
	dwCoord 15, 4
	dw DiplomaCongrats
	dwCoord 3, 6
	dw DiplomaGameFreak
	dwCoord 9, 15

DiplomaText:
	db $70, $0A,$35,$08,$A2,$07,$B5,$70,$50; RAW DATA : 	db $10, "표창장", $10, "@"


DiplomaPlayer:
	db $0A,$63,$03,$E9,$07,$9C,$06,$EE,$7F,$7F,$7F,$7F,$7F,$7F,$02,$D4,$50; RAW DATA : 	db "플레이어 님@"

DiplomaEmptyText:
	db "@"

DiplomaCongrats:
	db   $0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$01,$08,$07,$8B; RAW DATA : 	db   "포켓몬 도감을"
	next $0A,$C7,$04,$32,$0A,$6F,$01,$34,$7F,$07,$2F,$05,$EA,$06,$63,$09,$82; RAW DATA : 	next "훌륭하게 완성시킨"
	next $07,$77,$02,$EB,$0A,$71,$7F,$01,$68,$03,$FE,$04,$36,$7F,$09,$0A,$08,$99,$0A,$6F,$04,$87; RAW DATA : 	next "위대한 공로를 칭찬하며"
	next $07,$09,$01,$B2,$07,$01,$7F,$08,$25,$04,$8D,$0A,$6F,$01,$3A,$06,$60,$02,$CF,$02,$D9,$50; RAW DATA : 	next "여기에 증명하겠습니다@"


DiplomaGameFreak:
	db $01,$34,$07,$A3,$7F,$0A,$61,$04,$3E,$09,$79,$50; RAW DATA : 	db "게임 프리크@"
