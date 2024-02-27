return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013103,
	["lvmin"] = 13,
	["quest"] = {{["id"] = 22507, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1013000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["nextQuest"] = 22509,
	["exp"] = 320,
}
nTable["info"] = {
	["name"] = "이상한 돼지1",
	["area"] = 7,
	["0"] = "아빠가 뭔가 고민이 있으신 것 같은데... 무슨 고민일까. #b아빠#k에게 말을 걸어 보자.",
	["1"] = "아빠는 요즘 #o1210111#들이 자꾸 늘어나서 골치가 아프다고 하신다. 얼마나 이상하고 힘이 센지 아무리 울타리를 고쳐도 소용이 없다는데... 아무래도 조심해야겠다.",
	["2"] = "아빠의 말을 들은 #p1013000#의 눈이 번쩍이기 시작하는데...",
}
nTable["say0"] = {
	["base"] = {["1"] = "휴우, 이런. 아무리 고쳐도 소용이 없구나. 얼마 전부터 #r#o1210111##k들이 날뛰는 게 심상치가 않아. 몇 번이고 울타리를 고쳤지만 얼마나 힘이 센지 전부 울타리를 뚫어버리니 원. ", ["2"] = "보통 돼지하고는 생긴 것부터 다르단다. 그러니까... \n\n#i4032527#\n\n...이렇게 생겼어. 정말 이상하지?", ["3"] = "누가 녀석들을 좀 혼내주면 좋을 텐데... 에반, 너도 조심하렴. #b#m100030320##k 쪽에 #o1210111#들이 많이 다니니 그 쪽으로 갈 땐 주의해야 한다?"},
	["yes"] = {["1"] = "음. 그래, #o1210100#라고 만만히 보다간 큰코 다쳐요..."},
	["no"] = {["1"] = "응? 하하하, 힘이 넘치는 모양이구나. 하지만 #o1210100#라고 만만히 보다가 다칠 수도 있단다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "마스터, 마스터! 이건 기회야! 내 힘을 보여줄 기회라고! 저 인간이 말한 #o1210111#를 우리가 잡아보자!"},
	["stop"] = {
		["npc"] = {["1"] = "누가 #o1210111#들을 혼내주면 좋을 텐데..."},
	},
}
return nTable
end