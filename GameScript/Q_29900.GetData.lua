return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 8,
	["normalAutoStart"] = 1,
	["npc"] = 9000040,
	["startscript"] = "q29900s",
	["item"] = {{["id"] = 1142107}},
	["job"] = {100, 110, 111, 112, 120, 121, 122, 130, 131, 132, 200, 210, 211, 212, 220, 221, 222, 230, 231, 232, 300, 310, 311, 312, 320, 321, 322, 400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 500, 510, 511, 512, 520, 521, 522},
}
nTable["check1"] = {
	["npc"] = 9000040,
	["endscript"] = "q29900e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "초보 모험가",
	["area"] = 51,
	["autoStart"] = 1,
	["0"] = "모험가 1차 전직을 완료하면 #b<초보 모험가>#k의 칭호를 획득 할 수 있다.",
	["1"] = "1차 전직을 완료한 명예로운 모험가에게 #b<초보 모험가>#k의 칭호가 선물로 주어진다고 한다. 각 마을에 위치한 NPC #p9000040#을 찾아가 보자.",
	["2"] = "모험가 2차 전직을 통해 #b<초보 모험가>#k의 칭호를 획득 하였다.\r\n",
	["demandSummary"] = "NPC #b#p900040##k를 찾아가 명예로운 #t1142107#의 훈장을 얻자.",
	["rewardSummary"] = "#Wbasic#\r\n#v1142107:##t1142107:# 1개",
	["autoAccept"] = 1,
	["viewMedalItem"] = 1142107,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end