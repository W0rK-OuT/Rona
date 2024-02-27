return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012012,
	["lvmin"] = 60,
}
nTable["check1"] = {
	["npc"] = 2020007,
	["item"] = {{["id"] = 4031204, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031204, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 1000,
	["nextQuest"] = 3052,
	["item"] = {
		{["id"] = 4031204, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "리사의 소개",
	["parent"] = "스카두르의 새로운 모피",
	["order"] = 1,
	["0"] = "오르비스에 있는 리사를 찾아가보자.",
	["1"] = "리사의 소개로 엘나스에 있는 스카두르를 만나보기로 했다.",
	["2"] = "그는 자신의 새로운 모피 만드는일에 나의 도움이 필요하다고 한다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "저기요! 여행자님~ 혹시 시간 좀 있으면 제 이야기를 들어주세요~"},
	["yes"] = {["1"] = "여행자님을 보니까 매우 강해보여서 불렀습니다. 다름이 아니라 #b엘나스#k에 #b스카두르#k라는 사람이 살고 있는데 혹시 아시나요? 그가 최근에 자기의 낡은 모피 대신 새로운 모피를 만들고 싶어합니다. 최고의 모피 재료를 구하기 위해서는 강력한 몬스터들을 사냥해야 하기 때문에 구하기가 어렵답니다.", ["2"] = "그래서 #b#p2020007##k가 혹시 강해보이는 자를 만나게 되면 자기에게 추천을 해달라고 부탁했었습니다. 제가 주는 소개장을 가지고 #b#p2020007##k를 찾아가보세요. 그에게 큰 도움이 될 거에요!"},
	["no"] = {["1"] = "바쁘신가봐요. 나중에 여유가 생기면 저에게 다시 말을 걸어주세요."},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "아직 #b엘나스#k에 있는 #b#p2020007##k를 만나지 못했군요. 어서 가서 만나보세요."},
	},
	["ask"] = {"소개장을 잃어버리다니요. 다시 써드릴게요~ 다음부터 조심하세요."},
}
return nTable
end