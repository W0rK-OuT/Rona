return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1202008,
	["lvmin"] = 150,
	["quest"] = {{["id"] = 21613, ["state"] = 2}},
	["job"] = {2000, 2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1202008,
	["item"] = {{["id"] = 4032334, ["count"] = 1}, {["id"] = 1902016, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4032334, ["count"] = -1},
		{["id"] = 1902016, ["count"] = -1},
		{["id"] = 1902017, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "늑대의 심장",
	["area"] = 6,
	["0"] = "#p1202008#의 말에 의하면 이대로 두면 #t1902016#가 위험한 모양이다. 무슨 말이지? #b#p1202008##k에게 물어 보자.",
	["1"] = "#p1202008#는 자신들을 은혈랑이라 소개하며 은혈랑이 성인이 되려면 #b#t4032334##k를 마셔야 한다고 말했다. 그러지 못하면 위험하다는데... 어서 재료를 모아 메이커 스킬로 #t4032334#를 만들자!\r\n\r\n#i4032334# #t4032334# #b#c4032334# / 1#k",
	["2"] = "#t4032334#를 만들어 #t1902016#에게 먹였다. 더 강한 심장을 갖게 된 #t1902016#는 성인 늑대가 되었다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "...알고 있는가. 우리는 은혈랑. 은색 피를 가진 늑대이다. 우리는 성인이 되기 위해 심장을 강하게 해야 한다. 그러기 위해서는 고향에서만 나는 #b#t4032334##k를 마셔야만 한다. #t4032334#를 마시지 못하면 위험하다.", ["2"] = "그대가 데리고 있는 아이... #t1902016#라고 이름 지었던가? #t1902016#는 이제 곧 성인이 된다. 그렇기에 우리는 아이를 되찾으러 왔다. 그대는 거절했다. 하지만 이대로는 아이가 위험하다. 그러니 그대에게 제안한다. #b#t4032334##k를 만들어라. "},
	["yes"] = {["1"] = "방금 그대에게 #t4032334# 제조법을 각인시켰다. 그대로 만들기만 한다면 고향에서 나는 것과 똑같지는 않지만 그 비슷한 효능을 낼 수 있다. #b메이커 스킬#k을 통해 #t4032334#를 만들어라. "},
	["no"] = {["1"] = "거절하면 아이는 데려가도록 하겠다. 그냥 두면 아기의 목숨이 위험하다. 고향에 데려가 #t4032334#를 마시도록 하겠다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4032334#를 구해 왔는가? 그렇다면 바로 아이에게 마시도록 하겠다. 어서 #t4032334#를 건네라."},
	["yes"] = {["1"] = "이로서 #t1902017#는 성인 늑대가 되었다. #t4032334#를 만들어온 그대는 좋은 인간이다. 앞으로도 #t1902017#를 잘 부탁한다."},
	["stop"] = {
		["item"] = {["1"] = "아직 #t4032334#는 구하지 못한 건가? 어서 만들어라. 재료 중 #b#t4032335##k은 #b#m230000000#의 #p2060005##k가 가지고 있다고 들었다..."},
	},
}
return nTable
end