return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052103,
	["subJobFlags"] = 2,
	["lvmin"] = 12,
	["quest"] = {{["id"] = 2354, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052002,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["nextQuest"] = 2382,
	["exp"] = 1500,
}
nTable["info"] = {
	["name"] = "넬라의 의견 들어보기",
	["area"] = 10,
	["type"] = "[필수]",
	["0"] = "넬라는 다크로드에 대해 자세히 알고 있는듯하다.다시 #b넬라#k에게 말을 걸어보자.",
	["1"] = "넬라는 아무래도 다크로드님께 비밀이 있는거 같다며, 다름사람들도 그렇게 생각하는지 알아봐 달라며 제이엠에게 가보라했다. #b뒷골목의 제이엠#k이라.. 왜 하필 그 녀석이지?",
	["2"] = "넬라는 그다지 다크로드에 대해 아는것이 없는것 같다. 제이엠은 무언가를 알고 있는 것 같은데...",
	["rewardSummary"] = "경험치 1,500\r\n'뒷골목의 제이엠 의견 들어보기' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "그런데 어째서 째즈바에 박혀서 나오시지 않는지 모르겠어요. 혹시 모든사람들이 잠든 후에 살짝 나오시는 걸까요?\r\n#L0##b저는 아직 잘 모르겠어요.#l\n#k", ["2"] = "뭐. 그런 신비로운 면이 다크로드님의 매력이긴 하지만 뭔가 큰 비밀을 가지고 계신건 아닐까요? 아 물론 그것 때문에 불만이라거나 그런건 아니지만 저는 다른사람들의 비밀에 대해서 아주 관심이 많거든요. 그런의미에서 궁금한게 있는데 한번 알아봐주시겠어요?"},
	["yes"] = {["1"] = "요새 마을 사람들이 좀도둑 스포아에 대해 술렁이던데 무슨일이 생긴건지 너무 궁금해서요. #b뒷골목의 제이엠#k에게 물어봐주시겠어요?"},
	["no"] = {["1"] = "제 이야기를 다 듣고 부탁은 안들어주시겠다는거에요? 전 우리가 아주 가까워졌다고 생각했는데..."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "헤이! 무슨 이야기가 듣고 싶은거지? 걱정말라고. 나도 이 뒷골목에서 잔뼈가 굵었어. 그냥 아무 이유없이 나한테 말을 걸지 않을 거라는것 정도는 알고 있다고!\r\n#L0##b별 이유는 없어요. 그냥 당신이라면 뒷골목 일에 훤하니까 좀도둑 스포아에 대해서 뭐 알고 있는게 있나해서요.#l\n#k", ["2"] = "뭐야. 그런걸 물어보려고 일부러 날 찾아왔단 말야?"},
	["yes"] = {["1"] = "좀도둑 스포아라... 이런 말 하면 실망하겠지만 사실 그녀석은 별 볼일 없는 녀석이라고. 기껏해야 장난이나 치고 다니던 시시껄렁한 녀석이었는데 말이지."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["npc"] = {["1"] = "아무래도 좀도둑 스포아에 대해서는 #b뒷골목의 제이엠#k에게 물어 보는 것이 좋겠어요."},
	},
	["ask"] = 1,
}
return nTable
end