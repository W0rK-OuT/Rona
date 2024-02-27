return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101006,
	["lvmin"] = 32,
	["quest"] = {{["id"] = 3917, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101006,
	["item"] = {{["id"] = 4000333, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 4650,
	["item"] = {
		{["id"] = 1032010, ["count"] = 1},
		{["id"] = 4000333, ["count"] = -20}
	},
}
nTable["info"] = {
	["name"] = "별을 사랑하는 어린왕자",
	["parent"] = "어린왕자를 위하여",
	["order"] = 2,
	["0"] = "사막 한가운데서 장미꽃과 함께 앉아 있는 소년을 본 적이 있다. 목도 마르지 않은지 그저 장미꽃만 걱정하던 소년... 괜찮을까? 소년을 찾아가 보자. ",
	["1"] = "이상한 소년은 멍한 얼굴로 하늘을 올려다 보다가, 조금 우울하게 말했다. 별이 보이지 않는다고... 별? 무슨 별을 보겠다는 거지? 어딘가 슬픈 듯한 표정의 소년이 안쓰러워서 별을 잘 볼 수 있도록 #r#o2100108##k에게서 #b#t4000333##k을 구해다 주겠다고 말했다.  \n\n#i4000333# #t4000333#  #b#c4000333##k/20",
	["2"] = "이상한 소년에게 #t4000333#을 구해 주자, 그는 더없이 기쁘게 웃었다. 별이 고향이라고 말하는 소년... 무슨 말이지? 외계인이라는 건가? 이해할 수 없지만 소년의 웃는 얼굴을 보니 기분이 나쁘지는 않았다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "......  \r\n#L0# #b 왜 그렇게 멍하니 하늘만 보고 있니?", ["2"] = "아... 전에 장미꽃을 위해 #t2022155#을 구해 주셨던 그 분이군요... 정말 감사했어요. 왜 하늘을 보고 있냐고 물으셨죠? 그건... 하늘에 별이 있기 때문이랍니다. \r\n#L0# #b 별? 별을 보고 있는 거니?", ["3"] = "네... 저기, 저 쪽에 있는 별... 저 별을 보고 있어요. 정말 예쁘죠? \r\n#L0# #b 잘 보이지 않는데...", ["4"] = "네... 요즘은 사막의 모래 먼지 때문에 별이 잘 보이지 않는 것 같아요. 좀 더 자세히 별을 볼 수 있으면 좋을 텐데... 혹시 괜찮으시다면... 별을 잘 볼 수 있도록 도와주시면 안 될까요? 어려운 부탁이 아니라면..."},
	["yes"] = {["1"] = "아... 그럼... #b#t4000333# 20개#k를 구해 주시겠어요? #r#o2100108##k들이 가지고 있는 것을 본 적이 있는데... 그것만 있으면 별을 더 잘 볼 수 있을 것 같아요. 그럼... 부탁 드려요."},
	["no"] = {["1"] = "저 별을 손에 잡을 수 있다면... 그럴 수 있다면 좋을 텐데..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "...아. 이게 바로 #t4000333#이군요. 이게 있으니 이제... 별을 볼 수 있겠네요. 정말 정말 기뻐요."},
	["yes"] = {["1"] = "보세요. 저기 있는 별. 저 작지만 아름다운 별이 고향이에요. 언젠가 저 별에 다시 갈 수 있었으면 좋겠어요. "},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000333# 20개#k를 아직 구하지 못하신 모양이네요... 어려운 부탁이었을까요?"},
	},
}
return nTable
end