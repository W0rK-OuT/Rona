return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052103,
	["lvmin"] = 15,
	["quest"] = {{["id"] = 2030, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052103,
	["item"] = {{["id"] = 4000006, ["count"] = 100}, {["id"] = 2022000, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
	["item"] = {
		{["id"] = 4000006, ["count"] = -100},
		{["id"] = 2022000, ["count"] = -1},
		{["id"] = 1082002, ["count"] = 1, ["job"] = 1180673},
		{["id"] = 1082004, ["count"] = 1, ["job"] = 2099202},
		{["id"] = 1082020, ["count"] = 1, ["job"] = 4198404},
		{["id"] = 1082013, ["count"] = 1, ["job"] = 8200},
		{["id"] = 1082032, ["count"] = 1, ["job"] = 16400},
		{["id"] = 1082183, ["count"] = 1, ["job"] = 32800}
	},
}
nTable["info"] = {
	["name"] = "안드레아의 의뢰",
	["parent"] = "넬라와 커닝시티 주민들의 의뢰",
	["order"] = 3,
	["1"] = "넬라로부터 세 번째 의뢰를 받았다. 미용실의 보조 미용사인 안드레아씨가 노총각인 탓에 매 끼니마다 고생하고 있다며 맛있는 해물탕을 만들어 먹고 싶다고 했다고... 해물탕을 만들기 위해서는 #b옥토퍼스의 다리 100개#k와 #b맑은 물 1개#k가 필요하다니 구하는 대로 넬라에게 가져가야 겠다.\n\n#i4000006# #t4000006# #b#c4000006##k/100\n#i2022000# #t2022000# #b#c2022000##k/1",
	["2"] = "안드레아씨가 부탁한 물건을 모두 모아 넬라에게 가져다주고 답례로 안드레아씨로부터 튼튼해 보이는 장갑을 받았다. 이걸로 안드레아씨도 당분간은 반찬걱정 없이 지낼 수 있겠지? 나중에 또 시간이 난다면 넬라를 찾아가봐야 겠는걸~",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "앗! 마침 잘왔어. 새로운 의뢰가 들어와 있는 참이었거든. 이번에는 미용실의 보조 미용사인 #b#p1052101##k씨가 도움을 원하고 있는 모양이야. 실은 #b#p1052101##k씨는 노총각이거든. 근데 하루하루 끼니를 때우기가 너무 지겹다나 뭐라나~", ["2"] = "항상 똑같은 반찬으로 고생하는 모양이야. #b#t4000006# 100개#k와 #b#t2022000# 1개#k만 있다면 맛있는 해물탕을 끓여먹을 수 있을것 같다는데... 너라면 그정도 쯤이야 별 것 아니겠지? 그럼 모으는 대로 다시 나에게 돌아와줘. 기다리고 있을게!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "엇... 생각보다 빨리 돌아왔는걸? 지난번에도 일을 잘 해결하더니 정말 믿음직스러워~ 좋아! 이렇게 의뢰를 무사히 해결해 줬으니 사례를 해야겠지. #b#p1052101##k씨가 여행에 도움이 되라는 뜻에서 장갑을 보내와 주셨으니 받으라고~"},
	["yes"] = {["1"] = "그럼 또 뭔가를 의뢰받고 싶어지면 다시 날 찾아와 줘. 이 마을에는 도움을 필요로 하는 사람들이 꽤 많거든~"},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#p1052101##k씨가 부탁한 물건들을 모으지 못한 모양이지? 맛있는 해물탕을 만들기 위해서는 #b#t4000006# 100개#k와 #b#t2022000# 1개#k가 필요하다고 하더라고. 모으는대로 나에게 가져오면 되니까 힘내~"},
	},
}
return nTable
end