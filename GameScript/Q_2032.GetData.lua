return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052103,
	["lvmin"] = 25,
	["quest"] = {{["id"] = 2031, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052103,
	["item"] = {{["id"] = 4000015, ["count"] = 100}, {["id"] = 4000034, ["count"] = 50}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2000,
	["item"] = {
		{["id"] = 4000015, ["count"] = -100},
		{["id"] = 4000034, ["count"] = -50},
		{["id"] = 2000002, ["count"] = 100}
	},
}
nTable["info"] = {
	["name"] = "소문난의 의뢰",
	["parent"] = "넬라와 커닝시티 주민들의 의뢰",
	["order"] = 4,
	["1"] = "오랜만에 만난 넬라는 여행을 통해 많이 성장한 나를 보고는 지난번과는 조금 더 어려운 의뢰를 하기 시작했다. 우선은 명약국의 주인인 소문난씨가 새로운 물약 연구를 하던 중 재료가 모두 바닥나서 어려움을 겪고 있다며 #b뿔버섯의 갓 100개#k와 #b주니어 네키의 가죽 50개#k를 모아와 달라고 했다는데... 주니어 네키가 좀 까다롭겠지만 그다지 어려울 것 같지는 않은걸?\n\n#i4000015# #t4000015# #b#c4000015##k/100\n#i4000034# #t4000034# #b#c4000034##k/50",
	["2"] = "소문난씨가 부탁한 물건을 모두 모아 넬라에게 가져다주고 답례로 하얀 포션을 잔뜩 받았다. 소문난씨가 그 재료들로 어떤 물약을 만들지 기대되는걸? 또 의뢰가 생길지도 모르니까 자주 들러 달라는데... 시간이 날 때마다 넬라를 찾아가봐야 겠다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "지난번에 #b#p1052101##k씨의 의뢰를 도와준 녀석이구나? 아마 지금쯤이면 모아와 준 재료들로 맛있는 해물탕을 만들어 먹고 있을테지... 그런데 못 본 사이에 많이 강해졌는걸? 좋아... 그 정도라면 더 어려운 의뢰도 해결할 수 있을 것 같은데...", ["2"] = "마침 새로운 의뢰가 들어와 있어. 명약국의 #b#p1051002##k씨가 도움을 원하고 있는 모양이야. 최근 새로운 물약 연구를 하던중에 필요한 재료가 다 떨어졌는데 다시 모으기가 쉽지 않아서 연구에 차질을 빚을 정도라나 뭐라나~", ["3"] = "빨리 재료를 얻어서 연구를 계속하고 싶은 모양이야. #b#t4000015# 100개#k와 #b#t4000034# 50개#k만 있다면 마음껏 연구할 수 있을 것 같다는데... 너라면 그 정도 쯤이야 별 것 아니겠지? 그럼 모으는 대로 다시 나에게 돌아와 줘. 기다리고 있을게!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "역시... 금방 해낼 줄 알았다니까~ 지난번에도 일을 잘 해결하더니 정말 믿음직스러워~ 좋아! 이렇게 의뢰를 무사히 해결해 줬으니 사례를 해야겠지. #b#p1051002##k씨가 여행에 도움이 되라는 뜻에서 #b#t2000002# 100개#k를 보내와 주셨으니 받아~"},
	["yes"] = {["1"] = "그럼 또 뭔가를 의뢰받고 싶어지면 다시 날 찾아와 줘. 이 마을에는 도움을 필요로 하는 사람들이 꽤 많거든~"},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#p1051002##k씨가 부탁한 물건들을 모으지 못한 모양이지? 새로운 물약 연구를 위해서는 #b#t4000015# 100개#k와 #b#t4000034# 50개#k가 필요하다고 하더라고. 모으는 대로 나에게 가져오면 되니까 힘내~"},
	},
}
return nTable
end