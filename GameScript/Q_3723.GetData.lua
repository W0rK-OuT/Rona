return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2082005,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3722, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2082004,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 30000,
}
nTable["info"] = {
	["name"] = "소년과 소녀",
	["area"] = 41,
	["1"] = "똘똘한 소년은 소녀가 스케치북에 생각하는 로보트 그림을 그렸다면서 소녀가 아끼는 그 스케치북 낱장을 되찾아주겠다면서 다짐을 했다. 어쩐지 앤디에게서 들었던 이야기 같은데 앤디에게 돌아가봐야겠다.",
	["2"] = "소년과 소녀에 대한 내 이야기를 들은 앤디는 유용한 정보라고 하면서 다음 시간 여행을 준비하라고 말했다. ",
	["parent"] = "2021년의 어느 날",
	["order"] = 5,
	["rewardSummary"] = "경험치 30,000\r\n'시간의 파수꾼 넥스' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "스케치북을 소중하게 여기는 데 다 찾지 못해서 크게 실망한 모양이에요. 얼마 전에는 생각하는 로봇 그림을 그렸다면서 저한테 자랑도 했었는데 말이죠. 혹시라도 길가다가 땅에 떨어진 종이가 있다면 유심히 봐주시겠어요?"},
	["yes"] = {["1"] = "정말 멋진 그림이었는데 말이에요. 그래도 너무 슬퍼하지는 않았으면 좋겠어요."},
	["no"] = {["1"] = "찾아 달라는 것도 아닌데 그렇게 귀찮으시면 어쩔 수 없죠."},
}
nTable["say1"] = {
	["base"] = {["1"] = "무슨 일이지?\r\n#b#L0#아무래도 말씀드려야 할 것 같아서요.#l\n#k", ["2"] = "어떤 얘기지? 새로운 정보라도 들은 건가?\r\n#b#L0#확실하진 않지만, 2016년의 작은 마을을 조사하던 중, 어떤 소년을 알게되었는데, 생각하는 로봇이라는 이야기를 하더군요. 어쩐지 당신이 말했던 이야기와 유사한 것 같아서요.#l\n#k", ["3"] = "정말인가? 그런 말을 했다고?\r\n#b#L0#네. 하지만 그 그림을 잃어버린 것 같았어요. 그리고 아이들은 상상력이 풍부하니까 그저 그림에 불과할 수도 있고요. 하지만 어쩐지 맘에 걸리네요.#l\n#k", ["4"] = "네. 확실하진 않군. 하지만 내 맘에도 걸리는 부분이 있어. 고마워. 유용한 정보인 것 같아. 아직 확실한 것은 없지만, 단서는 잡은 것 같아."},
	["yes"] = {["1"] = "고마워. 이제 다음 시간여행을 준비할 때가 된 것 같아. 준비가 끝나면 다시 날 찾아와줘."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
		["npc"] = {["1"] = "어른들은 모두 어딜 가신 걸까요?"},
	},
	["ask"] = 1,
}
return nTable
end