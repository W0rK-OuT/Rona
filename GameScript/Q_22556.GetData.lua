return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012003,
	["lvmin"] = 34,
	["quest"] = {{["id"] = 22555, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1012003,
	["infoNumber"] = 22598,
	["infoex"] = {"1"},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 6600,
}
nTable["info"] = {
	["name"] = "장로 스탄의 의뢰",
	["area"] = 7,
	["0"] = "스탄 아저씨가 나에게 의뢰를 맡길지 결정한 것 같다. #b스탄 아저씨#k에게 말을 걸어 보자.",
	["1"] = "스탄 아저씨는 #m100000000# 근처의 최대 위험 지역, 골렘의 사원에서 이상한 소동이 벌어지고 있는 것 같다며 무슨 일인지 조사해 달라고 말했다. 너무 깊이 들어가지 말고 #b#m106010102##k 까지만 가서, 뭔가 눈에 띄는 게 있으면 뭐든 조사한 후 돌아와 달라는데...",
	["2"] = "스탄은 이 마을 저 마을에서 몬스터들이 이상하게 변하는 사건이 발생하고 있다는 말은 들었다며, 버섯이나 #o1210100#는 괜찮지만 골렘이 흉폭해지면 감당할 수 없을 거라고 걱정했다.",
	["showLayerTag"] = "22556",
}
nTable["say0"] = {
	["base"] = {["1"] = "당장 일이 급하지만 않으면 다른 모험가를 구해볼 텐데... 아무래도 걱정이 되서 안 되겠구나. 믿음은 안 가지만 너에게 일을 의뢰하마. 대신 너도 약속을 하나 해줘야겠다. 위험하거나 다칠 것 같으면 무조건 도망쳐야 한다. 알겠느냐?"},
	["yes"] = {["1"] = "그럼 의뢰 내용을 말해주마. #m100000000#는 평화로운 마을이지만, 사실 아주 가까운 곳에 위험 지역이 하나 있다. 골렘의 사원 말이다. 골렘들은 느리고 자기 영역을 벗어나지 않아서 일부러 들어가지만 않으면 괜찮아 지금까지는 별 문제가 없었지만...", ["2"] = "얼마 전부터 골렘의 사원 부근에서 이상한 소리가 들리는구나. 쿵쾅거리는 것이 꽤 큰 소동이 벌어진 모양이야. 도대체 무슨 문제인지 가서 확인할 필요가 있어. 부탁할 건 그거다.", ["3"] = "하지만 위험할지 모르니 너무 깊이 들어가지는 말고... 그래, #b#m106010102##k까지만 들어가서, 뭔가 이상한 게 있는 건 아닌지 살펴보고 와다오. 어떤 건지 파악만 하면 되니 그 이상의 위험한 짓은 하지 말고."},
	["no"] = {["1"] = "괜한 오산으로 큰코 다치는 모험가가 얼마나 많은지 모르니 하는 말이지... 약속해 주기 전까지 너에게는 아무것도 의뢰하지 않겠다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "골렘의 사원에는 잘 갔다 왔느냐? 그래, 뭔가 특이한 것은 있었고? 어서 말해 봐라.\r\n#b#L0#이상한 인형이 얹혀 있는 문이 하나 있었어요. #l\n#k", ["2"] = "이상한 인형이 얹혀진 문이라... 대체 뭐지? 누군가의 장난일 뿐인 건가?"},
	["yes"] = {["1"] = "안 그래도 최근 이 마을 저 마을에서 몬스터들이 변하는 사건이 발생하고 있는데... 혹시라도 골렘이 흉폭해지면 큰일이야. 버섯이나 #o1210100#는 막을 수 있지만 골렘은 막기 힘들 테니 말이야. 뭔가 문제가 생기면 도움을 청하마. "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["default"] = {["1"] = "아직 골렘의 사원에는 안 들어간 게냐? #b#m106010102##k까지 가보고, 사원과 어울리지 않는 뭔가가 생겼다면 확인해 보고 와라."},
	},
	["ask"] = 1,
}
return nTable
end