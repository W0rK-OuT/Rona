return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300000,
	["lvmin"] = 30,
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2323, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300000,
	["mob"] = {
		[1] = {["id"] = 3300005, ["count"] = 1},
		[2] = {["id"] = 3300006, ["count"] = 1},
		[3] = {["id"] = 3300007, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 33000,
}
nTable["info"] = {
	["name"] = "결혼식 저지",
	["area"] = 30,
	["rewardSummary"] = "경험치 33,000\r\n",
	["0"] = "결전의 시간이 다가왔다. #b#p1300001##k을 만나보자.",
	["1"] = "#b페페킹#k과 그 호위대장인 #b예티 3형제#k를 모두 처치하자.",
	["summary"] = "#b페페킹#k과 그 호위대장인 #b예티 3형제#k를 모두 처치하자.",
	["2"] = "#b페페킹#k과 그 호위대장인 #b예티 3형제#k를 모두 처치했다.",
	["demandSummary"] = "#o3300005# #a23301#\r\n#o3300006# #a23302#\r\n#o3300007# #a23303#\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "용사여. 그대의 활약상은 대신들을 통해 듣고 있네. #b(쿨럭)#k 이 몸이 못나 성을 빼앗기고... 참으로 부끄럽기 그지없네. 하필이면 나의 충신 #b총리대신#k도 없는 이때에 그대가 우리의 유일한 희망이오. 부디 페페킹 녀석을 처치하고 우리 #b#p1300002##k를 구해주시오."},
	["yes"] = {["1"] = "#b페페킹#k녀석이 자신의 멍청한 아들과 우리 #b#p1300002##k를 강제로 결혼시키려 하고 있소. 이를 저지하기 위해선 페페킹을 물리쳐야 하는데,그 녀석을 호위하는 예티 3형제가있기 때문에 그리 쉽지만은 않을것이오. 무운을 빌겠소."},
	["no"] = {["1"] = "아직 떠날 채비가 안되었는가? 어서 준비를 하고 다시 와 주시게. 시간이 많지 않으니....#b(쿨럭)#k"},
}
nTable["say1"] = {
	["base"] = {["1"] = "정말... 정말로 #b페페킹#k 녀석을 물리친게요?"},
	["yes"] = {["1"] = "정말 대단하시군요. 우리왕궁을 위기에서 구해주셔서 정말 정말 감사합니다."},
	["stop"] = {
		["mob"] = {["1"] = "음 아직 #b페페킹#k과 그 호위대장 예티 녀석을 모두 해치우시지 못했군요. 꼭 처치해 주세요."},
	},
}
return nTable
end