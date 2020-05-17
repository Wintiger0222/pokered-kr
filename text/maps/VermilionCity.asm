_VermilionCityText1::
	text "오염문제는"
	line "신경써야해!"

	para "우리가 들은 정보로는"
	line "질퍽이는 독성 진흙에서 증식해!"
	done

_VermilionCityText_198a7::
	text "항구에 상트앙느호가"
	line "정박하고 있는거 봤나요?"
	done

_VermilionCityText_198ac::
	text "이제 상트앙느호는"
	line "출항했죠!"

	para "그 사람은 이제"
	line "일년정도 있어야 돌아올거고요"
	done

_SSAnneWelcomeText4::
	text "상트앙느호에 오신것을"
	line "환영합니다!"
	done

_SSAnneWelcomeText9::
	text "상트앙느호에 오신것을"
	line "환영합니다!"

	para "실례지만,"
	line "티켓을 확인해도 될까요?"
	prompt

_SSAnneFlashedTicketText::
	text $52, "은(는)"
	line "상트앙느호 티켓을 보여줬다!"

	para "멋지군요! 상트앙느호에"
	line "오신걸 환영합니다!"
	done

_SSAnneNoTicketText::
	text $52, "는(은)"
	line "상트앙느호 티켓을"
	cont "가지고 있지 않다"

	para "죄송합니다!"

	para "승선하시려면"
	line "티켓이 있어야 합니다"
	done

_SSAnneNotHereText::
	text "배는 이미 떠났습니다"
	done

_VermilionCityText4::
	text "이곳에 빌딩을 세울 계획을"
	line "추진중이란다"
	
	para "내 포켓몬이"
	line "땅을 평평하게 다지는중이지"
	done

_VermilionCityText5::
	text "알통몬『알통!"
	line "알통!@@"
IF DEF (_YELLOW)
_VermilionCityText15::
ELSE
_VermilionCityText14::
ENDC
	text ""
	para "알통몬이 지면을 평평하게"
	line "다지고 있다"
	done

_VermilionCityText6::
	text "상트앙느호는"
	line "유명한 호화 여객선"

	para "일년에 1번씩"
	line "갈색시티에 방문하죠"
	done
IF DEF (_YELLOW)
_OfficerJennyText1::
	text "내가 잡은 꼬부기는"
	line "말썽꾸러기라 감당이 안 돼"

	para "아무래도 괜찮은 트레이너한테"
	line "보내서 버릇 좀 고쳐야겠어"
	done

_OfficerJennyText2::
	text "오렌지 배지가"
	line "있다고!?"

	para "너라면"
	line "트레이너로서 괜찮겠는데!"

	para "내가 잡은 꼬부기는"
	line "말썽꾸러기라 감당이 안 돼"

	para "이 아이를"
	line "잘 돌봐 줄수 있겠어?"
	done

_OfficerJennyText3::
	text "좋았어! 꼬부기를"
	line "잘 지도해줘!@@"

_OfficerJennyText4::
	text "어……"
	line "난 이제 뭐 한담?"
	done

_OfficerJennyText5::
	text "꼬부기는"
	line "어떡게 지내?"
	done
ENDC
	
IF DEF (_YELLOW)
_VermilionCityText8::
ELSE
_VermilionCityText7::
ENDC
	text "이곳는 갈색시티"
	line "갈색은 오렌지 저녁노을의 색깔"
	done
IF DEF (_YELLOW)
_VermilionCityText9::
ELSE
_VermilionCityText8::
ENDC
	text "……알립니다!"

	para "12번 도로에서 잠자고 있는"
	line "포켓몬이 길을 막고 있습니다"
	cont ""

	para "보라타운쪽은 돌산터널을 통해"
	line "우회바랍니다"

	para "갈색시티 경찰"
	done
IF DEF (_YELLOW)
_VermilionCityText12::
ELSE
_VermilionCityText11::
ENDC
	text "여기는 포켓몬 애호가 클럽"
	line "포켓몬을 좋아하면 누구든지 환영"
	done
IF DEF (_YELLOW)
_VermilionCityText13::
ELSE
_VermilionCityText12::
ENDC
	text "갈색시티 포켓몬 체육관"
	line "관장 마티스"
	cont "번개 아메리칸"

	done
IF DEF (_YELLOW)
_VermilionCityText14::
ELSE
_VermilionCityText13::
ENDC
	text "갈색시티 항구 입구"
	done
