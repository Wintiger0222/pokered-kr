_SafariZoneEntranceText1::
	text "사파리존에"
	line "오신걸 환영합니다!"
	done

SafariZoneEntranceText_9e6e4::
	text "단돈 500원으로 이 공원에서"
	line "포켓몬을 마음껏 잡을수 있습니다!"
	para "참여하시겠나요?@@"

SafariZoneEntranceText_9e747::
IF DEF (_YELLOW)
	text "입장료 @"
	TX_BCD wPriceTemp, $c3
	text "원"
	line "받았습니다!"
ELSE
	text "입장료 500원"
	line "받았습니다!"
ENDC
	para "저희측에서 제작한"
	line "특수한 몬스터볼입니다"

	para $52, "는(은)"
	line "사파리볼 30개를 얻었다!@@"

_SafariZoneEntranceText_75360::
	db $0
	para "사용시간이 종료되거나"
	line "사파리볼이 소진되면"
	cont "저희측에서 알려드리겠습니다!"
	done

_SafariZoneEntranceText_75365::
	text "알겠습니다!"
	line "다음에 또 들려주세요!"
	done

_SafariZoneEntranceText_7536a::
	text "이런!"
	line "소지금이 부족하네요!"
	done

SafariZoneEntranceText_9e814::
	text "벌써 가실 것인가요?@@"

_SafariZoneEntranceText_753bb::
	text "남은 사파리볼을"
	line "반납바랍니다"
	done

_SafariZoneEntranceText_753c0::
	text "행운을 빕니다!"
	done

_SafariZoneEntranceText_753c5::
	text "좋은 결과가 있었나요?"
	line "나중에 또 오세요!"
	done

_SafariZoneEntranceText_753e6::
	text "어서오세요!"
	line "이곳은 처음이신가요?"
	done

_SafariZoneEntranceText_753eb::
	text "사파리존에는"
	line "총 4 구역이 있습니다."

	para "각 구역마다 다른 종류의"
	line "포켓몬이 있으며"
	cont "사파리볼로 포획할 수 있습니다!"
	
	para "사용시간이 종료되거나"
	line "사파리볼을 다 쓰시면"
	cont "서비스가 종료됩니다!"

	para "출발하시기 전에"
	line "사용하지 않은"
	cont "포켓몬 박스로"
	cont "지정하시기 바랍니다"
	done

_SafariZoneEntranceText_753f0::
	text "실례합니다"
	line "이곳의 단골이시군요!"
	done
	
IF DEF (_YELLOW)
_SafariZoneLowCostText1::
	db 0
	para "예 맞아요"
	line "가지고 계신거 주셔야죠"
	prompt

_SafariZoneLowCostText2::
	text "그리고 볼 30개를"
	line "전부 드릴수가 없습니다."
	done

_SafariZoneLowCostText3::
	db 0
	para "정말 끈질기군요"
	line "그렇게 들어가고 싶나요?"

	para "좋아요"
	line "입장하세요"
	cont "하지만 이번뿐입니다!@@"

_SafariZoneLowCostText4::
	db 0
	done

_SafariZoneLowCostText5::
	text "죄송합니다만"
	line "요금을 내야"
	cont "입장이 가능합니다"
	done

_SafariZoneLowCostText6::
	text "요금을 안 내면"
	line "입장 못 합니다!"
	done

_SafariZoneLowCostText7::
	text "한 마디하죠,"
	line "돈없으면 못 들어갑니다!"
	done

_SafariZoneLowCostText8::
	text "제 입 보세요 안 되요!"
	line "알겠죠?"
	done
ENDC
