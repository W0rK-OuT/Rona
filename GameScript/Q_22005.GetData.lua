return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013103,
	["lvmin"] = 6,
	["quest"] = {{["id"] = 22004, ["state"] = 2}},
	["job"] = {2001},
}
nTable["check1"] = {
	["npc"] = 1013103,
	["item"] = {{["id"] = 4032449, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 700,
	["nextQuest"] = 22006,
	["item"] = {
		{["id"] = 4032449, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "아기 돼지 구하기",
	["area"] = 7,
	["type"] = "[필수]",
	["0"] = "#b아빠#k가 뭔가 시키실 일이 하나 더 있는 것 같다. 아빠에게 말을 걸어 보자.",
	["1"] = "울타리가 망가진 틈을 타 #p1013200# 한 마리가 도망친 모양이다. #b#m900020100##k으로 가서 길 잃은 #p1013200#를 찾아 오자. #r장마로 길이 망가졌을 가능성이 있으니 조심해야 한다#k.\r\n\r\n\r\n#i4032449# #t4032449# #b#c4032449# / 1#k",
	["2"] = "#p1013200#를 찾다가 이상한 알 하나를 얻게 되었다. 어떻게 하면 알을 잘 키울 수 있을까?",
	["showLayerTag"] = "22005",
}
nTable["say0"] = {
	["base"] = {["1"] = "이런, 문제가 하나 더 있구나. 울타리가 망가진 틈을 타 태어난 지 얼마 되지 않은 #b#p1013200##k 한 마리가 도망친 모양이야. 어려서 길도 모를 테니 아무래도 직접 찾으러 가야 할 것 같구나. 에반이 도와주지 않겠니?"},
	["yes"] = {["1"] = "아마 #p1013200#는 #b#m900020100##k 방향으로 간 것 같구나. 그러니 그쪽으로 가서 #p1013200#를 샅샅이 살펴봐다오. ", ["2"] = "울창한 숲 가는 길은 #b왼쪽 위#k편에 있단다. 장마로 길이 많이 무너졌으니 조심하도록 하렴. 그럼 부탁하마."},
	["no"] = {["1"] = "흐음. #p1013101#라면 부탁하기도 전에 먼저 하겠다고 나설 텐데."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오, 좀 늦었구나. #p1013200#가 멀리 있었나 보지? \r\n#L0##b네... 그런데 아빠, 이 주변에 안개가 낀 이상한 숲이 있나요?#l\n#k", ["2"] = "안개가 낀 숲? 아니. 전혀 없단다. 헤네시스 주변은 항상 날씨가 맑으니까...\r\n#L0##b(이상하네... 나 또 꿈이라도 꾼 걸까? 어젯밤부터 왜 이러지... )#k#l\n#k", ["3"] = "아무튼 심부름 해줘서 고맙다, 에반... 응? 무슨 생각을 그렇게 하는 거니?\r\n#L0##b#b(어라?! 근데 아까 본 알을 가지고 있잖아!? 역시 꿈이 아니었던 건가?!)#k#l\n#k", ["4"] = "에반?\r\n#L0##b아빠! 알을 깨우려면 어떻게 해야 할까요!?#l\n#k", ["5"] = "어이쿠, 깜짝이야. 알? 알을 깨운다고? 갑자기 왜 그런 말을 하는 건지 모르겠구나. 알이라..."},
	["yes"] = {["1"] = "응? 알은 어떻게 키우냐고? 그거야 엄마가 잘 알지 않을까?"},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
		["2"] = {["answer"] = "1", ["flip"] = "1"},
		["3"] = {["answer"] = "1", ["flip"] = "1"},
		["item"] = {["1"] = "아직 #p1013200#는 못 찾은 거니? 아마 #m900020100# 어딘가에 있을 것 같은데... 잘 찾아보려무나. #b왼쪽 위#k편으로 가면 울창한 숲에 들어갈 수 있단다."},
	},
	["ask"] = 1,
}
return nTable
end