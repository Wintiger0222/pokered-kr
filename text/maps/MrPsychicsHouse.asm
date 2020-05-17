_TM29PreReceiveText::
	text "…… …… ……"
	para "…… …… ……"
	para "…… …… ……"
	para "…… …… 알겠다!"
	para "이것을 가지고싶은가!"
	prompt

_ReceivedTM29Text::
	text $52, "는(은)"
	line "@"
	TX_RAM wcf4b
	text "를(을) 얻었다!@@"

_TM29ExplanationText::
	text "…… 알고 있는가?"
	line "기술머신29는 사이코키네시스!"

	para "……  잘 되면"
	line "상대방의 특수 능력을"
	cont "피할 수 있을지도 모르지"
	done

_TM29NoRoomText::
	text "이걸 어찌할지"
	line "무슨 계획 있어?"
	done