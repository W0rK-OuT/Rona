return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022006,
	["quest"] = {{["id"] = 2145, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1022006,
	["mob"] = {
		[1] = {["id"] = 3220000, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 43500,
	["pop"] = 5,
}
nTable["info"] = {
	["name"] = "괴목 스텀피",
	["parent"] = "오래된 나무",
	["order"] = 3,
	["1"] = "다시 #p1022006#박사를 찾아갔더니 그는 나뭇가지를 연구해본 결과, #o3220000#가 #m102000000#의 양분을 모두 빨아들이고 있는 것 같다고 했다. 이대로 가다가는 #m102000000#은 생명이 살지 못하는 죽음의 땅이 될거라면서 #r#o3220000##k를 없애달라는 부탁을 했다.\n\n#o3220000#  #r#a21461##k",
	["2"] = "#p1022006#박사의 부탁을 받고 #m102000000#의 양분을 모두 빨아들이고 있는 #o3220000#를 찾아 퇴치했다. 이것으로 #m102000000#이 원래대로 돌아갈 수 있는 것일까?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "어서오게. 그동안 자네가 가져다 준 #t4031773#를 유심히 살펴본 결과, 나의 가설이 사실이라는 확신을 가지게 되었네. 그리고 문제는 우리가 생각했던 것 보다 더 엄청난 결과를 불러오게 될걸세.", ["2"] = "무슨 말인지 못 알아 듣는 것 같군. #o3220000#는 단지 스텀프들의 양분을 뺏어가고 있던 것이 아니었어. #m102000000#의 양분을 직접 흡수하고 있었던거야. 스텀프들은 양분을 뺏겨서 말라가는 것이 아니라 흡수할 양분을 찾지 못했던거지.", ["3"] = "이건 정말 심각한 일이야. 이 상태가 지속된다면 #m102000000#은 그 어떤 생명도 살지 못하는 죽음의 땅이 돼버릴걸세. 이번에도 자네가 좀 나서줘야겠어. "},
	["yes"] = {["1"] = "#o3220000#는 아주 위험한 존재야. 끈질긴 생명력을 가지고 있지만, 그로 인해 다른 모든 생명을 위협하는 존재이지. #r#o3220000#를 없애는 것#k만이 #m102000000#을 구하는 유일한 길이야. #o3220000#를 찾아서 없애 주게. "},
	["no"] = {["1"] = "아직도 이해를 못 하겠나? 지금 이 문제는 한시가 급한 문제라구! 답답하군! 답답해!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "돌아왔군. 내가 부탁한건 어떻게 됐지? 이런이런, 말 안해도 알 수 있어. 땅의 기운을 느껴봐. 뭔가 달라졌다는 것을 자네도 느끼고 있겠지. 정말 수고했네. 자네는 명예로운 일을 한거야."},
	["yes"] = {["1"] = "하지만 난 왠지 불안하군. 이번 일로 #m102000000#은 큰 타격을 받았어. 다시 예전의 숲으로 돌아가는 길이 더 멀어진 것만 같아."},
	["stop"] = {
		["mob"] = {["1"] = "미안하지만 #o3220000#를 어디서 발견할 수 있는지는 나도 알 수가 없네. 도움이 못 돼서 미안하군. 하지만 반드시 #r#o3220000##k를 퇴치해야 하네. 알겠지?"},
	},
}
return nTable
end