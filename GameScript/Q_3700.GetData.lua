return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081002,
	["lvmin"] = 70,
}
nTable["check1"] = {
	["npc"] = 2081002,
	["item"] = {{["id"] = 4000229, ["count"] = 75}, {["id"] = 4000226, ["count"] = 55}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 33000,
	["item"] = {
		{["id"] = 4000226, ["count"] = -55},
		{["id"] = 4000229, ["count"] = -75},
		{["id"] = 2022089, ["count"] = 10}
	},
}
nTable["info"] = {
	["name"] = "이토의 부탁",
	["0"] = "#m240000000# 마을에서 알을 돌보고 있는 #p2081002#를 찾아가보자.",
	["1"] = "#m240000000# 마을에서 알을 돌보고 있는 #p2081002#는 알이 항상 따뜻할 수 있도록 따뜻한 #o7130500#의 털로 감싸주면 좋을 것 같다면서 #b#t4000226##k와 #b#t4000229##k의 털을 모아와 달라고 부탁했다.\n\n#i4000226##t4000226#  #b#c4000226##k / 55\n#i4000229##t4000229#  #b#c4000229##k / 75",
	["2"] = "#m240000000#에서 알을 돌보고 있는 #p2081002#의 부탁대로 따뜻한 레쉬의 털을 모아다줬다. #p2081002#는 레쉬의 털을 모아서 자신이 돌보고 있는 알을 따뜻하게 감싸주었다.",
	["area"] = 41,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕? 난 #b#p2081002##k라고해. 지금 난 내가 돌보고 있는 알이 따뜻할 수 있도록 보호해 주고 있는 중이야. 그런데 알이 너무 커서 내가 아무리 따뜻하게 안아주려고 해도 그럴 수가 없어. 따뜻한 레쉬의 털이 있다면 알을 따뜻하게 감싸줄 수 있을텐데... 내가 알을 따뜻하게 감싸줄 수 있도록 레쉬의 털을 모아다 주지 않겠어?"},
	["yes"] = {["1"] = "고마워. 따뜻한 #b#t4000226# 55개#k와 부드러운 #b#t4000229# 75개#k만 있다면 알을 따뜻하게 감싸줄 수 있을 것 같아."},
	["no"] = {["1"] = "알이 추운가봐. 더 따뜻하게 안아줄 수 있으면 좋을텐데..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "와아~ 고마워. 정말 따뜻해 보인다. 알아 조금만 기다려. 금방 따뜻하게 해줄게. "},
	["yes"] = {["1"] = "정말 고마워요. 알을 따뜻하게 돌봐주면 머지않아 귀여운 아이 용이 태어날거에요."},
	["stop"] = {
		["item"] = {["1"] = "알을 따뜻하게 하려면 #b#t4000226# 55개#k와 #b#t4000229# 75개#k면 될 것 같아요. 레쉬들은 마을의 서쪽에 많이 살고 있답니다. "},
	},
}
return nTable
end