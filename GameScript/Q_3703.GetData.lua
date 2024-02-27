return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081004,
	["lvmin"] = 78,
}
nTable["check1"] = {
	["npc"] = 2081004,
	["item"] = {{["id"] = 4000231, ["count"] = 50}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 44000,
	["item"] = {
		{["id"] = 4000231, ["count"] = -50},
		{["id"] = 2040704, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040705, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040707, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040708, ["count"] = 1, ["prop"] = 1}
	},
}
nTable["info"] = {
	["name"] = "팜의 부탁",
	["0"] = "#m240000000# 마을에 있는 #p2081004#을 찾아가보자.",
	["1"] = "#m240000000# 마을에서 알에게 노래를 불러주고 있는 #p2081004#을 만났다. #p2081004#은 노래를 불러주는 것도 좋지만, 악기를 연주해 주고 싶다면서 커다란 플룻을 만들기 위해 미나르숲의 심술궂은 정령 #r#o7130004#가 가지고 다니는 #b#t4000231# 50개#k를 모아다 달라고 했다.\n\n#i4000231##t4000231#  #b#c4000231##k / 50",
	["2"] = "팜에게 헹키가 가지고 다니던 #t4000231# 50개를 가져다 주었다. 팜은 그 팬플룻으로 커다란 플룻을 만들어서 알들에게 아름다운 음악을 들려줄 수 있게 됐다면서 수줍게 웃었다.",
	["area"] = 41,
}
nTable["say0"] = {
	["base"] = {["1"] = "라라라~ 안녕하세요. 전 지금 제가 돌보는 알에게 자장가를 들려주고 있어요. 제가 노래를 불러주면 알이 편하게 잠들 수 있을 것 같아서요. 촌장님이 그러시는데 좋은 노래를 많이 들려주는 것이 좋대요. ", ["2"] = "전 노래뿐 아니라 알에게 좋은 악기연주도 들려주고 싶은데 마을에는 제가 다룰 수 있는 악기가 없어요. 숲에 사는 정령 헹키가 작은 팬플룻을 가지고 다닌다고 하던데 보신 적이 있나요? 그 팬 플룻을 모아서 커다란 플룻을 만들 수 있을 것 같은데 모아와 주시지 않겠어요?"},
	["yes"] = {["1"] = "헹키가 가지고 다니는 팬플룻은 아주 작다고 들었어요. 그러니까 #b50개#k 정도만 있으면 제가 연주할 수 있는 팬 플룻을 만들 수 있지 않을까요?"},
	["no"] = {["1"] = "좋은 노래를 들려주면 알들도 편안하게 잠들 수 있고 착한 아기 용이 태어난 데요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "감사합니다. 그것이 헹키가 가지고 다니던 팬 플룻이군요? 조금 어설프긴 하지만 조금만 손보면 좋은 플룻을 만들 수 있겠어요. 감사합니다."},
	["yes"] = {["1"] = "알들을 위해서 플룻이 완성되는 대로 마을에서 가장 높은 나무 위에 올라가서 플룻을 연주할 거에요. 그때가 되면 꼭 제 연주를 들으러 오셔야 해요~"},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000231##k이 #b50개#k는 있어야 제가 연주할 수 있는 팬플룻을 만들 수 있을 것 같아요."},
	},
}
return nTable
end