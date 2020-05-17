_SilphCoPresidentText::
	text "회장『우리 회사를"
	line " 구해줘서 고맙네!" 

	para "자네가 우리를 위기의 순간에서"
	line "구해준걸 절대 잊지않겠네!"

	para "귀인을 빈손으로 돌려보내면"
	line "도리에 어긋나겠지!"

 

	para "이름난 재벌인만큼 원하는게"
	line "있다면 뭐든 줄수있다네"

 

	para "그래!"
	line "이건 어떤가!"
	prompt

_ReceivedSilphCoMasterBallText::
	text $52, "는(은)"
	line "@"
	TX_RAM wcf4b
	text "를(을) 얻었다!@@"

_SilphCo10Text_6231c::
	text "회장『이건 어디서도"
	line "구할 수 없는 물건이지!"

	para "비밀리에 제작된 마스터볼의"
	line "프로토타입이거든!"

 

	para "어떤 포켓몬이든 놓치는일 없이"
	line "잡아내는 물건이지"

 

	para "다만 쓸때는"
	line "비밀로 해주게나?"
	done

_SilphCoMasterBallNoRoomText::
	text "이 이상 들 수"
	line "없어!"
	done

_SilphCo11Text2::
	text "비서『저희를 구해주셔서"
	line "감사합니다!"

	para "모두를 대표해 당신의 용기에"
	line "경의를 표하죠"
	done

_SilphCo11Text3::
	text "아 "
	db $52, "!"
	line "또만났구나!"

	para "보다시피 회장과 난 중요한"
	line "사업문제로 논의중이라서"

	para "어른의 사정에 끼어드는건"
	line "좋지못하단다……"

	para "아니면 인생의 쓴맛을 "
	line "겪게될거야!"
	done



_SilphCo10Text_62330::
	text "으아아!!"
	line "또 졌단 말인가!?"
	prompt

 

_SilphCo10Text_62335::
	text "집어 쳐!"
	line "잘도 우리 계획을 망쳐 놓았군!"

 

	para "하지만 로켓단은"
	line "절대로 포기하지않는다!"

 

	para $52, "! 모든 포켓몬은"
	line "로켓단을 위해 존재한다는 사실을"
	cont "잊지않도록!"

	para "지금은 떠나지만"
	line "돌아온다는걸 명심해라!"
	done
IF DEF (_YELLOW)
ELSE
_SilphCo11BattleText1::;[[번역
	text "거기 딱 멈춰!"
	line "움직이지 마!"
	done

_SilphCo11EndBattleText1::
	text "그만……"
	line "제발 그만!"
	prompt

_SilphCo11AfterBattleText1::
	text "그래서 넌"
	line "우리 보스를 보고 싶다고?"
	done
ENDC
_SilphCo11BattleText2::
	text "잠깐! 보스와 약속은"
	line "잡고 온거겠지?"
	done


_SilphCo11EndBattleText2::
	text "끄악!"
	line "파산!"
	prompt
	
_SilphCo11AfterBattleText2::
	text "조심하는게 좋을걸"
	line "보스는 거친 포켓몬을"
	cont "좋아하거든!"
	done
IF DEF (_YELLOW)
ELSE
_SilphCo10Text_6237b::
	text "모니터는 포켓몬을"
	line "감시하고 있다!"
	done
ENDC
