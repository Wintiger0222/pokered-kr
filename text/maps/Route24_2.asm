
_Route24EndBattleText1::
	text "이런걸"
	line "생각한게 아니였는데!"
	prompt

_Route24AfterBattleText1::
	text "다리위에 있는 사람들이"
	line "겁준바람에 숨어 있었어!"
	done

_Route24BattleText2::
	text "좋았어! 나는 넘버5!"
	line "짓밟아 주겠어!"
	done

_Route24EndBattleText2::
	text "우와!"
	line "무지막해!"
	prompt

_Route24AfterBattleText2::
	text "최선을 다했으니"
	line "후회는 없어!"
	done

_Route24BattleText3::
	text "넘버4!"
	line "슬슬 지칠려나?"
	done

_Route24EndBattleText3::
	text "나도 졌네!"
	prompt

_Route24AfterBattleText3::
	text "전력을 다했기에"
	line "후회는 없군!"
	done

_Route24BattleText4::
	text "여기 넘버3 갑니다!"
	line "만만치 않을겁니다!"
	done

_Route24EndBattleText4::
	text "어휴!"
	line "헛발 굴렸네!"
	prompt

_Route24AfterBattleText4::
	text "전력을 다했기에"
	line "후회는 없습니다!"
	done

_Route24BattleText5::
	text "나는야 넘버투!"
	line "난 지금 진지해!"
	done

_Route24EndBattleText5::
	text "어떡게 내가"
	line "진거지?"
	prompt

_Route24AfterBattleText5::
	text "최선을 다한거라"
	line "후회하지 않아!"
	done

_Route24BattleText6::
	text "이곳은 너겟 브릿지!"
	line "트레이너 5명을 이기면"
	cont "호화상품을 증여해주지!"
;너켓 브릿지 찾아야 할듯 금다리?
	para "뭐를 받을거"
	line "같아?"
	done

_Route24EndBattleText6::
	text "유후!"
	line "대물이다!"
	prompt

_Route24AfterBattleText6::
	text "나로썬 최선을 다했고"
	line "아쉬운건 없어!"
	done



IF DEF (_YELLOW)
_Route24DamianText1::
	text "영 적성이 안 맞아서"
	line "포켓몬을 못 키우겠어"

	para "잘 키울 자신이 없어서"
	line "아무래도 내 파이리를"
	cont "풀어줘야 할까봐……"

	para "혹시 내 파이리"
	line "돌봐 줄 수 있어?"
	done

_Route24DamianText2::
	text "내 파이리"
	line "잘 부탁할게!@@"

_Route24DamianText3::
	text "어…… 이렇게 하는게"
	line "놓아주는것보단 낫지."
	done

_Route24DamianText4::
	text "파이리는"
	line "요즘 어때?"
	done
	

ENDC