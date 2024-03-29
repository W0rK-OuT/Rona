return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020007,
	["lvmin"] = 50,
	["interval"] = 0,
	["quest"] = {{["id"] = 21604, ["state"] = 2}},
	["item"] = {{["id"] = 1912011}},
	["job"] = {2000, 2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 2020007,
	["item"] = {{["id"] = 4000048, ["count"] = 50}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -10000000,
	["item"] = {
		{["id"] = 4000048, ["count"] = -50},
		{["id"] = 1912011, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "잃어버린 늑대 안장",
	["area"] = 6,
	["0"] = "#t1912011#을 잃어버렸다! 어떻게 하지? \r\n#b#m211000000##k에 가서 #b#p2020007##k에게 물어 보자.",
	["1"] = "#p2020007#는 #t1912011#을 다시 만들고 싶다면 재료를 다시 구해 오라고 말했다. 그런데 이번에는 재료만이 아니라 만드는데 드는 수고비 #b1000만 메소#k도 줘야 한다는데... 헉.\r\n\r\n#b10,000,000 메소#k\r\n#i4000048# #t4000048# #b#c4000048# / 50#k",
	["2"] = "재료와 수고비를 주고 #p2020007#에게 #t1912011#을 다시 받았다. 잃어버리지 않도록 주의하자.",
}
nTable["say0"] = {
	["base"] = {["1"] = "오, 라이더 동지! 늑대 라이딩은 잘 하고 있나? 그런데 뭔가 부족해 보이는데... 응? #t1912011#을 잃어버린 건가? 이런, 안장이 없으면 늑대를 탈 수 없는데...", ["2"] = "어쩔 수 없군. #t1912011#을 다시 만들어 주도록 하지. 그런데... 저번에야 라이딩을 함께 즐기기 위해 무료로 안장을 만들어 줬지만... 이번에는 #b수고비#k도 줘야 한다네. 괜찮나?"},
	["yes"] = {["1"] = "그럼 #t1912011#의 재료인 #b#t4000048# 50개#k와 함께 #b1000만 메소#k를 가져 오게나. 좀 비싼가? 하하하하! 내가 좀 고급인력이라서 말이야."},
	["no"] = {["1"] = "흠... 거절인가? 아쉽군. 늑대 라이딩의 즐거움을 아는 사람을 만났다고 생각했는데... "},
}
nTable["say1"] = {
	["base"] = {["1"] = "오, 재료를 모두 구해 왔군. 그럼 수고비까지 건네 주겠나? 그럼 바로 #t1912011#을 만들어 주지."},
	["yes"] = {["1"] = "자, 여기 완성된 #t1912011#이라네. 혹시 또 안장을 잃어버리게 된다면, 다시 언제든지 다시 찾아오게. 다시 한 번 이 안장 위에서 바람을 갈라 보게나, 동지!"},
	["stop"] = {
		["item"] = {["1"] = "아직 재료와 수고비를 모두 갖추지 못한 것 같구만. #t1912011#의 재료는 전에 구했던 것처럼 #b#t4000048# 50개#k이고 거기에 안장을 만드는 #b수고비 1000만 메소#k를 주면 된다네.  "},
	},
}
return nTable
end