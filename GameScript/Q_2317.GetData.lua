return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300007,
	["lvmin"] = 30,
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2316, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300007,
	["item"] = {{["id"] = 4000500, ["count"] = 100}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 13500,
	["nextQuest"] = 2318,
	["item"] = {
		{["id"] = 4000500, ["count"] = -100}
	},
}
nTable["info"] = {
	["name"] = "킬라 버섯 포자 (1)",
	["area"] = 30,
	["rewardSummary"] = "경험치 13,500\r\n'킬라 버섯 포자 (2)' 퀘스트로 진행 가능\r\n",
	["0"] = "버섯 연구가 #b#p1300007##k가 #b킬라 버섯 포자#k를 만들 방법을 알고 있다고 하는데...",
	["1"] = "#b킬라 버섯 포자#k 제조에 필요한 #b독버섯의 갓 100개#k를 #b#p1300007##k 에게 가져다 주자.",
	["2"] = "#b킬라 버섯 포자#k 제조에 필요한 독버섯의 갓 100개를 모아 #b#p1300007##k에게 가져다 주었다.",
	["demandSummary"] = "#i4000500:# #t4000500:# #c4000500# / 100\r\n",
	["summary"] = "#b킬라 버섯 포자#k 제조에 필요한 독버섯의 갓 100개를 #b#p1300007##k 에게 가져다 주자.",
}
nTable["say0"] = {
	["base"] = {["1"] = "아! 그 #b킬라 버섯 포자#k라면 어릴 적에 책에서 본 적이 있어요. 기억이 났어요. 독버섯으로부터 강한 독을 추출해서 만드는 것이라 독버섯의 갓이 필요할 거에요. 그걸 구해다 주시면 만들 수 있을 것 같아요."},
	["yes"] = {["1"] = "#b독버섯#k을 해치우고 #b독버섯의 갓#k 100개를 모아다 주세요."},
	["no"] = {["1"] = "결계를 뚫으려면 반드시 독버섯의 갓이 필요해요. 생각이 바뀌면 언제든 저한테 찾아오세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "부탁드린 독버섯의 갓 100개를 다 모아오신 건가요?"},
	["yes"] = {["1"] = "모으기 어려운 이 독버섯의 갓을 100개나 모아오시다니. 이걸로 #b킬라 버섯 포자#k를 만들 수 있을 것 같아요."},
	["stop"] = {
		["item"] = {["1"] = "#b킬라 버섯 포자#k를 만들기 위해선 독버섯의 갓 100개가 필요합니다."},
	},
}
return nTable
end