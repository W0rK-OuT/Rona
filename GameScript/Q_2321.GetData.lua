return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300004,
	["lvmin"] = 30,
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2319, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300003,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2500,
	["nextQuest"] = 2322,
}
nTable["info"] = {
	["name"] = "성벽을 넘어서 (1)",
	["area"] = 30,
	["rewardSummary"] = "경험치 2,500\r\n'성벽을 넘어서 (2)' 퀘스트로 진행 가능\r\n",
	["0"] = "#b마법대신#k이 전할 말이 있다고 한다.",
	["1"] = "#b내무대신#k을 찾아가 보자.",
	["2"] = "본격적으로 모험을 떠나기전에 #b내무대신#k을 찾아가 보았더니 성으로의 침투 방법에 대해 고민하고 있다.",
	["summary"] = "#b내무대신#k을 찾아가 보자.",
}
nTable["say0"] = {
	["base"] = {["1"] = "이제 버섯 숲의 가시덩굴 결계를 뚫을 수 있을 걸세. 그전에 #b내무대신#k이 전할말이 있다니 한 번 들러보게나."},
	["yes"] = {["1"] = "행운을 빌겠네."},
	["no"] = {["1"] = "말을 잘 안듣는 청년이구먼. 생각이 바뀌면 다시오라구."},
}
nTable["say1"] = {
	["base"] = {["1"] = "용사님의 활약상은 계속 전해 듣고 있어요. #b킬라 버섯 포자#k라는 신비한 약품을 완성해 숲의 결계를 뚫을 수 있게 되었다지요? 훌륭하십니다!"},
	["yes"] = {["1"] = "그렇다면, 이제 문제는 성에 어떻게 들어가는지가 관건이군요."},
	["stop"] = {
		["npc"] = {["1"] = "자네 머리가 나쁜가? #b내무대신#k을 찾아가 보라고 했을텐데."},
	},
}
return nTable
end