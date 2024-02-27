return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020005,
	["lvmin"] = 75,
	["quest"] = {{["id"] = 3345, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2020005,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 7500,
	["item"] = {
		{["id"] = 4161034, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "잔인한 진실",
	["parent"] = "드랭의 노트",
	["order"] = 8,
	["1"] = "연금술의 마을 #m261000000#. 하지만 그 이면에는 어두운 진실이 감춰져 있었다. 오래 전 오시리아 대륙을 지배하던 검은 마법사의 연구실이 있던 곳에 세워진 #m261000000#는, 검은 마법사의 연구를 기초로 발전하였다. 이 사실은 #m261000000#의 명예에 치명적인 영향을 주는 것이라는데...",
	["2"] = "실종된 연금술사 #p2111002#... 그의 비극의 시작은 모두 #m261000000#라는 마을 자체였을지도 모른다. 이 이야기의 끝은...",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "지금부터 할 이야기가 자네에겐 그저 변명으로 들릴지도 모르네. 모든 진실을 알고 있으면서 밝히지 못한, 용기 없는 자의 변명... 하지만 그렇다 해도 이야기를 들어주겠나?"},
	["yes"] = {["1"] = "#m261000000#는 수백년 전, 오시리아 대륙을 어둠으로 뒤덮었던 검은 마법사의 연구실 위에 세워진 마을이라네. 지리적으로 세워졌다는 뜻이 아니야. #m261000000#의 모든 연금술 연구는... 검은 마법사의 연구를 기반으로 하고 있네.", ["2"] = "물론 검은 마법사와 같이 사악한 마법을 연구한다는 뜻은 아니야. 그저 순수하게 학문적 의미로서 연금술 연구에 이용했다는 것 뿐... 그나마도 시간이 흐르면서 이제는 검은 마법사의 흔적은 거의 사라졌지. ", ["3"] = "하지만 그렇다 해도, #m261000000#의 기반을 이룬 것이 검은 마법사라는 사실은 사라지지 않아. 자네는 오시리아 대륙을 여행한지 얼마 되지 않아 잘 모르겠지만... 아직도 오시리아 대륙에는 검은 마법사를 견제하는 세력들이 많다네.", ["4"] = "만약 그들의 귀에 #m261000000#가 세워진 배경이 들어간다면 어찌 되겠는가... 연금술사의 마을로, 작지만 오시리아 대륙 전반에 영향을 끼치던 #m261000000#의 명예는 땅에 떨어지게 된다네... 그래서 #m261000000#의 협회장들은 그 사실을 숨기기 위해 애써왔지.", ["5"] = "하지만 더 이상 이 일을 숨겨야 할지 모르겠다네. #p2111002#이라는 이 젊은 연금술사를 보게. 아무것도 모른 채 연구만 하던 젊고 유망한 연금술사가... 진실에 가까워졌다는 이유만으로 죄인이 되어 버린 이 모습을 보게. 그를 위해서라도... 진실은 밝혀져야 할지도..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "제뉴미스트 협회의 #p2111000#. 알카드노 협회의 #p2111001#. 그리고 이 #p2020005# 외에... #m261000000#와 검은 마법사, 실종된 연금술사 #p2111002#에 얽힌 이야기를 아는 사람은 자네 뿐이네. 그 어느 편에도 속하지 않은 자네에게 판단을 맡기겠네."},
	["yes"] = {["1"] = "자네에게 모든 것이 쓰여져 있는 이 #b#t4161033##k를 맡기겠네.잔인한 진실을 밝히는가... 아니면 평화를 위해 거짓을 유지하던가... 어느 쪽을 택하던 상관 없네. 선택은 자네의 몫이네.   "},
}
return nTable
end