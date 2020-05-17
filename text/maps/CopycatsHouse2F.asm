_CopycatsHouse2FText_5ccd4::
	text $52, "『안녕!"
	line "포켓몬 좋아해?"

	para $52, "『응?"
	line "너한테 물어봤잖아"

	para $52, "『하아?"
	line "너 참 이상하다!"


	para "흉내내기아가씨『응?"
	line "그만 따라하라고?"

	para "그치만 이게 내 취미인걸!"
	prompt



_TM31PreReceiveText::
	text "우와!"
	line "삐삐 인형이다!"

	para "나 주는거야?"
	line "고마워!"

	para "그럼 너도 이거 가져!"
	prompt



_ReceivedTM31Text::
	text $52, "는(은)"
	line "@"
	TX_RAM wcf4b
	text "를(을) 얻었다!@@"

_TM31ExplanationText1::
	db $0
	para "기술머신 31은 내가 가장"
	line "좋아하는 흉내내기!"



	para "어울릴만한 포켓몬에게"
	line "사용해봐!@@"



_TM31ExplanationText2::
	text $52, "『안녕!"
	line "기술머신 31 고마웠어!"


	para $52, "『응?"

	para $52, "『내 행동 하나하나"
	line "흉내내고다니면 재밌어?"


	para "흉내내기아가씨『당연하지!"
	line "짜릿하다구!"
	done

_TM31NoRoomText::
	text "혹시 필요없는거야?@@"

_CopycatsHouse2FText2::
	text "두두『두두두!"

	para "…… 거울아 거울아!"
	line "세계에서 제일 예쁜"
	cont "여자아이는 누구?"
	done

_CopycatsHouse2FText3::
	text "이것은 희귀한 포켓몬!?"
	line "…… 얼라리? 인형이였군"
	done

_CopycatsHouse2FText6::
	text "머리에 양동이를 쓴"
	line "마리오가 안는 게임이다!"
	done

_CopycatsHouse2FText_5cd17::
	text "……"

	para "내 비밀들!"


	para "기술 …… 흉내내기!"
	line "취미 …… 인형 모으기!"
	cont "좋아하는 포켓몬 …… 삐삐!"
	done





_CopycatsHouse2FText_5cd1c::
	text "어라? 안보여!"
	done



