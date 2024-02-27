return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022000,
	["lvmin"] = 10,
	["lvmax"] = 15,
	["normalAutoStart"] = 1,
	["job"] = {100, 110, 120, 130, 111, 121, 131, 112, 122, 132},
}
nTable["check1"] = {
	["npc"] = 1022000,
	["mob"] = {
		[1] = {["id"] = 130100, ["count"] = 20}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 590,
	["item"] = {
		{["id"] = 2000000, ["count"] = 30},
		{["id"] = 2000003, ["count"] = 30}
	},
}
nTable["info"] = {
	["name"] = "초보 전사의 첫번째 수련",
	["0"] = "전사로 전직한 당신. 하지만 아직 무엇을 해야할지 도무지 모르겠는데... 전사 전직 교관 #b#p1022000##k의 도움을 받아보자. ",
	["1"] = "#p1022000#는 기초적인 수련을 위해 간단한 몬스터 사냥을 해보자며, #r#o0130100# 20마리#k를 쓰러뜨리고 오라고 말했다. #o0130100#는 #m102000000# 마을 주변에 많이 있으니 찾기 쉬울 거라는데... \n\n#o0130100# #r#a21281##k",
	["2"] = "#o0130100# 20마리를 쓰러뜨리고 #p1022000#에게 보고했다. 흠... 이 정도야 간단하지?",
	["area"] = 10,
	["autoStart"] = 1,
	["autoComplete"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "어린 전사 형제여. 전사가 되었다고 자네의 강함이 완성된 것은 아니라네. 아직 자네는 스스로의 힘으로 전투에 임하기에 부족하군... 자네에겐 이 #p1022000#의 수련이 필요할 것 같은데... 어떤가? 수련을 해보겠나?\r\n#L0# #b수련을 하겠습니다.#l  \n\n#L1# 스스로의 힘으로 할 수 있습니다. #I", ["2"] = "스스로의 한계를 인정하고 더 좋은 길을 찾는 것 역시 전사가 갖춰야 할 바람직한 자세. 좋네. 자네에게 수련을 시켜주겠네."},
	["yes"] = {["1"] = "강력한 몬스터와 대적하기엔 미숙한 자네는 #o0130100#를 사냥함으로써 기본적인 전사의 사냥법을 익히는 게 좋을 것 같군. #r#o0130100# 20마리#k를 사냥하고 다시 와서 보고하게. #o0130100#들은 #m102000000# 주변에 많이 서식하니 그리 어렵지 않을 걸세."},
	["no"] = {["1"] = "수련할 준비가 되지 않은 모양이군..."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["2"] = "혼자 수련을 할 수 있다면 그것도 좋겠지. 하지만 그것이 자네의 자만일수도 있음을 잊지 말게. 자신의 수준을 잘 살펴야 한다네."},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "#o0130100# 20마리를 퇴치하고 돌아왔군. 훌륭하네. 하지만 이 정도로 만족하는 건 아니겠지? 자네는 이제 겨우 전사로서의 첫발을 내딛었을 뿐이네."},
	["yes"] = {["1"] = "자네에게 더 많은 수련이 필요하다 생각되는 순간, 다시 자네를 부르겠네. 그때까지 계속 정진하게."},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o0130100# 20마리#k를 퇴치하지 못했군. 강해지고 싶다면 더 노력하게."},
	},
}
return nTable
end