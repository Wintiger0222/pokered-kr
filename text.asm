INCLUDE "charmap.asm"

INCLUDE "constants/text_constants.asm"

TEXT_1  EQU $20
TEXT_2  EQU TEXT_1 + 1
TEXT_3  EQU TEXT_2 + 1
TEXT_4  EQU TEXT_3 + 1
TEXT_5  EQU TEXT_4 + 1
TEXT_6  EQU TEXT_5 + 1
TEXT_7  EQU TEXT_6 + 1
TEXT_8  EQU TEXT_7 + 1
TEXT_9  EQU TEXT_8 + 1
TEXT_10 EQU TEXT_9 + 1
TEXT_11 EQU TEXT_10 + 1

POKEDEX_TEXT EQU TEXT_11 + 1
MOVE_NAMES   EQU POKEDEX_TEXT + 1

INCLUDE "macros.asm"

INCLUDE "hram.asm"


SECTION "Text 1", ROMX ; BANK $20

_CardKeySuccessText1::
	text "딩동!@@"

_CardKeySuccessText2::
	text ""
	line "카드키로"
	cont "문을 열었다!"
	done

_CardKeyFailText::
	text "이런!"
	line "카드키가 필요한것 같다!"
	done

_TrainerNameText::
	TX_RAM wcd6d
	text $0B,$62,"@@"

_NoNibbleText::
	text "아무것도 잡히지 않는다!";낚시관련 시스템 문장
	prompt

_NothingHereText::
	text "이곳에는 아무것도"
	line "없는 것 같다"
	prompt

_ItsABiteText::
	text "어!"
	line "뭔가 물었다!"
	prompt

_ExclamationText::
	text "!"
	done

_GroundRoseText::
	text "어디선가"
	line "지면이 솟아올랐다!"
	done

_BoulderText::
	text "커다란 바위지만……"
	line "포켓몬의 기술로 밀 수 있을지도?"
	done

_MartSignText::
	text "포켓몬 상품이라면"
	line "프렌들리숍"
	done

_PokeCenterSignText::
	text "포켓몬의 체력회복!"
	line "포켓몬 센터"
	done

_FoundItemText::
	text $52,"는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcf4b
	text "를(을)"
	cont "발견했다!@@"

_NoMoreRoomForItemText::
	text "이 이상은 들 수"
	line "없어!"
	done

_OaksAideHiText::
	text "안녕하세요! 기억하시나요?"
	line "전 오박사님의 조수예요!"

	para "현재 @"
	TX_NUM hOaksAideRequirement, 1, 3
	text "종류의"
	line "포켓몬을 잡으셨네요"
	cont "그런 당신에게!"
	cont "제가 줄 물건은!"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "입니다!"

	para $52,"군!"
	line "이제 당신이 잡아야 할 포켓몬은"
	cont "@"
	TX_NUM hOaksAideRequirement, 1, 3
	text "종류네요!"
	done

_OaksAideUhOhText::
	text "어디보자……"
	line "오호라!"
	cont "당신 잡은건 @"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text "종류의"
	line "포켓몬이군요!"

	para "제가 물건을 주기 위해서는"
	line "@"
	TX_NUM hOaksAideRequirement, 1, 3
	text "종류의 포켓몬이"
	cont "더 필요할거 같네요"
	cont "그러면 제가"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "를(을) 드리죠"
	done

_OaksAideComeBackText::
	text "네 알겠습니다"

	para "@"
	TX_NUM hOaksAideRequirement, 1, 3
	text "종류을 도감에 채우면"
	line "다시 와서"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "를(을) 받아가세요"
	done

_OaksAideHereYouGoText::
	text "놀라워!"
	line "@"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text "종류의 포켓몬을 잡으셨군요!"
	cont "축하해요!"

	para "이걸 받으세요!"
	prompt

_OaksAideGotItemText::
	text $52, "은(는)"
	line "@"
	TX_RAM wOaksAideRewardItemName
	text "를(을) 받았다!@@"

_OaksAideNoRoomText::
	text "아이고!"
	line "그 이상은 지닐수 없어서"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "를(을) 못 받겠는데요"
	done


INCLUDE "text/maps/ViridianForest.asm"
INCLUDE "text/maps/MtMoon1F.asm"
INCLUDE "text/maps/MtMoonB1F.asm"
INCLUDE "text/maps/MtMoonB2F.asm"
INCLUDE "text/maps/SSAnne1F.asm"
INCLUDE "text/maps/SSAnne2F.asm"
INCLUDE "text/maps/SSAnne3F.asm"
INCLUDE "text/maps/SSAnneBow.asm"
INCLUDE "text/maps/SSAnneKitchen.asm"
INCLUDE "text/maps/SSAnneCaptainsRoom.asm"
INCLUDE "text/maps/SSAnne1FRooms.asm"
INCLUDE "text/maps/SSAnne2FRooms.asm"
INCLUDE "text/maps/SSAnneB1FRooms.asm"
INCLUDE "text/maps/VictoryRoad3F.asm"
INCLUDE "text/maps/RocketHideoutB1F.asm"
INCLUDE "text/maps/RocketHideoutB2F.asm"
INCLUDE "text/maps/RocketHideoutB3F.asm"
INCLUDE "text/maps/RocketHideoutB4F.asm"
INCLUDE "text/maps/RocketHideoutElevator.asm"
INCLUDE "text/maps/SilphCo2F.asm"
INCLUDE "text/maps/SilphCo3F.asm"
INCLUDE "text/maps/SilphCo4F.asm"
INCLUDE "text/maps/SilphCo5F.asm"


SECTION "Text 2", ROMX ; BANK $21

INCLUDE "text/maps/SilphCo5F_2.asm"
INCLUDE "text/maps/SilphCo6F.asm"
INCLUDE "text/maps/SilphCo7F.asm"
INCLUDE "text/maps/SilphCo8F.asm"
INCLUDE "text/maps/SilphCo9F.asm"
INCLUDE "text/maps/SilphCo10F.asm"
INCLUDE "text/maps/SilphCo11F.asm"
INCLUDE "text/maps/PokemonMansion2F.asm"
INCLUDE "text/maps/PokemonMansion3F.asm"
INCLUDE "text/maps/PokemonMansionB1F.asm"
INCLUDE "text/maps/SafariZoneEast.asm"
INCLUDE "text/maps/SafariZoneNorth.asm"
INCLUDE "text/maps/SafariZoneWest.asm"
INCLUDE "text/maps/SafariZoneCenter.asm"
INCLUDE "text/maps/SafariZoneCenterRestHouse.asm"
INCLUDE "text/maps/SafariZoneSecretHouse.asm"
INCLUDE "text/maps/SafariZoneWestRestHouse.asm"
INCLUDE "text/maps/SafariZoneEastRestHouse.asm"
INCLUDE "text/maps/SafariZoneNorthRestHouse.asm"
INCLUDE "text/maps/CeruleanCaveB1F.asm"
INCLUDE "text/maps/VictoryRoad1F.asm"
INCLUDE "text/maps/LancesRoom.asm"
INCLUDE "text/maps/HallOfFame.asm"
INCLUDE "text/maps/ChampionsRoom.asm"
INCLUDE "text/maps/LoreleisRoom.asm"
INCLUDE "text/maps/BrunosRoom.asm"
INCLUDE "text/maps/AgathasRoom.asm"
INCLUDE "text/maps/RockTunnelB1F.asm"


SECTION "Text 3", ROMX ; BANK $22

INCLUDE "text/maps/RockTunnelB1F_2.asm"
INCLUDE "text/maps/SeafoamIslandsB4F.asm"

_AIBattleWithdrawText::
	TX_RAM wTrainerName
	text "는(은)"
	line "@"
	TX_RAM wEnemyMonNick
	text "를(을)"
	cont "도로 불러 들였다!"
	prompt
	
_AIBattleUseItemText::
	TX_RAM wTrainerName
	text "는(은)"
	line "@"
	TX_RAM wEnemyMonNick
	text "에게"
	
	para "@"
	TX_RAM wcd6d
	text "를(을)"
	line "사용했다!"
	prompt

_TradeWentToText::
	TX_RAM wcf4b
	text "는(은) 무사히"
	line "@"
	TX_RAM wGrassRate
	text "에게 맡겨졌습니다"
	done

_TradeForText::
	text $52,"(이)가"
	line "@"
	TX_RAM wcf4b
	text "를(을) 보내는 대신"
	done

_TradeSendsText::
	TX_RAM wGrassRate
	text "는(은)"
	line "@"
	TX_RAM wcd6d
	text "를(을) 줍니다"
	done

_TradeWavesFarewellText::
	TX_RAM wGrassRate
	text "이(가)"
	line "석별의 정을 아쉬워하며"
	done

_TradeTransferredText::
	TX_RAM wcd6d
	text "를(을)"
	line "보냅니다"
	done

_TradeTakeCareText::
	text "@"
	TX_RAM wcd6d
	text "를(을)"
	line "귀여워해 주세요"
	done

_TradeWillTradeText::
	text "이제부터"
	line "@"
	TX_RAM wGrassRate
	text "의 @"
	TX_RAM wcd6d
	text "과(와)"
	done

_TradeforText::
	text $52, "의 @"
	TX_RAM wcf4b
	text "를(을)"
	line "교환합니다!"
	done

_PlaySlotMachineText::
	text "슬롯머신이다!"
	line "한번 해볼까?"
	done


_OutOfCoinsSlotMachineText::
	text "동전이"
	line "다 떨어져버렸다……"
	done

_BetHowManySlotMachineText::
	text "동전을"
	line "몇 개 걸겠습니까?"
	done

_StartSlotMachineText::
	text "스타트!"
	done

_NotEnoughCoinsSlotMachineText::
	text "동전이 부족합니다!"
	prompt

_OneMoreGoSlotMachineText::
	text "다시한번"
	line "하겠습니까?"
	done

