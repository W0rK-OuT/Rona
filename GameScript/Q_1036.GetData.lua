return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2003,
	["lvmax"] = 10,
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 2003,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 40,
}
nTable["info"] = {
	["name"] = "만물박사 로빈",
	["0"] = "위험한 숲속에 있는 #b로빈#k은 메이플 월드에서 필요한 것, 특히 전직과 스킬에 대해 많이 알고 있다고 한다. 로빈에게 말을 걸어 보자.",
	["1"] = "로빈은 전직, SP에 대한 것을 알려줄 테니 잘 읽어 보고 그가 내는 문제를 맞춰보라고 했다. 일단 SP에 대한 지식을 습득한 후 만물박사 로빈 퀘스트를 계속 수행하자.",
	["2"] = "로빈의 문제를 모두 통과했다.",
	["area"] = 20,
}
nTable["say0"] = {
	["base"] = {["1"] = "흠... 새로운 모험가님이시군! 레벨 2가 되었다면 아마도 #bSP#k가 생겼을 텐데, #bSP 분배#k는 잘 했어? 혹시 SP가 뭔지 생소하다면, 나에게 맡겨 줘. 스탯과 전직, SP를 완벽하게 익힐 수 있도록 #b퀴즈#k를 내줄게. "},
	["yes"] = {["1"] = "그럼 나를 다시 클릭해서 모르는 부분을 물어줘. 한 개씩 상세하게 설명해 줄테니까. 모두 알겠다 싶을 때 #b만물박사 로빈#k 퀘스트를 클릭해서 퀴즈를 시작하면 돼."},
	["no"] = {["1"] = "흠... 모두 잘 알고 있는 모양이지? 그래도 한 번쯤 지식을 점검해 보는 것도 나쁘지 않을 거야."},
}
nTable["say1"] = {
	["base"] = {["1"] = "문제를 풀 준비가 되신 모양이군. 그럼 시작할게. 첫번째 문제! 레벨업을 할 때마다 얻을 수 있는 #b스킬 포인트, SP#k를 소모하여 #b달팽이 세마리#k와 같은 스킬을 배우는 것이 가능할까? \r\n#b#L0# 가능하다. #l\n#L1# 불가능하다. #l\n#k", ["2"] = "정답이야! 그럼 두번째 문제! 처음 시작할 때는 초보자이지만 일정한 레벨이 되면 너도 전직을 할 수 있어. #b보통은 레벨이 10이 되어야만 전직이 가능#k하지만 #b이 직업만은 레벨 8에도 전직할 수 있다#k고해, 이 직업은 무엇일까? \r\n#b#L0# 전사 #l\n#L1# 마법사 #l\n#L2# 궁수 #l\n#L3# 도적#l\n#k", ["3"] = "정답이야! 마법사만은 레벨 8에서도 전직이 가능하지. 그럼 세번째 문제! #b다음 중 직업과 전직 장소가 잘못된 것#k은 무엇일까? \r\n#b#L0# 전사  -  페리온 #l\r\n#L1# 마법사  -  엘리니아 #l \r\n#b#L2# 궁수  -  헤네시스 \r\n#b#L3# 도적  -  노틸러스", ["4"] = "정답이야! #b도적은 커닝시티에서 전직이 가능#k하다구! #b노틸러스호에서는 해적으로 전직#k할 수 있지! 짝짝짝! 세 문제 모두 훌륭히 통과했어. 축하해!  SP와 스탯, 전직에 대한 지식이 풍부한데? 이 정도면 원하는 직업을 선택하는데 어려움이 없을 것 같아."},
	["yes"] = {["1"] = "어떤 직업을 선택할지는 초보자 시절, 아니 그 이전부터 미리 생각해 놓는 것이 좋아.  어떤 직업으로 전직할지 곰곰히 생각해봐."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["2"] = "다시 잘 생각해봐."},
		["1"] = {["answer"] = "2", ["1"] = "틀렸어. 대부분의 직업은 레벨 10에서 전직이 가능해. 마법사만이 레벨 8에서 전직한다구. 마법사가 되기 위해 INT를 올린 사람은 초보자 때 레벨업이 어렵기 때문이지. 다시 처음부터 도전해 줘.", ["3"] = "틀렸어. 대부분의 직업은 레벨 10에서 전직이 가능해. 마법사만이 레벨 8에서 전직한다구. 마법사가 되기 위해 INT를 올린 사람은 초보자 때 레벨업이 어렵기 때문이지. 다시 처음부터 도전해 줘.", ["4"] = "틀렸어. 대부분의 직업은 레벨 10에서 전직이 가능해. 마법사만이 레벨 8에서 전직한다구. 마법사가 되기 위해 INT를 올린 사람은 초보자 때 레벨업이 어렵기 때문이지. 다시 처음부터 도전해 줘."},
		["2"] = {["answer"] = "4", ["1"] = "땡! 틀렸어. 전사는 페리온, 마법사는 엘리니아, 궁수는 헤네시스가 맞지만 도적은 커닝시티가 정답이야. 처음부터 다시 도전해 줘.", ["2"] = "땡! 틀렸어. 전사는 페리온, 마법사는 엘리니아, 궁수는 헤네시스가 맞지만 도적은 커닝시티가 정답이야. 처음부터 다시 도전해 줘.", ["3"] = "땡! 틀렸어. 전사는 페리온, 마법사는 엘리니아, 궁수는 헤네시스가 맞지만 도적은 커닝시티가 정답이야. 처음부터 다시 도전해 줘."},
	},
	["ask"] = 1,
}
return nTable
end