return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9010000,
	["lvmin"] = 8,
	["lvmax"] = 10,
	["startscript"] = "q1048s",
	["normalAutoStart"] = 1,
	["subJobFlags"] = 1,
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 9010000,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "직업 추천",
	["0"] = "전직과 관련하여 도와주고 싶다고 하는데...",
	["1"] = "아직 익숙하지 않은 내게 운영자님께서 직접 직업을 추천해주셨다.",
	["2"] = "아직 익숙하지 않은 내게 운영자님께서 직접 직업을 추천해주셨다.",
	["area"] = 20,
	["autoStart"] = 1,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end