return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 12000,
	["lvmax"] = 10,
	["quest"] = {{["id"] = 1038, ["state"] = 2}},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 12000,
	["quest"] = {{["id"] = 1041, ["state"] = 2}, {["id"] = 1042, ["state"] = 2}, {["id"] = 1043, ["state"] = 2}, {["id"] = 1044, ["state"] = 2}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 500,
	["item"] = {
		{["id"] = 4031801, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "장로의 소개",
	["0"] = "마리아를 위해 달팽이를 퇴치해준 보답으로 #b루카스#k는 수련을 시켜 줄 사람을 소개해 주기로 했다. 어떤 사람일까? 루카스에게 가보자.",
	["1"] = "루카스는 암허스트의 동쪽에 있는 #b수련장 입구#k에서 혼자 수련을 하고 있는 #b마이#k에게 가서 수련을 받고 #b암허스트#k 돌아오라고 했다. 빅토리아 아일랜드에서 용병으로 활약하던 그녀에게 수련을 받는다면 큰 도움이 될 거라는데...  #k\n\n#y1041# #b (#u1041#)#k\n#y1042#  #b(#u1042#)#k\n#y1043#  #b(#u1043#)#k\n#y1044# #b(#u1044#)#k\n",
	["2"] = "마이의 수련을 모두 마치고 루카스에게 돌아왔다.",
	["area"] = 20,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네 왔는가? 자네라면 오지 않을리가 없다고 생각은 했지. 자, 다시 한 번 묻겠네. 수련을 받을 준비는 되었는가?"},
	["yes"] = {["1"] = "그렇다면 동쪽으로 가게. #b수련장 입구#k에서 #b마이#k가 자네를 기다리고 있을 걸세. 빅토리아 아일랜드에서 용병으로 활약하던 마이라면 충분히 자네를 강하게 할 수 있겠지. "},
	["no"] = {["1"] = "아직 준비가 덜 된 거라면 기다려 주지. 준비를 마치거든 다시 찾아오게."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오, 마이의 수련을 마치고 무사히 돌아왔군. 전보다 훨씬 강해진 것이 보이는걸? 조금만 더 수련하면 빅토리아 아일랜드로 떠날 수 있겠어. 어떻게 하면 빅토리아 아일랜드로 갈 수 있냐고?"},
	["yes"] = {["1"] = "메이플 아일랜드에서 빅토리아 아일랜드로 가는 길은 딱 하나라네. 마을 맨 동쪽 포탈을 타고, #b사우스페리#k에서 #b샹크스#k가 배를 운영하고 있지. 보통은 150메소를 받고 태워주지만 자네같이 훌륭한 모험가에게까지 돈을 받을 사람은 아니야. ", ["2"] = "여기 자네를 추천하는 #b추천서#k를 줄 테니, 빅토리아 아일랜드로 갈 생각이라면 샹크스에게 보여주게. 추천서를 보면 샹크스가 자네를 공짜로 빅토리아 아일랜드까지 이동시켜 줄 걸세. 그럼 앞으로의 여행에 행운이 있길."},
	["stop"] = {
		["quest"] = {["1"] = "아직 마이의 수련을 완수하지 못한 것 같군. 마이의 수련이 엄격하기는 하겠지만, 모두 해내기만 한다면 좋은 성과가 있을 걸세."},
	},
}
return nTable
end