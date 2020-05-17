IF DEF (_YELLOW);[번역
PikachuFanText::
	text "내 삐삐의 사랑스런 꼬리좀봐"
	line "정말 귀엽지 않아?"
	done

PikachuFanBetterText::
PikachuFanBetterText::
	text "흥!"
	line "내 삐삐가 두배는 더 귀엽다구!"
	done
ELSE
PikachuFanText::
	text "내 피카츄의 사랑스런 꼬리좀봐"
	line "정말 귀엽지 않아?"
	done

PikachuFanBetterText::
	text "흥!"
	line "내 피카츄가 두배는 더 귀엽다구!"
	done
ENDC

IF DEF(_YELLOW)
PikachuFanPrintText::
	text "우리 회장의 새 취미는"
	line "포켓몬의 사진을 찍는거야"

 

	para "내 귀여운 삐삐사진도"
	line "회장이 찍어줬어"
	done
ENDC
SeelFanText::
	text "난 내 쥬쥬가 너무 좋아!"



	para "내가 안아줄 때"
	line "꽥! 소리를 낸다구!"
	done

SeelFanBetterText::
	text "세상에!"



	para "내 쥬쥬가 훨씬 "
	line "더 귀엽거든!"
	done

IF DEF (_YELLOW)
SeelFanPrintText::
	text "케이블을 연결해서"
	line "쥬쥬사진을 프린트해야지!"
	done
ENDC
IF DEF (_YELLOW)
FanClubPikachuText::
	text "삐삐『삐삐!"
ELSE
FanClubPikachuText::
	text "피카츄『피카피카!"
	line "피카츄!"
ENDC
	done

FanClubSeelText::
	text "쥬쥬『쥬우우!"
	done

FanClubMeetChairText::
	text "난 포켓몬 팬클럽의"
	line "회장이란다!"
IF DEF (_YELLOW)
	para "100마리도 넘는 포켓몬을"
	line "가지고있지만 한마리도 빠짐없이"
	cont "다 사랑해!"
ELSE
	para "100마리도 넘는 포켓몬을"
	line "가지고있지!"
ENDC

	para "포켓몬 얘기만 나오면"
	line "늘 새롭고 짜릿하단다!"

	para "그래……"

IF DEF (_YELLOW)
	para "너도 내 포켓몬 자랑을"
	line "듣고싶어서 온거구나?"
ELSE
	para "너도 내 포켓몬 얘기를"
	line "듣고싶어서 온거구나?"
ENDC
	done

FanClubChairStoryText::
	text "좋아!"
	line "그럼 잘듣거라!"



	para "내가 제일 좋아하는"
	line "날쌩마는……"

 

	para "정말이지……"
	line "귀엽고……"
	cont "사랑스럽고……"
	cont "똑똑한데다……"
	cont "놀랍기까지……"
	cont "너도 그렇게 생각하니?"
	cont "아그래……"
	cont "정말이지……"
	cont "환상적이고……"
	cont "친절하고……"
	cont "너무 사랑해!"
	
	para "잠잘 때……"
	line "껴안으면……"
	cont "참을 수 없고……"
	cont "기막히게……"
	cont "환상적이고……"
	cont "……이런! 시간좀봐!"
	cont "널 너무 오래 붙잡아 놨구나!"

	para "들어줘서 고마워!"
	line "부디 이걸 가져가렴!"
	prompt

 

ReceivedBikeVoucherText::
	text $52,"는(은)"
	line "@"
	TX_RAM wcf4b
	text "를(을)"
	cont "얻었다!@@"

ExplainBikeVoucherText::
	text ""
	para "그걸로 자전거와"
	line "교환하려무나!" 

 

	para "난 걱정말게"
	line "내 깨비드릴조가 날 데리고"
	cont "어디든 날아가 줄 테니!"

 

	para "그러니 난 자전거같은건"
	line "필요없다네!"

 

	para "부디 자전거 타는것을"
	line "좋아하길 바라네!"
	done

 

FanClubNoStoryText::
	text "혹시 또 얘기가 듣고싶어지면"
	line "언제든 오게나!"
	done

FanClubChairFinalText::
	text "어서오게 "
	db $52, "군!"
	para "또 내 포켓몬얘기가"
	line "궁금해서 찾아온거겠지?"

 

	para "아니라고? 유감이군!"
	done

FanClubBagFullText::
	text "가방을 비우고 오자!"
	done
IF DEF (_YELLOW)
FanClubChairPrintText1::
	text "안녕 "
	db $52, "군!"
	line "내 포켓몬 사진들 봤니?"

	para "저 벽에다가"
	line "예쁘게 걸어놨지"



	para "아 그래!"



	para "너도 네 포켓몬 사진을"
	line "찍어달라고 온거구나?"
	done

 

FanClubChairPrintText2::
	text "아니야?"
	line "안타깝네"
	done

 

FanClubChairPrintText3::
	text "좋아 다됐다!"
	done

FanClubChairPrintText4::
	text "지금 당장은"
	line "프린트 할 수 없어"
	done
ENDC
_FanClubText6::
	text "우리 회장은 포켓몬 얘기만"
	line "나오면 너무 시끄러워"
	done
IF DEF (_YELLOW)
ELSE
_FanClubText7::
	text "다른 트레이너들의 말을"
	cont "존중해서 들읍시다!"
	done

_FanClubText8::
	text "만약 누군가가 자랑하면"
	line "자랑으로 맞서라!"
	done
ENDC