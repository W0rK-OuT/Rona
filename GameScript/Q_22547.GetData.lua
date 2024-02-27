return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013000,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 22546, ["state"] = 1}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1013000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 6900,
	["sp"] = 0,
}
nTable["info"] = {
	["name"] = "드래곤에 대한 지식2",
	["area"] = 7,
	["0"] = "#t4161050#를 얻었다. #b#p1013000##k는 그 내용이 무척 궁금한 것 같은데...",
	["1"] = "#p1013000#는 이번에는 자신의 동족에 대한 설명이 있을 거라며 무척 기대하는 것 같다. #b어서 책을 읽고 #p1013000#에게 책에서 읽은 것들을 설명#k해 주자.",
	["2"] = "#p1013000#는 오닉스 드래곤이라는 아주 특수한 드래곤에 속하는 것 같다. 계약을 통해 완성되는 드래곤이라는 설명을 보니 확실한 것 같다. 하지만 오닉스 드래곤은 이미 오래 전에 멸종하고 말았다던데...",
}
nTable["say0"] = {
	["base"] = {["1"] = "마스터, 마스터~ 드래곤에 대한 책의 뒷권은 구한 거지? 이번에는 우리 동족에 관한 설명이 있을까?\r\n#L0##b이번에는 분명히 있을 거야!#l\n#k", ["2"] = "그, 그렇겠지? 으으... 무지 두근두근하면서도 왠지 무서워. 나는 다른 동족은 한 번도 본 적이 없으니까 말이야. 다른 동족에 관한 소식... 있을까?\r\n#L0##b네 동족이 사는 곳을 알게 되면, 한 번 찾아가 볼까?#l\n#k", ["3"] = "에? 에?\r\n#L0##b음... 어딘지 모르지만 한 번 찾아가서 인사 정도는 드려야지. 내 파트너를 낳아준 분들이니까. 음음. 그렇고 말고#l\n#k", ["4"] = "정말? 정말 찾아가는 거야? 약속이다, 마스터? 꼭 같이 가줘야 해?\r\n#L0##b응. 약속.#l\n#k", ["5"] = "약속 한 거야! 이야앗~ 역시 우리 마스터! 말 안 해도 내가 원하는 걸 다 알고 있다니까! 그럼 얼른 책을 펴봐! 나의 동족을 찾아봐줘!"},
	["no"] = {["1"] = "엑? 나를 놀리는 거야, 마스터? 무지무지 궁금하니까 놀리지 말고 얼른 책을 읽어봐줘"},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
		["2"] = {["answer"] = "1", ["flip"] = "1"},
		["3"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "찾았어? 우리 동족에 관한 설명이 그 책에 있었어? 응? 응? 가르쳐줘, 마스터! 나는 어떤 드래곤이야?\r\n#L0##b서펜트 드래곤#l\n#L1#오닉스 드래곤#l\n#L2#돌연변이 드래곤#l\n#k", ["2"] = "오닉스 드래곤? 우웃... 왠지 엄청 대단한 느낌이 드는 이름이네. 후후후, 하긴. 내가 속한 종족이니까. 오닉스 드래곤족의 특징은 뭐래?\r\n#L0##b계약을 통한 영혼의 완성#l\n#L1#넘치는 체력과 뛰어난 두뇌#l\n#L2#실은 머리가 세 개#l\n#k", ["3"] = "아하~ 과연. 그래서 내가 마스터를 만나 깨어날 수 있었던 거구나? 계약에 대해 좀 더 자세히 말해줘.\r\n#L0##b드래곤이 인간을 착취하는 노예계약#l\n#L1#그것은 사실 드래곤과 인간의 종족을 뛰어넘는 결혼!#l\n#L2#영혼의 파장이 맞는 인간과 드래곤이 영혼을 연결하는 것.#l\n#k", ["4"] = "그럼, 제일 중요한 것! 지금 오닉스 드래곤족은 어디에 서식하고 있대? 어느 대륙으로 가면 오닉스 드래곤족과 만날 수 있는 거래?\r\n#L0##b그건...#l\n#k", ["5"] = "그건...? 왜? 그건 책에 안 쓰여 있었어?\r\n#L0##b쓰여 있었지만...#l\n#k", ["6"] = "응? 혹시 쓰여 있긴 했는데 모르는 데였어? 말이라도 해봐, 마스터.\r\n#L0##b...오닉스 드래곤은 이미 멸종했다고...#l\n#k", ["7"] = "...엥? 멸종이라니... 나는 이렇게 살아있는걸? 믿을 수 없어. 어떻게 된 거지? 내 동족들은 정말 멸종한 거야? 그럼 난 뭐야? 하나도 모르겠어..."},
	["yes"] = {["1"] = "에에잇! 확실한 건 아무것도 없어. 오닉스 드래곤이 멸종했다는 건 그냥 책에 쓰여 있는 것 뿐이잖아! 계속해서 드래곤에 대해 알아보자, 마스터! 꼭 동족을 찾아내고 말겠어!"},
	["stop"] = {
		["0"] = {["answer"] = "2", ["1"] = "서펜트 드래곤? 음... 왠지 엄청 낯선 느낌인데. 정말 맞는 거야, 마스터? 다시 한 번 확인해봐.", ["3"] = "도, 돌연변이...! 그런가! 나는 돌연변이였던 건가! 이것이야말로 출생의 비밀!"},
		["1"] = {["answer"] = "1", ["2"] = "과, 과연... 내 영리함과 강인함은 내가 오닉스 드래곤이기 때문인 거였군! ...응?", ["3"] = "머, 머리가 세 개? 난 하나뿐인데... 혹시 더 크면 머리가 더 나는 거야? ...왠지 싫다..."},
		["2"] = {["answer"] = "3", ["1"] = "헉... 그, 그런 건가? 하지만 하지만 난 마스터를 노예라고 생각하지 않는데... 우앙, 마스터~ 날 버리지 마!", ["2"] = "결혼! 마스터! 우리는 사랑하는 사이였나봐! 앞으로는 여보라고 부를까?"},
		["3"] = {["answer"] = "1", ["flip"] = "1"},
		["4"] = {["answer"] = "1", ["flip"] = "1"},
		["5"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
return nTable
end