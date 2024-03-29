return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032106,
	["lvmin"] = 40,
}
nTable["check1"] = {
	["npc"] = 2012011,
	["item"] = {{["id"] = 4031197, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031197, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 2000,
	["nextQuest"] = 3043,
	["item"] = {
		{["id"] = 4031197, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "신비한 재료 전해주기",
	["parent"] = "새로운 세계로",
	["order"] = 1,
	["0"] = "엘리니아의 요정 윙을 찾아가보자.",
	["1"] = "엘리니아에 있는 요정 윙을 만났다. 그는 지나가는 나를 붙잡더니 새로운 세계로 가서 더욱 강해져 보지 않겠냐고 물었다. 하지만 요정 윙의 목적은 다른 곳에 있었다. 오르비스에 살고 있는 자기 친구 #b요정 크리엘#k에게 전해줄 물건을 나보고 대신 전해달라는 것이다.",
	["2"] = "요정 윙의 친구 크리엘에게 켈벨로스의 눈물을 전해줬다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "거기 당신! 그래 인간족... 너 말이야! 조금 강해보이는데 혹시 더 강해질 생각이 없어?"},
	["yes"] = {["1"] = "역시 관심을 가질 줄 알았어. 오시리아 대륙이라고 들어봤어? 내가 보기에 너는 오시리아 대륙에서 더 강해질 수 있을 것 같아. 그 곳에 있는 새로운 몬스터들을 물리치면서 수련을 하면 지금보다 더 강해질 수 있을거야.", ["2"] = "오르비스에 가게 되면 그곳에 있는 내 친구 #b#p2012011##k을 좀 만나줘. 내가 그 친구한테 전해줘야 할 물건이 있거든. #b#t4031197##k이라는 것인데 우리집에 옛날부터 전해져 오던 물건이야.", ["3"] = "크리엘이 저번에 이것을 보고서는 계속 달라고 조르더라구. 크리엘은 오르비스에서 여러가지 마법도구랑 마법재료를 만드는 일을 하고 있거든...아마도 이 재료로 뭔가 특별한 마법도구를 만들려고 하나봐. 아무튼 오르비스에 가게 된다면 이것을 크리엘에게 전해줬으면 해."},
	["no"] = {["1"] = "관심없어? 별로 강해지고 싶지 않은가 보지?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "무슨 일로 절 찾아오셨죠? 아니 그 물건은 혹시 엘리니아에서 오신 분인가요? 그건 분명히 제 친구 윙의 것인데 어쨰서... 윙이 저에게 갖다 주라고 했다구요?"},
	["stop"] = {
		["npc"] = {["1"] = "아직도 #b요정 크리엘#k을 못 만난거야? 그녀는 오르비스에 있단말이야."},
	},
}
return nTable
end