_LinedUpText::
	text " (이)가 모였다!"
	line "동전 @"
	TX_RAM wcf4b
	text "개 확보!"
	done

_NotThisTimeText::
	text "꽝-"
	prompt

_YeahText::
	text "아싸!@@"

_DexSeenOwnedText::
	text "발견한 포켓몬 @"
	TX_NUM wDexRatingNumMonsSeen, 1, 3
	text ""
	line "잡은 포켓몬 @"
	TX_NUM wDexRatingNumMonsOwned, 1, 3
	db "@"

_DexRatingText::
	text "포켓몬 도감의"
	line "현재 완성도"
	db	$0B,$62
	done

_GymStatueText1::
	TX_RAM wGymCityName
	text "포켓몬 체육관"
	line "관장 @"
	TX_RAM wGymLeaderName
	text ""

	para "이긴 트레이너"
	line $53
	done

_GymStatueText2::
	TX_RAM wGymCityName
	text "포켓몬 체육관"
	line "관장 @"
	TX_RAM wGymLeaderName
	text ""

	para "이긴 트레이너"
	line $53
	cont $52
	done

_ViridianCityPokecenterGuyText::
	text "포켓몬센터는"
	line "지치고 다치고 기절한"
	cont "포켓몬을 치료해줘!"
	done

_PewterCityPokecenterGuyText::
	text "흐아암!"

	para "푸린이 노래하면"
	line "포켓몬은 잠들게 되……"
	cont "……"

	para "……나 역시……"
	line "드르렁……"
	done

_CeruleanPokecenterGuyText::
	text "이수재는 많은 포켓몬을"
	line "가지고 있어"

	para "희귀 포켓몬도"
	line "수집하고 있지!"
	done 

_LavenderPokecenterGuyText::
	text "탕구리가 해골"
	line "뒤집어 쓰는거 알지 그치?"

	para "이걸로 대가를 치를"
	line "사람들이 있지!"
	done

_MtMoonPokecenterBenchGuyText::
	text "데리고 있는 포켓몬이"
	line "너무 많으면"
	cont "컴퓨터에 보관해봐!"
	done

_RockTunnelPokecenterGuyText::
	text "보라타운에 유령이"
	line "나온다고 들었어!"
	done

_UnusedBenchGuyText1::
	text "포켓몬 잡을수 있으면"
	line "더는 소원이 없겠어"
	done

_UnusedBenchGuyText2::
	text "신나게 놀다가"
	line "진 다 빠졌어……"
	done

_UnusedBenchGuyText3::
	text "실프 주식회사 매니저가"
	line "사파리존에 숨었다지"
	done

_VermilionPokecenterGuyText::
	text "포켓몬의 레벨이 높을수록"
	line "더 강한건 사실이야……"

	para "하지만 모든 포켓몬에겐"
	line "반드시 타입별로 약점이 있어!"

	para "즉!"
	line "무적 포켓몬 같은건 없어!"
	done

_CeladonCityPokecenterGuyText::
	text "자전거가 생기면,"
	line "자전거 도로에 갈테야!"
	done

_FuchsiaCityPokecenterGuyText::
	text "포켓몬에 대해서 알고싶으면"
	line "사파리존에 가보렴"

	para "온갖 희귀 포켓몬들이 있단다"
	done

_CinnabarPokecenterGuyText::
	text "포켓몬은"
	line "진화를 하지 않아도"
	cont "기술을 배우는게 가능하단다"

	para "즉 새로운 기술을 배울때까지"
	line "진화를 미룰수도 있지"
	done

_SaffronCityPokecenterGuyText1::
	text "사천왕이 와서"
	line "로켓단 녀석들 짓밟아주면"
	cont "통쾌할텐데 말이야!"
	done

_SaffronCityPokecenterGuyText2::
	text "로켓단이 물러났어!"
	line "전처럼 다시 조용히"
	cont "지낼수 있다고!!"
	para "만세!"
	done

_CeladonCityHotelText::
	text "누나가 이번 휴가에"
	line "끌고 와버렸어!"
	done

_BookcaseText::
	text "포케몬 책들로"
	line "빼곡하게 박혀있다!"
	done

_NewBicycleText::
	text "반짝반짝한"
	line "새 자전거!"
	done

_PushStartText::
	text "스타트 버튼을 누르자!"
	line "누르면 메뉴가 뜬다"
	done

_SaveOptionText::
	text "세이브를 함에는 포켓몬 레포트"
	line "자주 쓰면 좋다"
	done

_StrengthsAndWeaknessesText::
	text "모든 타입들은"
	line "강점뿐만 아니라"
	cont "다른 타입에 대한"
	cont "약점이 있습니다"
	done

_TimesUpText::
	text "안내방송『딩동!"

	para "시간이 다 됐습니다.!"
	prompt

_GameOverText::
	text "안내방송『사파리 게임이"
	line "종료됐습니다!"
	done

_CinnabarGymQuizIntroText::
	text "포켓몬 퀴즈!"

	para "문제를 맞추면 다음방으로"
	line "가는 문이 열립니다!"

	para "틀리면"
	line "트레이너와 마주칩니다!"

	para "체육관 관장을 대비해서"
	line "포켓몬을 아끼고 싶다면……"

	para "잘 맞춰서 가면 됩니다!"
	line "이제 가보세요!"
	prompt

_CinnabarQuizQuestionsText1::
	text "캐터피의 최종진화는"
	line "버터플일까요?"
	done

_CinnabarQuizQuestionsText2::
	text "포켓몬 리그에 인증된 배지는"
	line "9개일까요?"
	done

_CinnabarQuizQuestionsText3::
	text "발챙이가 진화하는건"
	line "3종류 일까요?"
	done

_CinnabarQuizQuestionsText4::
	text "공격기술인 번개는 땅타입"
	line "포켓몬에게 효과가 있을까요?"
	done

_CinnabarQuizQuestionsText5::
	text "포켓몬 종류와 레벨이 같아도"
	line "힘은 다를까요?"
	done

_CinnabarQuizQuestionsText6::
	text "기술머신28에 있는 기술은"
	line "툼스토너 인가요?"
	done

_CinnabarGymQuizCorrectText::
	text "누가 뭐라해도"
	line "정답입니다!"

	para "이쪽으로!@@"

_CinnabarGymQuizIncorrectText::
	text "죄송합니다!"
	line "오답입니다!"
	prompt

_MagazinesText::
	text "포켓몬 잡지들!"

	para "포켓몬 노트북들!"

	para "포켓몬 도표들!"
	done

_BillsHouseMonitorText::
	text "컴퓨터 모니터에"
	line "전송장치가 켜져있다"
	done

_BillsHouseInitiatedText::
	text $52, "는(은)"
	line "전송장치의 세포 분리기를"
	cont "작동시켰다!@@"

_BillsHousePokemonListText1::
	text "이수재가 좋아하는"
	line "포켓몬 리스트!"
	prompt

_BillsHousePokemonListText2::
	text "어떤 포켓몬을"
	line "보시겠습니까?"
	done

_OakLabEmailText::
	text "이메일 메시지가"
	line "있다!"

	para "…… …… ……"

	para "모든 포켓몬 트레이너들의 소명!"
	;calling이 소명이긴 한데 문맥상 소망으로 선택했습니다. 

	para "포켓몬 리그의 엘리트 트레이너들은"
	line "어떤 도전가든지 기다리고 있다!"


	para "최정예 포켓몬을 데려가서"
	line "트레이너로써 어떻게 각성할지 볼것!"


	para "포켓몬 리그"
	line "석영고원"

	para "추신. 우리한테 좀 들릴것!"
	line "오박사가……"
	done

_GameCornerCoinCaseText::
	text "동전케이스가"
	line "필요합니다!"
	done

_GameCornerNoCoinsText::
	text "동전이"
	line "하나도 없습니다!"
	done

_GameCornerOutOfOrderText::
	text "한정가챠"
	line "이건 망가졌다"
	done

_GameCornerOutToLunchText::
	text "점심식사 중이예요"
	line "이 자리는 예약이 되었다."
	done

_GameCornerSomeonesKeysText::
	text "누군가의 열쇠다!"
	line "곧 돌아올것 같다"
	done

_JustAMomentText::
	text "잠시만요"
	done

TMNotebookText::
	text "기술머신"
	line "팜플렛입니다"

	para "…… …… …… ……"

	para "기술머신은 모두"
	line "50종이 있습니다"

	para "5개의 비전머신들은"
	line "몇번이고 사용이 가능합니다"

	para "실프주식회사@@"

_TurnPageText::
	text "페이지를 넘기겠습니까?"
	done

_ViridianSchoolNotebookText5::
	text "소녀『거기 너!"
	line "내 노트 보면 안 돼!@@"

_ViridianSchoolNotebookText1::
	text "노트를"
	line "들여다 보았다!"

	para "……첫번째 페이지"

	para "몬스터볼은"
	line "포켓몬을 잡을때 쓴다"

	para "최대 6마리까지"
	line "데리고 다닐수 있다"

	para "포켓몬을 키우며 싸우는"
	line "사람들은 포켓몬 트레이너라 한다"
	prompt

_ViridianSchoolNotebookText2::
	text "……두번째 페이지"

	para "쌩쌩한 포켓몬은 잡기 어려우니"
	line "먼저 힘을 빼두어야 한다!"

	para "독 화상 그리고 그 외의"
	line "데미지들이 효과적이다!"
	prompt

_ViridianSchoolNotebookText3::
	text "……세번째 페이지"

	para "포켓몬 트레이너들은"
	line "포켓몬배틀을 하려고"
	cont "다른 트레이너들을 찾는다"

	para "포켓몬 체육관에서는"
	line "배틀이 끊이질 않는다"
	prompt

