return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060005,
	["lvmin"] = 100,
	["interval"] = 0,
	["quest"] = {{["id"] = 21608, ["state"] = 1}},
	["item"] = {{["id"] = 4032333}},
	["job"] = {2000, 2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 2060005,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -40000000,
	["item"] = {
		{["id"] = 4032333, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "켄타의 사춘기 늑대용 영양제",
	["area"] = 6,
	["0"] = "사춘기가 된 #t1902015#를 위해 사춘기 늑대용 영양식을 만들기로 했다. #b#m230000003##k의 #b#p2060005##k를 찾아가 재료를 구입하자.",
	["1"] = "#p2060005#는 사춘기 늑대에게 부족할 수밖에 없는 영양을 채워줄 영양제를 가지고 있다고 말했다. 영양제의 가격은 4000만 메소라고 한다. 메소를 지불하고 영양제를 사자... 힘들지만.\r\n\r\n#b40,000,000 메소#k",
	["2"] = "4000만 메소를 내고 #p2060005#에게서 영양제를 구입했다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "당신은 전에 #t4032331#를 사가셨던 분이로군요? 아기 늑대는 잘 크고 있나요? 그러고 보니 이제 아기 늑대가 사춘기가 올 때가 되었는데... \n#b#L0#(#t4032333#에 대해 물었다.)#l\n#k", ["2"] = "아아, #t4032333# 말인가요? 네. 물론 가지고 있습니다. 사춘기에 들어간 늑대에게는 아무리 먹여도 부족한 영양소가 있기 마련이라서요... 이번에도 구입하시겠어요?"},
	["yes"] = {["1"] = "#t4032331#보다 #t4032333#에 들어가는 영양소가 많은 만큼 가격도 비싸진답니다. 그러니까... 40000000 메소예요. 읽기 힘드시다고요? #b4000만 메소#k예요. ", ["2"] = "많이 비싸죠? ...그새 경기가 더 안 좋아져서... #p2060006#에게 월급을 주기도 힘들 정도로 #m230000003# 경영이 어렵거든요... 그렇지만 않으면 더 싸게 드릴 수도 있을 텐데..."},
	["no"] = {["1"] = "#t4032333#는 필요하지 않으신 모양이네요. 그냥 두면 늑대에게 영양이 부족해질 텐데..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "그럼 #t4032333#를 구입하시겠어요? 메소를 주시면 바로 영양제를 드릴게요. "},
	["yes"] = {["1"] = "이렇게 큰 메소를 아낌없이 쓰시다니... 늑대를 무척 사랑하시나봐요. 이렇게 신경써 주시니 이대로라면 아기 늑대는 무사히 사춘기를 보낼 수 있을 거예요. 그럼 계속해서 늑대 잘 키우시길 바래요. "},
	["stop"] = {
		["item"] = {["1"] = "아직 #b4000만 메소#k는 구하지 못하신 모양이네요. 하긴... 늑대를 위해 쓰기엔 많기는 하죠. 하지만 반려 동물이란 가격으로 가치를 매길 수 있는 게 아니니까요."},
	},
}
return nTable
end