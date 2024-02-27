return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081000,
	["lvmin"] = 120,
	["interval"] = 0,
	["quest"] = {{["id"] = 6944, ["state"] = 1}},
	["item"] = {{["id"] = 4031861}, {["id"] = 4031860}},
	["job"] = {511, 521},
}
nTable["check1"] = {
	["npc"] = 2081000,
	["item"] = {{["id"] = 4031348, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4031348, ["count"] = -1},
		{["id"] = 4031860, ["count"] = 1, ["job"] = 63},
		{["id"] = 4031861, ["count"] = 1, ["job"] = 63}
	},
}
nTable["info"] = {
	["name"] = "타타모의 제안   ",
	["0"] = "#b#p2081500##k는 지혜로 #b#t4031517##k과 #b#t4031518##k를 구하고 싶다면 리프레의 #b#p2081000##k를 찾아가 보라고 했다.",
	["1"] = "#b#p2081000##k는 #b#t4031517##k과 #b#t4031518##k을 얻고 싶다면 #b#t4031348##k를 구해다 달라고 했다. 비밀의 주술서는 다른 마을의 주문서 상인들이 알고 있다는데...\r\n#i4031348##t4031348##k #b#c4031348#/1",
	["2"] = "#b#t4031348##k를 가져다 주고 #b#t4031517##k과 #b#t4031518##k을 얻었다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "사제의 숲에 계시는 사제님께 당신의 이야기를 들었습니다. 4차 전직을 하기 위해 노력하고 계시다고 들었는데 맞나요?", ["2"] = "당신이 구하고 있는 것은 분명 #b#t4031343##k과 #b#t4031344##k일 것입니다. 만약 당신이 우리 마을 사람들을 위해 한 가지 일을 해주신다면, 원하시는 것을 드리도록 하겠습니다. 어떠신가요? 당신이 영웅임을 증명할 수 있겠습니까?"},
	["yes"] = {["1"] = "이 숲과 용들이 우리 하프링들을 항상 지켜주고 있고, 하프링들은 숲을 지키는 용들의 알을 보호하고 있습니다. 하지만 우리 스스로도 스스로를 보호해야된다는 생각을 하게되었습니다.", ["2"] = "제가 듣기로는 다른 지역에서 주문서를 파는 상인들이 특별한 #b#t4031348##k를 판다고 하는데 그 주문서는 사용하는 사람을 보호해 주는 능력을 가졌다고 해요. 그 주문서를 이용해서 마을과 미나르숲을 보호할 수 있을 거라는 생각이 드네요.", ["3"] = "우리 마을을 위해 그 주문서를 가져와 주시겠습니까? \r\n당신이 그 주문서를 가져다 주신다면 당신이 찾고 있는 물건을 드리겠습니다."},
	["no"] = {["1"] = "저의 제안을 받아들이시지 않아도 괜찮습니다. 당신이라면 다른 방법으로 원하시는 물건을 구할 수 있을지도 모르니까요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#b#t4031348##k를 구하시는데 성공하셨군요! "},
	["yes"] = {["1"] = "당신의 친절함에 감사드립니다. 당신이 구해다 주신 이 주문서는 우리 마을 사람들에게 큰 도움이 될 것입니다. \r당신은 영웅의 마음가짐을 가지고 계시군요..."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4031348##k는 아직인가요?"},
	},
}
return nTable
end