_ViridianSchoolNotebookText4::
	text "……네번째 페이지"

	para "포켓몬 트레이너들의 목표는"
	line "8명의 체육관관장들을 이기는것!"

	para "이걸 통해"
	line "얻게되는 자격은……"

	para "포켓몬 리그"
	line "사천왕과의 대면!"
	prompt

_EnemiesOnEverySideText::
	text "적은 곳곳에"
	line "있다!"
	done

_WhatGoesAroundComesAroundText::
	text "뿌린만큼"
	line "거두기 마련!"
	done

_FightingDojoText::
	text "격투 도장"
	done

_IndigoPlateauHQText::
	text "석영고원"
	line "포켓몬 리그"
	done

_RedBedroomSNESText::
	text "<PLAYER>는(은)"
	line "현대 슈퍼컴보이를 하고 있다!"
	cont "…… …… 좋아!"
	cont "이제 슬슬 나가볼까!"
	done

_Route15UpstairsBinocularsText::
	text "쌍안경을"
	line "들여다보았다!"

	para "바닷가쪽으로 크고 빛나는 새가"
	line "날아가고 있다"
	done

_AerodactylFossilText::
	text "프테라 화석"
	line "원시시대의 희귀 포켓몬"
	done

_KabutopsFossilText::
	text "투쿠푸스 화석"
	line "원시시대의 희귀 포켓몬"
	done

_LinkCableHelpText1::
	text "……득이 되는 게시판!"
	para "통신 케이블을 이용하세요!"
	
	;para "Using a Game Link"
	;line "Cable"
	prompt

_LinkCableHelpText2::
	text "어느 항목을"
	line "읽으시겠습니까?"
	done

_LinkCableInfoText1::
	text "게임보이를 "
	line "다른 게임보이와 연결한 후에"
	cont "포켓몬 센터의 안내원에게"
	cont "말을거세요!"
	prompt

_LinkCableInfoText2::
	text "콜로세움에서"
	line "친구와 함께 즐겨요!"
	prompt

_LinkCableInfoText3::
	text "교환센터에서"
	line "포켓몬을 교환해요!"
	prompt

_ViridianSchoolBlackboardText1::
	text "칠판에 상태이상에 대한"
	line "설명이 쓰여져 있다!"
	prompt

_ViridianSchoolBlackboardText2::
	text "어느 항목을"
	line "읽을까?"
	done

_ViridianBlackboardSleepText::
	text "잠든 상태인 포켓몬은"
	line "공격 할 수가 없습니다!"

	para "배틀후에도 포켓몬은"
	line "계속 자게됩니다!"

	para "잠깨는약으로"
	line "깨우세요!"
	prompt

_ViridianBlackboardPoisonText::
	text "독에 걸린 포켓몬의"
	line "체력은 계속 떨어집니다!"

	para "독 상태는 배틀후에도"
	line "이어집니다"

	para "해독제로"
	line "독을 치료하세요!"
	prompt

_ViridianBlackboardPrlzText::
	text "마비 상태인 포켓몬은 몸이 저려서"
	line "못 움직이기도 합니다!"

	para "마비 상태는"
	line "배틀후에도 유지됩니다"

	para "마비치료제로"
	line "치료하세요!"
	prompt

_ViridianBlackboardBurnText::
	text "화상 상태가 되면"
	line "힘과 스피드가 떨어지고"
	cont "지속적으로 데미지가"
	cont "발생합니다"

	para "화상 상태는"
	line "배틀후에도 유지됩니다"

	para "화상치료제로"
	line "치료하세요!"
	prompt

_ViridianBlackboardFrozenText::
	text "얼음 상태인 포켓몬은"
	line "꼼작 할 수 없습니다!"

	para "배틀이 끝난후에도"
	line "얼음 상태는 지속됩니다"

	para "얼음상태치료제로"
	line "치료하세요!"
	prompt

_VermilionGymTrashText::
	text "아무것도 없다!"
	line "그냥 쓰레기만 있다"
	done

_VermilionGymTrashSuccessText1::
	text "얏호!"
	line "쓰레기통 바닥에 스위치가 있다!"
	cont "스위치를 키자!"

	para "1번째 전자자물쇠가"
	line "풀렸다!@@"

_VermilionGymTrashSuccessText2::
	text "얏호!"
	line "쓰레기통 바닥에 스위치가 있다!"
	cont "스위치를 키자!"
	prompt

_VermilionGymTrashSuccessText3::
	text "2번째 전자자물쇠가"
	line "풀렸다!"

	para "자동문이 열렸다!@@"

_VermilionGymTrashFailText::
	text "아무것도 없다!"
	line "그냥 쓰레기만 있다"
	cont "전자자물쇠가 리셋됐다!@@"

_FoundHiddenItemText::
	text $52, "는(은)"
	line "@"
	TX_RAM wcd6d
	text "을(를) 발견했다!@@"

_HiddenItemBagFullText::
	text "하지만 "
	db $52, "는(은)"
	line "더 이상은 들 수 없어!"
	done

_FoundHiddenCoinsText::
	text $52, "는(은)"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text "개의 동전을 발견했다!@@"

_FoundHiddenCoins2Text::
	text $52, "는(은)"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text "개의 동전을 발견했다!@@"

_DroppedHiddenCoinsText::
	text ""
	para "아이고!"
	line "동전이 떨어져있다!"
	done

_IndigoPlateauStatuesText1::
	text "이곳은 석영고원"
	prompt

_IndigoPlateauStatuesText2::
	text "이곳는 포켓몬 리그"
	line "트레이너들의 최종목표"
	done

_IndigoPlateauStatuesText3::
	text "이곳은 포켓몬 리그"
	line "최고의 포켓몬 권위자"
	done

_PokemonBooksText::
	text "포켓몬 책들로"
	line "빼곡하게 채워져 있다!"
	done

_DiglettSculptureText::
	text "디그다 조각상이다"
	done

_ElevatorText::
	text "엘리베이터다"
	done

_TownMapText::
	text "타운맵이다@@"

_PokemonStuffText::
	text "우와! 엄청난"
	line "포켓몬 상품들이다!"
	done

_OutOfSafariBallsText::
	text "안내방송『딩-동!"

	para "사파리볼을"
	line "다 쓰셨습니다!"
	prompt

_WildRanText::
	text "야생의 @"
	TX_RAM wEnemyMonNick
	text "는(은)"
	line "도망쳤다!"
	prompt

_EnemyRanText::
	text "적의 @"
	TX_RAM wEnemyMonNick
	text "는(은)"
	line "도망쳤다!"
	prompt

_HurtByPoisonText::
	text $5A, "는(은)"
	line "독의 데미지를 입고 있다!"
	prompt

_HurtByBurnText::
	text $5A, "는(은)"
	line "화상의 데미지를 입었다!"
	prompt

_HurtByLeechSeedText::
	text "기생목이 "
	db $5A, "의"
	line "체력을 빼앗았다!"
	prompt

_EnemyMonFaintedText::
	text "적의 @"
	TX_RAM wEnemyMonNick
	text "는(은)"
	line "쓰러졌다!"
	prompt

_MoneyForWinningText::
	text $52, "는(은) 상금으로"
	line "@"
	TX_BCD wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "원 손에 넣었다!"
	prompt

_TrainerDefeatedText::
	text $52, "는(은)"
	line "@"
	TX_RAM wTrainerName
	text "와(과)의"
	cont "승부에서 이겼다!"
	prompt

_PlayerMonFaintedText::
	TX_RAM wBattleMonNick
	text "는(은)"
	line "쓰러졌다!"
	prompt

_UseNextMonText::
	text "다음 포켓몬을 사용하겠습니까?"
	done

_Sony1WinText::
	text $53,"『됐어!"
	line "좋은 포켓몬을 골랐나보군!"
	prompt

_PlayerBlackedOutText2::
	text $52, "의 곁에는"
	line "싸울 수 있는 포켓몬이 없다!"

	para $52, "는(은)"
	line "눈앞이 깜깜해졌다!"
	prompt

_LinkBattleLostText::
	text "<PLAYER>는(은)"
	line "@"
	TX_RAM wTrainerName
	text "와(과)의 승부에서 졌다!!"
	prompt

_TrainerAboutToUseText::
	TX_RAM wTrainerName
	text "는(은)"
	line "@"
	TX_RAM wEnemyMonNick
	text "를(을)"
	cont "꺼내려 하고있다"

	para $52, "(이)도 포켓몬을"
	line "바꾸겠습니까?"
	done

_TrainerSentOutText::
	TX_RAM wTrainerName
	text "는(은)"
	line "@"
	TX_RAM wEnemyMonNick
	text "를(을)"
	cont "차례로 꺼냈다"
	done

_NoWillText::
	text "싸울 기력이 없다!"
	prompt

_CantEscapeText::
	text "도망칠 수가 없다!"
	prompt

_NoRunningText::
	text "안 되!"
	line "승부도중에"
	cont "상대에게 등을 보일 수 없어!"
	prompt

_GotAwayText::
	text "성공적으로 도망쳤다!"
	prompt

_ItemsCantBeUsedHereText::
	text "여기서는 도구를"
	line "사용할 수 없습니다"
	prompt

_AlreadyOutText::
	TX_RAM wBattleMonNick
	text "는(은)"
	line "이미 나가 있습니다"
	prompt

_MoveNoPPText::
	text "기술의 남은 포인트가 없다!"
	prompt

_MoveDisabledText::
	text "기술을 봉인 당해있다!"
	prompt

_NoMovesLeftText::
	TX_RAM wBattleMonNick
	text "는(은)"
	line "낼 수 있는 기술이 없다!"
	done

_MultiHitText::
	text "적을@"
	TX_NUM wPlayerNumHits, 1, 1
	text "회 맞혔다!"
	prompt

_ScaredText::
	TX_RAM wBattleMonNick
	text "는(은) 너무 겁먹어서"
	line "움직일 수 없다!"
	prompt

_GetOutText::
	text "유령『여기서 나가……"
	line "썩 꺼져……"
	prompt

