CeruleanCaveB1F_Object:
	db $7d ; border block

	db 1 ; warps
	warp 3, 6, 8, CERULEAN_CAVE_1F

	db 0 ; signs

	db 3 ; objects
IF DEF (_BLUE)
	object SPRITE_SLOWBRO, 27, 13, STAY, DOWN, 1, MEWTWO, 70
	object SPRITE_BALL, 16, 9, STAY, NONE, 2, ULTRA_BALL
	object SPRITE_BALL, 18, 1, STAY, NONE, 3, MAX_REVIVE

ELSE
	object SPRITE_SLOWBRO, 5, 10, STAY, DOWN, 1, MEWTWO, 70
	object SPRITE_BALL, 24, 7, STAY, NONE, 2, ULTRA_BALL
	object SPRITE_BALL, 24, 1, STAY, NONE, 3, MAX_REVIVE
ENDC
	; warp-to
	warp_to 3, 6, CERULEAN_CAVE_B1F_WIDTH ; CERULEAN_CAVE_1F
