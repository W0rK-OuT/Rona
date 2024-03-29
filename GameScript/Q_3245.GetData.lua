return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041022,
	["lvmin"] = 28,
}
nTable["check1"] = {
	["npc"] = 2041022,
	["mob"] = {
		[1] = {["id"] = 2230103, ["count"] = 20},
		[2] = {["id"] = 2230104, ["count"] = 20}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 5600,
	["item"] = {
		{["id"] = 4004004, ["count"] = 3}
	},
}
nTable["info"] = {
	["name"] = "에오스탑의 거미퇴치",
	["0"] = "국왕의 #b#p2041022##k에게 도움이 필요하다고 한다. 무슨 일일까? #b#m220000400##k로 가보자. ",
	["1"] = "#p2041022#은 #m221000000#에 국왕의 칙서를 전달하라는 명령을 받았다고 한다. 하지만 그는 망설이고 있는데... #m221000000#에 가려면 에오스탑을 지나야 하는데, 거미 때문에 에오스탑을 내려갈 수가 없다는 것이다. 하는 수 없지. #p2041022#을 위해 #r#o2230103##k와 #r#o2230104##k를 #r각각 20마리#k씩 퇴치하자.   \n\n#o2230103# #r#a32451##k   \n#o2230104# #r#a32452##k ",
	["2"] = "#o2230103#와 #o2230104#를 퇴치했다. 이제 #p2041022#도 임무를 수행할 수 있겠지. 국왕 외엔 무서울 것 없어 보이던 #p2041022#이 거미를 무서워하다니... 의외인걸?",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "이를 어쩐다... 폐하의 명을 어길 수는 없는데... 하지만 거미가... 거미가... 흠. 음? 무슨 일인가? 국왕의 보좌관인 이 티군님에게 무슨 볼 일이라도? \r\n#L0# #b 뭘 그렇게 걱정하시는 건가요?", ["2"] = "걱정이라니... 국왕의 보좌관인 이 몸에게 무슨 걱정이 있겠나. 아무것도 아닐세. 전혀 아무 일도 없어. 핫.핫.핫.핫. \r\n#L0# #b 얼굴이 굉장히 창백한데요...? 식은땀도 흘리시고...", ["3"] = "시, 식은땀은 무슨. 아, 아무것도 아닐세. 그저 폐하의 명을 어떻게 하면 잘 수행할 수 있을까 그걸 고민하는 중이지. 크흠. 자네... 혹시 입이 무거운가?"},
	["yes"] = {["1"] = "그, 그렇다면 미안하지만 좀 도와줄 수 있겠는가? 사실은 얼마 전에 국왕 폐하께 #m221000000#로 칙서를 전달하라는 명을 받았다네. 그런데, 그게... 가기 좀 어려운 상황이라... #m221000000#에 가려면 에오스탑을 통과해야 하는 건 알고 있지?", ["2"] = "그런데 에오스탑에는 그... 거미란 녀석들이 많지 않은가. 뭐? 거미를 무서워 하냐고? 아니! 절대 아니야! 무서운 게 아니라 그저 조금, 아주 조금 싫은 것 뿐이라네. 자네가 에오스탑의 #r#o2230103##k와 #r#o2230104##k를 #r20마리씩#k만 퇴치해 준다면 아무 문제 없이 폐하의 명을 수행할 수 있다네.  "},
	["no"] = {["1"] = "입이 가벼운 사람에게는 더 이상 아무것도 알려줄 수 없네. 흠흠. "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "#o2230103#와 #o2230104#는 퇴치했느냐? 오오, 좋아! 녀석들만 없다면 에오스탑을 내려가는 건 어렵지 않지. 정말 수고했네. 폐하께도 자네의 공을 말씀드리겠네."},
	["yes"] = {["1"] = "절대 거미가 무서운 건 아니야. 그저 조금 싫은 것 뿐이라네. 누구에게나 싫은 건 있는 법 아니겠나? "},
	["stop"] = {
		["mob"] = {["1"] = "거미는 아직 못 잡은 겐가!? #r#o2230103##k와 #r#o2230104##k를 #r20마리#k씩만 잡아주면 된다네. 폐하의 명을 수행하기 위한 일이니, 서둘러 주길 바라네! "},
	},
}
return nTable
end