_FastAsleepText::
	text $5A, "는(은)"
	line "쿨쿨 자고 있다"
	prompt

_WokeUpText::
	text $5A, "는(은)"
	line "눈을 떴다!"
	prompt

_IsFrozenText::
	text $5A, "는(은)"
	line "얼어버려서 움직일 수 없다!!"
	prompt

_FullyParalyzedText::
	text $5A, "는(은)"
	line "마비되었다!"
	prompt

_FlinchedText::
	text $5A, "는(은)"
	line "기가 죽었다"
	prompt

_MustRechargeText::
	text "공격의 반동으로"
	line $5A,"는(은) 꼼짝못한다";파괴광선같은 1턴쉬기 기술류로 확인
	prompt

_DisabledNoMoreText::
	text $5A,"의"
	line "사슬묶기가 풀렸다!"
	prompt

_IsConfusedText::
	text $5A, "는(은)"
	line "혼란에 빠져있다!"
	prompt

_HurtItselfText::
	text "영문도 모르고"
	line "자신을 공격했다!"
	prompt

_ConfusedNoMoreText::
	text $5A, "는(은)"
	line "혼란이 풀렸다!"
	prompt

_SavingEnergyText::
	text $5A, "는(은)"
	line "힘을 모았다!"
	prompt

_UnleashedEnergyText::
	text $5A, "는(은)"
	line "힘을 방출했다!"
	prompt

_ThrashingAboutText::
	text $5A, "는(은)"
	line "난동이 나고 있다!"
	done

_AttackContinuesText::
	text $5A,"의"
	line "데미지를 받고있다";김밥말이같은 조이기 기술
	done

_CantMoveText::
	text $5A, "는(은)"
	line "움직일 수 없다!"
	prompt

_MoveIsDisabledText::
	text "<USER>의"
	line "@"
	TX_RAM wcd6d
	text " 은(는)"
	cont "사용할 수 없다!"
	prompt

_MonName1Text::
	text "<USER>@@"

_Used1Text::
	text "",$07,$97
	line "@@"

_Used2Text::
	text "",$07,$97
	line "@@"
	;text ""
	;line "used @@"

	
_InsteadText::
	text "대신에 "
	cont "@@"

_CF4BText::
	TX_RAM wcf4b
	text "@"

_ExclamationPoint1Text::
	; text "!"
	; done

_ExclamationPoint2Text::
	; text "!"
	; done

_ExclamationPoint3Text::
	; text "!"
	; done

_ExclamationPoint4Text::
	; text "!"
	; done

_ExclamationPoint5Text::
	text "!"
	done

_AttackMissedText::
	text "<USER>의"
	line "공격은 빗나갔다!"
	prompt

_KeptGoingAndCrashedText::
	text "<USER>도"
	line "약간의 데미지를 입었다"
	cont "!"
	prompt

_UnaffectedText::
	text $59,"에게는"
	line "전혀 효과가 없다!"
	prompt

_DoesntAffectMonText::
	text $59,"에게는"
	line "효과가 없는 듯 하다……"
	prompt

_CriticalHitText::
	text "급소에 맞았다!"
	prompt

_OHKOText::
	text "일격필살!"
	prompt

_LoafingAroundText::
	TX_RAM wBattleMonNick
	text "는(은)"
	line "게으름을 피우고 있다"
	prompt

_BeganToNapText::
	TX_RAM wBattleMonNick
	text "는(은)"
	line "낮잠자기 시작했다!"
	prompt

_WontObeyText::
	TX_RAM wBattleMonNick
	text "는(은)"
	line "말을 듣지 않는다!"
	prompt

_TurnedAwayText::
	TX_RAM wBattleMonNick
	text " 는(은)"
	line "외면했다"
	prompt

_IgnoredOrdersText::
	TX_RAM wBattleMonNick
	text "는(은)"
	line "명령을 무시했다!"
	prompt

_SubstituteTookDamageText::
	text $52, "를(을) 대신해서"
	line "분신이 공격을 받았다!"
	prompt

_SubstituteBrokeText::
	text $52,"의 분신은"
	line "사라져버렸다……"
	prompt

_BuildingRageText::
	text $5A,"의 분노의"
	line "볼티지가 올라간다!"
	prompt

_MirrorMoveFailedText::
	text "그러나 따라하기는"
	next "실패로 끝났다!"
	prompt

_HitXTimesText::
	text "@"
	TX_NUM wEnemyNumHits, 1, 1
	text "회 맞았다!"
	prompt

_GainedText::
	TX_RAM wcd6d
	text "는(은)"
	line "@@"
	;
	;원문은 gained이며 아래의 경험치를 얻었다와 연결되는 문장입니다
	;영어와 한국어의 어법차이때문에 다른곳에서 문제가 발생할수 있기에 원문을 적어둡니다
_WithExpAllText::
	text "학습장치를 통해"
	cont "@@"

_BoostedText::
	text "추가된"
	cont "@@"

_ExpPointsText::
	TX_NUM wExpAmountGained, 2, 4
	text " 경험치를 얻었다!"
	prompt

_GrewLevelText::
	TX_RAM wcd6d
	text " 의 레벨이"
	line "@"
	TX_NUM wCurEnemyLVL, 1, 3
	text "(으)로 되었다!@@"

_WildMonAppearedText::
	text "앗! 야생의"
	line "@"
	TX_RAM wEnemyMonNick
	text "(이)가"
	cont "튀어나왔다!"
	prompt

_HookedMonAttackedText::
	text "낚아올린"
	line "@"
	TX_RAM wEnemyMonNick
	text "(이)가"
	cont "덤벼들었다!"
	prompt


_EnemyAppearedText::
	TX_RAM wEnemyMonNick
	text "(이)가"
	line "튀어나왔다!"
	prompt

_TrainerWantsToFightText::
	TX_RAM wTrainerName
	text "(이)가"
	line "승부를 걸어왔다!"
	prompt

_UnveiledGhostText::
	text "실프스코프로 유령의"
	line "정체를 간파했다!"
	prompt

_GhostCantBeIDdText::
	text "이럴수가! 유령의"
	line "정체를 알 수 없다!"
	prompt

_GoText::
	text "가랏! @@"

_DoItText::
	text "나가랏! @@"

_GetmText::
	text "힘내라! @@"

_EnemysWeakText::
	text "상대가 약해져 있다!"
	line "찬스닷! @@"

_PlayerMon1Text::
	TX_RAM wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	TX_RAM wBattleMonNick
	text " @@"

_EnoughText::
	text "이젠 됐어@@"

_OKExclamationText::
	text "좋아!@@"

_GoodText::
	text "잘 싸웠다!@@"

_ComeBackText::
	text ""
	line "돌아와!"
	done

_SuperEffectiveText::
	text "효과는 굉장했다!"
	prompt
	
_NotVeryEffectiveText::
	text "<TARGET>에게"
	line "효과가 없다…"
	prompt

_SafariZoneEatingText::
	text "야생의 @"
	TX_RAM wEnemyMonNick
	text "는(은)"
	line "먹이를 먹고 있다!"
	prompt

_SafariZoneAngryText::
	text "야생의 @"
	TX_RAM wEnemyMonNick
	text "는(은)"
	line "화가 나있다!"
	prompt
	
; money related
_PickUpPayDayMoneyText::
	text $52,"는(은)"
	line "@"
	TX_BCD wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "원 주웠다!"
	prompt

_ClearSaveDataText::
	text "모든 세이브 데이터 영역을"
	line "지우겠습니까?"
	done

_WhichFloorText::
	text "몇 층으로"
	line "가시겠습니까?"
	done

_PartyMenuNormalText::
	text "포켓몬을 골라 주십시오"
	done

_PartyMenuItemUseText::
	text "어느 포켓몬에 사용하겠습니까?"
	done

_PartyMenuBattleText::
	text "어느 포켓몬을 꺼내겠습니까?"
	done

_PartyMenuUseTMText::
	text "어느 포켓몬에게 가르치겠습니까?"
	done

_PartyMenuSwapMonText::
	text "어디로 이동하겠습니까?"
	done

_PotionText::
	TX_RAM wcd6d
	text "의 체력이"
	line "@"
	TX_NUM wHPBarHPDifference, 2, 3
	text "회복되었다!"
	done

_AntidoteText::
	TX_RAM wcd6d
	text "의 독은"
	line "깨끗이 사라졌다!"
	done

_ParlyzHealText::
	TX_RAM wcd6d
	text "의 몸에"
	line "마비가 사라졌다!"
	done

_BurnHealText::
	TX_RAM wcd6d
	text "의"
	line "화상이 회복되었다!"
	done

_IceHealText::
	TX_RAM wcd6d
	text "의 몸에"
	line "얼음이 녹았다!"
	done

_AwakeningText::
	TX_RAM wcd6d
	text "는(은)"
	line "눈을 떴다!"
	done

_FullHealText::
	TX_RAM wcd6d
	text "는(은)"
	line "건강하게 되었다!"
	done

_ReviveText::
	TX_RAM wcd6d
	text "는(은)"
	line "기운을 되찾았다!"
	done

_RareCandyText::
	TX_RAM wcd6d
	text "의 레벨이"
	line "@"
	TX_NUM wCurEnemyLVL, 1, 3
	text "(으)로 되었다!@@"

_TurnedOnPC1Text::
	text "<PLAYER>는(은)"
	line "컴퓨터의 스위치를 켰다!"
	prompt

_AccessedBillsPCText::
	text "이수재의 컴퓨터와 연결했다!"

	para "포켓몬 맡김 시스템을"
	line "불러냈습니다!"
	prompt

_AccessedSomeonesPCText::
	text "누군가의 컴퓨터와 연결했다!"

	para "포켓몬 맡김 시스템을"
	line "불러냈습니다!"
	prompt

