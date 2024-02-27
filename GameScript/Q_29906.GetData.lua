return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 10,
	["normalAutoStart"] = 1,
	["npc"] = 1101000,
	["startscript"] = "q29906s",
	["job"] = {1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1101000,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "수련기사",
	["area"] = 51,
	["autoStart"] = 1,
	["0"] = "기사단 1차 전직을 완료하면 #b<수련기사>#k의 칭호를 획득 할 수 있다.",
	["2"] = "영광스러운 기사의 길을 선택한 자에게 주어지는 #b<수련기사>#k의 칭호를 획득했다.\r\n",
	["demandSummary"] = "기사단 1차 전직을 완료하고 #b<수련기사>#k의 칭호를 획득.",
	["autoAccept"] = 1,
	["1"] = "기사단 1차 전직을 완료하면 #b<수련기사>#k의 칭호를 획득 할 수 있다.",
	["viewMedalItem"] = 1142066,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end