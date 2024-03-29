return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2091001,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3809, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2091001,
	["item"] = {{["id"] = 4031432, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 21500,
	["item"] = {
		{["id"] = 4031432, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "신선의 두루마리2",
	["parent"] = "신선의 두루마리",
	["order"] = 2,
	["0"] = "#p2071010#의 부탁으로 #b#m250000000##k의 #b#p2091001##k에게 #t4031430#을 가져다 주었다. 이제 #b#t4031431##k을 빌려야 하는데…",
	["1"] = "#p2091001#은 #t4031431:#을 빌려줄 테니 대신 #b#t4031432:##k을 가져다 달라고 했다. #t4031432#은 #r#o5120506##k에서 얻을 수 있다는데…\n\n#i4031432##t4031432#  #b#c4031432##k/1",
	["2"] = "#t4031432#을 #p2091001#에게 가져다 주었다. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신 덕분에 #t4031430#은 잘 받았소이다. 그런데 아직도 볼 일이 있으시오? 응? #p2071010#이 #t4031431#을 빌려 달라고 했다고? 물론 그걸 빌려줄 수는 있지만… 흠. 한 가지 부탁을 들어주시면 #t4031431#을 내드리도록 하겠소."},
	["yes"] = {["1"] = "조금 어려운 부탁일지 모르지만… #b#t4031432##k을 구해 오시오. 오래 전, 자아를 가진 #r#o5120506##k이 #t4031432#을 흡수해 버리는 바람에 초, 중급만 있고 #t4031432#은 없어져 버렸거든. 그것만 가져다 주시면 #t4031431#을 내어 드리겠소."},
	["no"] = {["1"] = "싫으시다면 #t4031431#은 빌려 드릴 수 없다오. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "오, #t4031432#을 찾아 왔군. 대단하오~  #o5120506#은 오래 전 도인의 비술이 담겨 있어서 상대하기 까다로운 녀석인데. "},
	["yes"] = {["1"] = "#t4031432#을 찾아 왔으니 #t4031431#을 내드려야겠지만… 잠시만 기다려 주시구려. 다른 제자 녀석이 #t4031431#을 빌려가서 일단 찾아 와야 하거든. 그 녀석, 오래 전부터 기다리고 있었는데, 이제야 겨우 #t4031432#을 읽을 수 있겠군."},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4031432##k은 찾아오지 못한 모양이구려. 그게 있어야 #t4031431#을 드릴 수 있다오."},
	},
}
return nTable
end