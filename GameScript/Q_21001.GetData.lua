return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1209006,
	["startscript"] = "q21001s",
	["quest"] = {{["id"] = 21000, ["state"] = 2}},
	["job"] = {2000},
}
nTable["check1"] = {
	["npc"] = 1209007,
	["endscript"] = "q21001e",
	["item"] = {{["id"] = 4001271, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4001271, ["count"] = 1}
	},
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "아이를 구해주세요2",
	["area"] = 6,
	["0"] = "간신히 숲 안에서 아이를 찾았다. 어서 아이를 데리고 돌아가자.",
	["1"] = "간신히 숲 안에서 아이를 찾았다. 어서 아이를 데리고 돌아가자.",
	["2"] = "간신히 아이를 구해 왔다... 이제 시간이 없다! 검은 마법사가공격해 오기 전에 어서 방주를 출발시켜야 한다!",
	["type"] = "[필수]",
}
nTable["say0"] = {
	["base"] = {["1"] = "무서워서 혼났어요... 훌쩍. 어서 헬레나님께 데려가 주세요!"},
}
nTable["say1"] = {
}
return nTable
end