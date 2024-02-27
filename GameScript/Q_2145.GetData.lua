return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022006,
	["quest"] = {{["id"] = 2144, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1022006,
	["item"] = {{["id"] = 4031773, ["count"] = 100}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 50,
	["item"] = {
		{["id"] = 4031773, ["count"] = -100}
	},
}
nTable["info"] = {
	["name"] = "스텀프 조사",
	["parent"] = "오래된 나무",
	["order"] = 2,
	["1"] = "#p1022006#박사는 #m102000000#지역의 스텀프들이 바짝 말라버린 것이 #b#o3220000##k 때문일지 모른다는 의심이 든다면서 이 점을 연구하기 위해 스텀프들의 #b#t4031773##k를 연구해 보고 싶다고 한다.\n\n#i4031773##t4031773#  #b#c4031773##k/100",
	["2"] = "#p1022006#박사에게 #t4031773#를 모아다 주었다. #p1022006#박사의 연구 결과는 언제쯤 알 수 있을까?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네가 알려준 정보들이 큰 도움이 됐네. 아무래도 소문의 그 나무는 #b#o3220000##k가 분명한 것 같아. 게다가 최근 #m102000000# 바위산의 스텀프들에게서 수분 부족현상이 목격됐다네. 스텀프들의 나뭇가지들이 눈에 띄게 말라가고 있어.", ["2"] = "아무래도 이 모든 현상이 #b#o3220000##k가 돌아온 것과 관계가 있는 것 같아. 물론 이건 어디까지나 나의 가설일 뿐이지. 이 사실을 증명하기 위해서는 스텀프의 #b#t4031773##k가 필요할 것 같은데 이번에도 나를 도와주지 않겠나?"},
	["yes"] = {["1"] = "고맙네. 언제나 적극적인 사람이로군. #b#t4031773##k는 #r모든 스텀프들에게서 발견되는 현상#k이라네. 오히려 일반 스텀프보다도 다크엑스텀프들에게서 더 빈번히 나타나고 있지. 스텀프들을 잘 관찰하다가 #b#t4031773# 100개#k를 모아서 돌아와 주게."},
	["no"] = {["1"] = "별로 어려운 일도 아닌데 항상 적극적이던 사람이 변해버렸군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "고맙네. 이런이런 상태가 아주 심각하군. 좀 더 자세히 살펴봐야겠어."},
	["yes"] = {["1"] = "다음에 또 보세."},
	["stop"] = {
		["item"] = {["1"] = "내가 부탁한 샘플은 어떻게 됐나? #b#t4031773# 100개#k 말일세. 현재 모으고 있는 중이겠지?"},
	},
}
return nTable
end