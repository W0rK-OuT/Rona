return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 30,
	["normalAutoStart"] = 1,
	["npc"] = 1101000,
	["startscript"] = "q29907s",
	["job"] = {1110, 1111, 1112, 1210, 1211, 1212, 1310, 1311, 1312, 1410, 1411, 1412, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1101000,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "정식기사",
	["area"] = 51,
	["autoStart"] = 1,
	["0"] = "기사단 2차 전직을 완료하면 #b<정식기사>#k의 칭호를 획득 할 수 있다.",
	["2"] = "영웅이 될 자격을 갖춘 당신! #b<정식기사>#k의 칭호를 획득하였다.\r\n",
	["autoAccept"] = 1,
	["1"] = "기사단 2차 전직을 완료하면 #b<정식기사>#k의 칭호를 획득 할 수 있다.",
	["viewMedalItem"] = 1142067,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end