_CeladonCityText1::
IF DEF(_YELLOW)
	text "친구한테"
	line "또가스 받았어!"

	para "우린 지금부터 함께할거야"
	line "왜냐면 내겐 꿈이었거든!"
ELSE
	text "홍련마을에서"
	line "또가스 잡았어!"
	
	para "화날때마다 독을"
	line "뿜어내지만 멋져!"
ENDC
	done

_CeladonCityText2::
	text "으하하! 여기 체육관은 좋구나!"
	line "여자아이들만 있어서!"
	done

_CeladonCityText3::
	text "이 게임코너는"
	line "우리 도시 이미지의 구멍이야!"
	done

_CeladonCityText4::
	text "으으윽-"
	line "난 여기에 전부 때려넣었어!"

	para "안다고 알아"
	line "코인들을 경품으로"
	cont "교환할걸 그랬어!"
	done

_TM41PreText::
	text "안녕한가!"

	para "자네를 지켜봤는데"
	line "대화할 기회가 없더군"

	para "이곳에 들린"
	line "선물일세!"
	prompt

_ReceivedTM41Text::
	text $52, "은(는)"
	line "@"
	TX_RAM wcf4b
	text "을(를)"
	cont "얻었다!@@"
	
_TM41ExplanationText::
	text "기술머신41은"
	line "알낳기!"

	para "오직 한종류의 포켓몬에게만"
	line "사용할수 있지!"

	para "그 포켓몬은"
	line "럭키란다!"
	done

_TM41NoRoomText::
	text "어이 어이"
	line "가방이 가득 찼잖아!"
	done

_CeladonCityText6::
	text "이녀석은 나의 파트너"
	line "강챙이!"

	para "물의 돌을 써서"
	line "수륙챙이에서 진화시켰지!"
	done

_CeladonCityText7::
	text "강챙이『강챙 강챙!@@"

_CeladonCityText8::
	text "뭘 그렇게 빤히"
	line "쳐다봐?"
	done

_CeladonCityText9::
	text "로켓단의 행차길에서"
	line "저리가!"
	done

_CeladonCityText10::
	text "…… 득이 되는 게시판"

	para "잘-맞히기는"
	line "기술의 명중률을 높여준다!"
	
	para "크리티컬커터는"
	line "급소를 맞출 확률을 높여준다!"

	para "도구의 쇼핑천국"
	line "무지개 백화점으로 오세요!"
	done

_CeladonCityText11::
	;금은참조
	text "이곳은 무지개시티"
	line "무지개는 총천연색 꿈의 색깔"
	done

_CeladonCityText13::
	text "무지개 시티 포켓몬 체육관"
	line "관장 민화"
	cont "자연을 사랑하는 아가씨"
	done

_CeladonCityText14::
	;금은참조
	text "무지개 맨션"
	done

_CeladonCityText15::
	;금은참조
	text "원하는 것은 꼭 있습니다!"
	line "무지개 백화점"
	done

_CeladonCityText16::
	;금은참조
	text "…… 득이 되는 게시판"

	para "이펙트 가드는"
	line "화염이랑 물 전기등의"
	
	para "특수 공격으로부터"
	line "포켓몬을 지켜준다!"
	
	para "도구의 쇼핑천국"
	line "무지개 백화점으로 오세요!"
	done

_CeladonCityText17::
	text "코인을 경품으로 교환하세요"
	line "경품 교환소"
	done

_CeladonCityText18::
	;금은참조
	text "이곳은 모두의 놀이장소"
	line "로켓 게임코너"
	done
