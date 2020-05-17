_Lab4Text_75dc6::
	text "안녕!"

	para "이래뵈도"
	line "요직에 앉은 박사라구!"

 

	para "나는 여기서 포켓몬 화석을"
	line "연구하고 있어!"

	para "너! 혹시"
	line "화석을 가지고 있니?"
	prompt

_Lab4Text_75dcb::
	text "아쉽다!"
	done

_Lab4Text_75dd0::
	text "시간이 좀 걸릴거야!"



	para "잠깐 나가서"
	line "산책이라도 하는게어때?"
	done

 

_Lab4Text_75dd5::
	text "어디 갔다 온거야?"



	para "벌써 네 화석이"
	line "부활했다구!"

 

	para "내 예상대로 이건"
	line "@"
	TX_RAM wcf4b
	db $0
	db "(이)었어!"
	prompt

_Lab4Text_610ae::
	text "세상에 이건"
	line "@"
	TX_RAM wcd6d
	text "(이)잖아!"

	para "이건 벌써 멸종한 포켓몬인"
	line "@"
	TX_RAM wcf4b
	text "의 화석이야!"

	para "내 부화 기계는 포켓몬을"
	line "다시 살아숨쉬게 할수있어!"
	done

 

_Lab4Text_610b3::
	text "그래!"
	line "한번 해보자구!"

	para $52, "는(은)"
	line "@"
	TX_RAM wcd6d
	text "를(을) 건네주었다!"
	prompt

_Lab4Text_610b8::
	text "시간이 좀 걸릴거야!"



	para "잠깐 나가서"
	line "산책이라도 하는게어때?"
	done

_Lab4Text_610bd::
	text "여어!"
	line "무슨화석을 가져왔어?"
	done

 
