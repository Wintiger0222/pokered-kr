_OakAppearsText::
	text "오박사『잠깐! 기다리렴!"
	line "함부로 나가지마라!@@"

_OakWalksUpText::
IF DEF (_YELLOW)
	text "오박사『위험할 뻔했다!"
	
	para "수풀에서는 야생 포켓몬들이"
	line "나온단다!"
	done

_OakWhewText::
	text "오박사『휴……"
	done

_OakGrassText::
	text "오박사『수풀 안에선 언제라도"
	line "포켓몬이 튀어나올수 있단다"

ELSE
	text "오박사『위험할 뻔했다!"
	
	para "수풀에서는 야생 포켓몬들이"
	line "나온단다!"
ENDC

	para "아무래도 너를 위해"
	line "포켓몬을 줘야겠구나!"
	
	para "자"
	line "따라오렴!"
	done

_PalletTownText2::
	text "나도"
	line "포켓몬을 키우고 있어"

	para "얘네들이 강해지면"
	line "날 지켜주겠지?"
	done


_PalletTownText3::
	text "과학의 힘이란 대단해!"

	para "이제 컴퓨터 통신을 통해"
	line "아이템과 포켓몬을"
	cont "전송할 수 있어!"
	done

_PalletTownText4::
	text "이곳은 오박사님의"
	line "포켓몬 연구소"
	done

_PalletTownText5::
	text "이곳은 태초마을"
	line "태초는 새하얀 근원의 색"
	done

_PalletTownText6::
	text "이곳은 "
	db $52,"의 집"
	done
	
_PalletTownText7::
	text "이곳은 "
	db $53,"의 집"
	done
