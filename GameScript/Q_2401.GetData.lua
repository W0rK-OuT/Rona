return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032001,
	["lvmin"] = 8,
	["lvmax"] = 19,
	["job"] = {200, 210, 220, 230, 211, 221, 231, 212, 222, 232},
}
nTable["check1"] = {
	["npc"] = 1032113,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 900,
}
nTable["info"] = {
	["name"] = "초보 마법사의 수련장",
	["area"] = 10,
	["0"] = "마법사로 전직을 하고 난 후 더욱 강해질 수 있는 수련장을 찾아보자.",
	["1"] = "마법사로 전직을 하고 난 후 엘리니아에서 화살표를 따라가 더욱 강해질 수 있는 수련장을 찾아보자. 레벨 20 이상이 되면 수행할 수 없다.",
	["2"] = "초보 마법사의 수련장을 찾았다. 수련장 도우미 왕연해에게 1차 마법사에 관한 훈련을 받을 수 있다.",
	["showLayerTag"] = "magicQuest",
}
nTable["say0"] = {
	["base"] = {["1"] = "마법사 전직을 축하하네. 당신에게 강력한 마력의 기운이 느껴지는군. 하지만, 아직 조금 부족해 보이는군. 조금 더 멋진 모습의 마법사가 되기 위해 수련장에서 수련하는 것이 좋아 보이는군. 이 몸이 수련장의 위치를 알려주도록 하겠네. 어떤가?"},
	["yes"] = {["1"] = "좋았어! 밖으로 나가면 보이는 화살표를 따라가 보게. 그곳에서 당신을 훌륭한 마법사로 키워줄 수 있는 수련장 입구를 볼 수 있을 거야. 그곳에서 수련을 해보게!", ["2"] = "레벨 20 이상이 되면 수행할 수 없으니 그 전에 가는 것이 중요하네."},
	["no"] = {["1"] = "아, 그런가? 수련장은 이 마을 근처에 있으니 혼자 찾아보는 것도 나쁘지는 않겠지! 행운을 비네."},
}
nTable["say1"] = {
	["base"] = {["1"] = "어서 오게나. #b하인즈#k님에게 연락은 받았네. 초보 마법사라고? 나의 특훈을 받으면 금방 중급 검사로 올라갈 수 있을 걸세."},
	["yes"] = {["1"] = "아~ 잠깐 그전에 내가 받은 모험가 표창장을 보여주지. 자랑하는 것은 아니지만, 왕년에 내가 좀 날렸거든! 잠시만 기다리게 표창장을 어디다 두었더라?"},
	["stop"] = {
		["npc"] = {["1"] = "그곳에서는 빠르게 중급 마법사로 올라갈 수 있다네.."},
	},
}
return nTable
end