return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1095001,
	["quest"] = {{["id"] = 2414, ["state"] = 2}},
	["skill"] = {{["id"] = 5001001, ["acquire"] = 1}},
}
nTable["check1"] = {
	["npc"] = 1095001,
	["mob"] = {
		[1] = {["id"] = 1210100, ["count"] = 30}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1200,
}
nTable["info"] = {
	["name"] = "스트레이트 사용하기",
	["area"] = 10,
	["selectedSkillID"] = 5001001,
	["0"] = "수련장의 왕연해에게 스킬을 사용하는 방법을 배워보자.",
	["1"] = "수련장의 왕연해에게 스킬을 사용하는 방법을 배우고 있다. 파워 스트레이트를 사용하여 돼지를 잡아보자.\r\n\r\n#o1210100# #a24191# ( 스트레이트 사용 )",
	["2"] = "스트레이트를 사용하여 돼지를 잡았다.",
	["demandSummary"] = "\r\n",
	["summary"] = "스트레이트를 사용하여 돼지를 30마리 잡아라.",
}
nTable["say0"] = {
	["base"] = {["1"] = "이야~고마워. 당신 덕분에 내 표창장을 찾았어. 그럼 이제 수련을 해볼까? 혹시 '스킬'을 모르는 것은 아니겠지? 스킬을 사용하면 조금 더 강한 공격을 할 수 있다네. 어떤가? 도전해보겠나?"},
	["yes"] = {["1"] = "좋아. 스트레이트를 사용해 돼지를 30마리만 잡아보게."},
	["no"] = {["1"] = "자네...수련을 하고 싶다고 하지 않았나?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "수고했네. 좋아 열심히 수련을 했으니 내가 레벨업에 도움을 주지."},
	["stop"] = {
		["mob"] = {["1"] = "아직 돼지를 모두 잡지 못 한것 같은데?"},
	},
}
return nTable
end