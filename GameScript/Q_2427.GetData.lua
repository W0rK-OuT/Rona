return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022104,
	["quest"] = {{["id"] = 2410, ["state"] = 2}},
	["job"] = {100, 110, 120, 130, 111, 121, 131, 112, 122, 132},
}
nTable["check1"] = {
	["npc"] = 1022104,
	["mob"] = {
		[1] = {["id"] = 130100, ["count"] = 200}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2500,
}
nTable["info"] = {
	["name"] = "단체 수련이 좋아! (파티)",
	["area"] = 10,
	["0"] = "모두 함께 수련하면 더욱 즐거운 모험을 할 수 있다고 한다. 자세한 이야기는 왕연해에게 들어보자.",
	["1"] = "모두 함께 수련하면 더욱 즐거운 모험을 할 수 있다고 한다. 조금 많이 잡는 듯 하지만... 함께 잡는다면 금방 잡을 수 있을 것 같은데?",
	["2"] = "왕연해의 수련을 무사히 마쳤다.",
	["summary"] = "파티 사냥을 하면 더욱 빠르게 퀘스트를 완료할 수 있다.",
	["demandSummary"] = "#o130100# #a24271#\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "자네는 혹시 #b파티 사냥#k의 개념을 알고 있나? 모두 함께 한 마음으로 사냥을 하는 것이지. 파티 플레이를 하면 어려운 시험도 조금 편하게 해결 할 수 있다네.\r\n", ["2"] = "이번 수련은 혼자서 수행하기에는 조금 어렵겠지만 모두 함께 수련한다면 크게 어렵지는 않을거야. 어떤가 도전해 보겠나?"},
	["yes"] = {["1"] = "좋아. 그럼 #b스텀프 200마리#k를 잡아보게. 혼자서는 어려우니 파티 사냥을 하는 것이 도움이 될 것이야!"},
	["no"] = {["1"] = "협동도 좋은 모험가가 될 수 있는 아주 중요한 자질이라네."},
}
nTable["say1"] = {
	["base"] = {["1"] = "수고했네. 잊지 말게, 파티 사냥을 하면 퀘스트 수행이 편해질 수도 있네."},
	["stop"] = {
		["mob"] = {["1"] = "아직..스텀프를 모두 잡지 못하였군."},
	},
}
return nTable
end