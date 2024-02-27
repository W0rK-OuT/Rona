return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032106,
	["lvmin"] = 20,
	["quest"] = {{["id"] = 2154, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1032106,
	["item"] = {{["id"] = 4000000, ["count"] = 10}, {["id"] = 4000016, ["count"] = 10}, {["id"] = 4000019, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100,
	["item"] = {
		{["id"] = 4000019, ["count"] = -10},
		{["id"] = 4000016, ["count"] = -10},
		{["id"] = 4000000, ["count"] = -10}
	},
}
nTable["info"] = {
	["name"] = "달팽이 사냥",
	["parent"] = "달팽이 전설",
	["order"] = 3,
	["1"] = "알로이는 물론이고 #r#t2210006#을 가지고 있는 달팽이, 마노#k에 대해서도 알고 있는 요정 윙. 마노의 위치를 알려줄 테니, 대신 #b달팽이 껍질#k들을 구해 달라고 말하는데...\n\n#i4000019##t4000019# #b#c4000019#/10#k\n#i4000000##t4000000# #b#c4000000#/10#k\n#i4000016##t4000016# #b#c4000016#/10#k",
	["2"] = "요정 윙에게 달팽이 껍질을 전해 주고 마노에 대한 정보를 얻었다. 마노는 해안가 풀숲 지역에서 자주 나타난다는데... 그럼 다시 #b피아#k에게 가자.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "흐응~ 너, 이제 보니 알로이에 대해 궁금한 게 아니라 마노에 대해 궁금한 거구나? 그렇다면 그냥 알려줄 수는 없지~ 마노에 대한 정보를 얻고 싶다면, 대신 부탁을 한 개 들어줘야겠어."},
	["yes"] = {["1"] = "그럼 #b달팽이의 껍질#k, #b파란 달팽이의 껍질#k, #b빨간 달팽이의 껍질#k을 #b각각 10개#k씩 모아 줘. 뭐, 별로 어려운 일은 아니잖아? 이 일만 해주면 마노가 어디서 나타나는지 알려줄게. "},
	["no"] = {["1"] = "싫으면 관둬도 상관은 없지만... 마노에 대해 알고 있는 건 요정들 뿐이야. 인간들은 거의 알지 못한다고. 다른 곳에서 정보를 얻는 건 불가능할걸? "},
}
nTable["say1"] = {
	["base"] = {["1"] = "달팽이의 껍질은 모두 가져온 거야? 흠... 어디 보자. 하나, 둘, 셋... 좋아. 한 개도 빠뜨리지 않고 가져왔군. 이걸 어디에 쓸거냐고? 이카루스가 달팽이 세마리라는 기술을 익히는데 필요하다고 해서 대신 구해주기로 했거든. 편하게 잘 구했네."},
	["yes"] = {["1"] = "자, 그럼 마노에 대해 알려줄게. 마노는 #b리스항구 옆에 있는 해안가 풀숲#k에서 자주 나와. 알로이도 그 주변에서 낚시를 하다가 발견했었다고 하니 틀림없지. 이거면 됐지?"},
	["stop"] = {
		["item"] = {["1"] = "아직 달팽이 껍질을 모두 가져오지 못한 것 같은데? #b달팽이 껍질#k, #b빨간 달팽이 껍질#k, #b파란 달팽이 껍질#k을 종류별로 #b각각 10개#k씩 모두 30개 가져오면, 마노에 대해 알려줄게. "},
	},
}
return nTable
end