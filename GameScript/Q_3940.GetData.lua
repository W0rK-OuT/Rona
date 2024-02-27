return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101010,
	["lvmin"] = 29,
	["quest"] = {{["id"] = 3938, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101010,
	["item"] = {{["id"] = 4031571, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 2210005, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 4000,
	["item"] = {
		{["id"] = 4031571, ["count"] = -1},
		{["id"] = 2040701, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "임무 완수!",
	["parent"] = "모래그림단의 첫번째 임무",
	["order"] = 2,
	["0"] = "지금쯤이면 #p2101010#가 티건 변신약을 완성하지 않았을까? 어서 #b#p2101010##k를 찾아가 보자. ",
	["1"] = "#p2101010#에게서 #p2101004#으로 변신할 수 있는 변신약을 받았다. 수상쩍게 생긴 약이지만, 이걸 먹으면 #p2101004#이 될 수 있다니 믿어 보는 수밖에. 그럼 어서 #p2101004# 변신약을 먹고 #b#m260010600##k에 가서 #b#p2101013##k에게 #b비단#k을 가져오자.\n\n#i4031571# #t4031571# #b#c4031571#/1#k",
	["2"] = "#p2101004#에게 왕비가 주문한 비단을 받아 #p2101010#에게 가져다 주었다. 좋아! 이걸로 모래그림단원으로서의 첫번째 임무는 무사히 수행했군.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "아, 마침 자네 왔군. 티건 변신약이 완성 되었다네. 어서 #p2101004# 변신약을 마시고 #b#p2101013##k에게 가서 비단을 받아오게나. 왕비와 비단을 거래하는 그 상인은, #b#m260010600##k에 있을 거라네."},
	["yes"] = {["1"] = "#p2101004#으로 변신했을 때는 누군가를 공격할 수 없다네. 잘못 공격했다가 자네의 스킬을 써버리면 다 들통날 것이 아닌가. 게다가 변신약은 공격을 받으면 풀려버리니 그것도 명심하고. 말하자면, 전혀 전투를 하지 않고 #p2101013#에게 가야 한다는 걸세. ", ["2"] = "변신약의 지속시간은 #b1시간#k. 이 시간 이내에 #b누구를 공격하지도, 누구에게도 공격받지 않고#k #p2101013#에게 비단을 받아, 다시 돌아오게. 그럼 꼭 성공하게."},
	["no"] = {["1"] = "약을 보니 먹기 싫어진 건가? 이런. 그럼 누구에게 임무를 시키지? 비슷하게 생긴 #p2101003#에게 시킬까?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오, 자네 왔군. 그래, #p2101013#에게서 비단은 가져 왔나?"},
	["yes"] = {["1"] = "잘 됐군. 왕비의 부하라고 해도 모두 #m260000000#의 백성들, 그들과 싸워가며 보물을 빼앗아 오는 것보다 이렇게 조용하고 간단하게 보물을 뺏는 것이 훨씬 좋은 방법이지. "},
	["stop"] = {
		["item"] = {["1"] = "음... 아직 #b#t4031571##k은 가져오지 못한 건가? 그것만 있다면 #m260000000# 주민들이 한동안은 식량 걱정을 하지 않아도 될 텐데... "},
	},
	["ask"] = {"엥? #p2101013# 변신약을 잃어버렸다고? ...먹기 싫다고 일부러 버린 건 아니겠지? 걱정 말게. #p2101013#의 수염가닥으로 약을 많이 만들어 놨으니까, 얼마든지 다시 주겠네. "},
}
return nTable
end