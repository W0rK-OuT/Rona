return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2032004,
	["lvmin"] = 105,
	["item"] = {{["id"] = 4031196, ["count"] = 1}},
	["job"] = {100, 110, 111, 112, 120, 121, 122, 130, 131, 132, 200, 210, 211, 212, 220, 221, 222, 230, 231, 232, 300, 310, 311, 312, 320, 321, 322, 400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 500, 510, 511, 512, 520, 521, 522, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512, 2100, 2110, 2111, 2112, 2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 2032004,
	["item"] = {{["id"] = 4031196, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 126000,
	["item"] = {
		{["id"] = 4031196}
	},
}
nTable["info"] = {
	["name"] = "사악한 힘의 파괴",
	["0"] = "다크타키온은 시간의 구를 형성하는 힘의 근원인 타키온이 변질 된 것이라고 한다. 다크타키온에서 계속 사악한 기운이 빠져나오는 것으로 봐서는 상당히 위험한 것으로 판단된다. 이것을 엘나스의 깊은 곳 용암 분화구에 파기하는 것이 좋을 것 같다.",
	["1"] = "파풀라투스를 처치하고 그의 몸에서 다크타키온이 나왔다. 사악한 힘이 뿜어져 나오는 이 다크타키온을 파기하기 위해 엘나스의 깊숙한 곳 용암 던전으로 왔다. 용암을 토해내는 이 곳에 이 것을 파기하자.\n\n#i4031196##t4031196# #b#c4031196#/1#k",
	["2"] = "용암이 흐르는 곳의 숨겨진 공간으로 들어가니 용암 분화구를 찾을 수 있었다. 그 곳으로 다크타키온을 던져 파기하였다. 사악한 기운은 순식간에 사라졌다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "뜨거운 용암이 뿜어져 나오고 있다. 그 주변은 굉장히 뜨거운 듯 용암에 다가서자 후끈한 기운이 확 느껴진다. 이 곳에 다크타키온을 넣어 사악한 힘을 파괴하면 될 것 같다."},
	["yes"] = {["1"] = "파풀라투스의 사악한 힘을 갖고 있는 다크타키온을 파괴할 준비를 하고 다시 용암을 살펴보자."},
}
nTable["say1"] = {
	["base"] = {["1"] = "갖고 있던 다크타키온을 모두 파괴 하겠습니까?"},
	["yes"] = {["1"] = "다크타키온이 모두 파괴되었습니다. 사악한 힘은 모두 사라졌습니다."},
	["stop"] = {
		["item"] = {["1"] = "용암 분화구에 넣을 다크타키온을 갖고 있지 않습니다."},
	},
}
return nTable
end