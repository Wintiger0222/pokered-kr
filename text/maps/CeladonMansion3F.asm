_ProgrammerText:: 
	text "나말이니?"
	line "난 프로그래머란다!"
	done

IF DEF (_YELLOW)
_ProgrammerText2::
	text "나말이니?"
	line "난 프로그래머란다!"

	para "이거 놀라운걸!"
	line "어느 누구도 포켓몬 도감을"
	cont "완성할거라곤 예상도 못했어"
	done

ENDC
_GraphicArtistText::
	text "나는 그래픽 디자이너!"
	line "너를 그린 것은 나란다!"
	done

IF DEF (_YELLOW)
_GraphicArtistText2::
	text "나는 그래픽 디자이너!"

	para "오 완성했구나!"
	line "포켓몬 도감을 완성한기념으로"
	cont "표창장을 프린트 해줄까?"
	done

_GraphicArtistText3::
	text "표창장을 프린트 하고 싶으면"
	line "내게 말하렴"
	done

_GraphicArtistText4::
	text "다됐다! 가지렴!"
	done

_GraphicArtistText5::
	text "그래"
	line "프린트하지 않으마"
	done

ENDC
_WriterText::
	text "나는 스토리를 쓴단다!"
	line "민화 귀엽지 않아?"

	para "이슬이도 정말 좋아!"
	line "아,그리고 초련도 좋아!"
	done

IF DEF (_YELLOW)
_WriterText2::
	text "나는 스토리를 쓴단다!"

	para "정말 굉장하고 고맙구나!"
	line "네가 모든 포켓몬을 잡았어!"
	done

ENDC
_GameDesignerText::
	text "그쪽은 잘 되고 있어?"

	para "나는 게임디자이너란다!"

	para "포켓몬 도감을 완성하는 것은"
	line "힘들것이란다"
	cont "하지만 포기하지 마렴!"

	para "도감이 완성되면";[번역
	line "와서 말해 줘!"
	done

_CompletedDexText::
	text "굉장해!"
	line "포켓몬 도감 완성을"
	cont "성공했다는거지?"
	
	para "축하한다!@@"
	
IF DEF (_YELLOW)
_CompletedDexText2::
	text "개발진들에게 네 표창장을"
	line "선보이는게 좋겠어"
	done
ENDC
_CeladonMansion3Text5::
	text "이건 게임 프로그램이야!"
	line "이 게임에는 버그가"
	cont "얽혀있을수도 있어!"
IF DEF (_RED)
	para "포켓몬스터 적 버전"
ENDC
IF DEF (_GREEN)
	para "포켓몬스터 녹 버전"
ENDC
IF DEF (_BLUE)
	para "포켓몬스터 청 버전"
ENDC
	line "한글화『WindowsTiger"
	cont "뇌씨 MTG 은사철 리에"
	
	para "모두들 명일방주 하실래요?"
	line "명방코스해야지"
	
	para "2020년 2월 28일"
	line "한글패치 1.0v"
	done

_CeladonMansion3Text6::
	text "누군가에게는"
	line "놀거리인 게임이지만"
	cont "내겐 직업이지!"
	done

_CeladonMansion3Text7::
	text "이건 스크립트야!"
	line "엔딩을 안보는 게 낫겠어!"
	done

_CeladonMansion3Text8::
	text "게임 프리크 개발실"
	done
