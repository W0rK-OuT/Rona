return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1102002,
	["lvmin"] = 100,
	["interval"] = 0,
	["quest"] = {{["id"] = 20527, ["state"] = 2}},
	["item"] = {{["id"] = 1902006}, {["id"] = 1902005, ["count"] = 1}, {["id"] = 1902007}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
	["skill"] = {{["id"] = 10001004, ["acquire"] = 1}},
}
nTable["check1"] = {
	["npc"] = 1102002,
	["item"] = {{["id"] = 4032196, ["count"] = 3}, {["id"] = 4032197, ["count"] = 3}, {["id"] = 4032198, ["count"] = 3}, {["id"] = 1902005, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4032196, ["count"] = -3},
		{["id"] = 4032197, ["count"] = -3},
		{["id"] = 4032198, ["count"] = -3},
		{["id"] = 1902006, ["count"] = 1},
		{["id"] = 1902005, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "티티오 기르기",
	["area"] = 15,
	["0"] = "#b라이딩교관 #p1102002##k에게 더 강력한 라이딩에 대해 물어보자.",
	["1"] = "오랫동안 경험을 축적한 #t1902005#는 더 강력한 힘을 얻을 수 있게 된다고 한다. 하지만 그를 위해서는 한층 좋은 먹이가 필요하다는데... 용과도 닮은 강력함을 지니게 하기 위해 #m240000000#의 용들이 먹는 특제 이유식을 먹여보자. 특제 이유식은 팜에게서 구할 수 있다고 한다.\r\n\r\n\n#i4032196# #t4032196# #b#c4032196# / 3#k\n#i4032197# #t4032197# #b#c4032197# / 3#k\n#i4032198# #t4032198# #b#c4032198# / 3#k\r\n",
	["2"] = "모든 이유식을 구해 #t1902005#에게 먹였다. 그러자 #t1902005#는 탈피를 통해 #t1902006#가 되었다. ",
}
nTable["say0"] = {
	["base"] = {["1"] = "오랫동안 경험을 축적한 #t1902005#는 더 강력한 존재로 탈피할 수 있다네. 하지만 그러려면 한층 강력한 먹이가 필요하지... 용과도 닮은 강력함을 지니게 하기 위해 #b#m240000000#의 용들이 먹는 특제 이유식#k을 먹여보는 게 어떤가?"},
	["yes"] = {["1"] = "#b팜#k이 만드는 농축 이유식을 구해 오게나. 이유식은 각각 단계별로 먹여야 하는 법. #b1단계, 2단계, 3단계 농축 이유식을 각각 3개씩#k 구해 오면 된다네. ", ["2"] = "그럼 기다리겠네."},
	["no"] = {["1"] = "음... #t1902005#를 탈피시킬 생각이 없는 모양이군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오, 모든 이유식을 구해 왔군. 그럼 자, #t1902005#를 탈피시켜 보도록 하지. 일단 1단계 이유식을 먹이고... 2단계 이유식을 먹이고... 3단계 이유식을 먹이면..."},
	["yes"] = {["1"] = "#t1902005#가 탈피했네. 아니지, 이젠 #t1902005#가 아니라 #t1902006#로 불러야겠군. 탈피한 #t1902006#는 예전보다 더 강력한 자네의 친구가 되어줄 걸세. 좋은 라이딩 하게나."},
	["stop"] = {
		["item"] = {["1"] = "흠... 아직 탈피의 재료는 구하지 못한 것 같군. #b#m240000000##k의 #b팜#k이 #b농축 이유식#k을 만들어 준다던데... #b단계별로 각각 3개씩#k 구한 후 #t1902005#와 함께 오게나."},
	},
}
return nTable
end