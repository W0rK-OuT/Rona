return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1101002,
	["lvmin"] = 110,
	["normalAutoStart"] = 1,
	["startscript"] = "q20610s",
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
	["name"] = "여전히 끝나지 않는 수련",
	["0"] = "#p1101002#가 뭔가 할 말이 있는 모양인데...",
	["1"] = "#p1101002#는 그간 스킬은 많이 익혔냐며 또다시 기사단장이 새로운 스킬을 익혔으니 그것마저 배워보라고 말했다. ",
	["2"] = "#p1101002#는 그간 스킬은 많이 익혔냐며, 또다시 기사단장이 새로운 스킬을 익혔으니 그것마저 배워보라고 말했다.",
	["area"] = 15,
	["autoStart"] = 1,
	["type"] = "[스킬]",
}
nTable["say0"] = {
	["base"] = {["1"] = "그간 스킬은 많이 익히셨습니까? 어느 정도 익숙해지셨을 테니... 이제 또 #b새로운 스킬#k을 익혀 보셔야죠? "},
	["no"] = {["1"] = "이런, 그런 건 욕심이 없는 게 아니라 향상심이 없는 겁니다. 절대로 좋은 건 아니죠."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#b기사단장#k들이 또 다른 스킬을 얻은 모양이더군요. 당신도 이대로 있지 말고 가서 배워 보세요. 뭐, 기사단장들은 반대할지 모르지만... 익히느냐 마느냐는 당신의 역량에 달려 있겠죠."},
}
return nTable
end