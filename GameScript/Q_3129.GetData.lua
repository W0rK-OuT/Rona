return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020010,
	["lvmin"] = 75,
	["quest"] = {{["id"] = 3124, ["state"] = 2}},
	["job"] = {0, 111, 121, 131, 112, 122, 132, 211, 221, 231, 212, 222, 232, 311, 321, 312, 322, 411, 421, 412, 422, 432, 433, 434, 511, 521, 512, 522, 1000, 1111, 1112, 1211, 1212, 1311, 1312, 1411, 1412, 1511, 1512, 2000, 2111, 2112, 2214, 2215, 2216, 2217, 2218, 3000, 3211, 3212, 3311, 3312, 3511, 3512, 2001},
}
nTable["check1"] = {
	["npc"] = 2020010,
	["item"] = {{["id"] = 4000581, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 98000,
	["item"] = {
		{["id"] = 4000581, ["count"] = -10}
	},
}
nTable["info"] = {
	["name"] = "집중력 향상의 비밀",
	["area"] = 33,
	["1"] = "정예 핀 호브 들이 사용하는 #b#t4000581:# 10개#k를 #b레네#k에게 가져다 주자.",
	["2"] = "정예 핀 호브 들이 사용하는 #b#t4000581:# 10개#k를 #b레네#k에게 가져다 주었다.",
	["0"] = "#b● 분류 : 호브제왕 렉스의 부활 - 호위, 파티 퀘스트#k\r● 종류 : 선택 퀘스트\r\n● 내용 : 호브 제왕 렉스의 부활 저지를 떠나는 나에게 #b레네#k가 부탁할 것이 있다고 한다.",
	["demandSummary"] = "#i4000581:# #t4000581:# #c4000581# / 10\r\n",
	["rewardSummary"] = "경험치 98,000\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "저에게 무슨 용무지요? 얼음협곡의 전투에 대해 듣고 싶으신가요? 물론 그 전투에는 저도 참가했었습니다. 아주 힘든 전투였지만 그때의 경험이 지금의 우리 3차 전직관들을 한 단계 더 성장시켜 준 것은 분명한 사실이에요. 호브족…. 아! 어려운 발걸음을 앞둔 용사에게 실례가 되지 않는다면 한 가지 부탁을 드리고 싶군요."},
	["yes"] = {["1"] = "당신이 얼음협곡에서 만나게 될 #b정예 핀호브#k들이 착용하는 부적에는 어떠한 신비한 힘이 깃들어 있는 것 같습니다. 일반 핀호브들에 비해 놀라운 전투력을 발휘 하는 비밀이 거기에 숨겨져 있는 것 같아요. 그들은 놀라운 집중력을 가지고 있죠. ", ["2"] = "저는 느낄 수 있었어요. 육체적인 강인함 보다 정신적인 강함이야 말로 진정한 강함의 극치라 할 수 있죠. 정예 핀호브들이 사용하는 #b#t4000581:##k을 좀 구해다 주세요. 그 부적에 쓰인 마법이나 어떠한 힘이 착용자의 집중력을 강화해 주는 효과가 있는 것 같습니다. 그럼 부탁 드릴게요."},
	["no"] = {["1"] = "저를 도와주지 않아도 괜찮습니다만, 생각이 바뀌면 언제든 다시 와 주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "무사히 복귀 하셨군요. 혹시 제가 부탁한 것은 잊지 않으셨나요?"},
	["yes"] = {["1"] = "기억하고 계셨군요. 정말 감사합니다. 궁수의 힘의 근원은 집중력. 이 부적은 충분히 연구가치가 있어 보입니다."},
	["stop"] = {
		["item"] = {["1"] = "정예 핀 호브 들이 사용하는 #b#t4000581:# 10개#k를 부탁 드렸었지요. 아직 부족하신 것 같군요."},
	},
}
return nTable
end