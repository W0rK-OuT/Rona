return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1057001,
	["subJobFlags"] = 2,
	["lvmin"] = 16,
	["quest"] = {{["id"] = 2384, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1057001,
	["item"] = {{["id"] = 4000006, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3800,
	["item"] = {
		{["id"] = 4000006, ["count"] = -20}
	},
}
nTable["info"] = {
	["name"] = "몸보신엔 옥토퍼스",
	["area"] = 10,
	["type"] = "[필수]",
	["0"] = "아직도 설희 아가씨에게 문제가 있는듯 하다. #b홍아#k를 찾아가보자.",
	["1"] = "설희 아가씨의 쇠한 기력을 되살리기 위한 특별보약을 달일 재료를 모아가자. #b커닝시티의 왼쪽끝 포탈 이용해 공사장#k으로 나가 옥토퍼스의 다리를 모아가자.",
	["demandSummary"] = "#i4000006:# #t4000006:# #c4000006# / 20\r\n",
	["rewardSummary"] = "경험치 3,800\r\n'보약 달이기' 퀘스트로 진행 가능\r\n",
	["2"] = "어서 설희아가씨가 나아야 할텐데...혹 더 도울일이 없는지 홍아를 찾아가 볼까?",
}
nTable["say0"] = {
	["base"] = {["1"] = "#h0#! 벌써 소문을 들은거야? 그래, 돼지들을 없앴는데도 설희 아가씨가 계속 잠을 못이루고 계셔. 아무래도 기력이 너무 쇠해서 그런거 같은데, 아가씨를 위한 보약을 준비해 주는 게 어떻겠어?"},
	["yes"] = {["1"] = "예로부터 커닝시티 마을 주민들 사이에서 약효가 뛰어나기로 소문난 것이 있지. 그건 바로 옥토퍼스 다리를 달인물이지. 신선한 옥토퍼스 다리를 사흘밤낮 달인 물은 죽은 사람도 벌떡 일어나게 한다는 전설이 있지.", ["2"] = "아가씨께 약을 달여 드릴 수 있도록 #b옥토퍼스의 다리 20개#k를 모아와줘. 저 왼쪽... 서쪽 공사장에 가면 옥토퍼스들을 볼 수 있을거야."},
	["no"] = {["1"] = "아가씨가 편찮으시면 모든게 소용없게 된다고."},
}
nTable["say1"] = {
	["base"] = {["1"] = "벌써 옥토퍼스의 다리를 모아온 거야? 신선한 재료로 정성들여 만드는 게 매우 중요해. 어서 내게 주도록 해."},
	["yes"] = {["1"] = "오. 이렇게 신선한 옥토퍼스 다리는 처음 보는군. 이제 사흘 밤낮 정성들여 약을 달이는 일만 남았군."},
	["stop"] = {
		["item"] = {["1"] = "저기 왼쪽으로 가면 공사장에 #r옥토퍼스#k들이 많이 있을거야. #b옥토퍼스의 다리 20개#k를 모아오도록 해."},
	},
}
return nTable
end