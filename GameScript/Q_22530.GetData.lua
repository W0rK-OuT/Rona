return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1040001,
	["lvmin"] = 23,
	["quest"] = {{["id"] = 22528, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1040001,
	["infoNumber"] = 22597,
	["infoex"] = {"5"},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3900,
	["item"] = {
		{["id"] = 1952000, ["count"] = 1}
	},
	["sp"] = 0,
}
nTable["info"] = {
	["name"] = "경비병의 세 번째 일 : 경고문은 미리미리",
	["area"] = 7,
	["0"] = "#m102000000# 경비병으로서 해야 할 일이 생긴 것 같다. #b#m106000300##k로 가서 #b#p1040001##k에게 말을 걸어 보자.",
	["1"] = "#p1040001#는 안전은 미리미리 챙겨야 한다며, #b동쪽바위산1#k~#b페리온동쪽령#k에 이르는 구간에 있는 경고판들을 모두 확인하고 내용을 갱신해 달라는데... 최근 확인하지 않았다고 하니 틀린 내용은 없는지 가보자. \r\n\r\n#b동쪽바위산1, 바위길1, 바위길2, 바위길3, 페리온동쪽령에 이르는 다섯 개의 맵에 있는경고판 다섯 개에 모두 말 걸고 돌아오기#k",
	["2"] = "모든 경고판에 출몰 몬스터를 적어 놓았다. ",
}
nTable["say0"] = {
	["base"] = {["1"] = "에반, 경비병이 해야 할 일 중에 가장 중요한 게 뭔지 알아? 그건 바로 뭔가 사건이 터지기 전에 미리 예방하는 거야. 그러기 위해 #m102000000# 전역에 초보 모험가나 여행자들을 위한 경고판을 세워 놓았지.", ["2"] = "그런데 경고판의 내용 갱신이 아직이야. 몬스터들이 간혹 자리를 옮길 때가 있으니 내용 갱신을 꼬박꼬박 해줘야 하는데 이번에는 늦었어. 그러니 #b동쪽바위산1#k에서 #b페리온 동쪽령#k에 이르는 구간의 경고판을 갱신해줘."},
	["yes"] = {["1"] = "어려울 것 같아도 사실 어렵지도 않아. 앞서 말한 구간에 있는 총 다섯 개의 경고판을 찾아서 클릭#k하면 경고판에 자세한 설명이 되어 있을 거야. 잘못된 부분이 있으면 수정만 하면 땡이야."},
	["no"] = {["1"] = "윽... 거절하다니. 복잡한 일처럼 보여서 그런가? 사실 꽤 간단한데... 다시 한 번 생각해봐."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오, 경고판 내용 갱신은 모두 끝난 거야? 훌륭한걸? 그 정도면 아마 #m102000000# 지역에서 모르는 게 없을 것 같다. #p1040000# 녀석은 아직도 #m100000000#에서 길을 잃는데 말이야."},
	["yes"] = {["1"] = "아무튼 고마워. 혹시 또 뭔가 시킬 일이 있으면 널 부를게. #p1040000#가 말했던 몬스터가 이상해지는 사건이 발생하면 바로 연락 주지. 그럼 그때까지 수고해."},
	["stop"] = {
		["default"] = {["1"] = "아직 경고판 갱신은 못한 거야? #b동쪽바위산1부터 페리온동쪽령#k에 이르는 지역에 있는 경고판 5개를 모두 찾아낸 후, 경고판을 클릭#k해 봐. 그 이후는 경고판에 나온 설명대로 하면 돼.", ["2"] = "아니면 혹시 지리에 약해서 못 하고 있는 거야? #bW#k키를 눌러 월드맵을 확인해 보면 좀 더 쉬울 거야."},
	},
}
return nTable
end