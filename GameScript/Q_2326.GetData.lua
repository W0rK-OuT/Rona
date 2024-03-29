return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300008,
	["lvmin"] = 30,
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2325, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300008,
	["item"] = {{["id"] = 4001317, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 12000,
	["nextQuest"] = 2327,
	["item"] = {
		{["id"] = 4001317, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "제임스의 행방 (2)",
	["area"] = 30,
	["0"] = "#b#p1300008##k의 탈출을 도와주자.",
	["demandSummary"] = "#i4001317:# #t4001317:# #c4001317# / 1\r\n",
	["rewardSummary"] = "경험치 12,000\r\n'제임스의 행방 (3)' 퀘스트로 진행 가능\r\n",
	["1"] = "#b#p1300008##k의 탈출을 위해 #b#t4001317##k를 구해다 주자.",
	["2"] = "#b#p1300008##k의 탈출을 위해 #b#t4001317##k를 구해다 주었다.",
	["summary"] = "#b#p1300008##k의 탈출을 위해 #b#t4001317##k를 구해다 주자.",
	["showLayerTag"] = "james2",
}
nTable["say0"] = {
	["base"] = {["1"] = "이 곳을 빠져나갈 방법이 있을 것도 같아요. 하나만 도와주시겠어요?"},
	["yes"] = {["1"] = "여기로 숨기전에 이상한 투구를 쓰고 돌아다니는 펭귄을 본적이 있어요. 그 투구를 하나 구해주시면 변장을 하고 이곳을 빠져나갈 수 있을것 같아요. #b#t4001317##k를 구해다 주세요."},
	["no"] = {["1"] = "저를 형에게로 보내주세요. 부탁이에요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#b#t4001317##k를 구해오셨나요?"},
	["yes"] = {["1"] = "좋아요. 이걸로 드디어 집에 갈수 있게 되었어요. 정말 고맙습니다."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4001317##k가 없으면 제가 성 밖으로 탈출할 수가 없어요. 밖은 너무 무서워요."},
	},
}
return nTable
end