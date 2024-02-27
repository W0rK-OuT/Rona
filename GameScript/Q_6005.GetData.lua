return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060005,
	["interval"] = 0,
	["quest"] = {{["id"] = 6003, ["state"] = 2}},
	["item"] = {{["id"] = 2270000}, {["id"] = 1902000}, {["id"] = 1902001}, {["id"] = 1902002}},
}
nTable["check1"] = {
	["npc"] = 2060005,
	["item"] = {{["id"] = 4031509, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
	["item"] = {
		{["id"] = 4031509, ["count"] = -1},
		{["id"] = 2270000, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "잃어버린 향수",
	["0"] = "#t2270000#를 잃어버리고 말았다. 그게 없으면 몬스터를 길들일 수 없는데 어떻게 하지? #b#p2060005##k에게 가보자.",
	["1"] = "#p2060005#는 #t4031507#은 충분히 있다며 #b#t4031509##k만 구해 온다면 다시 #t2270000#를 만들어 주겠다고 했다.\n\n#i4031509##t4031509# #b#c4031509#/1#k",
	["2"] = "#p2060005#에게 #t2270000#를 받았다. 휴우, 다행이다. 이제 몬스터를 길들여야겠군.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "어라? 전에 몬스터 라이딩 스킬을 가르켜 드린 분 아닌가요? 여긴 어쩐 일이세요? 몬스터도 안 타시고… 몬스터 라이딩 스킬이 어렵나요? 네? #t2270000#를 잃어버리셨다고요? 이런. #t4031507#이라면 예전에 당신이 많이 채취해 주신 덕분에 충분히 있지만 #b#t4031509##k은 다시 구하셔야 해요. 구하실 수 있겠어요?"},
	["yes"] = {["1"] = "아시겠지만, #b리프레의 촌장#k이신 #b타타모#k님 외에는 가지고 있는 사람이 없는 거라 비싼데 괜찮으시겠어요? #t4031509#만 구해 오신다면, #t2270000#는 얼마든지 다시 만들어 드릴게요. "},
	["no"] = {["1"] = "#t4031509#이 없다면 몬스터를 길들이는 일은 불가능한데… 다시 한 번 생각해 보세요. 몬스터 라이딩 스킬을 익히고 싶으시다면요. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4031509#을 구해 오셨군요. 어때요? 타타모님은 정말 특별한 걸 갖고 계시죠? 자. 여기에 이렇게 #t4031507#을 담으면… #b#t2270000##k 완성입니다~"},
	["yes"] = {["1"] = "이거면 몬스터를 길들일 수 있어요! 자, 어서 #b아랫마을#k으로 가 보세요!"},
	["stop"] = {
		["item"] = {["1"] = "#b#t4031509##k은 #b리프레의 촌장 타타모님#k이 팔고 계신답니다."},
	},
}
return nTable
end