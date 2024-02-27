return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 70,
	["normalAutoStart"] = 1,
	["npc"] = 1101000,
	["startscript"] = "q29908s",
	["job"] = {1111, 1112, 1211, 1212, 1311, 1312, 1411, 1412, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1101000,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "상급기사",
	["area"] = 51,
	["autoStart"] = 1,
	["0"] = "기사단 3차 전직을 완료하면  #b<상급기사>#k의 칭호를 획득 할 수 있다.",
	["2"] = "신수의 눈물을 수호한 당신. #b<상급기사>#k의 칭호를 획득했다.\r\n",
	["autoAccept"] = 1,
	["1"] = "기사단 3차 전직을 완료하면 #b<상급기사>#k의 칭호를 획득 할 수 있다.",
	["viewMedalItem"] = 1142068,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end