_AccessedMyPCText::
	text "자신의 컴퓨터와 연결했다!"

	para "도구 맡김 시스템을"
	line "불러냈습니다!"
	prompt

_TurnedOnPC2Text::
	text "<PLAYER>는(은)"
	line "컴퓨터의 스위치를 넣었다!"
	prompt

_WhatDoYouWantText::
	text "무엇을 하겠습니까?"
	done

_WhatToDepositText::
	text "무엇을"
	line "맡기겠습니까?"
	done

_DepositHowManyText::
	text "몇 개를 맡기겠습니까?"
	done

_ItemWasStoredText::
	TX_RAM wcd6d
	text "를(을)"
	line "컴퓨터에 맡겼습니다"
	prompt

_NothingToDepositText::
	text "도구를 하나도"
	line "가지고 있지 않아!"
	prompt

_NoRoomToStoreText::
	text "도구가 가득 있습니다"
	line "더 이상 맡길 수 없습니다!"
	prompt

_WhatToWithdrawText::
	text "무엇을"
	line "꺼내겠습니까?"
	done

_WithdrawHowManyText::
	text "몇 개를 꺼내겠습니까?"
	done

_WithdrewItemText::
	TX_RAM wcd6d
	text "를(을)"
	line "컴퓨터서 꺼냈습니다"
	prompt

_NothingStoredText::
	text "도구를 하나도"
	line "가지고 있지 않아!"
	prompt

_CantCarryMoreText::
	text "지닌 물건이 잔뜩 있어서"
	line "꺼낼 수 없습니다!"
	prompt

_WhatToTossText::
	text "무엇을"
	line "버리겠습니까?"
	done

_TossHowManyText::
	text "몇 개 버리겠습니까?"
	done

_AccessedHoFPCText::
	text "포켓몬 리그 기록에"
	line "접속했습니다!"

	para "명예의 전당 리스트에"
	line "접속했습니다!"
	prompt

_SwitchOnText::
	text "컴퓨터의 스위치를 넣었다!"
	prompt

_WhatText::
	text "무슨일이지?"
	done

_DepositWhichMonText::
	text "어느 포켓몬을"
	line "맡기겠습니까?"
	done

_MonWasStoredText::
	TX_RAM wcf4b
	text "를(을)"
	line "박스 @"
	TX_RAM wBoxNumString
	text "에 맡겼다!"
	prompt

_CantDepositLastMonText::
	text "싸울 포켓몬이 없어지게 됩니다!"
	prompt

_BoxFullText::
	text "박스가 가득찼습니다!"
	prompt

_MonIsTakenOutText::
	TX_RAM wcf4b
	text "를(을) 찾았다!"
	;line "꺼냈습니다."
	;cont "@"
	;TX_RAM wcf4b
	;text "찾았습니다."
	prompt

_NoMonText::
	text "여기에는 맡겨둔"
	line "포켓몬이 없습니다!"
	prompt

_CantTakeMonText::
	text "더이상 데리고 갈 수 없습니다!"
	prompt

_ReleaseWhichMonText::
	text "정말로 놓아주겠습니까?"
	done

_OnceReleasedText::
	text "놓아준 포켓몬은"
	line "영원히 작별입니다"
	para "@"
	TX_RAM wcf4b
	text "을(를)"
	cont "정말로 놓아주겠습니까?"
	done

_MonWasReleasedText::
	TX_RAM wcf4b
	text "를(을) 밖에 놓아주었다"
	line "잘가-!@"

_CF4BExclamationText::
	TX_RAM wcf4b
	text "!"
	prompt

_RequireCoinCaseText::
	text "동전케이스가"
	line "필요합니다!@@"

_ExchangeCoinsForPrizesText::
	text "게임을 해서 모은 동전은"
	line "경품으로 교환할 수 있습니다!"
	prompt

_WhichPrizeText::
	text "어느 것을 고르시겠습니까?"
	done

_HereYouGoText::
	text "네 여기 있습니다!!@@"

_SoYouWantPrizeText::
	text "@"
	TX_RAM wcd6d
	text "(으)로"
	line "하시겠습니까?"
	done

_SorryNeedMoreCoinsText::
	text "동전이 부족하군요@@"

_OopsYouDontHaveEnoughRoomText::
	text "그 이상은 지닐 수 없습니다@@"

_OhFineThenText::
	text "괜찮은듯합니다@@"

_GetDexRatedText::
	text "현재의 포켓몬 도감을"
	line "평가받겠습니까?"
	done

_ClosedOaksPCText::
	text "…… 오박사의 컴퓨터와의"
	line "접속을 끝냈다!@@"

_AccessedOaksPCText::
	text "오박사의 컴퓨터와 연결했다!"

	para "포켓몬 도감"
	line "평가 시스템을 불러냈습니다!"
	prompt

_WhereWouldYouLikeText::
	text "어디로 가시겠습니까?"
	done

_PleaseWaitText::
	text "알겠습니다"
	line "잠시만 기다려주세요"
	done

_LinkCanceledText::
	text "통신이 취소되었습니다"
	done

INCLUDE "text/oakspeech.asm"

_DoYouWantToNicknameText::
	text "@"
	TX_RAM wcd6d
	text "에게"
	line "이름을 붙이겠습니까?"
	done

_YourNameIsText::
	text "맞다!"
	line "네 이름은 "
	db $52,"이었지!"
	prompt

_HisNameIsText::
	text "그래 맞아! 기억났구나!"
	line "이 아이의 이름은 "
	cont $53, "이었지!"
	prompt

_WillBeTradedText::
	TX_RAM wNameOfPlayerMonToBeTraded
	text "과(와)"
	line "@"
	TX_RAM wcd6d
	text "를(을)"
	cont "교환합니다!"
	done

_Char00Text::
	TX_NUM hSpriteIndexOrTextID,1,2
	text " 오류"
	done

_Char55Text::
	text $4B,"@@"

INCLUDE "text/maps/DiglettsCaveRoute2.asm"
INCLUDE "text/maps/ViridianForestNorthGate.asm"
INCLUDE "text/maps/Route2TradeHouse.asm"
INCLUDE "text/maps/Route2Gate.asm"
INCLUDE "text/maps/ViridianForestSouthGate.asm"
INCLUDE "text/maps/MtMoonPokecenter.asm"
INCLUDE "text/maps/SaffronGates.asm"
INCLUDE "text/maps/Daycare.asm"


SECTION "Text 4", ROMX ; BANK $23

INCLUDE "text/maps/Daycare_2.asm"
INCLUDE "text/maps/UndergroundPathRoute6.asm"
INCLUDE "text/maps/UndergroundPathRoute7.asm"
INCLUDE "text/maps/UndergroundPathRoute7Copy.asm"
INCLUDE "text/maps/UndergroundPathRoute8.asm"
INCLUDE "text/maps/RockTunnelPokecenter.asm"
INCLUDE "text/maps/RockTunnel1F.asm"
INCLUDE "text/maps/PowerPlant.asm"
INCLUDE "text/maps/Route11Gate1F.asm"
INCLUDE "text/maps/Route11Gate2F.asm"
INCLUDE "text/maps/DiglettsCaveRoute11.asm"
INCLUDE "text/maps/Route12Gate1F.asm"
INCLUDE "text/maps/Route12Gate2F.asm"
INCLUDE "text/maps/Route12SuperRodHouse.asm"
INCLUDE "text/maps/Route15Gate1F.asm"
INCLUDE "text/maps/Route15Gate2F.asm"
INCLUDE "text/maps/Route16Gate1F.asm"
INCLUDE "text/maps/Route16Gate2F.asm"
INCLUDE "text/maps/Route16FlyHouse.asm"
INCLUDE "text/maps/Route18Gate1F.asm"
INCLUDE "text/maps/Route18Gate2F.asm"
INCLUDE "text/maps/Route22Gate.asm"
INCLUDE "text/maps/VictoryRoad2F.asm"
INCLUDE "text/maps/BillsHouse.asm"
INCLUDE "text/maps/Route1.asm"
INCLUDE "text/maps/Route2.asm"
INCLUDE "text/maps/Route3.asm"
INCLUDE "text/maps/Route4.asm"
INCLUDE "text/maps/Route5.asm"
INCLUDE "text/maps/Route6.asm"
INCLUDE "text/maps/Route7.asm"
INCLUDE "text/maps/Route8.asm"
INCLUDE "text/maps/Route9.asm"
INCLUDE "text/maps/Route10.asm"
INCLUDE "text/maps/Route11.asm"


SECTION "Text 5", ROMX ; BANK $24

INCLUDE "text/maps/Route11_2.asm"
INCLUDE "text/maps/Route12.asm"
INCLUDE "text/maps/Route13.asm"
INCLUDE "text/maps/Route14.asm"
INCLUDE "text/maps/Route15.asm"
INCLUDE "text/maps/Route16.asm"
INCLUDE "text/maps/Route17.asm"
INCLUDE "text/maps/Route18.asm"
INCLUDE "text/maps/Route19.asm"
INCLUDE "text/maps/Route20.asm"
INCLUDE "text/maps/Route21.asm"
INCLUDE "text/maps/Route22.asm"
INCLUDE "text/maps/Route23.asm"
INCLUDE "text/maps/Route24.asm"


SECTION "Text 6", ROMX ; BANK $25

INCLUDE "text/maps/Route24_2.asm"
INCLUDE "text/maps/Route25.asm"

_FileDataDestroyedText::
	text "레포트의 내용이"
	line "손상되어 있습니다"
	prompt

_WouldYouLikeToSaveText::
	text "여기까지의 활약을"
	line "포켓몬 레포트에 기록하겠습니까?"
	done

_GameSavedText::
	text "<PLAYER>는(은)"
	line "레포트에 정확히 기록했습니다!"
	done

_OlderFileWillBeErasedText::
	text "이전에 기록한 레포트에"
	line "덮어써도 괜찮겠습니까?"
	done

