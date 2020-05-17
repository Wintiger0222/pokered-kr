_SecretHouseText_4a350::
	text "아! 드디어!"

	para "비밀의 집에 첫번째로"
	line "도착하셨습니다!"

	para "저희 캠페인에"
	line "당첨되는 사람이"
	cont "안 나올까봐 걱정했네요"

	para "축하드립니다!"
	line "당첨됐습니다!"
	prompt

_ReceivedHM03Text::
	text $52, "는(은)"
	line "@"
	TX_RAM wcf4b
	text "를(을) 얻었다!@@"

_HM03ExplanationText::
	text "비전머신3은 파도타기!"

	para "포켓몬이 사람을 태우고"
	line "물위를 건널수 있게 하죠!"

	para "게다가 비전머신은"
	line "일회용이 아닙니다!"
	cont "몇번이고 사용할수 있습니다!"

	para "이렇게 멋진 상품을"
	line "받는 당신은"
	cont "정말로 운이 좋은겁니다!"
	done

_HM03NoRoomText::
	text "이 이상 들 수 없어!"
	line "이 멋진 상품을 가져가야해!"
	done
