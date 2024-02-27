return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013203,
	["lvmin"] = 68,
	["quest"] = {{["id"] = 22582, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1013203,
	["mob"] = {
		[1] = {["id"] = 9300389, ["count"] = 1}
	},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 2430032, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 64900,
	["nextQuest"] = 22584,
}
nTable["info"] = {
	["name"] = "자유로운 영혼 풀어놓기",
	["area"] = 7,
	["0"] = "#p1013203#가 말하던 물건이 완성된 것 같다. #m220000300#에 있는 블랙윙의 아지트, #b#m922030000##k로 가자.",
	["1"] = "#p1013203#는 영혼이 담긴 주머니를 주며, #b#m922030010##k로 가라고 말했다. 거기에 다른 멤버가 미리 준비한 사다리가 있을 테니 타고 위로 올라간 후,  그 장소에서 #b미리 준 주머니를 열어 #t4000144#을 풀어놔 거기 있는 자들을 쫓아#k 달라고 말했다. 그 장소에 아무도 안 남게 되면 돌아와 달라는데...\r\n\r\n좀 이상한 일이다. 왜 영혼들을 자유롭게 해주는 걸까? 거기 있던 자들을 쫓아낼 필요까지 있나?\r\n\r\n#o9300389##r #a225831##k",
	["2"] = "#m922030000# 위, #m922030010#에서 영혼을 자유롭게 풀어주고 돌아왔다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "아직 임무는 끝나지 않았습니다. 자, 이 주머니를 받으십시오. 당신이 수집해 온 #t4000144#이 담긴 주머니랍니다. 이 주머니를 가지고 #b#m220000000# 시계탑#k의 #b#m922030010##k로 가주세요.", ["2"] = "#m922030010#에 가 보시면 다른 멤버가 미리 준비한 사다리가 하나 내려와 있을 겁니다. 그 사다리를 타고 위로 올라가 도착한 곳에서 주머니를 열어 #t4000144#들어 풀어놔 주시면 됩니다."},
	["yes"] = {["1"] = "빠르고 신중하게 #b#t4000144#을 모두 풀어 원래 그 곳에 있던 자들을 모두 쫓아내#k 주십시오. 그 장소에 당신 외에는 아무도 남지 않을 때까지... 그럼 부탁 드리겠습니다."},
	["no"] = {["1"] = "이런... 당신이라면 이 일을 꼭 맡아주실거라 기대했는데요..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4000144#은 모두 풀어놓고 오신 겁니까? 감사합니다. 정말 훌륭하시군요. 이걸로 경비병들의 주의는 돌릴 수 있게 되었어... 다음은 #o9300390#만 처리하면 #r봉인석#k이 손 안에... 아, 아무것도 아닙니다.\r\n#L0##b저기 궁금한 게 생겼는데요...#l\n#k", ["2"] = "죄송하지만 이번 일은 아직 완전히 끝나지 않았습니다. 하나 더 임무를 맡아 주십시오. 임무가 끝나면 이야기를 들어 드리겠습니다.\r\n#L0##b(경비병들이 #t4000144# 때문에 굉장히 화를 내던데 괜찮은 걸까? 물어보고 싶지만 #p1013203#는 벌써 다음 일 이야기를 시작했다. 마저 하고 물어보자...)#l\n#k", ["3"] = "그럼 다음 임무입니다."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
		["default"] = {["1"] = "아직 #b#m922030010##k로는 안 가신 겁니까? 가서 제가 드린 주머니를 열어 영혼을 모두 풀어주시고 오십시오. 아, 혹시 주머니를 잃어버리신 거라면 퀘스트를 포기한 후 다시 말을 걸어 주세요."},
	},
	["ask"] = 1,
}
return nTable
end