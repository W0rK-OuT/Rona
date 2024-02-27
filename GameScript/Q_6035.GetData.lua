return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2112017,
	["lvmin"] = 105,
	["quest"] = {{["id"] = 6034, ["state"] = 2}},
	["job"] = {100, 110, 111, 112, 120, 121, 122, 130, 131, 132, 200, 210, 211, 212, 220, 221, 222, 230, 231, 232, 300, 310, 311, 312, 320, 321, 322, 400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 500, 510, 511, 512, 520, 521, 522, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512, 2100, 2110, 2111, 2112, 2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 2110004,
	["item"] = {{["id"] = 4031979, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031979, ["count"] = 1}
	},
}
nTable["act1"] = {
	["nextQuest"] = 6036,
	["item"] = {
		{["id"] = 4031979, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "종이조각의 주인",
	["parent"] = "스탠의 세 번째 가르침!",
	["order"] = 2,
	["1"] = "스탠의 작업실에서 주운 낙서가 가득 적혀있는 구겨진 종이조각은 아무래도 스탠의 물건인 것 같다. 그에게 돌려주는 것이 좋겠다.",
	["2"] = "스탠의 작업실에서 주운 낙서가 가득 적혀있는 구겨진 종이조각은 아무래도 스탠의 물건인것 같다. 그에게 돌려주는 것이 좋겠다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "아무래도 스탠이 떨어트린 것 같다. 스탠에게 돌려주시겠습니까?\n\n#b#L0#돌려준다.#l\n#L1#돌려주지 않는다.#l", ["2"] = "허리를 숙여 종이 조각을 주웠다."},
	["no"] = {["1"] = "마음이 바뀌었다. 종이조각을 그냥 두고 일어났다."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["2"] = "종이조각을 그 자리에 두고 나왔다."},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "스탠! 스탠! 이거 당신거 아니에요? 이봐요 스탠!"},
	["stop"] = {
		["npc"] = {["1"] = "스탠이 떨어트린것 같은데 스탠에게 돌려주자."},
		["item"] = {["1"] = "바쁘단 말이다! 말 걸지 말아라!"},
	},
}
return nTable
end