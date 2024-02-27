return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1040001,
	["lvmin"] = 21,
	["quest"] = {{["id"] = 22526, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1040001,
	["mob"] = {
		[1] = {["id"] = 2110200, ["count"] = 100}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2900,
	["item"] = {
		{["id"] = 1142153, ["count"] = 1}
	},
	["sp"] = 0,
}
nTable["info"] = {
	["name"] = "경비병의 첫 번째 일 : 던전 주변 정리",
	["area"] = 7,
	["0"] = "#p1013000#의 허락도 받았겠다 #m102000000# 경비병이 되기로 결심했다. #b#p1040001##k에게 그렇게 전해 주자.",
	["1"] = "#p1040001#는 그럼 널 페리온 경비병으로 임명하겠다며, 첫 번째 일을 주었다. 던전 입구 주변에 있는 #r#o2110200##k들을 퇴치해 입구를 정리하는 일이다. 좋아, 간단히 해내자.\r\n\r\n#o2110200##r #a225271##k",
	["2"] = "던전 입구의 #o2110200#들을 깔끔히 해치우자 #p1040001#는 매우 흡족해하는 것 같다. ",
}
nTable["say0"] = {
	["base"] = {["1"] = "어때? 마음의 결정은 내렸어? #m102000000# 경비병이 되는 거야? 오오! 좋아! 그럼 널 #m102000000# 경비병으로 임명할게! 나이가 어려서 완전한 경비병은 아니지만. 하하하. 하지만 정식하고 똑같이 대우할 거니까 걱정은 마.", ["2"] = "그럼 경비병의 첫 번째 일! 그건 간단해. #m106000300# 주변에 몰려 있는 #o2110200#들을 퇴치해서 던전입구 주변을 깨끗이 해줘. 음... 혹시 이게 너한테 어려운 일은 아니겠지? 어려운 일이라면 거절해도 좋아."},
	["yes"] = {["1"] = "오옷, 호쾌하게 수락이냐! 좋아! 그럼 당장 #r#o2110200# 100마리#k 퇴치다! "},
	["no"] = {["1"] = "뭐 어렵다면 어쩔 수 없지. 좀 더 쉬운 일은 없을까... 흠. 하지만 경비대의 일은 이 정도가 기본인데 어떻게 하면 좋을까."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오우, #o2110200# 100마리를 벌써 퇴치한 거야? 대단한걸. 역시 내 눈이 틀리지 않았지. 너라면 잘 해낼 거라고 생각했어. 아참, 아까 전에 잊고 안 준 게 있었지?"},
	["yes"] = {["1"] = "자, #m102000000# 명예 경비병의 훈장이야. 대단한 건 아니지만 그럭저럭 쓸 만은 할 거야. 앞으로 더 멋진 모습 보여줘. 새로 시킬 일이 있으면 널 부를게."},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o2110200# 100마리#k는 퇴치하지 못한 거야? 흠... #p1040000#가 말하던 것보다 좀 약한 느낌? 익숙한 곳이 아니라서 그런가?"},
	},
}
return nTable
end