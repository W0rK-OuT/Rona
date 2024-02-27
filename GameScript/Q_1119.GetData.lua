return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012018,
	["interval"] = 0,
	["infoNumber"] = 1100,
	["infoex"] = {"ing"},
	["item"] = {{["id"] = 4031687}},
}
nTable["check1"] = {
	["npc"] = 2012018,
	["item"] = {{["id"] = 4000070, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4000070, ["count"] = -20},
		{["id"] = 4031687, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "에릭손의 사랑의 증표",
	["0"] = "#t4031687#를 받으려면 에릭손을 찾아가보자.",
	["1"] = "에릭손은 나의 사랑을 증명하라면서 #b#t4000070# 20#k개를 가져오라고 했다.\n\n#i4000070##t4000070# #b#c4000070# / 20#k",
	["2"] = "에릭손에게 사랑의 증표를 얻었다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "사랑의 증표를 얻고 싶다고...? 진실한 사랑의 힘은 대단하다고 하긴 하더군. 어때 나의 테스트에 도전해 보겠어?"},
	["yes"] = {["1"] = "#b#t4000070# 20개#k를 모아오면 너의 사랑이 진실하다는 것을 믿도록 하지."},
	["no"] = {["1"] = "너의 사랑은 진실하지 못한가? 아니면 용기가 없는건가?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "내가 말한대로 #t4000070# 20개를 모두 가져왔군. 이제 너의 진실성을 믿겠어. 믿음의 증거로 사랑의 증표를 주지."},
	["yes"] = {["1"] = "진실한 사랑의 힘을 나도 알고 싶어지는군."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000070# 20개#k를 가져오시면 너의 진실성을 의심하지 않겠어."},
	},
}
return nTable
end