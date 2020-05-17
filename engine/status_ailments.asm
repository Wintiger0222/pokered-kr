PrintStatusAilment:
	ld a, [de]
	bit PSN, a
	jr nz, .psn
	bit BRN, a
	jr nz, .brn
	bit FRZ, a
	jr nz, .frz
	bit PAR, a
	jr nz, .par
	and SLP
	ret z
	ld a, $DF;잠듦
	ld [hli], a
	ld a, $E0
	ld [hli], a
	ld [hl], $E1
	ret
.psn
	ld a, $7F;독
	ld [hli], a
	ld a, $E2
	ld [hli], a
	ld [hl], $E4
	ret
.brn
	ld a, $E5;화상
	ld [hli], a
	ld a, $E8
	ld [hli], a
	ld [hl], $E9
	ret
.frz
	ld a, $D9;얼음
	ld [hli], a
	ld a, $DA
	ld [hli], a
	ld [hl], $DB
	ret
.par
	ld a, $DC;마비
	ld [hli], a
	ld a, $DD
	ld [hli], a
	ld [hl], $DE
	ret
