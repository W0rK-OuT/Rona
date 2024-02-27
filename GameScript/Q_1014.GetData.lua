return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 12101,
	["quest"] = {{["id"] = 1013, ["state"] = 2}},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 12101,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 10,
	["nextQuest"] = 1015,
}
nTable["info"] = {
	["name"] = "레인의 메이플 퀴즈6",
	["parent"] = "레인의 메이플 퀴즈",
	["order"] = 6,
	["0"] = "#b#p12101##k의 여섯번째 문제를 풀어볼까?",
	["1"] = "드디어 여섯번째 문제이다. 나의 메이플 지식이 이렇게 활용 되다니 뿌듯하다.",
	["2"] = "자신이 배운 스킬을 알아보고 사용할 수 있는, #b스킬(k)창#k의 사용법을 배웠다.",
	["area"] = 20,
}
nTable["say0"] = {
	["base"] = {["1"] = "메이플 퀴즈를 잘 맞추시네요. 레벨업을 할 때마다 주어지는 스킬 포인트 (SP)는 잘 분배하고 있나요? 자신의 스킬을 잘 활용하여야 강해질 수 있어요. 6번째 퀴즈 시작할 준비가 되면 저에게 말을 걸어주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "모험가도 달팽이 세마리와 같은 스킬을 사용할 수 있습니다. 자신이 가지고 있는 스킬을 확인할 수 있는 스킬창을 여는 단축키는 무엇일까요?\r\n\n\n\r\n#b#L0#Z#l\n#L1#I#l\n#L2#K#l\n#k", ["2"] = "네, 그렇습니다. 레벨 1업을 할 때 마다 1포인트가 주어지게 되죠. 레벨업을 할 때 마다 모험의 기술을 배울 수 있는 #bSP(스킬 포인트)가 1 포인트#k씩 생깁니다. 레벨업을 할 때마다 #bK#k키를 누르면 캐릭터의 스킬을 확인하고 올릴 수 있는 창이 뜨니까, 원하는 스킬을 배워보세요."},
	["stop"] = {
		["0"] = {["answer"] = "3", ["1"] = "Z키를 누르면 바닥에 있는 아이템들을 수집할 수 있습니다. ", ["2"] = "단축키 I를 누르면 인벤토리를 열 수 있습니다."},
	},
	["ask"] = 1,
}
return nTable
end