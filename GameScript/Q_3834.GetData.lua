return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2092001,
	["lvmin"] = 49,
}
nTable["check1"] = {
	["npc"] = 2092001,
	["mob"] = {
		[1] = {["id"] = 4230505, ["count"] = 400}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 44600,
	["item"] = {
		{["id"] = 2001000, ["count"] = 30}
	},
}
nTable["info"] = {
	["name"] = "탈출 단지 퇴치",
	["0"] = "#b#m251000000##k의 #b#p2092001##k에게 고민거리가 있다는데...",
	["1"] = "#p2092001#은 약초를 담아놓기 위해 마련한 #o4230505#에 정체를 알 수 없는 무언가가 들어가서 소동을 피우고 있다며 몬스터로 변한 #r#o4230505# 400마리#k를 퇴치해 주길 부탁했다. \n\n#o4230505# #r#a38341##k ",
	["2"] = "#o4230505# 400마리를 퇴치하자 #p2092001#은 안도했다. 하지만 도대체 뭐가 들어가 있던 건지... 아직도 그 정체는 알 수 없다",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "여행자이시오? 물길을 따라 오신 게 아니라면... #m250000000#에서 이곳으로 오셨을 텐데. 혹시 이상한 현상을 보지 못하셨소?  \r\n#L0# #b 이상한 현상이라니요?", ["2"] = "가만히 있어야 할 #o4230505#가 걸어다니며 사람을 공격하지는 않았냐는 말이오. #m251000000#에는 약초를 넣어두기 위한 #o4230505#가 많이 있는데 얼마 전부터 이상하게도 #o4230505#가 걸어 움직이는 현상이 발생하기 시작했다오. \r\n#L0# #b 헉... #o4230505# 안에 귀신이 있는 건가요?", ["3"] = "아니, 귀신은 아니고 뭔가 정체를 알 수 없는 생물이 #o4230505# 안에 들어가 #o4230505#를 조종하고 있는 것 같소. 도대체 그게 뭔지 모르지만 그것 때문에 마을 사람들이 곤란에 처해 있다오. 괜찮다면 당신께서 #o4230505# 퇴치를 도와주시지 않겠소?"},
	["yes"] = {["1"] = "그렇게 해주시겠다니 정말 고맙소. 마을 주변에 있는 #r#o4230505##k를 최대한 많이... 그러니까 한 #r400마리#k 정도만 퇴치해 주시오. 도대체 그 정체를 모르니... 조심하셔야 할 거요. 그럼 부탁드리오. "},
	["no"] = {["1"] = "음... 귀신은 아니니, 염려 말고 도와주시면 좋을 텐데..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "#o4230505# 400마리를 모두 퇴치하고 오셨구려. 정말 감사하오. 빈 #o4230505#야 다시 구하면 되지만, 사람이 다치는 일이 있어서는 안 되잖소. 다시 한 번 감사드리오."},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o4230505# 400마리#k를 다 퇴치하지 못하신 것 같소만..."},
	},
}
return nTable
end