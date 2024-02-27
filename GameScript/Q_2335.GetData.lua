return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300002,
	["lvmin"] = 30,
	["startscript"] = "q2335s",
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2334, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300002,
	["infoNumber"] = 2335,
	["infoex"] = {"1"},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "잔당소탕",
	["area"] = 30,
	["0"] = "아직 성내에 #b총리대신#k의 잔당들이 남아있다고 하는데...",
	["1"] = "총리대신의 잔당들이 있는곳을 찾아내자. 그들이 숨어있는 곳은 #b마천루3#k에서 진입할 수 있다고 한다.",
	["2"] = "#b총리대신#k 잔당들의 거점을 발견하고 적을 소탕했다.",
	["summary"] = "총리대신의 잔당들을 제거하자. 그들이 숨어있는 곳은 #b마천루3#k에서 진입할 수 있다.",
	["rewardSummary"] = "경험치 1,200",
	["demandSummary"] = "총리대신의 잔당들의 거처를 찾아라.",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["default"] = {["1"] = "총리대신의 잔당들을 소탕해 주세요. #b마천루3#k에서 제가 드린 #b#t4032405##k를 사용해 #b성의 보안실#k로 들어가세요."},
	},
}
return nTable
end