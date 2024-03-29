return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022000,
	["lvmin"] = 13,
	["lvmax"] = 18,
	["normalAutoStart"] = 1,
	["quest"] = {{["id"] = 2130, ["state"] = 2}},
	["job"] = {100, 110, 120, 130, 111, 121, 131, 112, 122, 132},
}
nTable["check1"] = {
	["npc"] = 1022000,
	["mob"] = {
		[1] = {["id"] = 1110101, ["count"] = 15}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 840,
	["item"] = {
		{["id"] = 2000002, ["count"] = 50},
		{["id"] = 2000003, ["count"] = 50},
		{["id"] = 2030000, ["count"] = 10}
	},
}
nTable["info"] = {
	["name"] = "초보 전사의 마지막 수련",
	["0"] = "이제 약간이나마 전사로서의 모습을 갖춘 당신. 그런 당신을 위해 #b#p1022000##k가 마지막으로 수련을 도와주겠다는데...",
	["1"] = "#p1022000#는 지금까지 수련의 결과를 검사해 보겠다며 #r#o1110101# 15마리#k를 사냥해 보라고 했다. #o1110101#는 #o0130100#와 비슷하게 생겼지만 훨씬 강력한 몬스터이니 긴장을 늦추지 말라는데... \n\n#o1110101# #r#a21311##k",
	["2"] = "#o1110101# 15마리를 사냥하였다. 쉽지 않은 일이었지만 어쨌든 성공이다. 지금까지의 수련을 통해 #p1022000# 앞에서도 당당할 수 있는 한 명의 진정한 전사가 된 것 같다. ",
	["area"] = 10,
	["autoStart"] = 1,
	["autoComplete"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "어린 전사 형제여. 지금까지 수련을 잘 따라와 주었네. 부족하되, 이제는 어느 정도 틀을 갖춘 자네의 모습이 보이는군. 정말 기쁘네. 자신만만한 자네의 눈빛을 보니 지금까지의 수련을 시험해 보아도 되겠군."},
	["yes"] = {["1"] = "#r#o1110101# 15마리#k를 사냥해 보게. 그것은 #o0130100#와 유사하게 생겼지만 그보다는 훨씬 강한 몬스터이지. 사냥할 때 긴장을 풀어서는 안 될 것이네. 하지만 걱정은 말게. 자네가 지금까지 수련을 열심히 했다면 그리 어렵지 않은 상대일 것이니."},
	["no"] = {["1"] = "시험이 두려운 건가? 두려워하지 말게. 자네는 이미 한 명의 전사이니. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "어린 전사 형제여. #o1110101# 15마리 사냥에 성공했군. 자네라면 성공할 줄 알았지... 정말 훌륭하네. 이제는 어리다는 표현은 사용하지 말아야겠군. 자네처럼 빠르게 성장한 전사에게 그런 표현은 어울리지 않지."},
	["yes"] = {["1"] = "하지만 전사의 길은 이제 시작되었을 뿐. 아직 자네가 갈 길은 멀다네. 힘겨운 길이 분명하지만 고개를 들고 당당히 싸우게. 그것이 바로 전사의 길이며 전사의 의지일 것이니. "},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o1110101# 15마리#k를 사냥하지 못하였군. 조급해 할 것 없네. 느려도 확실히, 전사의 길을 가주게."},
	},
}
return nTable
end