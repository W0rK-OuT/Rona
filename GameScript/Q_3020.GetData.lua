return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020007,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3019, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2020007,
	["item"] = {{["id"] = 4000051, ["count"] = 80}, {["id"] = 4000052, ["count"] = 80}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 9450,
	["nextQuest"] = 3021,
	["item"] = {
		{["id"] = 2000004, ["count"] = 30},
		{["id"] = 4000051, ["count"] = -80},
		{["id"] = 4000052, ["count"] = -80}
	},
}
nTable["info"] = {
	["name"] = "늑대 가죽 모으기",
	["parent"] = "고대의 책을 찾아서...",
	["order"] = 17,
	["1"] = "#b스카두르#k는 최근 늑대의 가죽값이 오르고 있다며 헥터의 꼬리 80개와 화이트팽의 꼬리 80개를 모아와 준다면 반지를 돌려주고 아는대로 뭐든지 말해 주겠다고 약속했다.\n\n#i4000051##t4000051# #b#c4000051##k/80\n#i4000052##t4000052# #b#c4000052##k/80",
	["2"] = "헥터의 꼬리와 화이트팽의 꼬리를 받은 스카두르는 만족하며 반지를 돌려주겠다고 말했다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "후후... 당분간 이 반지는 내가 보관하고 있겠네. 억지로 다시 돌려받으려 해도 소용 없어. 오랫동안 몬스터와 씨름해 온 날 이길순 없지. 하지만 정 돌려받고 싶다면 한 가지 내 부탁을 들어주면 돼. 무리한 부탁은 하지 않을거야. 어떤가... 한 번 들어 보겠는가?", ["2"] = "좋아! 부탁이란 건 간단하다네. 최근 늑대의 가죽값이 오르고 있는데 이 녀석들이 사나워지는 시기라 얻기가 쉽지 않단 말야. #b#t4000051# 80개와 #t4000052# 80개#k를 모아와 준다면 반지를 돌려주고 내가 아는 정보도 말해주겠어. 날 너무 기다리게 하지 않는 편이 좋을거야. 되도록 빨리 가져와 주게나!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "후후... 약속대로 #b#t4000051# 80개와 #t4000052# 80개#k를 모아왔군 그래. 좋아. 약속대로 반지를 돌려주지. 그리고 이렇게 부탁도 들어줬으니 나에겐 필요없는 물건을 넘겨주겠네. 그 전에 아이템 소비창에 빈 칸이 있는지 확인해 달라고~"},
	["stop"] = {
		["item"] = {["1"] = "최근 늑대의 가죽값이 오르고 있는데 이 녀석들이 사나워지는 시기라 얻기가 쉽지 않단 말야. #b#t4000051# 80개와 #t4000052# 80개#k를 모아와 준다면 반지를 돌려주고 내가 아는 정보도 말해주겠어. 날 너무 기다리게 하지 않는 편이 좋을거야. 되도록 빨리 가져와 주게나!"},
	},
}
return nTable
end