return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1101002,
	["lvmin"] = 10,
	["startscript"] = "q20100s",
	["quest"] = {{["id"] = 20000, ["state"] = 2}, {["id"] = 20001, ["state"] = 2}},
	["job"] = {1000},
}
nTable["check1"] = {
	["npc"] = 1101002,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "선택의 기로",
	["0"] = "#b#p1101002##k에게 가서 수련기사로써의 인정을 받자.",
	["1"] = "선택할 수 있는 길은 다섯 가지. 빛의 검사, 불의 마법사, 바람의 궁수, 어둠의 도적, 번개의 해적. 과연 당신의 선택은?",
	["2"] = "선택할 수 있는 길은 다섯 가지. 빛의 검사, 불의 마법사, 바람의 궁수, 어둠의 도적, 번개의 해적. 과연 당신의 선택은?",
	["area"] = 15,
	["type"] = "[전직]",
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end