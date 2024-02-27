return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012100,
	["normalAutoStart"] = 1,
	["lvmin"] = 30,
	["startscript"] = "q2303s",
	["lvmax"] = 38,
	["job"] = {310, 320, 311, 321, 312, 322},
}
nTable["check1"] = {
	["npc"] = 1300005,
	["endscript"] = "q2303e",
	["item"] = {{["id"] = 4032375, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "위기의 머쉬킹 왕국",
	["area"] = 30,
	["autoStart"] = 1,
	["0"] = "머쉬킹 왕국에 엄청난 위기가! 도움이 필요하다는데...\r\n",
	["1"] = "전직관이 써준 #b추천서#k를 가지고 머쉬킹 왕국의 #b#p1300005##k을 찾아가 보자.",
	["2"] = "전직관의 추천서를 가지고가 머쉬킹 왕국 경호대장을 만나보았다.",
	["rewardSummary"] = "경험치 6,000",
	["demandSummary"] = "#i4032375:# #t4032375:# #c4032375# / 1\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "한가지 부탁이 있는데 들어 보겠나?#b#L0#어떤 일이시죠?#l\n#k"},
	["stop"] = {
		["0"] = {},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "너는 누구지? 보아 하니 메이플 월드를 모험중인 친구 같은데 우리 왕국은 지금 절체절명의 위기에서 구해줄 진정한 용사가 필요하다구. 용무가 없다면 네 볼일을 보도록 해."},
	},
}
return nTable
end