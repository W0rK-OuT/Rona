return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013000,
	["lvmin"] = 14,
	["startscript"] = "q22514s",
	["quest"] = {{["id"] = 22513, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1012003,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 420,
}
nTable["info"] = {
	["name"] = "그럼 수련을 하자",
	["area"] = 7,
	["0"] = "#p1010100# 돕기를 거절하자 #p1013000#는 불만이 큰 것 같다. 어떻게 하면 #p1013000#를 달랠 수 있을까? #b#p1013000##k에게 말을 걸어 보자.",
	["1"] = "#p1013000#는 그럼 #o2220100#을 거뜬히 물리칠 수 있을 때까지 수련을 하자며 수련장을 찾아 달라고 한다. 어떻게 하지? 뭐든 부탁하라고 했으니 #b#p1012003##k 아저씨에게 한 번 물어보자.",
	["2"] = "스탄 아저씨에게 말을 걸었다.",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "에반? 아직 집에 안 간 게냐? #m100000000#에 무슨 볼 일이라도 있나 보지? 수련장 말이냐? 물론 있기는 하다만..."},
	["yes"] = {["1"] = "수련장에 입장하려면 최저 레벨 15는 되어야 하는데... 레벨 15 이상이면 알아봐 주마."},
	["stop"] = {
		["npc"] = {["1"] = "(말을 걸면 시끄럽게 굴게 분명하니, 빨리 스탄 아저씨에게 가서 수련장에 대해 물어보자. )"},
	},
}
return nTable
end