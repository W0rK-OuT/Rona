return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020000,
	["lvmin"] = 120,
	["interval"] = 0,
	["quest"] = {{["id"] = 6262, ["state"] = 2}},
	["item"] = {{["id"] = 4031450}, {["id"] = 2280011}},
	["job"] = {222},
	["skill"] = {{["id"] = 2221003}},
}
nTable["check1"] = {
	["npc"] = 2020000,
	["item"] = {{["id"] = 4011005, ["count"] = 2}, {["id"] = 4000150, ["count"] = 30}, {["id"] = 4011007, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4000150, ["count"] = -30},
		{["id"] = 4011005, ["count"] = -2},
		{["id"] = 4011007, ["count"] = -1},
		{["id"] = 4031450, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "얼음을 깨뜨릴 망치",
	["parent"] = "고대의 빙석",
	["order"] = 4,
	["0"] = "설산의 관리자 #b#p2030000##k는 고대의 빙석을 깨뜨리고 싶거든, 빙석을 부술 수 있을 정도로 강력한 망치를 만들도록, #b#p2020000##k를 찾아가 보라고 했다.",
	["1"] = "고대의 마법을 깨뜨릴 수 있을지는 모르지만 도전해 볼 가치가 있다며 보겐은 망치를 만들 수 있도록 재료를 구해 오라고 했다.#b#p2020000##k. 그 재료로는 #b#t04000150#, #t4011005#, #t4011007##k이 필요하다고 한다.\r\n#i4000150##t4000150# #b#c4000150#/30#k\n#i4011005##t4011005# #b#c4011005#/2#k\n#i4011007##t4011007# #b#c4011007#/1",
	["2"] = "#b#p2020000##k의 도움으로 빙석을 깨뜨릴 망치를 얻었다. 좋아. 이제 제프에게 가 볼까? 이 망치, 기대해 보겠어.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "흠… 엘나스 최고의 장인, #b#p2020000##k이다. 이 #b#p2020000##k이 만들지 못하는 건, 세상 누구도 만들 수 없지. 뭐 원하는 물건이라도 있냐? ", ["2"] = "고대의 마법을 깨뜨릴 망치? 고대의 마법이 담긴 빙석이라면, 저 설산의 빙석 말인가? 그거라면 예전부터 깨뜨릴 수 있는 망치를 만들고 싶었지. 하지만 보통의 재료로는 아무리 애를 써도 그걸 부술만한 망치가 만들어지질 않아. 특별한 재료가 필요하지.", ["3"] = "만들어주는 대신 재료는 모두 네가 모아 오도록 해. 할 수 있겠지?"},
	["yes"] = {["1"] = "#b#t4000150# 30개, #t04011005# 2개, #t04011007# 1개#k를 구해 오도록. 그거면 그럭저럭 망치를 만들 수 있을 것 같으니."},
	["no"] = {["1"] = "안되면 망치도 못 만들지 뭐."},
}
nTable["say1"] = {
	["base"] = {["1"] = "흠. 재료가 있으면 망치는 금방 만들지. 망치야 수백 번도 더 만들어 봤으니까 말이야, 이런 건 재료가 중요한 것이거든. "},
	["yes"] = {["1"] = "고대 빙석은 왜 깨겠다는 건지 모르겠지만, 잘 해보게. 최고의 오리할콘 망치를 만들어줬으니 잘 써먹어 보라고... 그럼 바로 제프에게 가 볼 건가?"},
	["stop"] = {
		["item"] = {["1"] = "이봐, 재료가 부족하잖아. #b#t4000150# 30개, #t04011005# 2개, #t04011007# 1개#k개 한 개라도 부족하면 망치를 못 만들어. 만들고 싶다면 모두 구해 오라고."},
	},
	["ask"] = {"뭐라고? #b#t4031450##k를 잃어버렸다고? 그 무거운 걸 어떻게 하면 잃어버릴 수 있는 건데? 하는 수 없지. 나중에 설산에 가서 고대 빙석을 깨뜨려 보려고 만들어 둔 것이 있으니, 그걸 가져 가도록.  "},
}
return nTable
end