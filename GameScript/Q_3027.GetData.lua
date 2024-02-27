return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012100,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3026, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052001,
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031054, ["count"] = 3}
	},
}
nTable["act1"] = {
	["exp"] = 4000,
	["nextQuest"] = 3028,
}
nTable["info"] = {
	["name"] = "커닝시티의 현자를 찾아서...",
	["parent"] = "고대의 책을 찾아서...",
	["order"] = 24,
	["1"] = "헬레나에게 민첩성의 크리스탈 2개를 넘겨주고 세번째 #b오래된 지도조각#k을 받았다. 이제 #b커닝시티#k에 있는 현자만 만나면 되겠는걸?",
	["2"] = "이런 곳에 숨어 있는 현자라니... 묘한걸? 이름도 다크로드고... 뭔가 수상쩍은 느낌의 사람이다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신이라면 제 기대를 져버리지 않을 거라고 믿고 있었어요. 이걸로 소진했던 힘을 다시 회복할 수 있게 되었군요. 그럼 약속했던 대로 #b#t4031056##k을 찾는데 단서가 되는 물건을 드리겠습니다. 그 전에 아이템 기타창에 빈 칸이 하나 이상 있는지 미리 확인해 주세요."},
	["yes"] = {["1"] = "#b#t4031056##k이 숨겨져 있는 곳을 나타내고 있는 것으로 보이는 지도의 세번째 조각이랍니다. 지도는 모두 네 조각이 난 채로 저희 4명의 현자에게 맡겨졌지요. 하지만 마냥 숨겨둘 수 만은 없는일. 당신이 찾아내어 그 책을 봉인해 주세요. 그럼 이번에는 마지막으로 #b커닝시티에 있는 현자#k를 찾아가 보도록 하세요. 미리 말을 해 두겠습니다."},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "#b#t4031056##k이 숨겨진 곳을 나타내는 지도는 모두 네 조각이 난 채로 저희 4명의 현자에게 맡겨졌지요. 하지만 마냥 숨겨둘 수 만은 없는일. 당신이 찾아내어 그 책을 봉인해 주세요. 그럼 마지막으로 #b커닝시티에 있는 현자#k를 찾아가 보도록 하세요. 미리 말을 해 두겠습니다."},
	},
}
return nTable
end