return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1040001,
	["startscript"] = "q2344s",
	["normalAutoStart"] = 1,
	["lvmin"] = 30,
	["lvmax"] = 38,
	["job"] = {2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1300005,
	["endscript"] = "q2344e",
	["item"] = {{["id"] = 4032375, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "위기의 머쉬킹 왕국",
	["area"] = 30,
	["0"] = "머쉬킹 왕국에 엄청난 위기가! 도움이 필요하다는데...",
	["1"] = "전직관을 대신해 마이크가 써준 #b추천서#k를 가지고 머쉬킹 왕국의 #b#p1300005##k을 찾아가 보자.",
	["2"] = "전직관의 추천서를 가지고가 머쉬킹 왕국 경호대장을 만나보았다.",
	["autoStart"] = 1,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "너는 누구지? 보아 하니 메이플 월드를 모험중인 친구 같은데 우리 왕국은 지금 절체절명의 위기에서 구해줄 진정한 용사가 필요하다구. 용무가 없다면 네 볼일을 보도록 해."},
	},
}
return nTable
end