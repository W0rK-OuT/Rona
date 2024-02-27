return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111001,
	["lvmin"] = 75,
	["quest"] = {{["id"] = 3354, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111003,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100,
}
nTable["info"] = {
	["name"] = "휴머노이드 A의 기억",
	["parent"] = "드랭은 누구인가",
	["order"] = 3,
	["1"] = "#p2111001#는 #p2111002#의 연구에 대해 한참을 생각하는 것 같더니, 그 약이라면 어쩌면 #b#p2111003##k가 알고 있을 것이라 말했다. #p2111003#? 자신의 과거조차 기억하지 못하는 휴머노이드가 #p2111002#의 약에 대해 알고 있을 거라니... 도대체 왜?",
	["2"] = "#p2111003#에게 #p2111002#에 대해 물어 보았지만, 그는 #p2111002#에 대해 전혀 알지 못했다. 하지만 그는 그가 처음 눈을 뜬 순간부터 가지고 있던 어떤 약에 대해 말했다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "키니의 약... 그렇단 말이지. 자네가 봤다던 그 #p2111002#의 사념이 진짜인지 아닌지는 모르겠지만... 그게 진짜라 하더라도, #p2111002#의 실험실에서 약 같은 것은 발견되지 않았다네. 전혀 모르겠군. 다만...", ["2"] = "...다만 어쩌면 그 약에 대해 #p2111003#가 알고 있을지도 모르겠군. 그에게 한 번 가보는 것이 어떻겠나. "},
	["yes"] = {["1"] = "만약 #p2111003#가 가지고 있는 게... 그것이 맞다면... 그는 아무것도 기억하지 못하는 기계 인형이 아니라... "},
	["no"] = {["1"] = "싫다면 어쩔 수 없지만... 다시 한 번 생각해보게. #p2111005#를 위해서라도 말일세."},
}
nTable["say1"] = {
	["base"] = {["1"] = "안녕하세요, 모험가님. 이 휴머노이드에게 무슨 볼 일이라도 있으신가요? \r\n#b#L0# 드랭에 대해서 알고 계신가요?#l", ["2"] = "...네? #p2111002#...이라니. 처음 듣는 이름입니다만... 하지만 왠지 익숙한 이름이군요. 혹시 예전에는 알고 있었을지도 모르겠습니다. 하지만 지금 전 과거를 전혀 기억하지 못해서... 아니, 어쩌면 과거 따윈 없을지도 모르고요...\r\n#b#L0##p2111005#의 약에 대해서도 전혀 모르고 있나요?#l", ["3"] = "#p2111005#의 약? #p2111005#가 아픈가요?! 하긴... 그 애는 기침을 자주 하죠... #p2111005#를 위한 약에 대해서는 전혀 아는 게 없습니다. 방금도 말씀드렸다시피, 기억이라 할만한 게 아무것도 없어서... 하지만 이상한 약이라면 한 개 가지고 있습니다."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["npc"] = {["1"] = "아직 #p2111003#에겐 가지 않은 겐가? 어쩌면 그는 자네가 알고 있과 달리... 아니, 아닐세. 그에게 직접 물어보는 것이 좋겠군."},
	},
	["ask"] = 1,
}
return nTable
end