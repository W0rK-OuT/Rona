return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032001,
	["lvmin"] = 41,
	["normalAutoStart"] = 1,
	["quest"] = {{["id"] = 22546, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1032001,
	["item"] = {{["id"] = 4032467, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 23000,
	["item"] = {
		{["id"] = 4032467, ["count"] = -1}
	},
	["sp"] = 0,
}
nTable["info"] = {
	["name"] = "오닉스 드래곤 연구",
	["area"] = 7,
	["0"] = "오닉스 드래곤 연구를 도와주기로 한 #b#p1032001##k씨가 갑자기 말을 걸어 오는데...",
	["1"] = "#p1032001#씨는 그의 친구인 #m240000000#의 #p2081000#씨가 비늘만 봐도 오닉스 드래곤인지 아닌지 구분할 수 있다고 말했다. #p1013000#의 비늘을 보내보면 #p1013000#가 오닉스 드래곤이 정말 맞는지 확인할 수 있을지도 모른다. #p1013000#의 비늘을 한 장 달라고 해볼까?\r\n\r\n#i4032467# #t4032467# #b#c4032467# / 1#k",
	["2"] = "드래곤의 비늘을 받은 #p1032001#씨는 비늘을 #m240000000#로 보내고 답을 들을 때까지 시간이 꽤 걸릴 테니 나중에 다시 말을 걸어달라고 했다.",
	["autoStart"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "오랜만이네. 오닉스 드래곤을 연구하는 자네에게 희소식이 하나 있어 연락하게 되었다네. 나의 친구이자 #m240000000# 마을에서 어린 용들을 돌보는 하플링 #p2081000#가 오닉스 드래곤에 대해서도 알고 있다는군. \r\n#L0##b그 분이라면 오닉스 드래곤을 구분할 수도 있나요?#l\n#k", ["2"] = "물론이지. 그는 나이든 하프링이니까 비늘만 봐도 어떤 용인지 구분할 수 있다네. 오닉스 드래곤의 비늘이 한 장이라도 있다면 단 번에 구분해 낼 거야. 그 정도로 잘 알고 있지...\r\n#L0##b(그럼 타타모씨에게 물어보면 오닉스 드래곤이 왜 멸종했는지 알아볼 수 있을까?)#l\n#k", ["3"] = "하지만 타타모에게 오닉스 드래곤에 대한 이야기를 듣는 건 힘들 것 같더군. 오랜 친구인 나에게조차 말해 주지 않고 있어... 뭔가 죄책감이라도 느끼는 것처럼 말이야...\r\n#L0##b어, 어떻게 하면 타타모씨에게 오닉스 드래곤에 대한 이야기를 들을 수 있을까요?#l\n#k", ["4"] = "글쎄... 오닉스 드래곤의 비늘이라도 한 장 보여주면, 그걸 구한 방법이 듣고 싶어서라도 자신이 알고 있는 이야기를 해주지 않을까?"},
	["yes"] = {["1"] = "오닉스 드래곤이 바로 옆에 있다면 비늘을 구하기 쉬울 텐데..."},
	["no"] = {["1"] = "음... 하긴. 자네라도 오닉스 드래곤의 비늘을 가지고 있진 않을 테지."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
		["2"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "음, 무슨 일인가? 응? 이게 오닉스 드래곤의 비늘이라고? 과연 광택이 특이하군... 하지만 진짜 비늘일지 아닐지는 확실하지 않아. 좋아, 타타모에게 한 번 보내 감정을 의뢰하지."},
	["yes"] = {["1"] = "이건 #m240000000#에 보내두도록 하겠네. 보내는 시간, 확인하는 시간, 답신을 보내는 시간을 다 하면 꽤 시일이 걸리겠군... #m240000000#에서 답이 오는대로 연락 주겠네."},
	["stop"] = {
		["item"] = {["1"] = "오닉스 드래곤의 비늘... 그런 것을 구하기 쉬울 리가 없지."},
	},
}
return nTable
end