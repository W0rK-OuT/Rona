return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1102000,
	["startscript"] = "q20017s",
	["quest"] = {{["id"] = 20016, ["state"] = 2}},
	["job"] = {1000},
}
nTable["check1"] = {
	["npc"] = 1102000,
	["mob"] = {
		[1] = {["id"] = 100122, ["count"] = 15}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 430,
	["item"] = {
		{["id"] = 2000020, ["count"] = 10},
		{["id"] = 2000021, ["count"] = 10}
	},
}
nTable["info"] = {
	["name"] = "기사가 되기 위한 첫 번째 수련",
	["area"] = 15,
	["0"] = "#p1101002#의 말대로 일단은 레벨을 10까지 올려 수련기사가 되어야 할 것 같다. #b수련교관 #p1102000##k를 찾아 #b#m130010000##k로 가보자.",
	["1"] = "#m130010000#에서 수련교관 #p1102000#와 만났다. #p1102000#의 말에 의하면 에레브에는 몬스터는 전혀 없어, #p1101001#의 힘으로 만들어진 티티라는 환상생물을 상대로 수련을 한다고 한다. 그러면서 #p1102000#는 #r#o100122##k를 사냥해 오라는데...\r\n\r\n\n\n#o100122##r #a200171##k \r\n",
	["2"] = "고생시켜 줄 테니 각오를 단단히 하라는 #p1102000#. 일단 #p1102000#에게 받은 포션들을 잘 장비하고 수련을 시작하자.",
	["type"] = "[필수]",
}
nTable["say0"] = {
	["base"] = {["1"] = "응? #p1101002#가 보냈다고? 아하! 이야, 이번에 새로 들어온 신입인가? 반갑군. 반가워. 내 이름은 #p1102000#. 자네 같은 노블레스들을 가르치는 수련교관이지. 음... 왜 그렇게 보는... 아, 피요는 처음 보는 모양이군. ", ["2"] = "우리는 피요라고 불리는 종족이야. 어린 여제 곁에 있는 #p1101001#와는 대화해 본 적 있지? 피요는 #p1101001#와 같은 종족이야. 계열은 좀 다르지만... 비슷하지. 에레브에서만 살고 있으니 낯설겠지만 금방 익숙해질 거야.", ["3"] = "아, 혹시 알고 있어? 이 에레브에는 몬스터는 전혀 없어. 사악한 힘을 가진 존재는 에레브에 발도 들일 수 없거든. 그래도 걱정하진 마. 수련은 #p1101001#가 만들어낸 환상생물 티티를 대상으로 할 거니까. 그럼 수련을 시작할까?", ["4"] = "기합이 제대로 들어갔군! 그럼... 자네의 수준을 보아하니, 티티들 중에서도 조금 상급의 티티를 잡아도 되겠군. #m130010100#에 있는 #o0100122# 15마리 정도면 충분하겠는걸? 어때? #o0100122#를 잡을 수 있겠어?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "오호, #o100122#는 다 퇴치한 건가? 생각보다 빠른걸? 좋아. 그럼 바로 다음 단계로 넘어가도 되겠군."},
	["yes"] = {["1"] = "아, 그 전에 포션을 많이 사용했을지도 모르니... 자, 예비용으로 포션을 더 주도록 하지. 위험한 상황에 포션은 생명 하나를 더 들고 다니는 거나 마찬가지니, 잘 챙기도록 해."},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o100122# 15마리#k는 다 퇴치하지 못한 건가? 잘 보이지 않는다면 그 근처에 있는 #m130010110#을 찾아가도록 해. 그 곳에는 #o100122#밖에 없으니 금방 사냥할 수 있을 거야. "},
	},
}
return nTable
end