return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012118,
	["lvmin"] = 10,
	["lvmax"] = 20,
	["quest"] = {{["id"] = 2403, ["state"] = 2}},
	["job"] = {300, 310, 320, 311, 321, 312, 322},
}
nTable["check1"] = {
	["npc"] = 1012118,
	["item"] = {{["id"] = 4032377, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1200,
	["item"] = {
		{["id"] = 4032377, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "잃어버린 표창장",
	["area"] = 10,
	["0"] = "왕연해가 표창장을 잃어버렸다고 한다. 수련장에가서 도움을 주자.",
	["1"] = "분명히 이 수련장 몬스터들이 가져갔을 것 같다고 한다.",
	["2"] = "소중한 표창장을 찾아, 왕연해에게 주었다.",
	["demandSummary"] = "#i4032377:# #t4032377:# #c4032377# / 1\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "앗!! 없다!! 없어!! 나의 표창장이 없어졌다! 어디갔지?\r\n#b#L0#저기...수련은 언제쯤?#l\n#k", ["2"] = "수련이라고? 지금 그게 중요한 게 아니야! 아...아니지. 좋았어! 초보 모험가! 첫 번재 수련이다! 이곳의 몬스터를 잡아서 나의 표창장을 찾아라!\r\n#b#L0#에엑??? 그게 첫번째 수련이라고요?#l\n#k", ["3"] = "그..그럼!! 왜 싫은가?"},
	["yes"] = {["1"] = "좋았어! 그럼 여기 몬스터들을 잡으며 표창장을 찾아보도록! 나는 이곳에서 계속 찾아보겠어!"},
	["no"] = {["1"] = "에잇!! 그럼 방해하지 말고 저리 비키라고!!"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "찾았나? 오~좋았어! 첫 번째 수련을 아주 잘 했군.\r\n#b#L0#이거 뭔가 급조된 수련같은데...#l\n#k", ["2"] = "무슨 소리! 자! 이 표창장을 보.....잠깐 표창장에 뭔가 묻은 것 같은데?"},
	["yes"] = {["1"] = "깨끗한 표창장을 보여줘야지!! 이 근처 몬스터들을 잡고 있게나. 나는 우선 얼룩을 닦아야겠어! 다 닦으면 수련을 시작하지!"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["item"] = {["1"] = "이봐. 찾았나? 첫 번째 수련부터 요령을 피우지 말란 말이다!!"},
	},
	["ask"] = 1,
}
return nTable
end