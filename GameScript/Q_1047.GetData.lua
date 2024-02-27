return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2006,
	["interval"] = 0,
	["fieldEnter"] = {999999999},
}
nTable["check1"] = {
	["npc"] = 2006,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "몬스터북 지정몬스터 효과",
	["0"] = "몬스터북 지정몬스터 효과",
	["1"] = "#b#M1047# 카드#k 5장을 모아서 몬스터 사냥시 보너스 경험치를 받을 수 있다.\r\n#r#M1047##b 사냥시 추가 경험치  #r#x1047# #b획득#k ",
	["2"] = "몬스터북 효과로 지정몬스터 사냥시 보너스 경험치를 얻었다. ",
	["timerUI"] = "SelectMob",
	["timeLimit"] = 3600,
	["area"] = 50,
	["selectedMob"] = 1,
	["autoStart"] = 1,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end