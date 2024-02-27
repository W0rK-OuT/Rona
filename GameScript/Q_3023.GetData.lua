return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022000,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3022, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1032001,
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031054, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 4000,
	["nextQuest"] = 3024,
}
nTable["info"] = {
	["name"] = "엘리니아의 현자를 찾아서...",
	["parent"] = "고대의 책을 찾아서...",
	["order"] = 20,
	["1"] = "주먹펴고 일어서에게 힘의 크리스탈 2개를 넘겨주고 첫번째 #b오래된 지도조각#k을 받았다. 지도는 모두 네 조각이 난 채로 네 명의 현자에게 맡겨졌으며 지도조각을 모두 모아 고대의 책을 찾아 봉인해 달라는 부탁을 받았다. 이제 #b엘리니아#k에 있는 현자를 만나러 가볼까...",
	["2"] = "하인즈라... 주먹펴고 일어서에 비해 훨씬 현자다운 느낌이군.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네라면 내 기대를 져버리지 않을 거라고 믿고 있었네. 이걸로 소진했던 힘을 다시 회복할 수 있게 되었군. 그럼 약속했던 대로 #b#t4031056##k을 찾는데 단서가 되는 물건을 넘겨주겠네. 그 전에 아이템 기타창에 빈 칸이 하나 이상 있는지 미리 확인해 주길 바라네."},
	["yes"] = {["1"] = "#b#t4031056##k이 숨겨져 있는 곳을 나타내고 있는 것으로 보이는 지도의 조각이라네. 지도는 모두 네 조각이 난 채로 우리 4명의 현자에게 맡겨졌지. 하지만 마냥 숨겨둘 수 만은 없는일. 자네가 찾아내어 그 책을 봉인해 주게나. 그럼 이번에는 #b엘리니아에 있는 현자#k를 찾아가 보도록 하게. 내 미리 말을 해 두겠네."},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "#b#t4031056##k이 숨겨진 곳을 나타내는 지도는 모두 네 조각이 난 채로 우리 4명의 현자에게 맡겨졌지. 하지만 마냥 숨겨둘 수 만은 없는일. 자네가 찾아내어 그 책을 봉인해 주게나. 그럼 이번에는 #b엘리니아에 있는 현자#k를 찾아가 보도록 하게. 내 미리 말을 해 두겠네."},
	},
}
return nTable
end