_WhenYouChangeBoxText::
	text "박스를 바꾸면"
	line "동시에 레포트가 기록되어집니다"

	para "괜찮겠습니까?"
	done

_ChooseABoxText::
	text "박스를 골라주세요@@"

_EvolvedText::
	text "축하합니다!"
	line "@"
	TX_RAM wcf4b
	text "는(은)"
	done

_IntoText::
	text ""
	cont "@"
	TX_RAM wcd6d
	text "(으)로"
	cont "진화했다!"
	done

_StoppedEvolvingText::
	text "얼라리……?"
	line "@"
	TX_RAM wcf4b
	text "의 변화가"
	cont "멈췄다!"
	prompt

_IsEvolvingText::
	text "오잉!?"
	line "@"
	TX_RAM wcf4b
	text "의 상태가……!"
	done

_FellAsleepText::
	text $59,"는(은)"
	line "잠들어버렸다!"
	prompt

_AlreadyAsleepText::
	text $59,"는(은) 이미"
	line "이미 잠들어있다!"
	prompt

_PoisonedText::
	text $59,"는(은)"
	line "독을 뒤집어썼다!"
	prompt

_BadlyPoisonedText::
	text $59,"는(은)"
	line "벌써 독을 뒤집어썼다!"
	prompt

_BurnedText::
	text $59,"는(은)"
	line "화상을 입었다!"
	prompt

_FrozenText::
	text $59,"는(은)"
	line "꽁꽁 얼어버렸다!"
	prompt

_FireDefrostedText::
	text $59,"의"
	line "얼음이 녹았다!"
	prompt

_MonsStatsRoseText::
	text $5A, "의"
	line "@"
	TX_RAM wcf4b
	text "이(가) @@"

_GreatlyRoseText::
	text $4c, "부쩍@@"

_RoseText::
	text " 올랐다!"
	prompt

_MonsStatsFellText::
	text $59, "의"
	line "@"
	TX_RAM wcf4b
	text "이(가) @@"

_GreatlyFellText::
	text $4c, "확@@"

_FellText::
	text " 떨어졌다!"
	prompt

_RanFromBattleText::
	text $5A, "는(은) 전투에서"
	line "이탈했다!"
	prompt

_RanAwayScaredText::
	text $59, "는(은) 두려워져서"
	line "도망쳤다!"
	prompt

_WasBlownAwayText::
	text $59, "는(은)"
	line "내동댕이쳐졌다!"
	prompt

_ChargeMoveEffectText::
	text $5A,"@@"

_MadeWhirlwindText::
	text "의 주변에서"
	line "공기가 소용돌이를 감는다!"
	prompt

_TookInSunlightText::
	text "는(은)"
	line "빛을 흡수했다!"
	prompt

_LoweredItsHeadText::
	text "는(은)"
	line "목을 집어넣었다!"
	prompt

_SkyAttackGlowingText::
	text "는(은)"
	line "세찬 빛이 감싼다!"
	prompt

_FlewUpHighText::
	text "는(은)"
	line "하늘높이 날아올랐다!"
	prompt

_DugAHoleText::
	text "는(은)"
	line "구멍을 파서 땅속으로 숨었다!"
	prompt

_BecameConfusedText::
	text $59,"는(은)"
	line "혼란해 있다!"
	prompt

_MimicLearnedMoveText::
	text $5A,"는(은)"
	line "@"
	TX_RAM wcd6d
	text "를(을) 배웠다!"
	prompt

_MoveWasDisabledText::
	text $59,"의"
	line "@"
	TX_RAM wcd6d
	text "를(을)"
	cont "봉해버렸다!"
	prompt

_NothingHappenedText::
	text "그러나 아무것도 일어나지 않는다!"
	prompt

_NoEffectText::
	text "그러나 기술이 잘 먹히지 않았다!"
	prompt

_ButItFailedText::
	text "기술이 잘 먹히지 않았다!"
	prompt

_DidntAffectText::
	text "그러나 "
	db $59,"에는"
	line "듣지 않았다!"
	prompt

_IsUnaffectedText::
	text $59,"에는"
	line "듣지 않았다!"
	prompt

_ParalyzedMayNotAttackText::
	text $59,"는(은) 마비되어서"
	line "기술을 펼치기 힘들게되었다!"
	prompt

_SubstituteText::
	text "분신이 나타났다!"
	prompt

_HasSubstituteText::
	text $5A,"의"
	line "분신이 나타났다!"
	prompt

_TooWeakSubstituteText::
	text "그러나 분신을 불러내기에는"
	line "체력이 부족했다!"
	prompt

_WasSeededText::
	text $59,"에게"
	line "씨를 심었다!"
	prompt

_EvadedAttackText::
	text $59,"는(은)"
	line "공격을 피했다!"
	prompt

_HitWithRecoilText::
	text $5A,"는(은) 공격의"
	line "반동을 입었다!"
	prompt

_ConvertedTypeText::
	text $5A,"는(은)"
	line "타입이 바뀌었다!"
	prompt

_StatusChangesEliminatedText::
	text "모든 스테이터스가"
	line "원래대로 되돌아왔다!"
	prompt

_GettingPumpedText::
	text $5A, "는(은)"
	line "꼼짝않고 있다!"
	prompt

_StartedSleepingEffect::
	text $5A, "는(은)"
	line "잠들기 시작했다!"
	done

_FellAsleepBecameHealthyText::
	text $5A, "는(은)"
	line "건강해져서 잠자기 시작했다!"
	done

_RegainedHealthText::
	text $5A, "는(은) 체력을"
	line "회복했다!"
	prompt

_TransformedText::
	text $5A, "는(은)"
	line "@"
	TX_RAM wcd6d
	text "(으)로"
	cont "변신했다!"
	prompt

_LightScreenProtectedText::
	text $5A, "는(은) 빛의 장막"
	line "으로 특정 공격에 강하게되었다!"
	prompt

_ReflectGainedArmorText::
	text $5A, "는(은) 리플렉터로"
	line "타격공격에 강하게되었다!"
	prompt

_ShroudedInMistText::
	text $5A, "는(은)"
	line "흰안개에 둘러싸였다!"
	prompt

_CoinsScatteredText::
	text "금화가 주변에 산산히 흩어졌다!"
	prompt

_SuckedHealthText::
	text $59,"(으)로부터"
	line "체력을 흡수했다!"
	prompt

_DreamWasEatenText::
	text $59,"의"
	line "꿈을 먹었다!"
	prompt

_TradeCenterText1::
	text "!"
	done

_ColosseumText1::
	text "!"
	done
	
INCLUDE "text/maps/RedsHouse1F.asm"
INCLUDE "text/maps/BluesHouse.asm"
INCLUDE "text/maps/OaksLab.asm"
INCLUDE "text/maps/ViridianPokecenter.asm"
INCLUDE "text/maps/ViridianMart.asm"
INCLUDE "text/maps/ViridianSchoolHouse.asm"
INCLUDE "text/maps/ViridianNicknameHouse.asm"
INCLUDE "text/maps/ViridianGym.asm"
INCLUDE "text/maps/Museum1F.asm"
INCLUDE "text/maps/Museum2F.asm"
INCLUDE "text/maps/PewterGym.asm"


SECTION "Text 7", ROMX ; BANK $26

INCLUDE "text/maps/PewterGym_2.asm"
INCLUDE "text/maps/PewterNidoranHouse.asm"
INCLUDE "text/maps/PewterMart.asm"
INCLUDE "text/maps/PewterSpeechHouse.asm"
INCLUDE "text/maps/PewterPokecenter.asm"
INCLUDE "text/maps/CeruleanTrashedHouse.asm"
INCLUDE "text/maps/CeruleanTradeHouse.asm"
INCLUDE "text/maps/CeruleanPokecenter.asm"
INCLUDE "text/maps/CeruleanGym.asm"
INCLUDE "text/maps/BikeShop.asm"
INCLUDE "text/maps/CeruleanMart.asm"
INCLUDE "text/maps/CeruleanBadgeHouse.asm"
INCLUDE "text/maps/LavenderPokecenter.asm"
INCLUDE "text/maps/PokemonTower1F.asm"
INCLUDE "text/maps/PokemonTower2F.asm"
INCLUDE "text/maps/PokemonTower3F.asm"
INCLUDE "text/maps/PokemonTower4F.asm"
INCLUDE "text/maps/PokemonTower5F.asm"
INCLUDE "text/maps/PokemonTower6F.asm"
INCLUDE "text/maps/PokemonTower7F.asm"
INCLUDE "text/maps/MrFujisHouse.asm"
INCLUDE "text/maps/LavenderMart.asm"
INCLUDE "text/maps/LavenderCuboneHouse.asm"
INCLUDE "text/maps/NameRatersHouse.asm"
INCLUDE "text/maps/VermilionPokecenter.asm"
INCLUDE "text/maps/PokemonFanClub.asm"
INCLUDE "text/maps/VermilionMart.asm"
INCLUDE "text/maps/VermilionGym.asm"


SECTION "Text 8", ROMX ; BANK $27

