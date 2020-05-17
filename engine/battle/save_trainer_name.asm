SaveTrainerName: 
	ld hl, TrainerNamePointers
	ld a, [wTrainerClass]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wcd6d
.CopyCharacter
	ld a, [hli]
	ld [de], a
	inc de
	cp "@"
	jr nz, .CopyCharacter
	ret

TrainerNamePointers:
; what is the point of these?
	dw YoungsterName
	dw BugCatcherName
	dw LassName
	dw wTrainerName
	dw JrTrainerMName
	dw JrTrainerFName
	dw PokemaniacName
	dw SuperNerdName
	dw wTrainerName
	dw wTrainerName
	dw BurglarName
	dw EngineerName
	dw JugglerXName
	dw wTrainerName
	dw SwimmerName
	dw wTrainerName
	dw wTrainerName
	dw BeautyName
	dw wTrainerName
	dw RockerName
	dw JugglerName
	dw wTrainerName
	dw wTrainerName
	dw BlackbeltName
	dw wTrainerName
	dw ProfOakName
	dw ChiefName
	dw ScientistName
	dw wTrainerName
	dw RocketName
	dw CooltrainerMName
	dw CooltrainerFName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName

YoungsterName:
	db "반바지 꼬마@"
BugCatcherName:
	db "곤충채집 소년@"
LassName:
	db "짧은치마@"
JrTrainerMName:
	db "캠프보이@"
JrTrainerFName:
	db "피크닉 걸@"
PokemaniacName:
	db "포켓몬 매니아@"
SuperNerdName:
	db "이과계의 남자@"
BurglarName:
	db "불난집 전문털이범@"
EngineerName:
	db "엔지니어@"
JugglerXName:
	db "집시저글러@"
SwimmerName:
	db "수영팬티 소년@"
BeautyName:
	db "아가씨@"
RockerName:
	db "폭주족@"
JugglerName:
	db "집시저글러@"
BlackbeltName:
	db "태권왕@"
ProfOakName:
	db "오박사@"
ChiefName:
	db "쉬프@"
ScientistName:
	db "과학자@"
RocketName:
	db "로켓단@"
CooltrainerMName:
	db "엘리트트레이너@"
CooltrainerFName:
	db "엘리트트레이너@"
