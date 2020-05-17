_OaksLabGaryText1::
	text $53,"『어이 "
	db $52,"!"
	line "할아버지는 여기 안 계셔!"
IF DEF(_YELLOW)
	para "나한테 포켓몬을 주신다고 하셔서"
	line "달려나왔는데 말이야"
ENDC
	done

_OaksLabText40::
IF DEF(_YELLOW)
	text $53,"『흥!"
	line "내가 더좋은 포켓몬을 가질거야!"
ELSE
	text "<RIVAL>『흥! 나는 어른이니까"
	line "너처럼 치사하게 굴지 않아"

	para "<PLAYER> 먼저"
	line "선택하게 해주지!"
ENDC
	done

_OaksLabText41::
IF DEF(_YELLOW)
	text $53,"『헤에-"
	line "내 포켓몬이"
	cont "몇배는 더 쎄보이는걸"
ELSE
	text $53,"『내 포켓몬이"
	line "몇배는 더 쎄보이는걸"
ENDC
	done

_OaksLabText39::
IF DEF(_YELLOW)
	text "포켓몬이 들어있는"
	line "몬스터 볼이다!"
ELSE
	text "몬스터 볼이다!"
	line "안에 포켓몬이 들어있어!"
ENDC
	done
IF DEF(_YELLOW)
_OaksLabPikachuText::
	text "오박사『받으렴!"
	line "이건 네것이란다!"
	done

ELSE
_OaksLabCharmanderText::
	text "그래! 불 포켓몬"
	line "파이리를 갖고싶니?"
	done

_OaksLabSquirtleText::
	text "그래! 물 포켓몬"
	line "꼬부기를 갖고싶니?"
	done

_OaksLabBulbasaurText::
	text "그래! 풀 포켓몬"
	line "이상해씨를 갖고싶니?"
	done

_OaksLabMonEnergeticText::
	text "이 포켓몬은"
	line "매우 건강해 보인다!"
	prompt


_OaksLabReceivedMonText::
	text "<PLAYER>는(은)"
	line "@"
	TX_RAM wcd6d
	text "를(을) 받았다!@@"

_OaksLabLastMonText::
	text "오박사의 하나남은"
	line "포켓몬이다!"
	done

_OaksLabText_1d2f0::
	text "오박사『그래 <PLAYER>"
	line "어떤 포켓몬을 원하느냐?"
	done
ENDC
_OaksLabText_1d2f5::
	text "오박사『야생 포켓몬이 나타난다면"
	line "네 포켓몬이 대신 싸워줄거란다!"
IF DEF(_YELLOW)
	para "나중에 다음 마을로"
	line "출발하렴"
ENDC
	done

_OaksLabText_1d2fa::
IF DEF(_YELLOW)
	text "오박사『한번 말을 걸어봐서"
	line "기분이 어떤지 확인해보렴"
ELSE
	text "오박사『<PLAYER> 싸움을 통해"
	line "어린 포켓몬을 육성하려무나!"
ENDC
	done
	
_OaksLabDeliverParcelText1::
	text "오박사『아"
	line $52,"군!"

	para "네 포켓몬은 어떡니?"

	para "널 많이 좋아하는 것 같아"
	line "다행이구나"



	para "분명 포켓몬 트레이너의 재능을"
	line "가지고 있는 거겠지!"



	para "음?"
	line "전해줄 물건?"

	para $52,"는(은)"
	line "오박사의 소포를 전해줬다@@"

_OaksLabDeliverParcelText2::
	text ""
	para "아! 전에 주문한"
	line "맞춤형 몬스터 볼이구나!"
IF DEF(_YELLOW)
	cont "고맙구나 "
	db $52, "군!"


	para "그나저나 부탁하고 싶은 게"
	line "있단다"
ELSE
	cont "고맙구나!"
ENDC
	done

_OaksLabAroundWorldText::
	text "곳곳의 포켓몬들이"
	line "너를 기다리고 있다!"
	done

_OaksLabGivePokeballsText1::
	text "오박사『포켓몬을 본 것만으로는"
	line "정확한 정보를 알아낼수 없단다"

	para "포켓몬을 잡아야 정확한 정보를"
	line "알아낼 수 있단다!"
	cont "이걸로 야생 포켓몬을 잡으렴!"

	para $52, "는(은)"
	line "몬스터볼 5개를 얻었다!@@"

