return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300002,
	["startscript"] = "q2332s",
	["lvmin"] = 30,
	["normalAutoStart"] = 1,
	["lvmax"] = 38,
	["item"] = {{["id"] = 4032388, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 1300002,
	["endscript"] = "q2332e",
	["infoNumber"] = 2332,
	["infoex"] = {"1"},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "비올레타는 어디에?",
	["area"] = 30,
	["autoStart"] = 1,
	["autoAccept"] = 1,
	["rewardSummary"] = "경험치 4,400",
	["demandSummary"] = "결혼식장에 갖혀 있을 #b#p1300002##k를 찾아라.\r\n\r\n\r\n#b#e- 조건 - #n\r\n반드시 혼자서 찾아 갈것. (파티탈퇴)",
	["1"] = "결혼식장에 갖혀 있을 #b#p1300002##k를 찾아라.\r\n\r\n\r\n#b#e- 조건 - #n\r\n반드시 혼자서 찾아 갈것. (파티탈퇴)",
	["2"] = "결혼식장에 갖쳐있는 #b#p1300002# 공주#k를 찾았다.",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "아... 당신이 절 구하러 와주신 용사님??"},
}
return nTable
end