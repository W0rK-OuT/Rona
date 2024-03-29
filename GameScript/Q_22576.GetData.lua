return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013202,
	["normalAutoStart"] = 1,
	["lvmin"] = 57,
	["quest"] = {{["id"] = 22575, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 2030015,
	["item"] = {{["id"] = 4032471, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 7400,
	["item"] = {
		{["id"] = 4032471, ["count"] = -1}
	},
	["sp"] = 0,
}
nTable["info"] = {
	["name"] = "검은 열쇠 전달",
	["area"] = 7,
	["0"] = "#t4032471#를 획득하자 다시 한 번 비밀단체의 일원인 #p1013202#씨가 말을 걸어온다. #p1013202#씨에게 응답하자.",
	["1"] = "#p1013202#씨는 받은 물건을 #m211000000# #b#m211040400##k에 있는 #b#p2030015##k 아래에 넣어두라고 말했다. 그럼 비밀단체의 또다른 사람이 알아서 회수해 갈 것이라는데... 어서 바위를 찾아보자.",
	["2"] = "#p2030015# 아래에 #t4032471#를 놓아 두었다.",
	["autoStart"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "#p2022003#에게 물건을 받으신 모양이군요. 정말 잘 해주셨습니다. 이제 받은 그 물건을 저에게 전달만 해주시면 됩니다. 아, 직접 찾아오실 필요는 없습니다. ", ["2"] = "#m211000000#의 #b#m211040400##k을 아십니까? #m211040400#에 #b#p2030015##k가 하나 있는데, 전과 마찬가지로 그 아래 넣어두시면 됩니다. 그럼 단체의 또다른 회원이 알아서 회수해 갈 겁니다."},
	["no"] = {["1"] = "흠... 당장은 일이 바쁘셔서 거절하신 거라 믿겠습니다. 하지만 너무 기다리게 하지는 마십시오."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#b(은밀해 보이는 나무 그루터기가 있다. 그루터기 안에 손을 넣어보자 인공적으로 만든 것이 분명한 공간이 있다.)#k", ["2"] = "#b(빈 공간 안으로 열쇠를 밀어 넣었다.)#k"},
	["yes"] = {["1"] = "(겉으로 보기에 그루터기는 전혀 변하지 않았다.)"},
	["stop"] = {
		["npc"] = {["1"] = "아직 #p2030015#는 찾지 못하신 겁니까? #b#m211040400##k에 있는 #b#p2030015##k 아래에 #p2022003#와 거래한 물건을 넣어두시면 됩니다."},
		["item"] = {["1"] = "#b(은밀해 보이는 그루터기이다. 그루터기 안으로 손을 넣어보자 인공적으로 만든 것이 분명한 공간이 있다. #p1013202#씨는 이 안에 물건을 넣어두라고 했는데...)#k"},
	},
}
return nTable
end