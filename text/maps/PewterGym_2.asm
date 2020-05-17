_PewterGymText_5c4a3::
	text "세상에는 강한 트레이너가" 
	line "많이 존재한다"


IF DEF (_YELLOW)

	para "몇몇은 싸움을 위해 기르고"
	line "애완용으로 기르는 사람도 있지"

 

	para "난 포켓몬 트레이너가"
	line "되기 위해 수련중이다"

	para "네 포켓몬을 더욱 수련시킬거면"
	line "블루시티 체육관에 가랏!"
	done
ELSE;[번역
	para "너는 포켓몬 트레이너로써"
	line "굉장히 축복받은것 같구나!" 	

	para "블루시티에 있는"
	line "체육관으로 가서"
	cont "너의 능력을 시험해보렴!"
	done
ENDC

_TM34PreReceiveText::
	text "잠깐!"
	line "이것도 가져가!"
	done

 

_ReceivedTM34Text::
	text $52, "는(은)"
	line "기술머신34를 얻었다!@@"

_TM34ExplanationText::
	db $0
	para "기술머신 안에는"
	line "포켓몬 기술이 들어있다!"

	para "기술머신은 한번밖에 못쓰니까"
	line "사용할 포켓몬을"
	cont "신중히 골라야 된다!"

	para "기술머신34는 참기!"



	para "화를 쌓아두었다가"
	line "두배로 돌려주지!"
	done

 

_TM34NoRoomText::
	text "이 이상 들 수 없어!"
	done

_PewterGymText_5c4bc::
	text "인정할수 밖에 없겠는걸"



	para "자 이 배지를"
	line "가지고 가라!"
	para $52, "는(은)"
	line "회색배지를 얻었다!@@"

_PewterGymText_5c4c1::
	db $0
	para "그건 포켓몬 배지다!"

	para "배지의 소유자는"
	line "좀더 강해지지!"

	para "그리고 플래시 기술을"
	line "언제든 사용할수 있게 된다!"
	prompt

 

_PewterGymBattleText1::
	text "거기 멈춰"
	line "애송이!"


	para "너 같은애가 웅이를"
	line "상대하기에는 만광년 이르다고!"
	done

 

_PewterGymEndBattleText1::
	text "제길!"



	para "만광년이라고 말한 건 "
	line "시간이 아니라 거리라구!"
	prompt

 

_PewterGymAfterBattleText1::
	text "너 제법 격한걸"
	line "하지만 웅이만큼은 아니지!"
	done


_PewterGymText_5c515::
	text "안녕! 미래의 챔피언!"
	line "챔피언이 되기위해"
	cont "필요한걸 알려줄게!"

	para "난 트레이너는 아니지만"
	line "이기는 방법에 대해서"
	cont "알려줄수있어!"

  

	para "내가 널 최고로"
	line "만들어 줄게!"
	done

 

_PewterGymText_5c51a::
	text "좋아!"
	line "그럼 시작해볼까!"
	prompt

 

_PewterGymText_5c51f::
	text "지니고 있는 포켓몬 중"
	line "맨 위의 포켓몬이 가장 먼저"
	cont "싸우게 될 거야!"


	para "포켓몬의 순서를 바꾸면"
	line "좀 더 쉽게 이길 수 도 있어!"
	done

_PewterGymText_5c524::
	text "돈달라고 안할 테니"
	line "들어보라구!"
	prompt

 

_PewterGymText_5c529::
	text "내 예상대로야!"
	line "역시 넌 포켓몬 챔피언이"
	cont "될 재목이야!"
	done

 


	
IF DEF (_YELLOW)
_PewterGymGuyText::
	text "좋아!"
	line "그럼 시작해볼까!"

 

	para "네 피카츄로 이 체육관을"
	line "돌파하는건 힘들거야!"

 

	para "전기공격은 웅의 땅타입 포켓몬에게"
	line "아무런 효과가 없기때문이지"
	done
ENDC
