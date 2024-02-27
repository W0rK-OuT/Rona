return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041022,
	["interval"] = 0,
	["infoNumber"] = 1100,
	["infoex"] = {"ing"},
	["item"] = {{["id"] = 4031688}},
}
nTable["check1"] = {
	["npc"] = 2041022,
	["item"] = {{["id"] = 4000106, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4000106, ["count"] = -20},
		{["id"] = 4031688, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "티군의 사랑의 증표",
	["0"] = "#t4031688#를 받으려면 보좌관 티군을 찾아가보자.",
	["1"] = "보좌관 티군은 나의 사랑을 증명하라면서 #b#t4000106# 20#k개를 가져오라고 했다.\n\n#i4000106##t4000106# #b#c4000106# / 20#k",
	["2"] = "보좌관 티군에게 사랑의 증표를 얻었다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕한가. 사랑의 증표를 얻고 싶으시다고...? 진실한 사랑의 힘은 대단하다고 들었네. 사랑의 힘으로 내 병도 고쳐졌으면 좋으련만. 자네의 사랑은 진실한가? 그렇다면 나의 테스트를 통과해 보게. 어때?"},
	["yes"] = {["1"] = "#b#t4000106# 20개#k를 모아온다면 자네의 사랑이 진실하다는 것을 믿겠네."},
	["no"] = {["1"] = "당신의 사랑은 진실하지 못한건가? 아니면 용기가 없는건가?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "내가 말한대로 #t4000106# 20개를 모두 가져왔군. 이제 자네의 진실성을 믿겠네. 내 믿음의 증거로 사랑의 증표를 주겠네."},
	["yes"] = {["1"] = "진실한 사랑의 힘을 나도 알고 싶어지는군."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000106# 20개#k를 가져오면 자네의 진실성을 의심하지 않겠네."},
	},
}
return nTable
end