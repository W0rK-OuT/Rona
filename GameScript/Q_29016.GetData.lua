return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061011,
	["lvmin"] = 40,
}
nTable["check1"] = {
	["npc"] = 1061011,
	["mbcard"] = {{["id"] = 2382040, ["min"] = 1}, {["id"] = 2382049, ["min"] = 1}, {["id"] = 2383002, ["min"] = 1}, {["id"] = 2383005, ["min"] = 1}, {["id"] = 2383008, ["min"] = 1}},
	["mob"] = {
		[1] = {["id"] = 4230101, ["count"] = 444},
		[2] = {["id"] = 4230114, ["count"] = 444},
		[3] = {["id"] = 4230115, ["count"] = 444},
		[4] = {["id"] = 4230126, ["count"] = 444},
		[5] = {["id"] = 4230102, ["count"] = 444}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1142137, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "칭호 - 영안사",
	["area"] = 51,
	["medalCategory"] = 2,
	["viewMedalItem"] = 1142137,
	["0"] = "언데드 몬스터를 퇴치하여 성불시키면 #b<영안사>#k 의 칭호를 얻을 수 있다는데....",
	["1"] = "#e#b칭호 - 영안사#k#n\r\n언데드 몬스터 성불시키기.\r\n<몬스터카드 1개 이상 수집>\n#b#t2382040#\n#t2382049#\n#t2383002#\n#t2383005#\n#t2383008##k\n\n<몬스터 퇴치>\n#o4230101# #r#a290161##k\n#o4230114##r#a290162##k\n#o4230115# #r#a290163##k\n#o4230126# #r#a290164##k\n#o4230102# #r#a290165#\r\n",
	["2"] = "언데드 몬스터들을 성불시키고 #b<영안사>#k의 칭호를 획득했다.",
	["autoComplete"] = 1,
	["demandSummary"] = "#t2382040# 1개\r\n#t2382049# 1개\r\n#t2383002# 1개\r\n#t2382063# 1개\r\n#t2383005# 1개\r\n#t2383008# 1개\r\n#o4230101# #a290161#\r\n#o4230114# #a290162#\r\n#o4230115# #a290163#\r\n#o4230125# #a290164#\r\n#o4230126# #a290165#\r\n#o4230102# #a290166#\r\n",
	["rewardSummary"] = "#Wbasic#\r\n#i1142137:# #t1142137:# 1 개\r\n'칭호 - 음양사' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "당신...보이지 않고, 잡을 수 없는 존재에 대해 관심이 많아 보이는군. 자네의 영혼이 이끄는 곳으로 가보지 않겠나?"},
	["yes"] = {["1"] = "<영안사>라는 이름을 들어 본 적이 있는가? 구천을 떠도는 슬픈이들의 목소리를 들을 수 있는 사람들을 뜻하는 말이지. 그만큼 영혼이 맑다는 의미도 될 수 있겠지. 그들을 성불시키는 일에 정진한다면 자네도 그런 존재가 될 수 있다네. #b좀비루팡, 플래툰 크로노스, 마스터 크로노스, 머미독, 레이스#k를 퇴치하여 이승에서의 인연을 끊고 성불할 수 있도록 도와주게. <영안사>의 이름을 얻을 수 있을 것일세..."},
	["no"] = {["1"] = "자네의 어두운 영혼이 위로받을 수 있기를 바라네..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이제 그들의 존재를 느끼기 시작했나? 영안사여..."},
	["stop"] = {
		["default"] = {["1"] = "그들의 영혼이 담긴 카드는 모두 모았나?"},
		["mob"] = {["1"] = "그들을 모두 성불시켜야 하네. 아직 수행이 부족한 것 같은데..."},
	},
}
return nTable
end