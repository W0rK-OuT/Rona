return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2082007,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3726, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2082008,
	["item"] = {{["id"] = 4032514, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 60000,
	["item"] = {
		{["id"] = 4032514, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "대피소 열쇠",
	["area"] = 41,
	["parent"] = "2099년의 항만",
	["order"] = 4,
	["1"] = "2099년 항만에서 만난 경관은 아직 대피하지 못한 애드먼드 선장이 항만 어딘가에 아직 남아있다면서 몬스터가 가져 간 대피소 열쇠를 찾아서 애드먼드 선장에게 전해달라고 했다.",
	["2"] = "2099년 항만에서 만난 경관은 아직 대피하지 못한 애드먼드 선장이 항만 어딘가에 아직 남아있다면서 몬스터가 가져 간 대피소 열쇠를 찾아서 애드먼드 선장에게 전해달라는 부탁을 했다. 몬스터가 가지고 있던 열쇠를 찾아서 부둣가에 있는 애드먼드 선장에게 전해주었다.",
	["demandSummary"] = "#i4032514:# #t4032514:# #c4032514# / 1\r\n",
	["rewardSummary"] = "경험치 60,000\r\n'임시방편' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "마지막으로 한 가지 더 부탁 드려도 괜찮을까요? 항만에 있는 모든 사람들이 대피했지만, 딱 한 사람이 남아있습니다. 애드먼드 선장님이라고 워낙 고집이 세셔서 아직도 항만 어딘가에 남아 계신 것 같습니다. 그 분께 대피소 열쇠를 전해드려야 해요. 도와주시겠어요?"},
	["yes"] = {["1"] = "그런데 한 가지 문제가 있어요. 애드먼드 선장님께 전해드릴 대피소 열쇠를 몬스터 사이를 헤쳐 나오다가 떨어트리고 말았답니다. 아마도 몬스터 중 한 마리가 가지고 있는 것 같은데, 몬스터를 조사해서 대피소 열쇠를 되찾고 그것을 애드먼드 선장님께 전해드려 주세요."},
	["no"] = {["1"] = "혼자 남아 계신 선장님이 정말 걱정이 되네요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "무슨 일인가? 제군?\r\n#b#L0#대피소 열쇠를 전해드리기 위해서 왔습니다. 여기는 위험해요.#l\n#k", ["2"] = "무슨 소리! 난 괜찮아. 하지만 이건 받아 두도록 하지!"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["npc"] = {["1"] = "몬스터를 조사해서 대피소 열쇠를 되찾고 그것을 애드먼드 선장님께 전해드려 주세요. 항만 어딘가에 계실거에요."},
		["item"] = {["1"] = "몬스터를 조사해서 대피소 열쇠를 되찾고 그것을 애드먼드 선장님께 전해드려 주세요. 항만 어딘가에 계실거에요."},
	},
	["ask"] = 1,
}
return nTable
end