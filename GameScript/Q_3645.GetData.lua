return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2071013,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3643, ["state"] = 1}},
}
nTable["check1"] = {
	["npc"] = 2071013,
	["item"] = {{["id"] = 2022050, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
	["item"] = {
		{["id"] = 2022050, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "노란 왕도깨비가 원하는 것",
	["0"] = "산신령의 말에 의하면 구미호에 대해 알고 있는 것은 까막산의 도깨비들뿐인 것 같다. 깊은 산 흉가 너머 #b도깨비집#k으로 가서 #b노란 왕도깨비#k를 만나 보자.",
	["1"] = "노란 왕도깨비는 그가 좋아하는 #b돼지고기 산적#k을 #b1개#k 주면 구미호에 대해 알려주겠다고 말했다. 아랫마을로 가서 돼지고기 산적을 구해 보자.  \n\n#i2022050##t2022050#  #b#c2022050##k/1",
	["2"] = "노란 왕도깨비에게서 구미호가 쓰는 술법에 대해 알아냈다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "무서워. 밤은 무서워. 큰 소리 나는 건 더 무서워. 벼락 치는 소리는 세상에서 제일 무서워. 벼락 치는 밤에 잃어버렸던 도깨비 방망이를 아직도 찾지 못했다구! 어...? 왜 인간이 여기 있는 거지? ", ["2"] = "소리지르지 마! 인간이 소리지르는 것도 시끄러워서 무서워! 특히 여자는 더 무서워! 너무너무 무섭다고! ...엥? 구미호에 대해 알고 있냐고? 물론 잘 알고 있지만... 너 혹시 #r구미호#k에 대해 알고 싶은 거야?"},
	["yes"] = {["1"] = "구미호에 대해 알고 싶다면 #b돼지고기 산적#k을 1개만 구해다 줘. 양념이 맛있게 된 돼지고기 산적을 갖다 주면 구미호에 대해 알려줄게!"},
	["no"] = {["1"] = "아니면 뭐하러 여기까지 온 거야? 이상한 인간이네."},
}
nTable["say1"] = {
	["base"] = {["1"] = "으오! 맛있는 냄새! 돼지고기 산적을 가져왔구나! 좋아좋아! 그럼 구미호에 대해 알려줄게!"},
	["yes"] = {["1"] = "구미호는 이런저런 술법을 많이 알고 있어. 앞이 보이지 않게 만드는 암흑 술법하고, 힘이 빠져서 뛰어다닐 수 없게 만드는 허약 술법... 또 기절 술법도 쓸 줄 알지. 게다가 주변에 있는 부하들을 치료하는 술법도 있으니 조심해야 해."},
	["stop"] = {
		["item"] = {["1"] = "#b돼지고기 산적 1개#k는은 어디 있는데? 없으면 구미호에 대해 이야기해 줄 수 없어!"},
	},
}
return nTable
end