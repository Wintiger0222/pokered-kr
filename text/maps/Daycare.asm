_DayCareIntroText::
	text "난 돌보미집을 운영하고 있단다"
	line "네 포켓몬을 맡겨보지 않겠니?"
	done

_DayCareWhichMonText::
	text "어느 포켓몬을"
	line "맡아 줄까?"
	prompt

_DayCareWillLookAfterMonText::
	text "그럼 당분간"
	line "@"
	TX_RAM wcd6d
	db $0
	db "를(을)"
	cont "돌봐주겠단다"
	prompt

_DayCareComeSeeMeInAWhileText::
	text "나중에 다시 오렴"
	done

_DayCareMonHasGrownText::
	text "너의 @"
	TX_RAM wcd6d
	db $0
	db "이(가)"
	line "많이 컸단다!"
	para "@"
	TX_NUM wDayCareNumLevelsGrown,$1,$3
	text "레벨이나"
	line "올랐어!"
	
	para "굉장하지 않니?"
	prompt

_DayCareOweMoneyText::
	text "돌봐준 금액은 @"
	TX_BCD wDayCareTotalCost, $c2
	db $0
	db "원이란다"
	done

_DayCareGotMonBackText::
	text $52, "는(은)"
	line "@"
	TX_RAM wDayCareMonName
	text "를(을) 돌려받았다!"
	done

_DayCareMonNeedsMoreTimeText::
	text "벌써 데려가게?"
	line "너의 @"
	TX_RAM wcd6d
	db $0
	db "는(은)"
	cont "좀 더 있어야 할것 같구나"
	prompt