_LanceBeforeBattleText::
	text "기다리고 있었다!"
	line $52,"군!"

	para "내가 사천왕이자"
	line "드래곤 조련사 목호!"

	para "너도 알다시피"
	line "드래곤은"
	cont "전설적인 포켓몬이지!"

	para "잡는것도 기르는것도"
	line "어렵지만 그것들의 힘은"
	cont "엄청나!"

	para "사실상 깨부술수 없는"
	line "존재지!"

	para "좋아"
	line "패배를 받아들일 준비는 됐냐?"

	para "나에 의해서"
	line "네 도전은 끝이 날꺼야" 
	cont $52, "군!"
	done

_LanceEndBattleText::
	text "역시!"

	para "인정하긴 싫지만"
	line "너가 포켓몬 마스터이다!"
	prompt

_LanceAfterBattleText::
	text "여전히 믿기질 않는군"
	line "내 드래곤들이 네게 패했어"
	cont $52, "군!"

	para "이제는 너가"
	line "포켓몬 리그 챔피언이네!"

	para "……혹은"
	line "그렇게 되겠지"
	cont "그나저나 네가 한번 더"
	cont "도전을 해야해"

	para "또 다른 트레이너와"
	line "맞붙어야 한다는 거지!"
	cont "그의 이름은……"

	para $53, "군!"
	line "그는 너보다 먼저 "
	cont "사천왕을 이겼어!"

	para "현재 그가 포켓몬 리그"
	line "챔피언이야!@@"