_OaksLabGivePokeballsText2::
	text ""
	para "야생 포켓몬이 나타나면"
	line "그때부터 시작이란다"
IF DEF(_YELLOW)
	para "내가 보여줬던 것처럼"
	line "몬스터볼을 던져서 잡는거지!"
ELSE
	cont "몬스터볼을 던져서 잡는거지!"

ENDC
	para "물론 항상 잡히는건 아니란다"

	para "팔팔한 포켓몬은"
	line "도망칠 수도 있으니"
	cont "운도 따라줘야한단다!"
	done

_OaksLabPleaseVisitText::
	text "오박사『가끔 와서"
	line "얼굴 좀 비치려무나"

	para "네 도감이 얼마나 완성되가는지도"
	line "궁금하니까"
	done

_OaksLabText_1d31d::
	text "오박사『오랜만이구나!"
	line "도감채우기는 잘되가니?"
	cont "어디 한번 보여주렴!"
	prompt

_OaksLabText_1d32c::
	text "사전처럼 보이지만"
	line "빈칸투성이다!"
	done

_OaksLabText8::
	text "?"
	done

_OaksLabText_1d340::
	text "오박사님은"
	line "포켓몬의 권위자야!"

	para "수많은 포켓몬 트레이너들의"
	line "우상이지!"
	done

_OaksLabRivalWaitingText::
	text "<RIVAL>『으악!"
	line "기다리는거 지겨워!"
	done

_OaksLabChooseMonText::
	text "오박사『<RIVAL>?"
	line "…… …… ……"
	
	para "오오 그렇구나"
	line "내가 불렀었지!"
	cont "잠시 기다려라!"
	
	para "자 <PLAYER>!"
	
	para "여기에 3마리"
	line "포켓몬이 있단다!"
	
	para "몬스터볼 안에"
	line "포켓몬이 들어있지"
	
	para "옛날에는 나도 만만치 않은"
	line "포켓몬 트레이너로서 활약했단다"
	
	para "늙어서 지금은 포켓몬도"
	line "3마리 밖에 남지 않았구나"
	cont "너에게 1마리를 주마"
	cont "…자 고르거라!"
	done

_OaksLabRivalInterjectionText::
	text $53,"『잠깐!"
	line "할아버지! 나는?"
	done

_OaksLabBePatientText::
	text "오박사『그렇게 서두르지 마렴"
	line "<RIVAL> 네 것도 있단다"
	done

_OaksLabLeavingText::
	text "오박사『잠깐!"
	line "아직 가지 말거라!"
	done

_OaksLabRivalPickingMonText::
text "<RIVAL>『그럼 난 이거!"
	done

_OaksLabRivalReceivedMonText::
	text "<RIVAL>는(은)"
	line "@"
	TX_RAM wcd6d
	text "를(을) 받았다!@@"

_OaksLabRivalChallengeText::
	text $53,"『어이!"
	line $52,"!"
	cont "우리 서로 포켓몬 대결해보자!"

	para "도망치지 말고!"
	line "한번 해보자고!"
	done

_OaksLabText_1d3be::
	text "뭐?"
	line "말도 안돼!"
	cont "포켓몬을 잘못 고른 것 같아!"
	prompt

_OaksLabText_1d3c3::
	text $53,"『그렇지!"
	line "역시 난 대단해!"
	prompt

_OaksLabRivalToughenUpText::
	text $53,"『좋아!"
	line "그럼 열심히 싸워서 포켓몬을"
	cont "더 강하게 만들어야 겠어!"

	para $52, "! 할아버지!"
	line "바이비!"
	done

_OaksLabText21::
	text $53,"『할아버지!"
	done

