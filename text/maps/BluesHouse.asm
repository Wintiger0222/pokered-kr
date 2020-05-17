_DaisyInitialText::
	text "안녕 <PLAYER>군!"
	line "<RIVAL>는(은)"
	cont "할아버지 연구소에 있어"
	done

_DaisyOfferMapText::
	text "할아버지가 너한테"
	line "부탁할게 있다고 물어봤다면서?"
	
	para "여기 이게"
	line "도움이 될거야"
	prompt

_GotMapText::
	text $52,"는(은)"
	line "@"
	TX_RAM wcf4b
	text "를(을)"
	cont "얻었다!@@"

_DaisyBagFullText::
	text "가방이 가득 찬 것 같구나!"
	done

_DaisyUseMapText::
	text "타운맵으로 네가 지금"
	line "어디에 있는지 알수 있어"
	done

_BluesHouseText2::
IF DEF (_YELLOW)
	text "너와 함께한 시간이 많은"
	line "포켓몬일수록 더욱 친밀해져"
ELSE
	text "포켓몬은 살아있어"
	line "포켓몬들이 지쳤을땐"
	cont "쉬게 해줘야되"
ENDC
	done

_BluesHouseText3::
	text "큰 지도다"
	line "굉장히 유용할것 같다"
	done
