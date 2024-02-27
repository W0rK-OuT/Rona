return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1202007,
	["lvmin"] = 150,
	["quest"] = {{["id"] = 21607, ["state"] = 2}},
	["item"] = {{["id"] = 1902016, ["count"] = 1}},
	["job"] = {2000, 2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1202008,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "늑대 무리의 방문",
	["area"] = 6,
	["0"] = "#b#m140000000##k의 펭귄 #b#p1202007##k가 뭔가 할 말이 있는 모양인데...",
	["1"] = "늑대 무리가 #m140000000#을 방문해 #t1902016#를 찾고 있다고 한다. 아무래도 아기 시절에 #t1902016#를 잃어버린 늑대 무리인 모양이다. #b#p1202008##k를 만나 그들이 찾아온 목적을 들어 보자. #p1202008#는 #b#m140010100#에서 갈 수 있는 #m914030000##k에서 기다리고 있다.",
	["2"] = "#p1202008#를 만났다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "저기, 영웅님. 큰일났어요! #b거대한 늑대 무리#k가 찾아와서 당신을 만나고 싶대요! 왜냐고 물어 보니 예전에 아기 늑대를 한 마리 잃어버렸는데, 그 아이가 당신에게 있다는 소문을 들었대요! #t1902016#를 가리키는 게 틀림없어요!", ["2"] = "무슨 목적으로 찾아온 걸까요? 혹시 #t1902016#를 데려가려는 것은 아닐까요...? 아아, 그러면 안 되는데... 목적이 뭐건 간에 #t1902015#의 주인인 당신께서 그들을 만나봐야 할 것 같아요. 가서 #b#p1202008##k리를 만나 주세요."},
	["yes"] = {["1"] = "그들은 #b#m140010200##k에 늑대 한 마리를 마중내보내겠다고 했어요. 늑대라고 해도 굉장히 점잖아 보이긴 했지만... 어떻게 변할지 모르니 조심하세요."},
	["no"] = {["1"] = "영웅님께서 만나줄 때까지 기다리겠다고 했는데... 역시 가보시는 게 좋지 않을까요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "...그대가 우리 일족의 아이를 데리고 있는 자인가?"},
	["stop"] = {
		["npc"] = {["1"] = "아직 #p1202008#는 만나지 못하신 건가요? 그는 #b#m140010100##k에서 갈 수 있는 #b#m914030000##k에 있겠다고 했어요."},
	},
}
return nTable
end