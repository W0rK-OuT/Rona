return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2000,
	["startscript"] = "q1021s",
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 2000,
	["endscript"] = "q1021e",
	["item"] = {{["id"] = 2010007}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "로저와 사과",
	["0"] = "#b#p2000##k에게 말을 걸어 보자.",
	["1"] = "단축키 I 를 눌러 소비창에 있는 #b#t02010007##k를 소비하고 #b#p2000##k에게 말을 걸자.",
	["2"] = "아이템을 소비하는 방법에 대해 배웠다.",
	["area"] = 20,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "내가 준 #r#t2010007##k를 전부 먹으라니까 그러네~ 아이템 창을 열어서 #b소비 탭#k을 클릭해봐. #t2010007#가 있을테니 더블클릭해서 먹으면 돼."},
	},
}
return nTable
end