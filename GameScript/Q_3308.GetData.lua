return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111008,
	["lvmin"] = 52,
	["quest"] = {{["id"] = 3307, ["state"] = 2}},
	["equipAllNeed"] = {1102135},
}
nTable["check1"] = {
	["npc"] = 2111008,
	["mob"] = {
		[1] = {["id"] = 5110300, ["count"] = 200}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 37600,
}
nTable["info"] = {
	["name"] = "알카드노 방해하기",
	["0"] = "제뉴미스트 소속의 연금술사 #b#p2111008##k에게 뭔가 계획이 있다는 것 같다. 제뉴미스트의 일원이 되었으니 그의 일에 동참해야겠지? #p2111008#을 찾아가 보자.",
	["1"] = "제뉴미스트는 알카드노와 대립하고 있다... 그건 알고 있었지만 그렇다고 해도 이런 부탁을 할 줄은 몰랐는걸? 어쨌건 #p2111008#에게 부탁을 받았으니, 하지 않았다간 곤란해지겠지... 알카드노가 연구하던 #r#o5110300# 200마리#k를 없애자. \n\n#o5110300#  #r#a33081#",
	["2"] = "#p2111008#의 말대로 알카드노가 연구하던 #o5110300#를 파괴하였다. 후우... 이래도 되는 걸까? 도대체 제뉴미스트와 알카드노는 왜 이렇게 대립하는 걸까?",
	["area"] = 44,
	["autoStart"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "아. 전에 마력석 만드는 걸 도와준 신입이잖아? 요새는 무슨 연구라도...? 안 바쁘면 이번 계획에 너도 동참하지 않을래? 무슨 계획이냐고? ...흠. 비밀이니까 동참하겠다고 말하면 이야기해 줄게."},
	["yes"] = {["1"] = "신입이라도 알 건 다 알고 있지? 제뉴미스트하고 알카드노가 사이가 안 좋다는 거 말이야... 그래서 말인데, 이번에 저 밉살스러운 알카드노들에게 골탕을 좀 먹여볼까 하고 있어. 후후후... 재밌겠지? ", ["2"] = "저 쪽 알카드노 협회 지하에 가보면 알카드노들이 만든 기계장치들이 잔뜩 있어. #r#o5110300##k라고 하는 건데... 그것들을 한 #r200개#k만 부수면 적당할 것 같아. 후후후. 알카드노 녀석들... 당하는 꼴 좀 보고 싶어."},
	["no"] = {["1"] = "흠... 동참하지 않겠다니 뭐 하는 수 없지. 넌 제뉴미스트로서의 마음가짐을 갖추려면 좀 더 시간이 걸릴 것 같다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오~ 어때? #o5110300# 200마리는 없애버렸어? 으하하하! 그렇단 말이지? 잘 됐군. 꼴보기 싫은 알카드노 녀석들, 속 좀 타겠는걸? 너도 괜히 죄책감 가질 필요 없어. 알카드노 녀석들 하는 짓을 생각하면 이 정도도 모자라다고!"},
	["stop"] = {
		["mob"] = {["1"] = "흠... 아직 #r#o5110300# 200마리#k를 다 없애지 못한 거야? 마음 약하긴... 그럴 필요 없어. 알카드노 녀석들이 하는 짓을 생각하면 그걸로도 모자라지!"},
	},
}
return nTable
end