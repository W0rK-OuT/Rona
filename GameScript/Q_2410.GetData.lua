return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022104,
	["lvmin"] = 12,
	["lvmax"] = 20,
	["quest"] = {{["id"] = 2405, ["state"] = 2}},
	["job"] = {100, 110, 120, 130, 111, 121, 131, 112, 122, 132},
}
nTable["check1"] = {
	["npc"] = 1022104,
	["item"] = {{["id"] = 4000003, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
	["item"] = {
		{["id"] = 4000003, ["count"] = -10}
	},
	["skill"] = {
		{["id"] = 9001, ["skillLevel"] = 1, ["masterLevel"] = 1, ["job"] = {100, 110, 120, 130, 111, 121, 131, 112, 122, 132}}
	},
}
nTable["info"] = {
	["name"] = "자존심 회복",
	["area"] = 10,
	["0"] = "왕연해에게 소중한 표창장을 전달해 주었는데 표창장에 이상한 얼룩이 묻어 있었다고 했다.",
	["1"] = "감히 나의 물건에 손을 댄 몬스터들을 용서할 수 없다며 나에게 복수를 부탁한다.\r\n\r\n\r\n#i4000003:# #t4000003:# #c4000003# / 10\r\n",
	["2"] = "부탁을 들어줬더니 이제야 속이 시원하다고 한다.",
	["demandSummary"] = "\r\n",
	["rewardSummary"] = "경험치 1,000\r\n#Wbasic#\r\n#i2280018:# #t2280018:# 1 개\r\n'스킬을 사용하기' 퀘스트로 진행 가능\r\n'스텀프의 약점' 퀘스트로 진행 가능\r\n'슬라임의 약점' 퀘스트로 진행 가능\r\n'슬라임의 약점' 퀘스트로 진행 가능\r\n'스텀프의 약점' 퀘스트로 진행 가능\r\n'돼지의 약점' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "아앗!! 표창장에 묻은 이 얼룩이 지워지지가 않아!!\r\n#b#L0#이봐..이제 수련을 도와줘!#l\n#k", ["2"] = "에잇!! 복수다!! 아니 두 번째 수련이다. 이봐! 모험가! 저기 저 나쁜 놈들을 잡아와!!\r\n#b#L0#개인적 복수에 날 끌어들이지 말란 말이야!!#l\n#k", ["3"] = "응? 왜 싫은가?"},
	["yes"] = {["1"] = "좋았어! 저기 저 스텀프들을 쓰러트리면 나뭇가지가 나올 거야! 그것을 10개만 가져다줘!"},
	["no"] = {["1"] = "싫다면 어쩔 수 없지~ 수련이고 뭐고~ 그만하자고!"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "좋았어! 이 녀석들 이제 남의 물건은 함부로 손을 대지 말아야 한다는 것을 알았겠지? 후훗!!\r\n#b#L0#자! 이제 강해질 수 있는 수련을 시켜줘!#l\n#k", ["2"] = "응? 수련이라고? 잠시만...좋아. 나의 비기인 몬스터의 약점 스킬을 전수해 주지. 이것을 받게. 어디보자.."},
	["yes"] = {["1"] = "어랏? 언제 이렇게 강해진 거야? 그렇다면 기초 수련은 필요 없겠군!! 바로 중급 수련에 들어가겠네."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["item"] = {["1"] = "나뭇가지 10개가 안된 것 같은데?"},
	},
	["ask"] = 1,
}
return nTable
end