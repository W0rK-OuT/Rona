return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1101002,
	["lvmin"] = 100,
	["startscript"] = "q20527s",
	["normalAutoStart"] = 1,
	["quest"] = {{["id"] = 20523, ["state"] = 2}},
	["item"] = {{["id"] = 1902005, ["count"] = 1}, {["id"] = 1902006}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
	["skill"] = {{["id"] = 10001004, ["acquire"] = 1}},
}
nTable["check1"] = {
	["npc"] = 1101002,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "기사의 품격",
	["area"] = 15,
	["0"] = "#b#p1101002##k가 뭔가 또다시 할 말이 있는 것 같은데...",
	["1"] = "#p1101002#는 레벨이 100이 되었는데 아직도 일반 #t1902005#를 타고 있는 건 상급기사의 품격에 어울리지 않는다며, 몬스터 라이딩에 관한 새로운 정보를 알려주었다. #b라이딩교관 #p1102002##k에게 가면 더 강력한 라이딩에 대해 알 수 있을 거라는데...",
	["2"] = "#p1101002#는 레벨이 100이 되었는데 아직도 일반 #t1902005#를 타고 있는 건 상급기사의 품격에 어울리지 않는다며, 몬스터 라이딩에 관한 새로운 정보를 알려주었다. #p1102002#에게 가면 더 강력한 라이딩에 대해 알 수 있을 거라는데...",
	["autoStart"] = 1,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end