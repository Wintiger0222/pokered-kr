_MomWakeUpText::
	text "엄마『그래"
	line "남자 아이들은 언젠가"
	cont "집을 떠나는 법이지"
	cont "TV에서 그랬단다"

	para "옆집의 오박사님께서"
	line "널 찾으시더구나"
	done

_MomHealText1::
IF DEF (_YELLOW)
	text "엄마『"
	db $52, " 만약 네가"
	line "포켓몬을 너무 험하게 다루면"
	cont "너를 싫어할 것이란다"

	para "적당히 쉬어가면서"
	line "하렴"
ELSE
	text "엄마『<PLAYER>!"
	line "적당히 쉬어가면서"
	line "하렴"
ENDC
	prompt

_MomHealText2::
	text "엄마『어머!"
	line "너와 포켓몬 둘다"
	cont "팔팔해 보이네!"
	cont "조심해서 다니렴!"
	done

_StandByMeText::
	text "TV에서 영화를 하고 있다"
	line "남자아이 넷이 "
	cont "철로를 따라 걷고있다……"

	para "…… 나도 빨리 가봐야지!"
	done

_TVWrongSideText::
	text "이쪽에서는 보이지 않아"
	done
