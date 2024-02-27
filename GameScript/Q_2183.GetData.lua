return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060005,
	["lvmin"] = 20,
	["quest"] = {{["id"] = 2182, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1092013,
	["item"] = {{["id"] = 4031851, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031851, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 3500,
	["item"] = {
		{["id"] = 4031851}
	},
}
nTable["info"] = {
	["name"] = "웨일족을 위한 만찬",
	["parent"] = "웨일족을 위한 만찬",
	["order"] = 3,
	["1"] = "드디어 웨일족을 위한 특별 음식을 완성하였다. 빨리 #b포쉐#k에게 가져다 주자!",
	["2"] = "웨일족도 당분간 음식 걱정이 없겠지?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "자 요리가 완성 되었어요. 이 요리를 빨리 포쉐에게 가져다 주시겠어요?"},
	["yes"] = {["1"] = "자아~ 여기 있습니다. #b포쉐#k에게 요리와 함께 이 말도 전해주세요. 언제든지 요리가 부족하거든 저에게 오라고."},
	["no"] = {["1"] = "아직 빅토리아 아일랜드에 갈 일이 없으신가봐요. 그 곳까진 먼 길이죠."},
}
nTable["say1"] = {
	["base"] = {["1"] = "드디어 오셨군요! 기다렸어요. "},
	["yes"] = {["1"] = "우와~ 켄타가 푸짐하게 만들어 줬네요. 웨일족도 기뻐할 거에요. 정말 감사합니다."},
	["stop"] = {
		["npc"] = {["1"] = "빨리 요리를 가지고 포쉐에게 전해주세요. 급한 것 같으니 빨리 가주시면 좋겠네요."},
	},
	["ask"] = {"잃어버리셨다고요? 여분이 있으니 다시 드릴게요. "},
}
return nTable
end