INCLUDE "text/maps/VermilionGym_2.asm"
INCLUDE "text/maps/VermilionPidgeyHouse.asm"
INCLUDE "text/maps/VermilionDock.asm"
INCLUDE "text/maps/VermilionOldRodHouse.asm"
INCLUDE "text/maps/CeladonMart1F.asm"
INCLUDE "text/maps/CeladonMart2F.asm"
INCLUDE "text/maps/CeladonMart3F.asm"
INCLUDE "text/maps/CeladonMart4F.asm"
INCLUDE "text/maps/CeladonMartRoof.asm"
INCLUDE "text/maps/CeladonMansion1F.asm"
INCLUDE "text/maps/CeladonMansion2F.asm"
INCLUDE "text/maps/CeladonMansion3F.asm"
INCLUDE "text/maps/CeladonMansionRoof.asm"
INCLUDE "text/maps/CeladonMansionRoofHouse.asm"
INCLUDE "text/maps/CeladonPokecenter.asm"
INCLUDE "text/maps/CeladonGym.asm"
INCLUDE "text/maps/GameCorner.asm"
INCLUDE "text/maps/CeladonMart5F.asm"
INCLUDE "text/maps/GameCornerPrizeRoom.asm"
INCLUDE "text/maps/CeladonDiner.asm"
INCLUDE "text/maps/CeladonChiefHouse.asm"
INCLUDE "text/maps/CeladonHotel.asm"
INCLUDE "text/maps/FuchsiaMart.asm"
INCLUDE "text/maps/FuchsiaBillsGrandpasHouse.asm"
INCLUDE "text/maps/FuchsiaPokecenter.asm"
INCLUDE "text/maps/WardensHouse.asm"
INCLUDE "text/maps/SafariZoneGate.asm"
INCLUDE "text/maps/FuchsiaGym.asm"


SECTION "Text 9", ROMX ; BANK $28

INCLUDE "text/maps/FuchsiaGym_2.asm"
INCLUDE "text/maps/FuchsiaMeetingRoom.asm"
INCLUDE "text/maps/FuchsiaGoodRodHouse.asm"
INCLUDE "text/maps/PokemonMansion1F.asm"
INCLUDE "text/maps/CinnabarGym.asm"
INCLUDE "text/maps/CinnabarLab.asm"
INCLUDE "text/maps/CinnabarLabTradeRoom.asm"
INCLUDE "text/maps/CinnabarLabMetronomeRoom.asm"
INCLUDE "text/maps/CinnabarLabFossilRoom.asm"
INCLUDE "text/maps/CinnabarPokecenter.asm"
INCLUDE "text/maps/CinnabarMart.asm"
INCLUDE "text/maps/IndigoPlateauLobby.asm"
INCLUDE "text/maps/CopycatsHouse1F.asm"
INCLUDE "text/maps/CopycatsHouse2F.asm"
INCLUDE "text/maps/FightingDojo.asm"
INCLUDE "text/maps/SaffronGym.asm"
INCLUDE "text/maps/SaffronPidgeyHouse.asm"
INCLUDE "text/maps/SaffronMart.asm"
INCLUDE "text/maps/SilphCo1F.asm"
INCLUDE "text/maps/SaffronPokecenter.asm"
INCLUDE "text/maps/MrPsychicsHouse.asm"

_PokemartGreetingText::
	text "어서오세요!"
	next "물건을 사러 오셨군요!"
	done

_PokemonFaintedText::
	TX_RAM wcd6d
	text "는(은)"
	line "쓰러졌다!"
	done

_PlayerBlackedOutText::
	text $52,"의 곁에는"
	line "싸울 수 있는 포켓몬이 없다!"

	para $52,"는(은)"
	line "눈앞이 깜깜해졌다!"
	prompt

_RepelWoreOffText::
	text "스프레이의 효과가 떨어졌다"
	done

_PokemartBuyingGreetingText::
	text "예! 여기 있습니다!"
	done

_PokemartTellBuyPriceText::
	TX_RAM wcf4b
	text "는(은)"
	line "@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "원입니다"
	cont "괜찮겠습니까?"
	done

_PokemartBoughtItemText::
	text "예! 여기 있습니다!"
	line "고맙습니다!"
	prompt

_PokemartNotEnoughMoneyText::
	text "돈이 부족하군요!"
	prompt

_PokemartItemBagFullText::
	text "그 이상은"
	line "지닐 수 없어요!!"
	prompt

_PokemonSellingGreetingText::
	text "무엇을"
	line "판매하시겠습니까?"
	done

_PokemartTellSellPriceText::
	text "@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "원으로"
	line "쳐서 받겠습니다"
	
	cont "괜찮겠습니까?"
	done

_PokemartItemBagEmptyText::
	text "도구를 한개도"
	line "지니고 있지 않습니다!"
	prompt

_PokemartUnsellableItemText::
	text "그 도구를"
	line "사들일 수는 없습니다!"
	prompt

_PokemartThankYouText::
	text "또 오세요!"
	done

_PokemartAnythingElseText::
	text "그 밖에 우리들로서"
	line "무언가 힘이 될 수 있는 일은?"
	done

_LearnedMove1Text::
	TX_RAM wLearnMoveMonName
	text "는(은) 새로"
	line "@"
	TX_RAM wcf4b
	text "를(을) 배웠다!@@"

_WhichMoveToForgetText::
	text "어느 기술을"
	next "잊게 하고싶은가?"
	done

_AbandonLearningText::
	text "그렇다면……"
	line "@"
	TX_RAM wcf4b
	text "를(을)"
	cont "배우는 것을 그만두겠습니까?"
	done

_DidNotLearnText::
	TX_RAM wLearnMoveMonName
	text "는(은)"
	line "@"
	TX_RAM wcf4b
	text "를(을)"
	cont "배우지 않고 끝났다!"
	prompt

_TryingToLearnText::
	TX_RAM wLearnMoveMonName
	text "는(은) 새로"
	line "@"
	
	TX_RAM wcf4b
	text "를(을)"
	cont "배우고싶다……!"
	
	para "그러나 @"
	TX_RAM wLearnMoveMonName
	text "는(은)"
	line "기술을 4개"
	cont "기억하고있기에 더 이상은 무리다"

	para "@"
	TX_RAM wcf4b
	text "의 대신"
	line "다른 기술을 잊게하겠습니까?"
	done

_OneTwoAndText::
	text "1 2 ……@@"

_PoofText::
	text " 짠!@@"

_ForgotAndText::
	text ""
	para "@"
	TX_RAM wLearnMoveMonName
	text "는(은)"
	line "@"
	TX_RAM wcd6d
	text "의"
	cont "사용방법을 깨끗이 잊었다!"

	para "그리고……!"
	prompt

_HMCantDeleteText::
	text "그것은 중요한 기술입니다"
	line "잊게하는 것은 할 수 없습니다!"
	prompt

_PokemonCenterWelcomeText::
	text "안녕하세요!"
	line "포켓몬 센터입니다!"

	para "이곳에서는 포켓몬의"
	line "체력을 회복합니다!"
	prompt

_ShallWeHealYourPokemonText::
	text "당신의 포켓몬을"
	line "쉬게 하겠습니까?"
	done

_NeedYourPokemonText::
	text "그럼"
	line "맡아놓겠습니다!"
	done

_PokemonFightingFitText::
	text "오래 기다리셨습니다!"
	line "맡아놓은 포켓몬은"
	cont "모두 건강해졌습니다!"
	prompt

_PokemonCenterFarewellText::
	text "다음 번에도"
	line "방문하시길 기다리겠습니다!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "친구분의 준비가"
	line "되어 있지 않은 것 같습니다"
	done

_CableClubNPCWelcomeText::
	text "통신케이블 클럽에"
	line "잘 오셨습니다!"
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "잠시 기다려주십시오"

	para "통신을 시작하기 전에"
	line "레포트를 쓰겠습니다"
	done



_CableClubNPCPleaseWaitText::
	text "잠시 기다려주십시오@@"

_CableClubNPCLinkClosedBecauseOfInactivityText::
	text "기다리는 시간이 길기에"
	line "접수를 중지하겠습니다"

	para "친구와 연락을 해서"
	line "다시 한번 와주십시오!"
	done

SECTION "Text 10", ROMX ; BANK $29

_CableClubNPCPleaseComeAgainText::
	text "다시 한번 와주십시오!"
	done

_CableClubNPCMakingPreparationsText::
	text "통신을 준비하겠습니다."
	line "잠시만 기다려주세요"
	done


_UsedStrengthText::
	TX_RAM wcd6d
	text "는(은)"
	line "괴력을 발휘했다!@@"

_CanMoveBouldersText::
	TX_RAM wcd6d
	text "의 괴력덕분에"
	line "바위를 밀 수 있게 되었다!"
	prompt

_CurrentTooFastText::
	text "지금 너무 빠릅니다!"
	prompt

_CyclingIsFunText::
	text "자전거타는게 재밌어!"
	line "파도타기는 잊어버려!"
	prompt

_FlashLightsAreaText::
	text "눈부신 빛이"
	line "주변을 밝게 비춘다……"
	prompt


_WarpToLastPokemonCenterText::
	text "가까운 포켓몬 센터로"
	line"순간이동 합니다!"
	done

_CannotUseTeleportNowText::
	text "이곳에서는 공중날기를"
	line "텔레포트를 쓸수없습니다"
	prompt

_CannotFlyHereText::
	text "이곳에서는 공중날기를"
	line "사용할 수 없습니다"
	prompt

_NotHealthyEnoughText::
	text "아직 건강치"
	line "못합니다."
	prompt

_NewBadgeRequiredText::
	text "새로운 배지를 손에 넣을 때까지"
	line "아직 사용할 수 없습니다!"
	prompt

_CannotUseItemsHereText::
	text "이곳에서는 사용할 수 없습니다"
	prompt

_CannotGetOffHereText::
	text "이곳에서는 내릴 수 없다!"
	prompt

_GotMonText::
	text $52,"는(은)"
	line "@"
	TX_RAM wcd6d
	text "를(을) 얻었다!@@"

_SetToBoxText::
	text "더 이상 포켓몬을 지닐 수 없어서"
	line "@"
	cont ""
	TX_RAM wBoxMonNicks
	text "는(은)"
	cont "@"
	TX_RAM wcf4b
	text " 박스로 전송되었다"
	done

_BoxIsFullText::
	text "박스에 맡겨놓은 포켓몬이"
	line "가득차서 더는 사용 못합니다!"
	done

