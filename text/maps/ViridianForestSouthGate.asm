_ViridianForestEntranceText1:: 
	text "상록숲으로 들어가려고?"
	line "조심해!"
	cont "여기는 미로야!"
	done

_ViridianForestEntranceText2::
IF DEF (_YELLOW)
	text "새로운 종류의 포켓몬을 얻으려면"
	line "꽤 오래 돌아다녀야 할걸"

	para "상록숲밖에서 다른 종류를"
	line "찾아봐"
ELSE
	text "꼬렛은 작지만"
	line "물리면 더럽게 아파!"
	cont "하나 잡았어?"
ENDC
	done
