_GaryChampionIntroText::
	text $53, "『어이!"

	para "널 이렇게 보는 순간을"
	line "기다리고 있었어 "
	db $52, "!"

	para "내 라이벌이라면 역시"
	line "계속 성장하며"
	cont "나를 자극시켜주는 법이지!"

	para "도감을 완성하면서"
	line "강한 포켓몬은 전부 찾아봤어!"

	para "게다가 모든 타입의 포켓몬을"
	line "이길 수 있는 팀도 꾸려냈어!"

	para "그리고!"

	para "지금 난"
	line "포켓몬 리그 챔피언이야!"

	para $52, "!"
	line "이게 무슨말인지 알아?"

	para "말해줄게!"

	para "내가 세상에서 가장 강한"
	line "트레이너란 소리지!"
	done

_GaryDefeatedText::
	text "말도 안돼!"
	line "내 최강의 팀을 쓰러트리다니!"
	
	para "내가 챔피언이 되기 위해"
	line "얼마나 노력했는지 알아?"

	para "그런데 벌써 물러나야 한다고?"
	line "이건 불공평해!"
	prompt

_GaryVictoryText::
	text "하하하!"
	line "내가 이겼다! 내가 이겼다!"

	para "역시 너한텐 너무 버거웠나보네!"
	line $52, "!"

	para "포켓몬 천재인 이몸을"
	line "거의 이길뻔 하다니 칭찬해주지!"

	para "시도는 좋았어 패배자!"
	line "하하하!"
	prompt

_GaryText_76103::
	text "어째서?"
	line "어째서 진거야?"

	para "포켓몬을 키우는데"
	line "실수는 없었을텐데……"

	para "으아아악!!"
	line "너가 새 포켓몬 챔피언이야!"


	para "나는 인정하기 싫지만……"
	done

_GaryText2::
	text "오박사『"
	db $52, "군!"
	done


_GaryText_76120::
	text "오박사『그래 네가 이겼구나!"
	line "축하한다!"
	cont "이젠 네가 새 포켓몬"
	cont "챔피언이란다!"

	para "@"
	TX_RAM wcd6d
	text "를(을) 데리고"
	line "여행을 떠났을 때와는"
	cont "몰라보게 성장했구나!"

	para $52, "군 이제 너도"
	line "어엿한 트레이너다!"
	done

_GaryText_76125::
	text "오박사『"
	db $53, "!"
	line "너에겐 실망했구나!"

	para "사천왕을 이겼다는 소식을"
	line "듣고 달려왔거늘!"


	para "도착했더니 벌써"
	line "챔피언에서 물러난다니!"

	para $53, "!"
	line "네가 진 이유를 알겠니?"

	para "그건 네가 포켓몬을"
	line "믿음과 사랑으로 다루는 걸"
	cont "잊어버렸기 때문이란다!"

	para "그것 없이는"
	line "다시는 챔피언이 될 수 없을거다!"
	done

_GaryText_7612a::
	text "오박사『"
	db $52, "군!"

	para "너는 네 승리가"
	line "너 혼자서 이룬 것이"
	cont "아니라는 걸 잘 알고 있는것"
	cont "같구나!"

	para "너와 네 포켓몬이"
	line "이룬 유대감은 엄청 데단해!"

	para $52, "!"
	line "따라오려무나!"
	done
