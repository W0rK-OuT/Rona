return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012106,
	["lvmin"] = 20,
}
nTable["check1"] = {
	["npc"] = 1012106,
	["item"] = {{["id"] = 4000002, ["count"] = 100}, {["id"] = 4000010, ["count"] = 20}, {["id"] = 4000037, ["count"] = 50}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3000,
	["item"] = {
		{["id"] = 4000002, ["count"] = -100},
		{["id"] = 4000037, ["count"] = -50},
		{["id"] = 4000010, ["count"] = -20}
	},
}
nTable["info"] = {
	["name"] = "밍밍부인의 첫번째 고민",
	["0"] = "헤네시스에 있는 밍밍부인에게 고민이 생겼다는데...",
	["1"] = "헤네시스에서 걱정스러운 얼굴을 하고 있는 밍밍부인을 만났다. 밍밍부인은 마을 축제에 쓰일 장식이 모자란다면서 #b버블링의 큰 방울 50개, 슬라임의 방울 20개, 돼지의 리본 100개#k를 모아와 달라는 부탁을 했다.\n\n#i4000037##t4000037#  #b#c4000037##k / 50\n#i4000010##t4000010#  #b#c4000010##k / 20\n#i4000002##t4000002#  #b#c4000002##k / 100",
	["2"] = "헤네시스에서 만난 밍밍부인에게 축제때 마을을 장식하는 데 필요한 여러 가지 물건을 모아다 주었다. 하지만 축제 준비에 필요한 물건은 장식뿐만이 아닌것 같은데...",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요. #b#p1012106##k이라고 해요. 왜 이렇게 정신없이 움직이고 있냐구요? 조금 있으면 축제일이 다가오는데... 준비해야 할 건 너무나 많지만 일손이 부족해서 큰일이에요. 혹시 저를 도와주실 수 있을까요?"},
	["yes"] = {["1"] = "축제라면 무엇보다 화려해야 하지 않겠어요? 그런데 마을을 장식할 물건이 턱없이 부족하지 뭐에요. 다행히 몬스터들이 장식에 쓸수 있는 물건을 주는 모양이에요. 하지만 보시다시피 제가 몬스터를 쓰러뜨리기에는 무리가 있답니다.", ["2"] = "그래서 말인데... #b#t4000037# 50개, #t4000010# 20개, #t4000002# 100개#k만 구해다 주실 수 없을까요? 녀석들의 방울과 리본은 훌륭한 장식재료가 되거든요. 그럼 돌아오실 때까지 기다리고 있을게요. 수고해 주세요~!"},
	["no"] = {["1"] = "도와주실 거라고 생각했는데 의외인걸요... 하지만 나중에라도 마음이 바뀌게 된다면 언제든 찾아와 주세요. 한 사람의 손이 아쉬운 실정이거든요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "어머나... 이렇게 모두 모아다 주시다니 정말 대단하군요. 이정도라면 마을 장식에 쓰고도 남겠는걸요? 이렇게 도와주셔서 감사합니다. 하지만 아직 일이 끝난건 아니랍니다. 도움이 필요할 지 모르니 시간이 되는 대로 다시 절 찾아와 주세요~"},
	["stop"] = {
		["npc"] = {["1"] = "아직 제가 말씀드린 물건들을 모두 모으지 못한 것 같군요. 축제때 마을장식을 하려면 #b#t4000037# 50개, #t4000010# 50개, #t4000002# 100개#k가 필요해요. 되도록 빨리 모아서 저에게 가져와 주세요."},
		["item"] = {["1"] = "아직 제가 말씀드린 물건들을 모두 모으지 못한 것 같군요. 축제때 마을장식을 하려면 #b#t4000037# 50개, #t4000010# 20개, #t4000002# 100개#k가 필요해요. 되도록 빨리 모아서 저에게 가져와 주세요."},
	},
}
return nTable
end