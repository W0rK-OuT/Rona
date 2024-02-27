return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032001,
	["lvmin"] = 10,
	["lvmax"] = 15,
	["normalAutoStart"] = 1,
	["quest"] = {{["id"] = 2133, ["state"] = 2}},
	["job"] = {200, 210, 220, 230, 211, 221, 231, 212, 222, 232},
}
nTable["check1"] = {
	["npc"] = 1032001,
	["mob"] = {
		[1] = {["id"] = 210100, ["count"] = 35}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 345,
	["item"] = {
		{["id"] = 2000002, ["count"] = 30},
		{["id"] = 2000003, ["count"] = 50}
	},
}
nTable["info"] = {
	["name"] = "초보 마법사의 세번째 수련",
	["0"] = "조금씩 강해져가고 있는 당신. 착실하게 마법사로서의 실력을 쌓아가는 당신에게 #b#p1032001##k가 세번째 수련을 도와주겠다고 한다.",
	["1"] = "#p1032001#의 이번 수련은 #r#o0210100# 35마리#k를 퇴치하는 것이다. 이미 몇 번이고 퇴치해 본 녀석이니 어려울 것 없다. 어서 #o0210100#을 퇴치하자. \n\n#o0210100# #r#a21341##k",
	["2"] = "#o0210100# 35마리를 퇴치했다. 적은 수는 아니지만 상대하기 어려운 숫자도 아니었다. 훗. 이 정도면 꽤 훌륭한 마법사 같은걸?",
	["area"] = 10,
	["autoStart"] = 1,
	["autoComplete"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "두번째 수련을 마친지 얼마나 되었더라... 그 동안 자네 실력은 또 한 걸음 앞으로 나아갔군. 그렇게 성실하게 계속 수련을 하다보면, 언젠가는 높은 경지에 오를 수 있을 것이네. ...하지만 아직은 초보 마법사일 뿐이니, 이 #p1032001#의 도움을 받게나. "},
	["yes"] = {["1"] = "이번에 해야 할 일은 #r#o0210100# 35마리#k 퇴치라네. 많다고? 물론 적은 수는 아니지만, 자네가 처치하기 어려운 숫자도 아니지. 강해지고 싶다면 더 참고 인내하는 법을 배워야 한다네. 어서 가서 #o0210100#을 퇴치하게."},
	["no"] = {["1"] = "스스로 수련을 할 수 있다면 그보다 좋은 것은 없지."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o0210100# 35마리를 퇴치했군. 자네의 성장이 정말 눈부시구만... 허허. "},
	["yes"] = {["1"] = "하지만 이 정도로 만족해서는 안 되는 법일세. 좀 더 열심히 수련하게나. 새로운 수련이 필요할 때가 되면 다시 자네를 부르겠네."},
	["stop"] = {
		["mob"] = {["1"] = "#r#o0210100# 35마리#k 퇴치는 아직인 모양이군. 서두를 것 없네. 느긋하게, 하지만 방심하지 말고 사냥해 주게."},
	},
}
return nTable
end