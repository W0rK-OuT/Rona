return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 100,
	["npc"] = 1101002,
	["normalAutoStart"] = 1,
	["startscript"] = "q20600s",
	["job"] = {1111, 1112, 1211, 1212, 1311, 1312, 1411, 1412, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1101002,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "끝나지 않는 수련",
	["0"] = "#p1101002#가 뭔가 할 말이 있는 모양인데...",
	["1"] = "#p1101002#는 100 레벨이 넘었다고 수련의 끝난 게 아니라며 끊임없이 수련하는 기사단장들을 본받으라고 말했다. 잘만 하면 새로운 스킬을 얻을 수도 있을 거라는데...",
	["2"] = "#p1101002#는 100 레벨이 넘었다고 수련의 끝난 게 아니라며 끊임없이 수련하는 기사단장들을 본받으라고 말했다. 잘만 하면 새로운 스킬을 얻을 수도 있을 거라는데...",
	["area"] = 15,
	["autoStart"] = 1,
	["type"] = "[스킬]",
}
nTable["say0"] = {
	["base"] = {["1"] = "#h0#. 혹시 레벨이 100이 넘었다고 수련에 소홀해진 거 아닙니까? 확실히 당신은 강하지만 아직 수련은 끝나지 않았습니다. 기사단장들을 본받으세요. 검은 마법사에 대비하여 끊임없이 수련을 하는 그들을 말입니다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "가끔은 기사단장들을 찾아가 조언을 들어보십시오. 혹시 압니까? 뭔가 #b새로운 스킬#k을 배울 수 있을지..."},
}
return nTable
end