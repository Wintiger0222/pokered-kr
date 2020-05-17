TradeMons:
; givemonster, getmonster, textstring, nickname (11 bytes), 14 bytes total
IF DEF(_BLUE)
	db RHYHORN,   KANGASKHAN,  0,"로단@@@@@@@";캥가
	db JIGGLYPUFF,MR_MIME,  0,"마사루@@@@@";마임맨
	db BUTTERFREE,BEEDRILL, 2,"핑핑이@@@@@";독침붕
	db GROWLITHE, KRABBY,   0,"꽃게@@@@@@@";크랩
	db PIDGEY,    FARFETCHD,2,"아기@@@@@@@";파오리
	db PERSIAN,   TAUROS,   0,"황소@@@@@@@";캔타로스
	db MACHOKE,   HAUNTER,  1,"고오놈@@@@@";고우스트
	db KADABRA,   GRAVELER, 1,"데굴데굴@@@";데구리
	db SEEL,      SLOWPOKE, 2,"마츠나@@@@@";야돈
	db RATTATA,   POLIWHIRL,2,"동그링@@@@@";슈륙챙이
ELSE
	db NIDORINO,  NIDORINA, 0,"테리@@@@@@@";니드리노
	db ABRA,      MR_MIME,  0,"빨빨이@@@@@";마임맨
	db BUTTERFREE,BEEDRILL, 2,"핑핑이@@@@@";독침붕
	db PONYTA,    SEEL,     0,"파운@@@@@@@";쥬쥬
	db SPEAROW,   FARFETCHD,2,"파닭@@@@@@@";파오리
	db SLOWBRO,   LICKITUNG,0,"낼름이@@@@@";내루미
	db POLIWHIRL, JYNX,     1,"심혜원@@@@@";루주라
	db RAICHU,    ELECTRODE,1,"둥글이@@@@@";붐볼
	db VENONAT,   TANGELA,  2,"린다@@@@@@@";덩쿠리
	db NIDORAN_F, NIDORAN_M,2,"차피@@@@@@@";니드런M
ENDC

