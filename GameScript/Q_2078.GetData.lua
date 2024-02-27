return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002101,
	["quest"] = {{["id"] = 2079}, {["id"] = 2080}, {["id"] = 2081, ["state"] = 2}, {["id"] = 2212}, {["id"] = 2077}},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 1012100,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 300,
}
nTable["info"] = {
	["name"] = "궁수로의 길",
	["0"] = "활을 쏘는 궁수가 되기 위해서는 어떻게 해야하지? 리스항구의 #p1002101#을 만나보자.",
	["1"] = "#b궁수#k라는 직업을 선택하기 위해서는...#b레벨 10#k 이 되어 #r헤네시스#k의 #r#p1012100##k님을 만나면 된다고 했다. #r헤네시스#k로 가보자. 헤네시스로 가는 길을 확인하기 위해서는 월드맵(#rW#k)을 열어 확인하는 것이 좋을 것 같다",
	["2"] = "헤네시스의 #p1012100#님을 만나 궁수에 대한 가르침을 얻었다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "명사수 #b#p1012100##k님의 명성을 들어 본 적이 있어? 활을 쏘는 궁수라는 직업은 먼거리에서도 높은 명중률로 몬스터를 사냥할 수 있지. 어때? #b궁수로의 길#k을 가보겠나?"},
	["yes"] = {["1"] = "좋아. #b#p1012100##k님을 만나기 위해서는 #r헤네시스#k라는 마을로 가면 돼. 길을 모르겠다면 #rW#k키를 누르면 #b월드맵#k을 확인할 수 있을 거야. "},
	["no"] = {["1"] = "아마 #b헤네시스#k의 #b헬레나#k님을 만나면 생각이 달라질 거야. 아니면 다른 궁수들을 보라구~ 언제든 직업에 대한 도움이 필요하다면 나를 찾아와."},
}
nTable["say1"] = {
	["base"] = {["1"] = "궁수가 되고 싶어서 나를 찾아 온 건가요?"},
	["yes"] = {["1"] = "궁수가 될 준비가 되었다면 다시 나에게 말을 걸어주어요. 궁수가 되기 위한 조건은..  현재의 #b레벨이 10 이상#k이어야 해요. S 를 눌러 캐릭터 정보를 알 수 있을 거에요."},
	["stop"] = {
		["npc"] = {["1"] = "#r헤네시스#k의 #b#p1012100##k님을 만나보랬던 거 같은데? 아직이야?"},
	},
}
return nTable
end