return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012018,
	["lvmin"] = 52,
	["quest"] = {{["id"] = 3327, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111004,
	["item"] = {{["id"] = 4031699, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031699, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 40000,
	["item"] = {
		{["id"] = 4031699, ["count"] = -1},
		{["id"] = 2030016, ["count"] = 20}
	},
}
nTable["info"] = {
	["name"] = "햇살 한 모금",
	["parent"] = "슬픔에 잠긴 요정2",
	["order"] = 3,
	["1"] = "#p2012018#은 보다 강력하게 만들어진 요정의 치유제라며 #t4031699#을 주었다. 이걸로 키니가 건강해질 수 있을까? 하지만 #p2012018#의 표정은 그리 밝지 않은데... 어쨌건 이걸 #b#p2111004##k에게 가져다 주자.",
	["2"] = "#p2111004#는 이번에도 효과가 없으면 어떻게 해야 할지 모르겠다며 실종된 그녀의 남편을 그리워했다. 알카드노의 연금술사였던 그녀의 남편이라면 이 일도 해결할 수 있었을 것이라는데...",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "마침 잘 왔어. 조카에게 줄 약을 완성했어. 요정의 치유제 #t4031699#... 어린 아이에게 쓰기엔 별로 좋은 약이 아닌 것 같아서 미뤄뒀는데... 어쩔 수 없지. 이걸 쓰는 수밖에... 자, 어서 이걸 #b#p2111004##k에게 가져다 줘."},
	["yes"] = {["1"] = "솔직히, 이 약으로도 #p2111005#가 건강해질 수 있을지는 잘 모르겠어. 요정과 인간의 혼혈은 원체 몸이 약하다고 하거든. 왜 고귀한 요정인 #p2111004#가 인간을 사랑하게 되었을까... 도무지 모르겠군."},
	["no"] = {["1"] = "#m200000000#에 무슨 볼 일이라도 있는 거야? 그럼 일을 모두 마치고 전달할 시간이 생기면 다시 찾아와줘."},
}
nTable["say1"] = {
	["base"] = {["1"] = "여행자님... #p2012018#에게는 갔다 오셨어요? 아... 이게 바로 #p2012018#이 만든 그 약이군요. 정말 고생하셨어요... 이렇게까지 도와주시다니, 정말 감사드립니다. "},
	["yes"] = {["1"] = "약해지지 않겠다고 결심했지만, 이럴 땐 역시 남편이 그리워요. 알카드노의 연금술사인 그라면, #p2111005#의 병을 고칠 수도 있을 텐데 말이죠..."},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p2111004##k에게는 안 간 거야? 무척 걱정하고 있을 테니 시간 끌지 말고 어서 #b#m261000000##k로 가서 약을 전해줘."},
		["item"] = {["1"] = "아직 #p2012018#에게는 안 가신 건가요? #p2012018#에게서 #p2111005#를 위한 약을 가져다 주세요. 부탁드려요."},
	},
	["ask"] = {"전에 준 #b#t4031699##k을 잃어버렸다고? 정신이 있는 거야 없는 거야... 그건 중요한 약이야. 제발 좀 소중히 다뤄줘. 일단 다시 주긴 하겠지만... (투덜투덜) 아무튼 잃어버리지 말라고!"},
}
return nTable
end