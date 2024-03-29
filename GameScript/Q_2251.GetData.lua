return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061011,
	["quest"] = {{["id"] = 2250, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1061011,
	["endscript"] = "q2251e",
	["item"] = {{["id"] = 4032399, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 8000,
}
nTable["info"] = {
	["name"] = "좀비버섯의 신호 체계3",
	["area"] = 30,
	["1"] = "기억하고 있는 자는 뿔버섯에 관한 연구는 끝났지만, 모호한 신호로 여전히 난폭해진 이유를 모르겠다며, 좀비버섯의 연구도 제안했다.\r\n\r\n#i4032399:# #t4032399:# #c4032399# / 20\r\n",
	["parent"] = "수상한 버섯",
	["order"] = 6,
	["2"] = "버섯의 신호로 버섯이 보내는 신호를 해독했다.#b#e‘버섯의 성 머쉬킹이 위험하다. 패패킹을 조심하라! 레벨이 30이 넘는 용사에게 도움을 청하라.’ #n#k 무슨 뜻 일까?",
	["0"] = "기억하고 있는 자는 뿔버섯에 관한 연구는 끝났지만, 모호한 신호로 여전히 난폭해진 이유를 모르겠다고 한다.",
	["rewardSummary"] = "경험치 8,000\r\n'버섯 신호 연구1(반복)' 퀘스트로 진행 가능\r\n'버섯 신호 연구2(반복)' 퀘스트로 진행 가능\r\n'사막의 카르카사' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "좋아. 이제 좀비버섯을 잡아보게. 아마 죽는소리가 녹음 돼서 떨어질 것이야."},
	["yes"] = {["1"] = "#b소리를 담는 부적#k을 20개만 모아서 가져다주게. 좀비버섯을 잡으면 나올거야."},
	["no"] = {["1"] = "미안하구먼. 내가 너무 부려 먹는 것 같군. 알겠네."},
}
nTable["say1"] = {
	["base"] = {["1"] = "아 이 소리야!! 잠시만 기다리게!"},
	["yes"] = {["1"] = "#b#e‘버섯의 성의 머쉬킹이 위험하다. 페페킹을 조심하라! 레벨이 30이 넘는 메이플스토리 용사에게 도움을 청하라.’ #n#k\r\n\r\n버섯의 성이라....나는 처음 듣는 곳인걸?"},
	["stop"] = {
		["item"] = {["1"] = "그 소리가 아니야..."},
	},
}
return nTable
end