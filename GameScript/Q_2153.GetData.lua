return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012102,
	["lvmin"] = 20,
}
nTable["check1"] = {
	["npc"] = 1012109,
	["item"] = {{["id"] = 4161035, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4161035, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 5,
	["item"] = {
		{["id"] = 4161035, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "오래된 달팽이",
	["parent"] = "달팽이 전설",
	["order"] = 1,
	["0"] = "#b헤네시스#k의 #b피아#k가 얼마 전 이상한 책을 얻게 되었다는데... 무슨 책일까? 피아를 찾아가 보자. ",
	["1"] = "피아가 얻은 책에는 메이플 월드에서 가장 #b오래된 달팽이#k와 그에게서 얻을 수 있는 #b#t2210006##k에 대해 쓰여 있었다. 소원을 들어주는 달팽이 껍질을 알게 된 피아는 그것에 대한 정보를 구하고 있는 듯한데... 책의 주인인 제이라면 책의 저자에 대해서도 알고 있을지 모르니 그를 찾아가 보자. \n\n#i4161035##t4161035# #b#c4161035#/1#k",
	["2"] = "제이는 달팽이 전설의 저자는 그의 증조 할아버지이자, #b밍밍부인의 할아버지인 알로이#k라고 말했다. ",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "혹시 #b#t2210006##k에 대한 소문을 들어본 적 있어? 그건 메이플 월드에서 가장 오래된 달팽이에게서만 얻을 수 있는 아주 특별한 보물이야. 소원을 들어주는 힘을 가졌대! 후아... 그것만 있다면 뭐든 할 수 있을 텐데~ ", ["2"] = "뭐? 그런 소문은 다 거짓말이라고? 그럴리가 없어! 이 책을 보라고. #b달팽이 전설#k이라는 책인데, 여기 보면 #t2210006#에 대해 아주 자세히 쓰여 있다고. 분명 실제로 존재하는 물건일거야! ", ["3"] = "하지만 달팽이 전설을 아무리 살펴 봐도 그 달팽이가 어디서 나오는지에 대해서는 안 쓰여 있단 말이야... 위치만 알면 바로 달려가서 무지개색 달팽이 등껍질을 얻을 텐데... 어떻게든 정보를 구해 봐야겠어. ", ["4"] = "어때? 보물에 관심이 있다면 너도 끼워줄까? 어떻게든 #t2210006#을 구하게 된다면, 공정하게 나눠갖기로 하고 같이 일하는 거 어때?"},
	["yes"] = {["1"] = "그럼 일단 #b제이#k에게 가봐. 사실 이 책은 제이한테 빌린 거야. 제이는 책을 많이 가지고 있고, 또 책에 관심도 많으니까 달팽이 전설을 쓴 사람이 누군지도 알 수 있을 거야. 그에 대한 정보를 추적하다 보면, 달팽이가 나오는 위치도 알 수 있겠지. "},
	["no"] = {["1"] = "흠... 관심 없어? 이런 보물에 관심이 없다니 이상한 녀석이네."},
}
nTable["say1"] = {
	["base"] = {["1"] = "안녕하세요? 모험가님이신 것 같은데 무슨 도와드릴 일이라도...? 아. 피아가 모험가님께 책을 대신 돌려주라는 부탁을 드렸나보군요. 피아도 참... 별로 먼 거리도 아닌데 직접 해도 될 텐데... ", ["2"] = "가져다 주셔서 감사합니다. 모험가님께서도 책에 관심이 있으시다면 언제든지 말씀하세요. 네...? 달팽이 전설의 저자에 대해서 아냐고요?"},
	["yes"] = {["1"] = "물론 알고 있지요. 달팽이 전설을 쓰신 #b알로이#k는 바로 저의#b 증조 할아버지#k이신걸요. 리스항구의 뱃사람이었지만, 하도 모험을 좋아하셔서 본업보다는 모험에 더 열중하신 분이죠. 재미있는 모험도 많이 하시고요. ", ["2"] = "아, 혹시 증조 할아버지께 관심이 있으신 건가요? 유명한 분이라 가끔 이렇게 찾아오시는 분이 있지요. 증조 할아버지께 관심이 있으시다면 저보다는 어머니이신 #b밍밍부인#k을 찾아가 보세요. "},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b제이#k에게 안 간 것 같은데... 혹시 길을 잃은 거야? 별로 넓지도 않은 헤네시스 마을 안에서 길을 잃다니... 혹시 너 길치?"},
		["item"] = {["1"] = "모험가님이신 것 같은데... 헤네시스는 처음이신가요? "},
	},
	["ask"] = {"이봐, 이봐! 남의 책을 아무데나 두고 다니지 말라고! 다행히도 아는 사람이 주워다 줬으니 망정이지, 잃어버렸으면 어떻게 할 뻔 했어? 평소에는 온화한 제이지만 책 잃어버리는 사람한테 용서가 없다고!"},
}
return nTable
end