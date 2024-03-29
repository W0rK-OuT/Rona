return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002104,
	["lvmin"] = 54,
	["normalAutoStart"] = 1,
	["startscript"] = "q21741s",
	["quest"] = {{["id"] = 21740, ["state"] = 2}},
	["job"] = {2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 2090004,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 500,
}
nTable["info"] = {
	["name"] = "무릉 조사",
	["area"] = 6,
	["0"] = "레벨 54가 되자 #b#p1002104##k가 말을 걸어 온다.",
	["1"] = "#p1002104#는 블랙윙과 관련이 있는 것 같은 정보가 들어왔다며, #b#m250000000##k으로 가달라고 말했다. #m250000000#의 #b#p2090004##k에게 가보면 자세한 사정을 들을 수 있다고 한다.",
	["2"] = "#m250000000#에서 #p2090004#을 만났다.",
	["autoStart"] = 1,
	["type"] = "[스킬]",
}
nTable["say0"] = {
	["base"] = {["1"] = "그 동안 레벨 업은 많이 했나, 영웅님? 오랜만에 블랙윙과 관련이 있는 듯한 흥미로운 정보가 발견되어서 말이야. 이번에는 좀 먼데... #b#m250000000##k이라는 마을 알아? 거기까지 가 줘야 할 것 같아.", ["2"] = "#m250000000#의 #b#p2090004##k이라는 자가 블랙윙과 접촉한 모양이야. 어쩌다 그렇게 된 건지는 모르겠지만 아무래도 확실한 정보인 것 같아. 왜 블랙윙이 #p2090004#에게 접촉했는지, 어떤 거래가 있었는지 알아봐줘.\r\n"},
}
nTable["say1"] = {
	["base"] = {["1"] = "응? 무슨 일이여? 약이라도 필요한 거여?"},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#m250000000##k에는 안 간 거야? 혹시 가는 법을 모르는 건 아니지? #b#m200000000# 스테이션#k에서 #b#p2090005##k을 타면 바로 갈 수 있는데... #p2090005#을 타고 #m250000000#까지 가서 #p2090004#을 만나면 돼."},
	},
}
return nTable
end