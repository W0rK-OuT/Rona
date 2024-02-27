return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300008,
	["startscript"] = "q2327s",
	["lvmin"] = 30,
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2326, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300008,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 8000,
}
nTable["info"] = {
	["name"] = "제임스의 행방 (3)",
	["area"] = 30,
	["0"] = "#b#p1300008##k의 탈출을 도와주자.",
	["1"] = "무사히 #b#p1300008##k를 탈출 시켰다. #b#p1300005##k를 찾아가 보자.",
	["2"] = "무사히 #b#p1300008##k를 탈출 시켰다.",
	["summary"] = "무사히 #b#p1300008##k를 탈출 시키자.",
	["rewardSummary"] = "경험치 8,000\r\n",
	["showLayerTag"] = "james3",
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end