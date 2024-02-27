return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002104,
	["lvmin"] = 54,
	["quest"] = {{["id"] = 21747, ["state"] = 2}},
	["job"] = {2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1201000,
	["endscript"] = "q21748e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "빼앗긴 무릉의 봉인석",
	["area"] = 6,
	["0"] = "무릉의 봉인석을 빼앗기고 말았다... 괜찮을까? #b#m104000000##k으로 가서 #b#p1002104##k에게 상담해 보자.",
	["1"] = "#m250000000#에서 있었던 일을 #p1002104#에게 모두 말하자, #p1002104#는 #b#m140000000##k에 가서 #b#p1201000##k에게도 그 이야기를 해두는 게 좋겠다고 말했다.",
	["2"] = "#p1201000#은 영웅들이 봉인석을 마을에 전한 장본인이라면, 영웅에 관한 것을 연구하다 보면 봉인석에 대해 더 알 수 있을 거다는 것이니 이것만으로도 충분한 수확이라고 말했다. 그러면서 #p1201000#은 새로 해독한 스킬을 전해 주었다... #b파이널 차지#k 스킬을 사용할 수 있게 되었다!",
	["type"] = "[스킬]",
}
nTable["say0"] = {
	["base"] = {["1"] = "왔어, 영웅님? #m250000000#에서의 일은... 에, 또... 표정이 안 좋은 걸 보니 잘 안 된 모양이네. 어떻게 된 거야?\n#b#L0#(무릉의 봉인석에 관해 이야기했다.)#l\n#k", ["2"] = "이번에도 #o9300352#가 방해인가... 블랙윙, 정말 만만치 않은 녀석들이군... 하지만 영웅님도 점점 경험을 쌓고 있잖아? 다음에는 분명 녀석들을 막을 수 있을 거야. 힘내. "},
	["yes"] = {["1"] = "그것보다 #b#p1201000##k에게도 이 이야기를 전해 주는 게 좋겠어. 영웅에 대해 잘 알고 있는 #p1201000#이라면 이 정보에서 뭔가 활용할 만한 사실을 끌어낼 거야. ", ["2"] = "뭣보다, #p1201000#이 이번에 또 스킬을 해독해낸 것 같으니 꼭 #b#m140000000##k으로 가보라고. 혹시 또 블랙윙에 관한 정보를 찾으면 연락 할게. 그럼 나중에 봐. #p1201000#에게 안부 전해줘."},
	["no"] = {["1"] = "영웅님도 참... 얼굴은 무뚝뚝한데 은근히 소심하다니까. "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p1201000##k에게는 안 가신 건가? 한 두 번 실패한 거 가지고 우울해지지 마, 영웅님. #p1201000#은 그런 거에 눈 하나 깜짝 안 할 거라고. 그 애는 더 중요한 게 뭔지 아는 애거든."},
	},
}
return nTable
end