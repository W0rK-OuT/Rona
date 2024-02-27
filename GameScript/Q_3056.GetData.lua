return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012019,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3055, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2012012,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 500,
}
nTable["info"] = {
	["name"] = "리사의 특수치료제",
	["0"] = "뿔피리를 사용한 뒤 봉달이의 말을 똑똑히 알아들을 수 있게 되었다. 봉달이는 이제 어떤 도움이 필요한 걸까?",
	["1"] = "요정의 뿔피리 덕에 봉달이의 말을 똑똑히 알아들을 수 있게 되었다. 마냥 주인을 기다리고 있던 봉달이는 주인을 찾아 마을 밖으로 나갔다가 사나운 몬스터들의 공격으로 상처를 입었는데, 그때 다친 상처가 아직도 아프다고 한다. 봉달이를 치료해 줄 사람이 필요한데… ",
	["2"] = "봉달이에게 필요한 치료제를 만들 수 있는 사람을 만났다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "내말이 들려? 내말이? 멍~ 계속 내 말을 못 알아듣는 것 같아서 귀찮았다. 멍~ 연구하기 좋아하는 우리 주인님이 중요한 연구가 있어 집을 떠났다. 아우~우~우~ 곧 돌아올테니 기다리라고 하셨는데.. 멍~ 오늘도 우리 주인님을 기다리고 있지만, 오시질 않네.. 끙~~\r\n#b#L0#여기서 이러지 말고 집으로 돌아가는게 좋겠다.#l\r\n#L1#왜? 어디가 아픈거야? 다쳤니?#l#k", ["2"] = "몬스터의 습격으로..상처를..입었었다..멍!"},
	["yes"] = {["1"] = "멍멍.. 사실은 주인님을 찾아가기 위해 마을밖에 나갔다가 사나운 몬스터들의 습격으로 상처를 입었었다. 멍~ ", ["2"] = "끙끙~ 더 가보지도 못하고 다시 이곳으로 돌아올 수 밖에 없었다. 주인님이 보고 싶은데… 아우~우~우~", ["3"] = "그때 다친 상처가 아직도 아프다. 누구에게 도움 좀 청해줘. 멍~ 사실 너무 아프다. 끄으응.."},
	["no"] = {["1"] = "멍~ 아우~우~우~"},
	["stop"] = {
		["0"] = {["answer"] = "2", ["1"] = "집으로 돌아간다고 해도..나의 주인이 없어.. 끄응..."},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "봉달이가 상처를 입었다구요? 봉달이는 웬만해선 아프다고 하지 않는데, 상처가 심한가보네…"},
	["yes"] = {["1"] = "봉달이를 살펴봐줘서 고마워요. 상처를 빨리 치료해 줘야할텐데.. 걱정이네요."},
	["stop"] = {
		["npc"] = {["1"] = "아직 나의 상처를 치료해 줄 이를 못 찾은거야?"},
	},
}
return nTable
end