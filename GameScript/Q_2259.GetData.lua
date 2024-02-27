return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2110005,
	["startscript"] = "q2259s",
	["quest"] = {{["id"] = 2258, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2110005,
	["endscript"] = "q2259e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "밤 말은 스콜피온이 못 듣는다.",
	["area"] = 44,
	["0"] = "미요캐츠가 들어서 말을 할 수가 없다고? 어떻하지? 낙타 택에게 다시 말을 걸어보자.",
	["1"] = "미요캐츠가 들어서 말을 할 수가 없다며 '#b사헬지대1#k'에서 이야기를 하자고 한다. ",
	["rewardSummary"] = "'버섯의 성을 향해!' 퀘스트로 진행 가능\r\n",
	["parent"] = "버섯의 성에 관하여...",
	["order"] = 5,
}
nTable["say0"] = {
	["base"] = {["1"] = "여기서는 할 이야기가 아니네요. ‘사헬지대1’에서 봐요. 그곳이라면 안전하니까. 앞으로 쭉 가다 보면 나올 거에요."},
	["no"] = {["1"] = "미요캐츠 앞에서는 아무 말도 할 수 없어요."},
}
nTable["say1"] = {
}
return nTable
end