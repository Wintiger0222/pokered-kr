_NameRaterText_1dab3::
	text "나는 이름풀이 점술가"
	line "말하자면 이름으로 점을 칩니다"

	para "네 당신 포켓몬의"
	line "별명으로 점을 봐 줄께요"
	done

_NameRaterText_1dab8::
	text "어느 포켓몬의"
	line "별명을 점 칠텐가?"
	prompt

_NameRaterText_1dabd::
	text "우움 @"
	TX_RAM wcd6d
	text "인가……"
	line "꽤 좋은 별명을 붙였군"

	para "하지만"
	line "더 좋은 이름"
	cont "내가 붙여줄까?"

	para "어떤가?"
	done

_NameRaterText_1dac2::
	text "그래? 그럼"
	line "어떤 별명으로 해 볼까"
	prompt

_NameRaterText_1dac7::
	TX_RAM wBuffer
	text "!"


	para "전 보다도 좋은 이름이지 않은가"
	line "잘되었네!"
	done

_NameRaterText_1dacc::
	text "알겠네 또 오거라"
	done

_NameRaterText_1dad1::
	TX_RAM wcd6d
	text "!"
	line "이건 대단한 별명이군"
	cont "나쁜건 조금도 없군!"

	para "계속 @"
	TX_RAM wcd6d
	text "를(을)"
	line "귀여워해 주거라!"
	done
