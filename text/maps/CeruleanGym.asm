_CeruleanGymText_5c7be::
	text "안녕!" 
	line "우리 서로 처음보지?"
IF DEF (_YELLOW);[번역
	para "너는 포켓몬 전략을"
	line "어떡게 짰니?"
ELSE
	para "프로가 되고싶은"
	line "트레이너들은"
	cont "포켓몬에 대한 전략이"
	cont "있어야 한단다!"

	para "너의 포켓몬 전략을"
	line "무엇이니?"
ENDC
	para "내 방침은"
	line "물타입 포켓몬과 함께하는"
	cont "전력 공격이야!"
IF DEF (_YELLOW)
	para "세계 제일의 미녀 이슬이가"
	line "오늘 네 상대라구!"

	para "준비됐니"
	line "귀염둥이야?"
ENDC
	done

_CeruleanGymText_5c7c3::
	text "기술머신11 안에는"
	line "거품광선이 들어있어!"

	para "물에 사는 포켓몬에게"
	line "사용해봐!"
	done

_CeruleanGymText_5c7c8::
	text "블루배지는 30레벨까지의"
	line "모든 포켓몬이 널 따르게 해줘!"
	
	para "그리고 언제든지 풀베기를"
	line "사용 할 수 있게 해줘!"

	para "길을 막는 작은 나무정도는"
	line "잘라낼 수 있어!"

	para "그리고 이 기술머신도 줄게!"
	done

_ReceivedTM11Text::
	text $52, "는(은)"
	line "기술머신11를(을)"
	cont "받았다!@@"

_CeruleanGymText_5c7d3::
	text "가방을 비우고 다시오렴!"
	done

_CeruleanGymText_5c7d8::
IF DEF (_YELLOW)
	text "말도 안돼!"
	line "내가 졌단말이야?"
ELSE
	text "와!"
	line "넌 정말 너무해!"
ENDC
	para "좋아!"

	para "넌 날 이겼다는 증표인"
IF DEF (_YELLOW)
	line "블루배지를 가질 자격이 있어!"
	prompt
ELSE
	line "블루배지를 가질 자격이 있어!@@"
ENDC

_CeruleanGymBattleText1::
	text "보아하니"
	line "한참 모자란 것 같네!"

	para "이슬이님이 나설 필요도 없어!"
	done

_CeruleanGymEndBattleText1::
	text "너 정말"
	line "대단하구나!"
	prompt

_CeruleanGymAfterBattleText1::
	text "다른 트레이너들과 싸워서"
	line "좀더 실력을 키워봐"
	done

_CeruleanGymBattleText2::
	text "어푸!"

	para "먼저 내가 상대다!"
	line "덤벼라!"
	done

_CeruleanGymEndBattleText2::
	text "이럴리"
	line "없는데!"
	prompt


_CeruleanGymAfterBattleText2::
	text "이슬이는 수련을"
	line "게을리 하지 않았단다!"

	para "너 같은 애송이한테는"
	line "지지 않을걸!"
	done

_CeruleanGymText_5c82a::
	text "미래의 챔피언!"

	para "내가 충고 하나 해줄게!"

	para "이곳의 관장 이슬이는"
	line "물타입 포켓몬 전문가야!"

	para "풀타입 포켓몬을 사용해서"
	line "물을 흡수해버리는게 효과적이지!"

	para "아니면 전기로"
	line "제압하는것도 좋아!"
	done

_CeruleanGymText_5c82f::
	text "이슬이를 이겼구나!"
	line "내가 보는 눈이 있다니까!"
	
	para "너랑 나"
	line "꽤나 좋은 콤비가"
	cont "될수있을 것 같은데!"
	done
