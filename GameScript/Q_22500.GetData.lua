return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013000,
	["lvmin"] = 10,
	["startscript"] = "q22500s",
	["quest"] = {{["id"] = 22100, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1013000,
	["mob"] = {
		[1] = {["id"] = 1210100, ["count"] = 30}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1270,
	["sp"] = 0,
}
nTable["info"] = {
	["name"] = "아기 드래곤 깨어나다",
	["area"] = 7,
	["0"] = "헉. 정말로 알에서 드래곤이 깨어났다?! 과연 뭐라고 말을 할 것인 것, 조심스럽게 #b아기 드래곤을 클릭해 말을 걸어 보자#k.",
	["1"] = "잘은 모르지만 난 아기 드래곤 #p1013000#와 무슨 계약을 하게 된 것 같다. 앞으로 나는 #p1013000#의 마스터가 되어 잘 돌봐줘야 한다는데... \r\n\r\n느닷없는 말에 당황하고 있자 #p1013000#는 자신의 힘을 보여주겠다며 스킬을 써서 주변의 #o1210100#를 혼내주겠다고 한다. 난 스킬을 사용해 #p1013000#에게 명령만 내리라는데...\r\n\r\n#o1210100##r #a225001##k",
	["2"] = "#p1013000#는 놀라운 힘으로 돼지들을 물리쳤다!",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "음핫핫핫! 어떠냐? 내 능력이! 너, 아니 마스터는 앞으로 내가 가진 이 모든 능력을 마음대로 사용할 수 있게 되었다고! 계약자란 건 그런 거니까! 어때? 훌륭하지? 멋지지? 이 몸을 마구 우러러보고 싶어지지?"},
	["yes"] = {["1"] = "아... 근데 깨어난 지 얼마 되지도 않은 상태로 힘을 썼더니 배가 고파... "},
	["stop"] = {
		["mob"] = {["1"] = "내 능력을 보여준다니까! 어서 나에게 #r#o1210100##k를 공격하라고 말해! #r30마리#k쯤 단번에 잡아주겠어!"},
	},
}
return nTable
end