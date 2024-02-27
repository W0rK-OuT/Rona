return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022007,
	["interval"] = 0,
	["infoNumber"] = 1100,
	["infoex"] = {"ing"},
	["item"] = {{["id"] = 4031685}},
}
nTable["check1"] = {
	["npc"] = 1022007,
	["item"] = {{["id"] = 4000018, ["count"] = 40}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4000018, ["count"] = -40},
		{["id"] = 4031685, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "이얀의 사랑의 증표",
	["0"] = "#t4031685#를 받으려면 이얀을 찾아가보자.",
	["1"] = "이얀은 나의 사랑을 증명하라면서 #b#t4000018# 40#k개를 가져오라고 했다.\n\n#i4000018##t4000018# #b#c4000018# / 40#k",
	["2"] = "이얀에게 사랑의 증표를 얻었다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요. 사랑의 증표를 얻고 싶으시다고요...? 진실한 사랑의 힘은 대단하다고 들었어요. 사랑의 힘으로 제 병도 고쳐졌으면 좋으련만. 당신의 사랑은 진실한가요? 그렇다면 저의 테스트를 통과해 보세요. 어때요?"},
	["yes"] = {["1"] = "#b#t4000018# 40개#k를 모아오신다면 당신의 사랑이 진실하다는 것을 믿겠어요."},
	["no"] = {["1"] = "당신의 사랑은 진실하지 못한가요? 아니면 용기가 없는건가요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "제가 말한대로 #t4000018# 40개를 모두 가져오셨군요. 이제 당신의 진실성을 믿겠어요. 제 믿음의 증거로 사랑의 증표를 드릴게요."},
	["yes"] = {["1"] = "진실한 사랑의 힘을 저도 알고 싶어지네요."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000018# 40개#k를 가져오시면 당신의 진실성을 의심하지 않겠어요."},
	},
}
return nTable
end