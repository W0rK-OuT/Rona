return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000021,
	["infoNumber"] = 10310,
	["normalAutoStart"] = 1,
	["infoex"] = {"5000"},
}
nTable["check1"] = {
	["npc"] = 9000021,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1002980, ["count"] = 1, ["prop"] = -1, ["period"] = 4320},
		{["id"] = 1022088, ["count"] = 1, ["prop"] = -1, ["period"] = 4320}
	},
}
nTable["info"] = {
	["name"] = "유물대회 참가상",
	["area"] = 50,
	["autoStart"] = 1,
	["0"] = "유물대회의 5000점을 넘으니 참가상을 준다고 한다.",
	["1"] = "유물대회의 5000점을 넘으니 참가상을 준다고 한다. 가가에게 찾아가 참가상을 받았다.",
	["2"] = "Top10에 들어가면 이 선물을 기간이 없이 주면서 능력치도 업그레이드 시켜준다고 하는데 도전을 한번 해볼까?",
}
nTable["say0"] = {
	["base"] = {["1"] = "이야~드디어 유물 대회 5000점을 돌파 했네요~!! 이제 참가상을 받으실 수 있어요! 저에게 와서 말을 걸어주세요."},
}
nTable["say1"] = {
}
return nTable
end