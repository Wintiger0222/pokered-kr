_ViridianMartText1:: 
	text "좋았어!"
	line "오박사님에게 안부 좀 전해주렴!"
	done

_ViridianMartText4::
	text "이봐!"
	line "태초마을에서 온거야?"
	done

ViridianMartParcelQuestText::
	text "너 오박사님하고"
	line "아는사이 맞지?"

	para "오박사님 주문하신건데"
	line "이걸 전달해줄수 있겠니?"

	para $52, "는(은)"
	line "오박사의 소포를 얻었다!@@"

_ViridianMartText2::
IF DEF (_YELLOW)
	text "이 프렌들리숍에서는"
	line "각종 상태이상 치료제를"
	cont "팔고 있어"
ELSE
	text "이 프렌들리숍에서는"
	line "각종 해독제를"
	cont "팔고 있어"
ENDC
	done

_ViridianMartText3::;[[번역
IF DEF (_YELLOW)
	text "프렌들리숍에 마침"
	line "상처약 재고가 약간 있네"
ELSE
	text "이런! 상처약은"
	line "전부 품절됐어."
ENDC
	done
