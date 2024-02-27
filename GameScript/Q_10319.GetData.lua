return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000021,
	["infoNumber"] = 10310,
	["normalAutoStart"] = 1,
	["startscript"] = "q10319s",
	["infoex"] = {"1000"},
}
nTable["check1"] = {
	["npc"] = 9000021,
	["endscript"] = "q10319e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "유물대회 1000점 달성!!",
	["area"] = 50,
	["autoStart"] = 1,
	["0"] = "유물 대회 1000점을 달성하였다.",
	["1"] = "유물 대회 1000점을 달성하였다.",
	["2"] = "유물 대회 1000점을 달성하니, 운영자가 축하해주며 3000점까지는 원래 점수의 2배를 주겠다고 한다. 괜찮은데? 2500점에 또 다른 선물을 준다고 한다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "1000점을 달성 하셨군요!! 멋진 보상을 드리죠!"},
}
nTable["say1"] = {
}
return nTable
end