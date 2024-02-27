return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2082004,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3748, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2082013,
	["mob"] = {
		[1] = {["id"] = 8220015, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 220000,
	["item"] = {
		{["id"] = 1003039, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "니벨룽겐의 노래",
	["area"] = 41,
	["parent"] = "2503년 하늘 위에서…",
	["order"] = 2,
	["1"] = "앤디는 결국 해결점은 과거가 아니라 자신이 왔던 2503년에 있었다면서 2503년으로 가서 니벨룽겐 전함을 쓰러트리고 아슈라에게 보고하라고 했다. 이로써 문제는 해결될 수 있는 것인가?",
	["2"] = "니벨룽겐의 전함을 쓰러트리고 아슈라를 찾아갔다. 아슈라는 이로써 평화를 얻을 수 있기를 기대한다면서 감사의 뜻을 전했다.",
	["demandSummary"] = "#o8220015# #a37491#\r\n",
	["rewardSummary"] = "경험치 220,000\r\n#Wbasic#\r\n#i1003039:# #t1003039:# 1 개\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "결국 그 많은 시간 여행을 했지만, 나는 아무것도 해결하지 못한 것 같아. 지금까지 모은 시간모래에 담긴 기억으로 미루어 볼 때, 결국 실마리는 내가 온 2503년에 있는 것 같아. 지금 당장 2503년으로 가서 니벨룽겐 전함을 쓰러트리고 이 소식을 아슈라에게 전해줘."},
	["yes"] = {["1"] = "아슈라는 천공전함 헤르메스 어딘가에 있을거야."},
	["no"] = {["1"] = "이제 와서 모든 것을 포기할건가?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "니벨룽겐을 쓰러트렸군요. 앤디의 소식이라면 이미 알고 있어요. 당신에게 큰 빚을 졌군요. 물론 이로써 우리의 문제가 해결된 것은 아닙니다. 아직 무슨 뜻인지 이해하지 못한 것 같은 표정이군요. 언젠가 당신도 이해할 날이 오겠죠. 지금이 때가 아닐뿐..."},
	["yes"] = {["1"] = "당신을 잊지 않겠습니다. 시간여행자여..."},
	["stop"] = {
		["npc"] = {["1"] = "아슈라….그녀를 찾아가 봐."},
		["mob"] = {["1"] = "니벨룽겐 전함이 곧 공격해 올거에요. 두렵군요. 우리가 쓰러트릴 수 있을까요?"},
	},
}
return nTable
end