return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111000,
	["lvmin"] = 30,
	["interval"] = 4320,
	["startscript"] = "q3305s",
	["quest"] = {{["id"] = 3349}, {["id"] = 3302, ["state"] = 2}, {["id"] = 3347}, {["id"] = 3348}},
	["item"] = {{["id"] = 1102135}},
}
nTable["check1"] = {
	["npc"] = 2111000,
	["item"] = {{["id"] = 4021003, ["count"] = 5}, {["id"] = 4000021, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -10000,
	["item"] = {
		{["id"] = 1102135, ["count"] = 1},
		{["id"] = 4000021, ["count"] = -10},
		{["id"] = 4021003, ["count"] = -5}
	},
}
nTable["info"] = {
	["name"] = "제뉴미스트의 망토 다시 받기",
	["0"] = "#t1102135#를 잃어버렸다. 그게 없으면 제뉴미스트 소속이란 걸 알릴 수 없는데 어떻게 하지? 제뉴미스트의 협회장인 #b#p2111000##k을 찾아가 보자.",
	["1"] = "#p2111000#은 언짢은 얼굴로 다시 한 번 #t1102135#를 만들어 줄 테니 재료를 모아 오라고 말했다. 재료는 #b#t4000021##k과 #b#t4021003##k,#b10000메소#k라고 한다. 휴우... 다행히 다시 만들 수 있군. \n\n#i4000021##t4000021# #b#c4000021##k/10 \n#i4021003##t4021003# #b#c4021003##k/5",
	["2"] = "#t1102135#를 다시 받았다. 이게 없으면 제뉴미스트로서 인정받을 수 없다. 절대 잃어버리지 말도록 하자.",
	["area"] = 44,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "모든 재료를 구해 왔군. 자, 여기 제뉴미스트의 망토를 받게. ", ["2"] = "이번만은 간단히 만들어 주겠지만... 제뉴미스트의 망토는 제뉴미스트 소속임을 증명하는 중요한 물건이네. 망토를 입지 않는다면 알카드노로 오인받을 수도 있지 않겠는가? 절대 잃어버리지 말도록 하게. 무엇보다 한 번 망토를 만든 연금술사는 3일은 쉬어야 하니 말일세."},
	["yes"] = {["1"] = "이번만은 간단히 만들어 주겠지만... 제뉴미스트의 망토는 제뉴미스트 소속임을 증명하는 중요한 물건이네. 망토를 입지 않는다면 알카드노로 오인받을 수도 있지 않겠는가? 절대 잃어버리지 말도록 하게. 무엇보다 한 번 망토를 만든 연금술사는 3일은 쉬어야 하니 말일세."},
}
return nTable
end