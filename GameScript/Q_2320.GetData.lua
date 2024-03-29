return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300007,
	["lvmin"] = 30,
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2318, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1012111,
	["item"] = {{["id"] = 4032389, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4032389, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 8800,
	["item"] = {
		{["id"] = 4032389, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "브루스와의 우정",
	["area"] = 30,
	["demandSummary"] = "#i4032389:# #t4032389:# #c4032389# / 1\r\n",
	["rewardSummary"] = "경험치 8,800\r\n",
	["0"] = "#b스카스#k가 무언가 전할 말이 있다고한다.",
	["1"] = "#b킬라 버섯 포자 샘플#k을 #b헤네시스#k에 있는 #b브루스#k에게 전달해주자.",
	["2"] = "#b킬라 버섯 포자 샘플#k을 #b브루스#k에게 전달해주었다.",
	["summary"] = "#b킬라 버섯 포자 샘플#k을 #b헤네시스#k에 있는 #b브루스#k에게 전달해주자.",
}
nTable["say0"] = {
	["base"] = {["1"] = "한 가지만 더 부탁이 있는데 들어주시겠어요?"},
	["yes"] = {["1"] = "사실 이 #b킬라 버섯 포자#k는 제 연구의 성과물이 아니에요. #b헤네시스#k에있는 #b브루스#k를 아시나요? 그 친구와 저는 어렸을 때 부터 절친한 사이로, 이 #b킬라 버섯 포자#k의 경우도 그 친구가 연구한 성과를 저에게 알려주어 완성 할 수 있었지요. 이 것은 모두 그 친구의 덕입니다. 그 친구에게 이것을 전해 주세요."},
	["no"] = {["1"] = "#b브루스#k에게 기쁜 소식을 전하고 싶었는데. 바쁘시다면야 할 수 없죠."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오! #b스카스#k의 부탁으로 오셨다고요?"},
	["yes"] = {["1"] = "허허 이 것은 제가 예전에 연구하던 #b킬라 버섯 포자#k군요. 재료를 구하기가 어려워 이론에만 그치고 있었는데 그 친구가 완성했군요. 이렇게 샘플까지 보내 주다니. 정말 고맙다고 꼭 전해 주세요."},
	["stop"] = {
		["npc"] = {["1"] = "브루스에게 찾아가세요."},
		["item"] = {["1"] = "어떤 일로 저를 찾아 오셨지요?"},
	},
}
return nTable
end