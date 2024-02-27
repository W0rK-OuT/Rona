return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012010,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3006, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2020006,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2000,
	["nextQuest"] = 3008,
}
nTable["info"] = {
	["name"] = "한 가지 단서",
	["parent"] = "고대의 책을 찾아서...",
	["order"] = 4,
	["1"] = "엘마는 헬라가 집을 나가버리기 전 #b늙은 노파#k에 대해 말하는 것을 들은 적이 있다고 말해 주었다. 노파에 대해 알고 싶다면 다시 한 번 제이드를 찾아가 보라는데...",
	["2"] = "제이드는 헬라가 말한 늙은 노파에 대해 알고 있을까?",
	["area"] = 33,
	["summary"] = "엘나스에 있는 제이드를 찾아가 보자.",
	["rewardSummary"] = "경험치 2,000\r\n'늙은 노파를 찾아서...' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "엘나스의 제이드님은 만나 보셨나요? 그 분도 모른다고 하셨단 말씀이죠... 흐음... 주인님의 #b어머님의 유품#k에 대해 들으셨다고요? 맞아... 달빛도 없던 밤 그 유품을 누군가에게 도둑맞은 후부터 주인님은 조금씩 이상해지기 시작했죠... 하지만 저도 유품을 훔쳐간 자가 누군지는 모른답니다.", ["2"] = "아참, 그렇지! 주인님이 집을 나가시기 몇 일 전 #b늙은 노파#k에 대해 이야기 하시는 걸 들은 적이 있어요. 우리 마을에 노파는 없는데 누굴 말하는 거였을까요... 맞아... 혹시 #b제이드#k님이라면 노파에 대해 알고 있을지도 모르겠네요. 제이드님은 이 대륙을 여행하는걸 좋아하시거든요."},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "주인님은 집을 나가시기 몇 일 전 #b늙은 노파#k에 대한 혼잣말을 하시곤 했답니다. 우리 마을에 노파는 없는데 누굴 말하는 거였을까요... 하지만 #b제이드#k님이라면 노파에 대해 알고 있을지도 모르겠네요."},
	},
}
return nTable
end