return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2022003,
	["startscript"] = "q3116s",
	["lvmin"] = 60,
	["normalAutoStart"] = 1,
}
nTable["check1"] = {
	["npc"] = 2022003,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 39000,
	["nextQuest"] = 3117,
}
nTable["info"] = {
	["name"] = "샤모스의 각성",
	["area"] = 33,
	["autoStart"] = 1,
	["0"] = "#b● 분류 : 호브제왕 렉스의 부활 - 호위, 파티 퀘스트#k\r● 종류 : 사전 필수 퀘스트\r\n● 내용 : 엘나스의 샤모스로 부터의 전갈이다. 무언가 도움이 필요해 보이는데...",
	["1"] = "엘나스의 장로의 관저 지하에 위치한 샤모스를 찾아가 보자.",
	["2"] = "샤모스는 나에게 어떤 부탁을 하려 하지?",
	["rewardSummary"] = "경험치 39,000\r\n'기억의 흔적' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "잘 왔어. 나를 도와 주러 온 친구여."},
}
return nTable
end