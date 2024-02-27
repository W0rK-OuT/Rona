return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081000,
	["interval"] = 0,
	["quest"] = {{["id"] = 6002, ["state"] = 2}},
	["item"] = {{["id"] = 2270000}, {["id"] = 1902000}, {["id"] = 1902001}, {["id"] = 1902002}, {["id"] = 4031509}},
}
nTable["check1"] = {
	["npc"] = 2081000,
	["endmeso"] = 20000000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -20000000,
	["item"] = {
		{["id"] = 4031509, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "드래곤의 향수병",
	["0"] = "리프레 마을에 #p2081000#님을 찾아가 드래곤의 향수병을 받아오자.",
	["1"] = "드래곤의 향수병은 매우 진귀한 물건이라 구하기가 힘들어 #r2000만 메소#k를 드려야지만 받을 수 있다고 했다.",
	["2"] = "#p2081000#님에게 2000만 메소를 드리고 드래곤의 향수병을 받았다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "무슨 일로 나를 찾아왔나? \r\n#L0##b드래곤의 향수병을 사러 왔습니다.#k#l", ["2"] = "#t4031509#이라... 그 진귀한 물건을 어떻게 알고 찾아왔는가?\r\n#L0##b켄타의 얘기를 듣고 왔습니다.#k#l", ["3"] = "쉽게 구할 수 있는 물건이 아니라서 대가가 만만치 않다네. 그래도 받아 갈텐가?"},
	["yes"] = {["1"] = "오래 전 내가 미나르 숲 깊은 곳에서 우연히 알게 된 것이 바로 #t4031509#이라네. 이 세상 어느 물건보다 단단하여 아무리 위험한 향수라도 #t4031509#만 있으면 평생 보관을 할 수 있다네.", ["2"] = "마음 같아서는 그냥 주고 싶지만 이젠 얼마 남지 않아 쉽게 줄 수가 없다네. 리프레 마을의 발전을 위하여 #r2000만 메소#k를 기부한다면 내가 하나 주도록 하지."},
	["no"] = {["1"] = "조심해서 돌아가게나."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "2000만 메소를 준비했는가?"},
	["yes"] = {["1"] = "유용하게 잘 쓰도록 하게나. 내가 받은 메소는 마을의 발전을 위하여 유용하게 쓰도록 하지."},
}
return nTable
end