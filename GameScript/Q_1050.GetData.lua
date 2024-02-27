return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9010000,
	["lvmin"] = 8,
	["lvmax"] = 20,
	["startscript"] = "q1050s",
	["normalAutoStart"] = 1,
	["infoNumber"] = 7631,
	["infoex"] = {"200"},
	["quest"] = {{["id"] = 1048, ["state"] = 2}},
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
	["name"] = "마법사 전직 하기",
	["0"] = "운영자님께서 나에게 어울리는 직업을 마법사라고 하셨다.",
	["1"] = "마법사로 전직할 수 있도록 엘리니아로 이동 시켜 주신다고 하셨다.",
	["2"] = "이제 마법사로 전직해볼까?",
	["area"] = 20,
	["autoStart"] = 1,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end