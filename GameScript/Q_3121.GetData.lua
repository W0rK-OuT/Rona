return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2022003,
	["lvmin"] = 70,
	["normalAutoStart"] = 1,
	["quest"] = {{["id"] = 3120, ["state"] = 2}},
	["job"] = {111, 121, 131, 112, 122, 132, 211, 221, 231, 212, 222, 232, 311, 321, 312, 322, 411, 421, 412, 422, 432, 433, 434, 511, 521, 512, 522, 1111, 1112, 1211, 1212, 1311, 1312, 1411, 1412, 1511, 1512, 2111, 2112, 2214, 2215, 2216, 2217, 2218, 3211, 3212, 3311, 3312, 3511, 3512},
}
nTable["check1"] = {
	["npc"] = 2022003,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 44000,
}
nTable["info"] = {
	["name"] = "불길한 징조",
	["area"] = 33,
	["rewardSummary"] = "경험치 44,000\r\n'봉인의 확인' 퀘스트로 진행 가능\r\n",
	["1"] = "샤모스를 한번 찾아가 보자.",
	["2"] = "마법사 전직관인 #b로베이라#k에게 봉인이 되어 있는 장소를 물어보고 확인을 해봐 달라고 하는데...",
	["0"] = "#b● 분류 : 호브제왕 렉스의 부활 - 호위, 파티 퀘스트#k\r● 종류 : 사전 필수 퀘스트\r\n● 내용 : 기억의 일부를 찾은 이후로 샤모스의 망상이 점점 더 심해지는 것 같다.",
	["autoStart"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "이봐 친구. 내 머릿속을 괴롭히는 렉스의 흔적 때문에 미쳐 버릴 것 같아! 나를 좀 도와줘 제발…\r\n#L0##b샤모스…. 망상이 심한 건가 아니면..정말로 어떤 일이 닥치기라도 한 걸까?#l\n#k", ["2"] = "어서 나를 찾아와 줘."},
	["yes"] = {["1"] = "나는 여전히 엘나스 장로의 관저 지하에 있어."},
	["no"] = {["1"] = "나를 나를.. 이대로 미치게 놔 둘거야? 정말로?"},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "오 이봐 친구. 그날 이후 하루도 빠짐없이 렉스의 환영에 시달리고 있어. 나를 좀 도와줘.\r\n#L0##b이봐 샤모스. 렉스에 대해선 잊어. 그는 죽은거나 마찬가지라고.#l\n#k", ["2"] = " 불안해. 불안해서 미칠 것 같아. 렉스의 목소리가 점점 강해지고 있어. 네가… 네가 확인해줘. 로베이라는 알고 있을거야. 렉스가 봉인된 장소를. 나대신 네가 가서 정말 봉인이 안전하게 되어 있는지 확인해줘. 제발 부탁이야.. \r\n#L0##b이런.. 난처하군. 로베이라님이 싫어 할텐데.#l\n#k", ["3"] = "그렇지 않으면 그가 부활할 수도 있어. 확인하는 차원에서 한번 가본다고 하면 거절하지 않을거야. 어서."},
	["yes"] = {["1"] = "로베이라는 알고 있을 거야. 어서 로베이라에게.."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
return nTable
end