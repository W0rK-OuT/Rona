return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111008,
	["lvmin"] = 35,
	["quest"] = {{["id"] = 3302, ["state"] = 2}},
	["equipAllNeed"] = {1102135},
}
nTable["check1"] = {
	["npc"] = 2111008,
	["item"] = {{["id"] = 4000352, ["count"] = 50}, {["id"] = 4010004, ["count"] = 5}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 10900,
	["item"] = {
		{["id"] = 4000352, ["count"] = -50},
		{["id"] = 4010004, ["count"] = -5}
	},
}
nTable["info"] = {
	["name"] = "베딘의 연구 돕기",
	["0"] = "제뉴미스트 소속의 연금술사 #b#p2111008##k에게 그의 일을 도와줄 사람이 필요하다는데...",
	["1"] = "#p2111008#은 그의 연구에 모자란 재료인 제련된 #b#t4010004# 5개#k와 #b#t4000352# 50개#k를 구해 달라고 했다. \n\n#i4010004##t4010004# #b#c4010004##k/5 \n#i4000352##t4000352# #b#c4000352##k/50",
	["2"] = "#p2111008#에게 #t4011004#과 #t4000352#을 가져다 주었다. #t4011004#이라는 광석에는 마법을 등록하는 기묘한 힘이 있는 것 같다. 흐음. 새로운 사실을 한 개 알게 되었군.",
	["area"] = 44,
	["autoStart"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "망토를 두른 걸 보니 네가 이번에 새로 들어왔다는 그 녀석인 모양이지? 반가워. 난 #p2111008#이라고 해. 제뉴미스트에서 #b마력석#k을 만드는 일을 하고 있지. ...음? 마력석이 뭐냐고? 흠... 그건 마력을 모으도록 만들어진 마법 물품이야. ", ["2"] = "마력석 안에는 코어가 있어서 마법을 등록할 수 있어. 마법을 등록한 마력석은 마법석이라고 해. 마법을 배우지 않은 사람도 마법을 쓸 수 있도록 만들어주지. 예를 들면 오르비스의 마법석 같은 것도 마력석이 기본이 되고 있지. ", ["3"] = "마력석에서 가장 중요한 재료는 #t4011004#과 #t4011008#이야. #b#t4011004#은 마법을 등록#k하는데 쓰이고, #t4011008#은 마력을 저장하는데 쓰이니까. 모든 마력석의 중심에는 은으로 만든 코어와 리튬으로 된 동력 장치가 들어가게 되어 있어. 다 이 #p2111008#님이 힘들게 만든다는 말씀이지.", ["4"] = "그런데... #t4011008#은 가까운 #m260000000#에서 공수할 수 있기에 꽤 많이 있는데... #t4011004#은 이상하게 구하기 어려워. 엘나스 쪽에 광산들이 폐광된 게 많아져서 그런가...? 끄응. 괜찮다면 네가 좀 도와주면 안 될까?"},
	["yes"] = {["1"] = "우왓! 정말 도와주겠다는 거야? 그럼 #b#t4010004# 5개#k와 #t4011004#을 제련하는데 쓸 #b#t4000352# 50개#k를 구해다 줘. 사실 아까 실수로 코어를 만들다가 #t4011004#을 못쓰게 만들어 버려서... 흠흠. 협회장님께는 비밀로... "},
	["no"] = {["1"] = "흠... 하긴. 아직 신입이니 이런 건 어렵겠지? 알았어. 다시 해보겠다는 생각이 들면 말하라고."},
}
nTable["say1"] = {
	["base"] = {["1"] = "어, 재료를 모두 가져온 거야? 오오... 굉장한걸? 혹시 연금술사가 아니라 모험가 아니야? ...에이. 농담이니까 그런 표정 지을 거 없어. 아무튼 신입인데, 고생했어. 정말 고마워. "},
	["yes"] = {["1"] = "#t4011004#은 연금술에서 절대 빠지지 않는 광석이야. 마법의 힘을 특별한 물건에 깃들게 할 때는 항상 #t4011004#이 필요하지. #t4011004#의 결에는 마법을 새길 수 있으니까. 기초 연금술 지식이야. 잊지 말라고. 신입."},
	["stop"] = {
		["item"] = {["1"] = "흠... #b#t4010004# 5개#k하고 #b#t4000352# 50개#k는 아직 먼 거야? 협회장님께 들키기 전에 가져다 줬으면 좋겠는데..."},
	},
}
return nTable
end