INCLUDE "text/maps/PalletTown.asm"
INCLUDE "text/maps/ViridianCity.asm"
INCLUDE "text/maps/PewterCity.asm"
INCLUDE "text/maps/CeruleanCity.asm"
INCLUDE "text/maps/LavenderTown.asm"
INCLUDE "text/maps/VermilionCity.asm"
INCLUDE "text/maps/CeladonCity.asm"
INCLUDE "text/maps/FuchsiaCity.asm"
INCLUDE "text/maps/CinnabarIsland.asm"
INCLUDE "text/maps/SaffronCity.asm"

_ItemUseBallText00::
	text "빠져나갔다!"
	line "이녀석은 붙잡지 못할 것 같다!"
	prompt

_ItemUseBallText01::
	text "포켓몬에게"
	line "잘 맞추지 못했다!"
	prompt

_ItemUseBallText02::
	text "이런! 포켓몬이"
	line "볼에서 튀어 나와버렸다!"
	prompt

_ItemUseBallText03::
	text "으으!"
	line "잡았다고 생각했는데! "
	prompt

_ItemUseBallText04::
	text "분하다!"
	line "조금만 더하면 잡을 수 있었는데!"
	prompt

_ItemUseBallText05::
	text "신난다!"
	line "@"
	TX_RAM wEnemyMonNick
	text "를(을) 잡았다!@@"

_ItemUseBallText07::
	TX_RAM wBoxMonNicks
	text "는(은) 이수재"
	line "가 있는 곳에 전송되었다!"
	prompt
	
_ItemUseBallText08::
	TX_RAM wBoxMonNicks
	text "는(은) 누군가"
	line "가 있는 곳에 전송되었다!"
	prompt

_ItemUseBallText06::
	TX_RAM wEnemyMonNick
	text "의"
	line "데이터가 새롭게"
	cont "포켓몬 도감에 세이브 되어집니다!@@"

_SurfingGotOnText::
	text $52,"는(은)"
	line "@"
	TX_RAM wcd6d
	text "를(을) 탔다!"
	prompt

_SurfingNoPlaceToGetOffText::
	text "이곳에서는 내릴 수 없다!"
	prompt

_RefusingText::
	TX_RAM wcd6d
	text ""
	line "거부하고 있다!"
	prompt

_VitaminStatRoseText::
	TX_RAM wcd6d
	text "의"
	line "@"
	TX_RAM wcf4b
	text "기초 포인트가 올라갔다!"
	prompt

_VitaminNoEffectText::
	text "그 포켓몬에는"
	line "사용할 수 없습니다"
	prompt

_ThrewBaitText::
	text $52,"는(은)"
	line "먹이를 던졌다"
	done

_ThrewRockText::
	text $52,"는(은)"
	line "돌을 던졌다.";짱돌? 자갈?
	done

_PlayedFluteNoEffectText::
	text "포켓몬의 피리를 불었다!"

	para "우음!"
	line "훌륭한 음색이다!"
	prompt

_FluteWokeUpText::
	text "모든 포켓몬이"
	line "눈을 떴다!"
	prompt

_PlayedFluteHadEffectText::
	text $52, "는(은)"
	line "포켓몬의 피리를 불었다!@@"

_CoinCaseNumCoinsText::
	text "동전"
	line "@"
	TX_BCD wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text "개 "
	prompt

_ItemfinderFoundItemText::
	text "옷!"
	line "머신이 반응하고 있어!"
	cont "근처에 도구가 묻혀있다!"
	prompt

_ItemfinderFoundNothingText::
	text "…… …… 후우!"
	line "…… 반응하지 않는다."
	prompt

_RaisePPWhichTechniqueText::
	text "어느 기술의"
	line "포인트를 늘릴까?"
	done

_RestorePPWhichTechniqueText::
	text "어느 기술을"
	line "회복할까?"
	done

_PPMaxedOutText::
	TX_RAM wcf4b
	text "는(은) 더이상"
	line "늘릴 수가 없습니다!"
	prompt

_PPIncreasedText::
	TX_RAM wcf4b
	text "의"
	line "기술 포인트가 늘었다!"
	prompt

_PPRestoredText::
	text "기술 포인트가"
	line "회복되었다!"
	prompt

_BootedUpTMText::
	text "기술 머신을 가동시켰다!"
	prompt

_BootedUpHMText::
	text "비전 머신을 가동시켰다!"
	prompt

_TeachMachineMoveText::
	text "안에는 @"
	TX_RAM wcf4b
	text "(이)가"
	line "기록되어져 있다!"

	para "@"
	TX_RAM wcf4b
	text "를(을)"
	line "포켓몬에게 가르치겠습니까?"
	done

_MonCannotLearnMachineMoveText::
	TX_RAM wcd6d
	text "과(와) "
	line "@"
	TX_RAM wcf4b
	text "는(은)"
	cont "상성이 좋지 않았다!"

	para "@"
	TX_RAM wcf4b
	text "는(은)"
	line "배울 수 없다!"
	prompt

_ItemUseNotTimeText::
	text "오박사님의 말씀……"
	line $52, "야(아)! 이런 것에는"
	cont "사용할 때가 따로 있는 법!"
	prompt

_ItemUseNotYoursToUseText::
	text "중요한 보관품입니다!"
	line "사용하는 것은 할 수 없습니다!"
	prompt

_ItemUseNoEffectText::
	text "사용해도 효과가 없습니다."
	prompt

_ThrowBallAtTrainerMonText1::
	text "트레이너가 볼을 쳐냈다!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "다른사람의 물건을 훔치면 도둑놈!"
	prompt

_NoCyclingAllowedHereText::
	text "여기서는 자전거에"
	next "탈 수 없습니다"
	prompt

_NoSurfingHereText::
	text "여기서는 @"
	TX_RAM wcd6d
	text "에"
	line "탈 수 없습니다"
	prompt

_BoxFullCannotThrowBallText::
	text "박스에 맡겨놓은 포켓몬이"
	line "가득차서 더는 사용 못합니다!"
	prompt



SECTION "Text 11", ROMX ; BANK $2a

_ItemUseText001::
	text $52, "는(은) @@"

_ItemUseText002::
	TX_RAM wcf4b
	text "를(을)"
	cont "사용했다!"
	done

_GotOnBicycleText1::
	text $52, "는(은) @@"

_GotOnBicycleText2::
	TX_RAM wcf4b
	text "에 탔다"
	prompt

_GotOffBicycleText1::
	text $52, "는(은) @@"
	
_GotOffBicycleText2::
	TX_RAM wcf4b
	text "에서 내렸다"
	prompt

_ThrewAwayItemText::
	text "박스에서"
	line "@"
	TX_RAM wcd6d
	text "을 버립니다"
	prompt

_IsItOKToTossItemText::
	text "정말로"
	line "@"
	TX_RAM wcf4b
	text "버리겠습니까?"
	prompt

_TooImportantToTossText::
	text "버릴수 없는"
	line "중요한 아이템입니다!"
	prompt

_AlreadyKnowsText::
	TX_RAM wcd6d
	text "는(은) 이미"
	line "@"
	TX_RAM wcf4b
	text "를(을)"
	cont "알고 있습니다"
	prompt

_ConnectCableText::
	text "케이블이"
	line "연결되었다!"
	prompt

_TradedForText::
	text $52,"는(은) @"
	TX_RAM wInGameTradeGiveMonName
	text "와(과)"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "를(을)"
	cont "교환했다!@@"

_WannaTrade1Text::
	text "내가 구하고 싶은건"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "야!"

	para "한마리 있으면"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	
	text "랑 교환 가능할까?"
	done

_NoTrade1Text::
	text "으아!"
	line "어쩔수 없지……"
	done

_WrongMon1Text::
	text "응? 그건"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "이(가) 아니잖아!"

	para "다른애로"
	line "다시 오도록해!"
	done

_Thanks1Text::
	text "고마워!"
	done

_AfterTrade1Text::
	text "내 예전 파트너"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "! 근사하지?"
	done

_WannaTrade2Text::
	text "안녕하십니까!"
	line ""

	para "당신의 @"
	TX_RAM wInGameTradeGiveMonName
	text "를(을)"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "와(과) 교환하시겠습니까?"
	done

_NoTrade2Text::
	text "뭐,"
	line "싫으면 말고……"
	done

_WrongMon2Text::
	text "흐음? 이건"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "(이)가 아닌데요"

	para "준비해서 와주세요"
	line ""
	done

_Thanks2Text::
	text "고마워요!"
	done

_AfterTrade2Text::
IF DEF (_BLUE)
	text "네가 나에게 준 @"
	TX_RAM wInGameTradeGiveMonName
	text ""
	line "진화했어!"
	done
ELSE
	text "네가 나에게 준 @"
	TX_RAM wInGameTradeGiveMonName
	text ""
	line "고마웠어!"
	done
ENDC

_WannaTrade3Text::
	text "안녕! 혹시"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "를(을) 가지고 있니?"

	para "그걸로"
	line " @"
	TX_RAM wInGameTradeReceiveMonName
	text "하고 교환하지 않겠어?"
	done

_NoTrade3Text::
	text "그거 참 유감이네"
	done

_WrongMon3Text::
	text "…… 이건"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "(이)가 아닌데."

	para "한마리 생기면"
	line "나랑 교환해줘!"
	done

_Thanks3Text::
	text "고맙워 친구!"
	done

_AfterTrade3Text::
	text "내가 키웠던"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "는(은) 어떤거 같아?"

	para "@"
	TX_RAM wInGameTradeGiveMonName
	text "는(은)"
	line "잘 지내고 있어!"
	done

_NothingToCutText::
	text "이곳에서는 사용할 수 없습니다"
	prompt

_UsedCutText::
	TX_RAM wcd6d
	text "는(은) "
	line "풀베기를 사용했다!"
	prompt


SECTION "Pokedex Text", ROMX ; BANK $2b

INCLUDE "text/pokedex.asm"


SECTION "Move Names", ROMX ; BANK $2c

INCLUDE "text/move_names.asm"
