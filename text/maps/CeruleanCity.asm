_CeruleanCityText_19668::
	text $53, "『봉주르!"
	line $52, "!"

	para "너 아직도 여기서"
	line "헤메고 있는거야?"

	para "난 벌써 강하고 똑똑한 포켓몬을"
	line "여러마리나 잡았어!"

	para $52, " 너한테도"
	line "내가 잡은 포켓몬을 보여줄게!"
	done

_CeruleanCityText_1966d::
	text "잠깐! 진정해!"
	line "너가 이겼어!"
	prompt

_CeruleanCityText_19672::
	text "헤헤! 역시 내 천재성 앞에선"
	line "상대가 안되는 구나!"
	prompt

_CeruleanCityText_19677::
	text $53, "『아"
	line "그거 알아?"

	para "내 도감 페이지"
	line "엄청 많이 채웠다!"


	para "얼마전에 이수재한테 가서"
	line "그의 희귀 포켓몬을"
	cont "보여달라 그랬거든!"

	para "그가 괴짜로 유명한 이유를"
	line "알겠더라니까!"

	para "게다가 컴퓨터의"
	line "포켓몬 박스 시스템에도"
	cont "초대해줬어!"

	para "너도 그 시스템을 쓰고 있으니까"
	line "한번 이야기 나누어봐!"

	para "이제 그만 가봐야 겠다"
	line "그럼 바이비!"
	done

_CeruleanCityText_196d9::
	text "잠깐 거기! 나가라고!"
	line "여기는 내 땅이야!"
	cont "응? 나?"

	para "난 그냥 지나가던 행인이라구!"
	line "진짜야!"
	done

_ReceivedTM28Text::
	text $52, "는(은)"
	line "기술머신28을 돌려받았다!@@"

_ReceivedTM28Text2::
	db $0
	para "이제 나는 간다!"
	line "안녕!@@"

_TM28NoRoomText::
	text "이걸 넣을 공간을 만들어줘!"

	para "이걸 주기 전엔"
	line "너가 계속 따라올테니까!"
	done

_CeruleanCityText_196ee::
	text "잠깐!"
	line "항복할께!"
	cont "조용히 나갈 테니까!"
	prompt

_CeruleanCityText_196f3::
	text "알겠어! 내가 훔친"
	line "기술머신도 돌려줄게!"
	prompt

_CeruleanCityText3::
	text "너도 트레이너야?"
	line "잡고 싸우고"
	cont "고달픈 삶이지"
	done


_CeruleanCityText4::
	text "프렌들리숍 앞에 있는 나무가"
	line "길을 막고 있어"

	para "아마 돌아 갈 수 있는"
	line "다른 길이 있을거야"
	done

_CeruleanCityText5::
	text "포켓몬 도감을 만든다고?"
	line "그거 대단한데!"
	done

 

_CeruleanCityText6::
IF DEF (_YELLOW)
	text "여기 이 사람들은"
	line "빈집털이를 당했단다"

	para "우리는 이 사건의 배후에는"
	line "로켓단이 있다고 확신해"

	para "로켓단 때문에"
	line "경찰들도 골머리 썩는다니까!"
ELSE
	text "여기 이 사람들은"
	line "빈집털이를 당했단다"

	para "이 사건의 배후에는"
	line "로켓단이 있다고 분명해"

	para "로켓단 때문에"
	line "경찰들도 골머리 썩는다니까!"
ENDC
	done
	
IF DEF (_YELLOW)
_CeruleanCityText_19730::
	text "자 붐볼!"
	line "염동력을 발휘해라!"
	cont "붐볼!"
	cont "제발 집중 좀 해!"
	done

_CeruleanCityText_19735::
	text "붐볼! 몸통박치기!"
	line "아니야! 또 실수했잖아!"
	done

_CeruleanCityText_1973a::
	text "붐볼! 스피드 스타!"
	line "아니! 아니라니까!"

	para "포켓몬을 훈련시키는건"
	line "어려워!"

	para "네 포켓몬이 널 얼마나"
	line "잘 따를지는 너의"
	cont "트레이너로서의 능력에 달려있어!"
	done

_CeruleanCityText_1976f::
	text "붐볼은 졸고있다……"
	done

_CeruleanCityText_19774::
	text "붐볼은 굴러다니고있다……"
	done

_CeruleanCityText_19779::
	text "붐볼은 뒤돌았다……"
	done

_CeruleanCityText_1977e::
	text "붐볼은 주변을 무시하고있다……"
ELSE
_CeruleanCityText_19730::
	text "자 야도란!"
	line "염동력을 발휘해라!"
	cont "야도란!"
	cont "제발 집중 좀 해!"
	done

_CeruleanCityText_19735::
	text "야도란! 몸통박치기!"
	line "아니야! 또 실수했잖아!"
	done

_CeruleanCityText_1973a::
	text "야도란! 스피드 스타!"
	line "아니! 아니라니까!"

	para "포켓몬을 훈련시키는건"
	line "어려워!"

	para "네 포켓몬이 널 얼마나"
	line "잘 따를지는 너의"
	cont "트레이너로서의 능력에 달려있어!"
	done

_CeruleanCityText_1976f::
	text "야도란은 졸고있다……"
	done

_CeruleanCityText_19774::
	text "야도란은 굴러다니고있다……"
	done

_CeruleanCityText_19779::
	text "야도란은 뒤돌았다……"
	done

_CeruleanCityText_1977e::
	text "야도란은 주변을 무시하고있다……"
	done
ENDC

_CeruleanCityText9::
	text "난 빨간 자전거가 갖고싶어!"

	para "더러워지면 안되니까"
	line "집에 보관해둘거야!"
	done

_CeruleanCityText10::
	text "여긴 블루시티 동굴이야!"
	line "엄-청나게 강한 포켓몬이"
	cont "살고있다고!"
  

	para "여긴 포켓몬 리그야!"
	line "오직 챔피언만"
	cont "입장을 허락받은 곳이지!"
	done

_CeruleanCityText12::
	text "이곳은 블루시티"
	line "블루는 바닷빛 신비의 색깔"
	done

_CeruleanCityText13::
	text "…… 득이 되는 게시판!"

	para "진화중 B버튼을 누르면"
	line "진화를 중단할 수 있습니다!"
	done


_CeruleanCityText16::
	text "자전거에 대한 것이라면"
	line "여기 미라클 싸이클로!"
	done

_CeruleanCityText17::
	text "블루시티 포켓몬 체육관"
	line "관장 이슬"
	cont "말괄량이 인어"
		done
