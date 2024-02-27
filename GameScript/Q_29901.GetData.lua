return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 30,
	["normalAutoStart"] = 1,
	["npc"] = 9000040,
	["startscript"] = "q29901s",
	["item"] = {{["id"] = 1142108}},
	["job"] = {110, 120, 130, 111, 121, 131, 112, 122, 132, 210, 220, 230, 211, 221, 231, 212, 222, 232, 310, 320, 311, 321, 312, 322, 410, 420, 411, 421, 431, 412, 422, 432, 433, 434, 510, 520, 511, 521, 512, 522},
}
nTable["check1"] = {
	["npc"] = 9000040,
	["endscript"] = "q29901e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "주니어 모험가",
	["area"] = 51,
	["autoStart"] = 1,
	["0"] = "모험가 2차 전직을 완료하면 #b<주니어 모험가>#k의 칭호를 획득 할 수 있다.",
	["1"] = "2차 전직을 완료한 명예로운 모험가에게 #b<주니어 모험가>#k의 칭호가 선물로 주어진다고 한다. 각 마을에 위치한 NPC #p9000040#을 찾아가 보자.",
	["2"] = "모험가 2차 전직을 통해 #b<주니어 모험가>#k의 칭호를 획득 하였다.\r\n",
	["demandSummary"] = "NPC #b#p900040##k를 찾아가 명예로운 #t1142108#의 훈장을 얻자.",
	["rewardSummary"] = "#Wbasic#\r\n#v1142108:##t1142108:# 1개",
	["autoAccept"] = 1,
	["viewMedalItem"] = 1142108,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end