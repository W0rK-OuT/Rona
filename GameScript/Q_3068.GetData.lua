return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012017,
	["lvmin"] = 35,
	["interval"] = 1440,
	["quest"] = {{["id"] = 3066, ["state"] = 2}},
	["item"] = {{["id"] = 1102061}},
}
nTable["check1"] = {
	["npc"] = 2012017,
	["item"] = {{["id"] = 4000156, ["count"] = 20}, {["id"] = 4000155, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 15000,
	["item"] = {
		{["id"] = 2000006, ["count"] = 10},
		{["id"] = 4000155, ["count"] = -20},
		{["id"] = 4000156, ["count"] = -20}
	},
}
nTable["info"] = {
	["name"] = "휴즈의 연구재료",
	["0"] = "휴즈의 연구재료가 다 떨어졌다는데...오르비스탑 지하 연구실에 있는 #p2012017#를 찾아가보자.",
	["1"] = "오르비스 탑에 사는 괴팍한 과학자 휴즈가 연구 재료가 떨어졌다면서 연구에 필요한 #b#t4000155# 20개#k와 #b#t4000156# 20개#k를 가져와 달라고 했다.\n\n#i4000155##t4000155#  #b#c4000155# / 20#k \n#i4000156# #t4000156#  #b#c4000156# / 20",
	["2"] = "휴즈의 연구를 위해 #t4000155#과 #t4000156#을 가져다 주었다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "엇 자네 오랫만인데? 내가 만들어 준 물건은 잘 쓰고 있나? 크크 물론 나의 천재성이 돋보이는 작품에 대한 놀라움을 매번 느끼면서 쓰고있겠지? 캬하하하하", ["2"] = "내가 이번에 새로운 연구를 시작했다네. 진정한 천재는 결코 스스로에게 만족하지 않는 법이거든. 한동안 연구에만 몰두해 있다 보니 연구재료가 다 떨어버렸지 뭔가. 온 김에 내 부탁 좀 들어주게나."},
	["yes"] = {["1"] = "연구 재료로 쓸 #b#t4000155# 20개#k와 #b#t4000156# 20개#k만 구해오면 된다네. 거의 다 떨어져버렸어."},
	["no"] = {["1"] = "도와 줄 생각이 없는거로군. 나에 대한 고마움이 전혀 없나? 내가 산소통까지 만들어 줬는데 말이야."},
}
nTable["say1"] = {
	["base"] = {["1"] = "때맞춰 잘 돌아왔네. 조금 전에 마지막 연구 재료를 써버려서 걱정하고 있던 참이었거든."},
	["yes"] = {["1"] = "그래그래 이정도면 적당하겠군. 고맙네. 이건 고맙다는 뜻으로 주는거야. 다음에도 또 도와달라구. 연구재료가 떨어질 때 쯤 다시 와서 도와주게나."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000155# 20개#k와 #b#t4000156# 20개#k라니까!! 내 말을 듣긴 한건가?"},
	},
}
return nTable
end