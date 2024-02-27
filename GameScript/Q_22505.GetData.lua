return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013103,
	["lvmin"] = 12,
	["quest"] = {{["id"] = 22504, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1013105,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["nextQuest"] = 22506,
	["exp"] = 1150,
}
nTable["info"] = {
	["name"] = "맛있는 우유2",
	["area"] = 7,
	["1"] = "아빠는 아직 어린 아기라면 #b우유#k부터 먹는 게 맞을지도 모른다고 하셨다. 그러면서 #b#m100030310##k에 있는 #b#p1013105##k에게 우유를 달라고 해보라는데... 왼쪽의 #m100030310#으로 가자.",
	["2"] = "#p1013105#에게 말을 걸었다. 이제 우유를 달라고 해보자.",
	["showLayerTag"] = "22505",
	["0"] = "아빠라면 미르가 뭘 좋아할지 알고 계실지도 모른다. 아빠에게 말을 걸어 보자.",
}
nTable["say0"] = {
	["base"] = {["1"] = "엄청나게 커서 아기라고는 생각 못했는데, 아직 아기라면 풀이나 고기는 소화를 못 시킬지도 모르겠구나. 아기니까 말이야. 종족이 뭐든간에 #b아기라면 역시 우유부터#k 먹는 게 맞지 않을까? "},
	["yes"] = {["1"] = "우유라면 #b#m100030310##k에 있는 #b#p1013105##k에게 얻을 수 있으니 필요하면 좀 나눠 달라고 하려무나.", ["2"] = "아, 도마뱀에게 먹이를 준 다음에 다시 아빠에게 잠깐 와주지 않겠니? 너에게 할 말이 하나 있거든."},
	["no"] = {["1"] = "음... 뭐 도마뱀은 다른 걸 먹을지도 모르지. 하지만 아기 때는 다들 비슷할 것 같구나. 고민해 보고 생각이 바뀌면 다시 말을 걸렴."},
}
nTable["say1"] = {
	["base"] = {["1"] = "음메에에에~"},
	["stop"] = {
		["npc"] = {["1"] = "아직 #p1013105#에게는 안 간 거니? 덩치는 커도 온순하니 걱정 말고 우유를 달라고 하렴."},
	},
}
return nTable
end