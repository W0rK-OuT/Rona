return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013103,
	["quest"] = {{["id"] = 22009, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2001},
}
nTable["check1"] = {
	["npc"] = 1013103,
	["mob"] = {
		[1] = {["id"] = 1210100, ["count"] = 20}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 980,
	["item"] = {
		{["id"] = 2022621, ["count"] = 30},
		{["id"] = 2022622, ["count"] = 30}
	},
}
nTable["info"] = {
	["name"] = "이상한 농장",
	["area"] = 7,
	["type"] = "[필수]",
	["0"] = "아빠가 부탁할 게 있으신 것 같다. 아빠에게 말을 걸어보자.",
	["1"] = "아빠는 심하게 날뛰는 #o1210100#들 진정시키는 일을 도와달라고 하신다. #r#o1210100##k 몇 마리를 혼내주면 어느 정도 진정되지 않을까? #b왼쪽의 #m100030310##k로 가서 돼지들을 혼내주자.\r\n\r\n\r\n#o1210100##r #a220101##k",
	["2"] = "#o1210100#들을 혼내주었다.",
	["showLayerTag"] = "22010",
}
nTable["say0"] = {
	["base"] = {["1"] = "자, 자. #o9300385# 이야기는 그만하고 온 김에 아빠나 한 번 더 도와주렴. 아무래도 이상해진 #o1210100#들을 진정시키려면 한 번 혼내줘야 할 것 같아. 그러니 에반이 가서 #r#o1210100##k들을 혼내다오."},
	["yes"] = {["1"] = "날뛰는 돼지들은 #b#m100030310##k부터 있단다. 그러니 그리로 가서 #r20마리#k만 혼내주면 된단다. 허허허. 언제 에반이 이렇게 컸는지. 농장 일에 도움이 다 되는군."},
	["no"] = {["1"] = "응? 혹시 #o1210100#들이 무서운 거니? 날뛰고 있긴 하지만 그렇게 무서워할 건 없는데..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오, #o1210100#들을 혼내주고 왔구나? 잘 했다. 후후, 고맙구나."},
	["yes"] = {["1"] = "자, 그럼 아빠는 계속 일하마."},
	["stop"] = {
		["mob"] = {["1"] = "아직 #o1210100#들을 다 혼내주지 못한 모양이구나. #b#m100030310##k로 가서 이상할 정도로 기세등등한 #o1210100#들을 혼내다오."},
	},
}
return nTable
end