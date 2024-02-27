return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 70,
	["normalAutoStart"] = 1,
	["npc"] = 9000040,
	["startscript"] = "q29902s",
	["item"] = {{["id"] = 1142109}},
	["job"] = {111, 121, 131, 112, 122, 132, 211, 221, 231, 212, 222, 232, 311, 321, 312, 322, 411, 421, 412, 422, 433, 434, 511, 521, 512, 522},
}
nTable["check1"] = {
	["npc"] = 9000040,
	["endscript"] = "q29902e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "베테랑 모험가",
	["area"] = 51,
	["autoStart"] = 1,
	["0"] = "모험가 3차 전직을 완료하면 #b<베테렝 모험가>#k의 칭호를 획득 할 수 있다.",
	["1"] = "3차 전직을 완료한 명예로운 모험가에게 #b<베테랑 모험가>#k의 칭호가 선물로 주어진다고 한다. 각 마을에 위치한 NPC #p9000040#을 찾아가 보자.",
	["2"] = "모험가 3차 전직을 통해 #b<주니어 모험가>#k의 칭호를 획득 하였다.\r\n",
	["demandSummary"] = "NPC #b#p900040##k를 찾아가 명예로운 #t1142109#의 훈장을 얻자.",
	["rewardSummary"] = "#Wbasic#\r\n#v1142109:##t1142109:# 1개",
	["autoAccept"] = 1,
	["viewMedalItem"] = 1142109,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end