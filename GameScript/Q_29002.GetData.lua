return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000040,
	["lvmin"] = 20,
	["interval"] = 0,
	["startscript"] = "q29002s",
	["item"] = {{["id"] = 1142003}},
}
nTable["check1"] = {
	["npc"] = 9000040,
	["endscript"] = "q29002e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "인기인!",
	["0"] = "#b#e칭호 도전 - 인기인#n\n#k제한시간 30일 동안 인기도 1000을 올리는 자에게 주어지는 칭호라고? 달리어에게 가서 #e#b인기인#n#k 훈장에 도전해 보자.",
	["1"] = "#b#e칭호 도전 - 인기인#n\n#k - 남은시간 : #Qdaylimit#일 #Qhourlimit#시간 #Qminlimit#분\n - 인기도 증가량 : #b#jpopgap##k / #jpopG#\n               #jgaugePop# #jperPop# %",
	["2"] = "#b#e칭호 도전 - 인기인#n\n#k - 남은시간 : #Qdaylimit#일 #Qhourlimit#시간 #Qminlimit#분\n - 인기도 증가량 : #b#jpopgap##k / #jpopG#\n               #jgaugePop# #jperPop# %\n\n30일 동안 인기도 1000을 올렸다! 달리어도 이런 나의 인기에 놀란 눈치였는데, 결국 명예의 신관인 그에게서 '#b인기인#k'이라는 칭호를 받아내고 말았다. 훗, 이제 '#b메이플 아이돌스타#k'에 도전해 볼까?",
	["timeLimit2"] = 2592000,
	["area"] = 51,
	["medalCategory"] = 2,
	["viewMedalItem"] = 1142003,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "인기인 칭호를 얻으려면 제한시간 동안 인기도 1000을 올려야 하오. 힘들다고 생각하면 포기하고 다른 칭호에 도전하는 것은 어떻겠소?"},
	},
}
return nTable
end