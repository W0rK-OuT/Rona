return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2110005,
	["startscript"] = "q2258s",
	["quest"] = {{["id"] = 2257, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2110005,
	["endscript"] = "q2258e",
	["mob"] = {
		[1] = {["id"] = 2100108, ["count"] = 40}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "낮 말은 미요캐츠가 듣는다.",
	["area"] = 44,
	["0"] = "낙타 택시에세 버섯의 성에 대하여 물어보자.",
	["1"] = "미요캐츠는 소문을 퍼트려 악소문으로 만드는 재주를 가지고 있다고 한다. 제한 시간 이내에 미요캐츠를 잡아 소문이 퍼지는 것을 막자.\r\n\r\n#o2100108# #a22581#\r\n",
	["timeLimit"] = 300,
	["timerUI"] = "default",
	["demandSummary"] = "\r\n",
	["rewardSummary"] = "'밤 말은 스콜피온이 못 듣는다.' 퀘스트로 진행 가능\r\n",
	["parent"] = "버섯의 성에 관하여...",
	["order"] = 4,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end