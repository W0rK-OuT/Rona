return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2050002,
	["quest"] = {{["id"] = 3457}},
	["item"] = {{["id"] = 4031928, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 2050002,
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031928, ["count"] = -1}
	},
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "위험에 빠진 그레이 ",
	["0"] = "완성된 #t4031927#를 가지고 #b#p2050002##k를 찾아가자.",
	["1"] = "#t4031927#를 등 뒤에 숨기고 #p2050002#에게 말을 걸었다. #p2050002#는 입으로는 아무 일도 없다고 말하지만 초음파로는 다른 이야기를 하는데... \n\n #t4031927#를 통해 얻은 정보에 의하면 그레이들은 #o6220001#를 제어하던 콘솔을 망가뜨린 것 같다. 이런... 그래서 #o6220001#의가 통제받지 않고 돌아다니는 거군.",
	["2"] = "#t4031927#를 눈치챈 #p2050002#는 매우 당황하다가, 자포자기한 듯 어차피 #o6220001#가 폭주하면 #m221000000#도 위험해질 거라고 말했다. 어서 김박사에게 이 사실을 전하자.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "다, 다시 온 건가. 인간 친구. 무척 반갑지만 당장은 자네와 대화할 시간이 없으니 잠시만 자리를 비켜 주지 않겠나? \r\n#L0# #b(초음파 해독기를 작동한다.)#k", ["2"] = "제노에 대해서 물어봐야 대답할 말이 없다. 제노는 원로님들 담당이라 이 몸은 잘 모른다.(이 인간, 위험하다. 뭔가 낌새를 눈치챈 게 분명해. 어디서 정보가 샌 거지?) \r\n#L0# #b(초음파 해독기 작동 중)#k", ["3"] = "그보다 인간 친구야 말로 어떻게 된 건가? 설마 #m221000000#의 위선자들에게 협력하는 건 아니겠지?(역시 #p2050001#, 그 위험한 인간의 소행인가? ...어쨌든 최대한 이 사실에 대해선 감춰야 해.) \r\n#L0# #b(초음파 해독기 작동 중)#k", ["4"] = "그레이들은 인간을 해칠 마음이 조금도 없다. 보다 가까워지고 싶을 뿐. 자네도 잘 알지 않나?(제노를 제어하던 콘솔을 망가뜨리다니, 그레이들의 수치다. 이런 사실을 인간들에게 알려줘 비웃음 받을 필요는 없지!) \r\n#L0# #b(초음파 해독기 작동 중)#k", ["5"] = "그레이들의 지배를 두려워하지 말게. 그레이는 인간의 편이네. 인간을 위대한 길로 이끌 존재, 그것이 바로 그레이라네.(그레이는 항상 인간보다 우월한 존재여야 한다. 그러니 절대 이런 사실에 대해 알려주지 않겠어.) \r\n#L0# #b(초음파 해독기 작동 종료.)#k", ["6"] = "인간 친구. 자, 그레이와 손을 잡지 않겠나? ...? 뭔가 이상한 표정이군. 인간은 보통 놀랐을 때 그런 표정을 지었던 것 같은데... 설마 그 표정은... 그, 그건 초음파 해독기?!"},
	["no"] = {["1"] = "#t4031927#가 아니라고? 거짓말 마! 이 눈으로 똑똑히 봤어!"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
		["3"] = {["answer"] = "1"},
		["4"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "초, 초음파 해독기! 생각을 모두 읽었단 말인가! 말도 안돼! 인간! 당장 기억에서 방금 들은 모든 사실을 지워라! 맙소사... 인간에게 이런 수치를 당하다니. ", ["2"] = "이왕 이렇게 된 것 어쩔 수 없지... 그렇다! 제노는 통제 불능이다! 그로 인해 그레이들이 위험에 빠진 건 사실이지만... 그건 지구방위본부도 예외가 아냐! "},
	["yes"] = {["1"] = "제노가 폭주하면 그레이들뿐만 아니라 지구방위본부 전체가 몰살할 거다! 어차피 폭주해 버린 거... 우리만 당할 순 없지! 지구방위본부와 그레이는 함께 자폭한다! "},
}
return nTable
end