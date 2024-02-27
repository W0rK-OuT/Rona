return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032101,
	["lvmin"] = 18,
	["quest"] = {{["id"] = 21714, ["state"] = 2}},
	["job"] = {2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1032112,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100,
}
nTable["info"] = {
	["name"] = "말하는 나무의 증언",
	["area"] = 6,
	["0"] = "두 번째 정보수집 활동이다. #o1110100#에게 인형을 넣은 범인은 누굴까? #b#m101000000##k에서 #b#p1032101##k과 알아보자.",
	["1"] = "#p1032101#은 #m100040000#에 있는 #b#p1032112##k라면 누가 #o1110100#에게 인형을 넣었는지 보았을 거라며, 그에게 가서 범인을 물어봐 달라고 말했다.",
	["2"] = "#p1032112#는 얼마 전, 인형을 든 꼬마가 남쪽 숲에 왔었는데 그 이후로 #o1110100#이 사나워진 것 같다고 말했다.",
	["type"] = "[필수]",
}
nTable["say0"] = {
	["base"] = {["1"] = "남쪽 숲에 살고 있는 #b#p1032112##k라면 분명 #o1110100#에 인형을 넣은 사람을 보았을 거예요. 그 아이에게 가서 범인을 물어봐 주세요. #p1032101#의 부탁이라면 틀림없이 말해줄 거예요."},
	["yes"] = {["1"] = "#p1032112#는 묘목 시절부터 길러 온 특별한 나무예요. 아직 어리지만 착하고 겸손한 좋은 아이이지요. 아마 당신에게도 공손히 대답해 줄 거예요."},
	["no"] = {["1"] = "#p1032112#를 모르시나요? 남쪽 숲에 가셨으면 분명 보셨을 텐데... #o1110100#들이 사는 #m100040003# 바로 앞에 있는걸요. 잘 생각해 보신 후에 다시 말을 걸어 주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "...헙! 인간이 나무에게 말을 걸다니, 당신도 어지간히 특이한 분이시네요. 혹시 친구 없으세요? 하긴 그렇지 않고서야 나무에게 말을 걸 리가 없긴 하지만... 네? #p1032101#의 부탁으로 왔다고요?\n#b#L0#(...착하고 겸손한 성격이라고 하지 않았나?)#l\n#k", ["2"] = "#p1032101#도 참. 이런 이상한 장소에 심어 놓은 것도 마음에 안 드는데 별 귀찮은 일을 다 시키네. 아무튼 성격 나쁘다니까. 저주받은 인형 같은 거나 수집하고. 심심하면 자기가 다니면 되잖아? 투덜투덜... 아, 부탁이 뭔데요?\n#b#L0#(#p1032101#도 의외로 착각이 심하군.)#l\n#k", ["3"] = "#o1110100#에 인형을 넣은 범인이라... 글쎄요. 잘 모르겠네요. #b최근에 #m100040003#을 찾아온 이상한 꼬마가 있었는데, 그 애가 인형을 들고 있던 것 같긴 해요#k. 그러고 보니 그 이후부터 #o1110100#들이 좌절하는 것 같기도..."},
	["yes"] = {["1"] = "이거면 됐죠? 귀찮으니까 이제 저리 가세요. 나무들도 혼자만의 시간이 필요한 법이라고요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["npc"] = {["1"] = "아직 #p1032112#는 만나지 않으신 건가요? #m100040000#에 가시면 바로 만날 수 있어요. 낯가림이 심하고 부끄러움을 많이 타는 아이이지만 성실하고 착하니 성심성의껏 대답해 줄 거예요."},
	},
	["ask"] = 1,
}
return nTable
end