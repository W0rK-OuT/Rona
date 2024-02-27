return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012109,
	["lvmin"] = 25,
	["job"] = {100, 110, 111, 112, 120, 121, 122, 130, 131, 132, 200, 210, 211, 212, 220, 221, 222, 230, 231, 232, 300, 310, 311, 312, 320, 321, 322, 400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 500, 510, 511, 512, 520, 521, 522, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512, 2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 2041022,
	["item"] = {{["id"] = 4031157, ["count"] = 1}, {["id"] = 4031158, ["count"] = 1}, {["id"] = 4031159, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3000,
	["item"] = {
		{["id"] = 4031157, ["count"] = -1},
		{["id"] = 4031158, ["count"] = -1},
		{["id"] = 4031159, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "메이플 고서를 되찾아라",
	["0"] = "빅토리아 아일랜드의 헤네시스에 있는 제이가 메이플 고서에 관련되어 부탁할 것이 있다고 한다...",
	["1"] = "헤네시스의 #p1012109#는 메이플의 역사가 적힌 #t4031157#, #t4031158#, #t4031159#를 되찾아 루디브리엄의 #b#p2041022##k에게 전해줄 것을 부탁했다. 오르비스로 배달 중에 사라진 #t4031157#, 대마법사 하인즈의 집에 보관되어 있는 #t4031158#, 루디브리엄의 크로노스가 약탈해 갔다는 #t4031159#....\n\n#i4031157##t4031157#  #b#c4031157#/1#k\n#i4031158##t4031158#  #b#c4031158#/1#k\n#i4031159##t4031159#  #b#c4031159#/1#k",
	["2"] = "#p1012109#가 말한 메이플 고서 3권을 모두 모아 루디브리엄의 #p2041022#에게 안전하게 전해주었다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요? 저는 이 곳 헤네시스의 장로님의 큰 아들인 #b#p1012109##k라고 합니다. 아...정말 커다란 고민거리가 생겼어요. 아주 중대한 일이라...믿고 맡길만한 책임감 있는 분이.... 언제 더욱 일이 크게 번질지도 모르는 일이라 시급합니다. 혹시...도와주실 의향은 없으신가요?"},
	["yes"] = {["1"] = "아아..정말 다행입니다. 당신이 제게 말을 거는 순간부터 당신이라면 도와 줄 것이라는 걸 예감했어요.\n저희가 사는 이 세계의 탄생부터 현재까지의 역사가 고스란히 적혀 있는 #b메이플 고서#k를 되찾아 와야 합니다. 어떻게 된 일인가 하면… \n아, 이야기가 매우 길어질 것 같은데.. 옆의 의자에 라도 앉으시는 건 어떠세요?", ["2"] = "이 고서들은 이 세계의 중요 인물들이 소유하고 계시다가 최근 일이 생겼습니다. 그 중 한 권은 안전하게 보관되어 있긴 하지만… 나머지 두 권은..도난의 위험에 처해 있거나 실제로 도난 당하기도 했습니다. #b[메이플 고서] 세 권#k을 모두 되찾아 #r루디브리엄의 #p2041022##k에게 전해주어야 해요.", ["3"] = "메이플의 탄생 역사가 쓰여있던 #b#t4031157#권#k은 오르비스로 향하는 도중이었는데 말이죠.. 그 책을 전달하던 사신과의.. 연락이 완전히 두절된 상태입니다. 그 책이 누군가의 손에 들어간 것 같지는 않고...아마 어딘가에 있을 듯 한데.. #r오르비스로 향하던 배를 탄 이후 소식이 끊겼으니..#k #o8150000#에게 습격이라도 당한 것은 아닌지... 그 배 안 어딘가에 잘 숨겨져 있을 것 같은데..", ["4"] = "그리고 #b#t4031158#권#k은 메이플의 성장 과정..어떻게 발전해왔는지에 관한 이야기들이 쓰여져 있습니다. 그 책은 #r엘리니아에 거주하고 계신 대 마법사 하인즈님의 집 상자에 잘 보관#k되어 있으니 그 곳에서 책을 회수하면 될 것입니다.", ["5"] = "마지막 #t4031159#권은.. #r루디브리엄에 나타난 몬스터 #o3230306#들이 약탈#k해갔다고 합니다. 그들을 퇴치하다 보면 그들 중 약탈해 간 자에게서 책을 회수할 수 있을 것입니다. 마지막 권에는 사악한 몬스터들이 출현하게 된 배경과 그 퇴치에 관련된 이야기들이 고스란히 적혀 있습니다. 이 책들이 사악한 몬스터에게 입수되어서는 절대 안됩니다.  부디 이 책들을 모두 되찾아 안전하게 #p2041022#에게 전달해주지 않으시겠어요?\n\n#i4031157#   #i4031158#   #i4031159#"},
	["no"] = {["1"] = "..그..래요? 혹시 누구 추천을 해줄 만한 분이라도 없을까요? 정말..도움이 필요해요...아..제가 좀 더 강했더라면..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "핫핫핫, 루디브리엄의 호쾌한 남성으로 소문난 나에게 무슨 볼 일이라도 있는 건가? 별다른 볼 일이 없다면 그냥 가라구~ 응? 혹시 당신이 들고 있는 그건 메이플 고서 아닌가? 네가 그걸 왜 갖고 있는거지? 잠깐..잠깐만!! 이리 좀 보여줘 봐."},
	["yes"] = {["1"] = "헉!! 정말 메이플 고서…?? 어째서 당신이 이걸? 설마... 헤네시스의 장로 아들인 #b#p1012109#군#k이 말하던 이가…당신!?\n이,이런..무..무례를… 죄송합니다!! 감히 몰라 뵙고 이런 무례를 범했습니다. #b#p1012109#군#k에게 소식은 전해 들었지만..이렇게 급작스럽게 오실 줄은…\n이 고서 3권은 국왕께 전해드리도록 하겠습니다. 진심으로 감사드립니다. #n아아.. 그리고 감사의 뜻으로 루디브리엄의 국왕께서 #t4031160#을 수여하라고 하셨는데…제가 놔두고 나오는 실수를… 다음에 다시 저를 찾아와주지 않겠습니까?"},
	["stop"] = {
		["npc"] = {["1"] = "제가 만나라고 한 이는 아직 만나지 못한 건가요? 이제 슬슬 서둘러 주세요.."},
		["item"] = {["1"] = "아니, 내게 볼 일도 없으면서 나를 귀찮게 하는 거야 지금? 아아~ 나는 지금 이 곳의 사활이 걸린 중.대.한 일을 하고 있는 거라구.. 메이플 고서를 되찾는 일 말이야. 그러니까 단순한 호기심으로 나를 귀찮게 하진 말라구~"},
	},
}
return nTable
end