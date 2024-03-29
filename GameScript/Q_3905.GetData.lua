return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012012,
	["lvmin"] = 23,
	["quest"] = {{["id"] = 3900, ["state"] = 2}, {["id"] = 3904, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101007,
	["item"] = {{["id"] = 4031577, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031577, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 2600,
	["item"] = {
		{["id"] = 4031577, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "왕비의 차3",
	["parent"] = "왕비의 차",
	["order"] = 3,
	["0"] = " ",
	["1"] = "#o5200000# 30마리를 퇴치하고 #b#p2012012##k에게서 #t4031577#을 받았다. 이렇게 봐서는 별다를 게 없어 보이는데... 도대체 왕비가 왜 그렇게 까탈스럽게 구는지 모르겠다. 어서 #b왕비 #p2101007##k에게 #t4031577#을 가져다 주자. ",
	["2"] = "예상은 했지만... 역시 왕비는 고맙다는 말 한마디도 하지 않았다. #m260000000# 주민들이 싫어하는 것도 이해가 간다, 정말~ ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "#o5200000#도 처치해 주셨으니 #t4031577#을 드리겠어요. 귀한 물건이니 조심스럽게 다뤄 주세요. #t4031577#을 구하는 사람이 #b#p2101007##k...라고 하셨던가요? #b#m260000000##k에 사는 요정이라니...  전혀 모르겠는데... 어쨌든 그 분에게 잘 전달해 주세요."},
	["yes"] = {["1"] = "#p2101007#라는 요정이 #m200000000# 출신이라고요? 이상하네... 도대체 누굴까요? 웬만한 요정은 거의 다 아는데 처음 들어보는 이름이네요. "},
	["no"] = {["1"] = "#m260000000#에는 나중에 가실 모양이네요. 그럼 #t4031577#은 일단 가지고 있을게요. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4031577#은 구해 왔느냐? 오호~ 이게 바로 #t4031577#이군. 향이 #t4000331# 따위와는 비교할 수 없을 정도로 좋은걸? 이거면 마실만하겠어. 호호홋~ "},
	["yes"] = {["1"] = "평민치고는 제법이군. 뭐 그래봤자 요정에 비하면 별 거 아니지만 말이야. 호! 호! 홋! "},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#m260000000##k로 가지 않으신 모양이네요. #b#p2101007##k라는 요정이 무척 기다리지 않을까요? "},
		["item"] = {["1"] = "뭐야? #b#t4031577##k은 아직도 구하지 못한 거야? 그럴 줄 알았어. 역시 인간들은 믿어서 안 된다니까~ "},
	},
	["ask"] = {"#t4031577#을 잃어버리셨군요. 아아~ 귀한 건데... 그냥 드리면 안 되는 거지만 부탁한 요정이 기다리고 있을 테니 이번 한 번만 다시 드릴게요. 어서 이걸 가지고 #m260000000#로 가세요."},
}
return nTable
end