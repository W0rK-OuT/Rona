return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052103,
	["lvmin"] = 25,
	["quest"] = {{["id"] = 2032, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052103,
	["item"] = {{["id"] = 4003004, ["count"] = 50}, {["id"] = 4000021, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2100,
	["item"] = {
		{["id"] = 4003004, ["count"] = -50},
		{["id"] = 4000021, ["count"] = -20},
		{["id"] = 4011001, ["count"] = 1},
		{["id"] = 4011000, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "크리스의 의뢰",
	["parent"] = "넬라와 커닝시티 주민들의 의뢰",
	["order"] = 5,
	["1"] = "넬라로부터 두 번째 의뢰를 받았다. 철물점의 크리스가 최근 애용하던 베개를 도난당해서 밤마다 잠을 못 이루고 있다는데... 새로운 베개를 만들기 위해서는 #b뻣뻣한 깃털 50개#k와 #b동물의 가죽 20개#k가 필요하다니 구하는 대로 넬라에게 가져가야 겠다.\n\n#i4003004# #t4003004# #b#c4003004##k/50\n#i4000021# #t4000021# #b#c4000021##k/20",
	["2"] = "크리스가 부탁한 물건을 모두 모아 넬라에게 가져다주고 답례로 피오가 정성스럽게 제련한 강철과 청동을 받았다. 이걸로 피오는 푹 잠을 잘 수 있겠지? 나중에 또 시간이 난다면 넬라를 찾아가봐야 겠는걸~",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "앗! 마침 잘왔어. 새로운 의뢰가 들어와 있는 참이었거든. 철물점의 #b#p1052003##k가 요즘 밤마다 잠을 제대로 잘 수 없어서 고생하고 있는 모양이야. 항상 베고 자던 베개를 누군가가 가져가 버렸다나 뭐라나~ 베개를 가져가다니 누군지 정말 궁금한걸?", ["2"] = "아무튼 새로운 베개를 만들기 위해 재료가 필요한데 얻기가 쉽지 않다는군. #b#t4003004# 50개#k와 #b#t4000021# 20개#k만 있다면 새로운 베개를 만들 수 있을 것 같다는데... 너라면 그 정도 쯤이야 별 것 아니겠지? 그럼 모으는 대로 다시 나에게 돌아와 줘."},
}
nTable["say1"] = {
	["base"] = {["1"] = "역시... 금방 해낼 줄 알았다니까~ 지난 번에도 일을 잘 해결하더니 정말 믿음직스러워~ 좋아! 이렇게 의뢰를 무사히 해결해 줬으니 사례를 해야겠지. #b#p1052003##k가 여행에 도움이 되라는 뜻에서 제련된 #b#t4011001# 1개#k와 #b#t4011000# 1개#k를 보내왔으니 받아~"},
	["yes"] = {["1"] = "그럼 또 뭔가를 의뢰받고 싶어지면 다시 날 찾아와 줘. 이 마을에는 도움을 필요로 하는 사람들이 꽤 많거든~"},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#p1052003##k가 부탁한 물건들을 모으지 못한 모양이지? 새로운 베개를 만들기 위해서는 #b#t4003004# 50개#k와 #b#t4000021# 20개#k가 필요하다고 하더라고. 모으는 대로 나에게 가져오면 되니까 힘내~"},
	},
}
return nTable
end