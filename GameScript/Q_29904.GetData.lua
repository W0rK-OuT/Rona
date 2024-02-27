return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1101000,
	["normalAutoStart"] = 1,
	["startscript"] = "q29904s",
	["quest"] = {{["id"] = 20000, ["state"] = 2}, {["id"] = 20015}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1101000,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "노블레스",
	["area"] = 51,
	["1"] = "기사단의 일원임을 증명하고 #b<노블레스>#k의 칭호를 획득하자.",
	["autoStart"] = 1,
	["2"] = "여제에게 충성을 맹세한 영예로운 기사단의 일원으로서 그 첫 단계에 해당하는 #b<노블레스>#k의 칭호를 획득하였다.",
	["demandSummary"] = "20000번 어린여제의 인사랑 연동",
	["autoAccept"] = 1,
	["0"] = "기사단의 일원임을 증명하고 #b<노블레스>#k의 칭호를 획득하자.",
	["viewMedalItem"] = 1142065,
}
nTable["say0"] = {
	["base"] = {["1"] = "20000 어린여제의 인사 연동 퀘"},
	["yes"] = {["1"] = "yes"},
	["no"] = {["1"] = "no"},
}
nTable["say1"] = {
	["yes"] = {["1"] = "ㅁㄴㅇ"},
}
return nTable
end