_OaksLabText22::;[번역
	text "<RIVAL>『나를"
	line "왜부른거야?"
	done

_OaksLabText23::
	text "오박사『오 왔구나"
	para "너희 둘에게 부탁하고"
	line "싶은게 있단다"
	done

_OaksLabText24::
	text "책상 위에 있는"
	line "저 물건은"
	cont "내 걸작 포켓몬 도감이란다!"

	para "발견한 포켓몬의 데이터가"
	line "자동적으로 기록되어져"
	cont "페이지가 늘어나지!"

	para "한마디로"
	line "하이테크 도감이란다!"
	done

_OaksLabText25::
	text "오박사『"
	db $52," 그리고"
	line $53,"!"
	cont "하나씩 가지렴!"

	para $52, "는(은) 오박사로부터"
	line "포켓몬 도감을 얻었다!@@"

_OaksLabText26::
	text "전 세계 모든 포켓몬의"
	line "도감을 완성하는 것……"

	para "그게 내 꿈이었단다!"

	para "하지만 그 꿈을 이루기엔"
	line "너무 늙어버렸단다!"

	para "그러므로 너희 둘이"
	line "내 꿈을 이어갔으면 한다!"

	para "자!"
	line "이제 서두르렴!"

	para "이건 포켓몬 역사상"
	line "엄청난 발자국이 될거야!"
	done

_OaksLabText27::
	text $53,"『걱정말라고"
	line "할아버지!"
	cont "나만 믿어!"

	para $52," 굳이 말할 필요도"
	line "없지만 너는 도와줄 필요 없어!"

	para "그래!"
	line "누나에게 타운맵을 빌려야지!"

	para "너한테는 주지말라고 할거야!"
	line "하하하!"
	done

_OaksLabText_1d405::
	text "전 오박사의 조수로"
	line "포켓몬을 연구하고 있어요"
	done

_OaksLabText_441cc::
	text "포켓몬 도감의"
	line "현재 완성도……"

	para "발견한 포켓몬@"
	TX_NUM hDexRatingNumMonsSeen, 1, 3
	text " "
	line "잡은 포켓몬 @"
	TX_NUM hDexRatingNumMonsOwned, 1, 3
	text "!"

	para "오박사의 평가……"
	line"…… …… ……"
	prompt

_OaksLabText_44201::
	text "여기저기의 풀숲에 들어가"
	line "포켓몬을 잡는 것이다!"
	done


_OaksLabText_44206::
	text "후움, 열심히 하고 있군"
	line "내 조수한테 플래시를 가져가라!"
	done

_OaksLabText_4420b::
	text "포켓몬 도감으로는 아직"
	line "양이 부족해! 여러"
	cont "종류의 포켓몬을 잡도록 하거라!"
	done

_OaksLabText_44210::
	text "후움, 열심히 하고 있군"
	line "내 조수한테 탐지기를 가져가라!"
	done

_OaksLabText_44215::
	line "50종류를 모았을때"
	cont "조수한테 가봐라!"
	done

_OaksLabText_4421a::
	text "후움, 열심히 하고 있군"
	line "내 조수한테 학습장치를 가져가라!"
	done

_OaksLabText_4421f::
	text "페이지도 늘어난 것 같구나!"
	line "그 상태로 더욱 열심히 하거라!"
	done

_OaksLabText_44224::
	text "낚싯대는 손에 넣었는가?"
	line "여기저기서 낚시를 한다면"
	cont "더욱 많이 모을 수 있단다!"
	done

_OaksLabText_44229::
	text "굉장하군!"
	line "너는 물건을 수집하는 것을"
	cont "좋아하지?"
	done

_OaksLabText_4422e::
	text "옷! 생각해보면 저번에"
	line "조사했을 때보다도"
	cont "많은 포켓몬이 발견되었었지"
	done

_OaksLabText_44233::
	text "뭐랏!"
	line "100종류를 넘었다고!"
	cont "이것은 대단히 좋은 도감이"
	cont "될 것 같구나! 기대하겠다!"
	done
_OaksLabText_44238::
	text "호오! 흥미가 생기는구나!"
	line "잡는 것뿐만 아니라"
	cont "진화도 시켜놓거라!"
	done

_OaksLabText_4423d::
	text "친구들과 교환하고 있는가?"
	line "혼자서는 매우 힘들테니까"
	done
_OaksLabText_44242::
	text "여기까지 도감이 만들어졌다면"
	line "이미 프로의 경지다!"
	done
_OaksLabText_44247::
	text "대단해! 말할 것도 없다!"
	line "너는 포켓몬 박사가 될꺼야!"
	done

_OaksLabText_4424c::
	text "오옷 꿈에서도 그리던"
	line "퍼펙트한 도감의"
	cont "완성이구나!…… 축하한다!"
	done 