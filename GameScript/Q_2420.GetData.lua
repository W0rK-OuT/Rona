return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052113,
	["quest"] = {{["id"] = 2413, ["state"] = 2}},
	["job"] = {400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434},
	["skill"] = {{["id"] = 4001344, ["acquire"] = 1}},
}
nTable["check1"] = {
	["npc"] = 1052113,
	["mob"] = {
		[1] = {["id"] = 130100, ["count"] = 30}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1200,
}
nTable["info"] = {
	["name"] = "럭키 세븐 사용하기",
	["area"] = 10,
	["selectedSkillID"] = 4001344,
	["0"] = "수련장의 왕연해에게 스킬을 사용하는 방법을 배워보자.",
	["1"] = "수련장의 왕연해에게 스킬을 사용하는 방법을 배우고 있다. 럭키 세븐을 사용하여 돼지를 잡아보자.\r\n\r\n#o130100# #a24201# ( 럭키 세븐 사용 )",
	["2"] = "럭키 세븐을 사용하여 스텀프를 잡았다.",
	["summary"] = "럭키 세븐을 사용하여 스텀프를 30마리만 잡자.",
	["demandSummary"] = "#o130100# #a24201#\r\n",
	["rewardSummary"] = "경험치 1,200\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "이야~고마워. 당신 덕분에 내 표창장을 찾았어. 그럼 이제 수련을 해볼까? 혹시 '스킬'을 모르는 것은 아니겠지? 스킬을 사용하면 조금 더 강한 공격을 할 수 있다네. 어떤가? 도전해보겠나?"},
	["yes"] = {["1"] = "좋아. 럭키 세븐을 사용해 스텀프를 30마리만 잡아보게."},
	["no"] = {["1"] = "자네...수련을 하고 싶다고 하지 않았나?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "수고했네. 좋아 열심히 수련을 했으니 내가 레벨업에 도움을 주지."},
	["stop"] = {
		["mob"] = {["1"] = "아직 스텀프를 모두 잡지 못 한것 같은데?"},
	},
}
return nTable
end