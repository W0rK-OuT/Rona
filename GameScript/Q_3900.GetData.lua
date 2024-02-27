return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101005,
	["lvmin"] = 10,
}
nTable["check1"] = {
	["npc"] = 2101005,
	["infoex"] = {"5"},
}
nTable["act0"] = {
	["info"] = "4",
}
nTable["act1"] = {
	["exp"] = 300,
}
nTable["info"] = {
	["name"] = "아리안트의 문화배우기",
	["0"] = "사막 위에 세워진 마을, #m260000000#. 다른 마을하고는 분위기가 다른걸? #m260000000# 사람들은 무뚝뚝한 걸까? 왠지 말을 걸기 어려운데... 문화학자 #b#p2101005##k이 #m260000000#에서 연구를 하고 있다고 하니 그에게 도움을 청해 보자.",
	["1"] = "#p2101005#은 #m260000000# 사람들은 경계심이 많다고 설명하며, 마을의 물을 마시면 이곳의 사람으로 인정해줄 것이라고 했다. 그럼 #b궁전 쪽에 오아시스#k가 있을 테니 그 쪽으로 가볼까?",
	["2"] = "물을 마시고 다시 #p2101005#에게 오자, 그는 그 정도면 #m260000000# 사람들에게 인정받을 수 있다며 현재 #m260000000# 상황에 대해 말해 주었다. 조금은 복잡한 #m260000000#... 조심해야겠는걸?",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "앗, 너는 #m260000000# 사람이 아니구나. 외부 사람을 보는 건 오랜만이야, 반가워! 응? 어떻게 알았냐고? 당연하잖아~ 척 보기에 옷차림도 얼굴도 사막의 사람이 아닌걸? 낯선 사막을 여행하려니 힘들지? #m260000000#의 사람들은 말 한마디 안 하고...\r\n#L0##b#m260000000# 사람들은 원래 무뚝뚝한가요?#l", ["2"] = "아냐아냐~ 무뚝뚝하다기 보다 경계심이 강한 거야. 사막이라는 게 원래 낯선 사람에게 관대하지 못하잖아. 사막을 닮은 사람들답게 쉽게 마음을 보이지 않는 거지. 네가 이곳의 문화에 적응하려면 시간이 좀 걸릴 거야. \r\n#L0##b어떻게 하면 이곳 사람들과 대화할 수 있을까요?#l", ["3"] = "이곳 사람들과 대화하는 법은 어렵지 않아. 너도 이 #m260000000#의 사람이 되기만 하면 되니까. 이곳의 사람으로 인정받는 방법을 알려줄 테니, 한 번 해보겠어?"},
	["yes"] = {["1"] = "#m260000000# 사람으로 인정받는 방법은 간단해. 저 쪽, 마을 중앙 쪽으로 가면 #m260000300# 주변에 커다란 오아시스가 있거든. 그 물을 마시면 돼."},
	["no"] = {["1"] = "흠. 새로운 문화를 배우기에 넌 겁이 너무 많은 것 같아. 새로운 문화가 두렵더라도, 편히 동화되려고 노력해봐."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "야아~ 물을 마시고 왔구나? 뜨거운 사막의 열기를 단번에 식혀주는 오아시스의 물은 #m260000000# 사람들에게 무척 중요한 거야. 오아시스의 물을 마신다는 건, 이곳 사람이 되겠다고 말하는 것과 마찬가지지."},
	["yes"] = {["1"] = "이제 너도 오아시스의 물을 마셨으니, 사람들에게 말을 걸어도 괜찮을 거야. 하지만 조심해. 요즘 #m260000000#는 분위기가 심상치 않아. #b무기력한 술탄과 욕심 많은 왕비#k 때문에 민심이 흉흉하거든. 외부인에 대한 눈도 곱지 않으니 주의하길 바래. "},
	["stop"] = {
		["item"] = {["1"] = "아직 오아시스에 가지 않은 것 같은데? 아닌가? 잘 모르겠으니 가서 확실히 물을 마시고 와. "},
	},
}
return nTable
end