return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300002,
	["startscript"] = "q2333s",
	["lvmin"] = 30,
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2332, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300002,
	["endscript"] = "q2333e",
	["mob"] = {
		[1] = {["id"] = 3300008, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "음모의 배후",
	["area"] = 30,
	["0"] = "머쉬킹 왕국의 위기에 숨어있는 모종의 배후세력은?",
	["1"] = "배신자 #b총리대신#k을 처치하라.",
	["2"] = "배신자 #b총리대신#k을 처치하였다.",
	["rewardSummary"] = "경험치 15,000",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["mob"] = {["1"] = "용사님 부탁해요! 총리대신을 해치워 주세요!"},
	},
}
return nTable
end