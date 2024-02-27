return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2091003,
	["interval"] = 0,
	["infoNumber"] = 1100,
	["infoex"] = {"ing"},
	["item"] = {{["id"] = 4031691}},
}
nTable["check1"] = {
	["npc"] = 2091003,
	["item"] = {{["id"] = 4000278, ["count"] = 30}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4000278, ["count"] = -30},
		{["id"] = 4031691, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "한태수의 사랑의 증표",
	["0"] = "#t4031691#를 받으려면 한태수를 찾아가보자.",
	["1"] = "한태수는 나의 사랑을 증명하라면서 #b#t4000278# 30#k개를 가져오라고 했다.\n\n#i4000278##t4000278# #b#c4000278# / 30#k",
	["2"] = "한태수에게 사랑의 증표를 얻었다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "누구죠? 여긴 개인 사유지라구요. 사랑의 증표를 얻고 싶으시다구요? 흐음... 그렇다면 노력하는 모습을 보이셔야죠. 어때요? 제가 부탁하는건 모두 들어줄 수 있나요?"},
	["yes"] = {["1"] = "#b#t4000278# 30개#k를 모아오신다면 당신의 노력을 인정하겠어요."},
	["no"] = {["1"] = "당신의 사랑은 진실하지 못한가요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "아아 잘됐어요. #t4000278# 30개를 모두 가져오셨군요. 이제 당신의 진실성을 믿겠어요. 제 믿음의 증거로 사랑의 증표를 드릴게요."},
	["yes"] = {["1"] = "진실한 사랑의 힘을 저도 알고 싶어지네요."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000278# 30개#k를 가져오시면 당신의 진실성을 의심하지 않겠어요."},
	},
}
return nTable
end