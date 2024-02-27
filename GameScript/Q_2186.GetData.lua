return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1094001,
	["lvmin"] = 15,
}
nTable["check1"] = {
	["npc"] = 1094001,
	["endscript"] = "q2186e",
	["item"] = {{["id"] = 4031853, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "안경을 찾아줘",
	["0"] = "노틸러스 선착장에서 누군가가 곤란해 처해있다고 한다. 자신의 몸과 같은 물건을 잃어버렸다고 하는데…",
	["1"] = "안경을 잃어버린 아벨은 앞에 전혀 보이지 않는다고 한다. 낮잠 자는 사이에 펠리컨들이 집어가버렸다니… 아벨이 앞을 볼 수 있도록 갈매기들이 모여있는 노틸러스호 선착장 동쪽 끝에 있는 #b감시탑#k의 풀 숲을 뒤져서 안경을 찾아보자. #b아벨의 안경#k은 검은 뿔테라는 것도 잊지 말고! \n\n#i4031853##t4031853# #b#c4031853##k / 1",
	["2"] = "오~ 내가 찾아온 안경을 쓰고 좋아하는 아벨. 엇? 그런데 너무 다른 사람인데? 안경의 힘인가?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "내 안경… 내 안경… \n\r#L0##b 무슨 일 있으세요? 땅에 떨어진 물건이라도 있나요?#k#l", ["2"] = "아~ 가까이 다가오지 마세요! 혹시 제 안경이 떨어져 있을지도 모르니까요. 밟으면 큰일나요! 그 근처에 안경이 떨어져 있나요? 검은 뿔테 안경… 내 안경… \n\r#L0##b 아니요. 없는데…#k#l", ["3"] = "하아~ 바트에게 그렇게 말했는데… 또 갈매기들이 가져갔군요. 워낙 반짝이는 물건을 좋아하니 제가 자고 있는 사이에 안경을 가져간 적이 한두 번이 아니죠. 전 앞이 안보여서 그런데 감시탑으로 가서 안경 좀 찾아주세요."},
	["yes"] = {["1"] = "감사합니다. 제 안경은 제 눈과 같거든요. 안경이 없으면 아무 것도 보이지 않아요. 바로 제 앞에 있는 당신의 얼굴도 어떻게 생겼는지 흐릿흐릿하군요.", ["2"] = "제 안경은 검은색 뿔테 안경이에요. 눈이 엄청 나빠서 다른 사람의 안경은 써도 앞이 보이지 않으니 꼭 제 안경을 찾아주셔야 해요. ", ["3"] = "#b감시탑#k은 #b이 곳에서 오른쪽으로 계속 가시면#k 나올 거에요. 그 곳으로 가면 바트와 못된 갈매기들이 우글우글 한 곳이니 쉽게 찾을 수 있을겁니다. 제 #b안경#k을 꼭 찾아서 저에게 가져와 주세요."},
	["no"] = {["1"] = "이런 제 모습이 불쌍하지 않으세요? 냉정한 분이시군요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "제 안경은 검은 뿔테입니다. 꼭 찾아주세요."},
	},
}
return nTable
end