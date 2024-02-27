return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022006,
	["lvmin"] = 25,
}
nTable["check1"] = {
	["npc"] = 1022006,
	["item"] = {{["id"] = 4000197, ["count"] = 5}, {["id"] = 4000196, ["count"] = 5}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3500,
	["item"] = {
		{["id"] = 4000196, ["count"] = -5},
		{["id"] = 4000197, ["count"] = -5}
	},
}
nTable["info"] = {
	["name"] = "발굴단원 샨의 부탁",
	["0"] = "페리온 동쪽바위산에 있는 #p1022006#이 발굴단원 샨에게 부탁 받은것이 있다는데...",
	["1"] = "최근 유적 발굴지 근처에 정체를 알 수 없는 몬스터가 나타났다. 이에 #p1022006#은 그 몬스터의 발생 원인에 대한 분석을 나에게 의뢰하였다. 분석을 하기 위해 #b#o2230110##k와 #b#o2230111##k가 쓰고 있는 #b#t4000196#과 #t4000197#을 5개씩 #k가져가자. \n\n#i4000196##t4000196# #b#c4000196##k/5 \n#i4000197##t4000197# #b#c4000197##k/5",
	["2"] = "#t4000196#과 #t4000197#을 분석하기 위해서는 시간이 조금 걸린다고 했다. 끝날 때까지 기다려보자.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "페리온 근처의 유적 발굴지에서 유적 발굴을 하고 있는 내 친구 #p9040002#이 부탁을 한가지 했다네. 처음 보는 이상한 몬스터들이 발굴지 근처에 나타나 발굴 작업을 하는데 방해가 된다고 이 몬스터들을 퇴치해 달라고 했다네. 좀 도와줄 수 있겠나?"},
	["yes"] = {["1"] = "기꺼이 나를 도와주겠다니 감사할 따름이라네. 일단은 몬스터를 퇴치하기 전에 앞서 해야 할 일이 있다네. 학문적으로 그 몬스터의 발생 원인을 철저히 분석해야만 몬스터를 퇴치하고 나서 다시 나타나는 일이 없다네. 내가 직접 가서 분석하는 게 가장 좋은 방법이지만 다른 연구들도 산더미처럼 쌓여 있기 때문에 자네가 가서 #r#o2230110##k와 #r#o2230111##k가 지니고 있는 #b#t4000196#과 #t4000197#을 5장씩#k 구해다 주게나. ", ["2"] = "유적 발굴지로 가는 길을 모르는가? 여기서 동쪽으로 쭉 가다가 #r바위길III#k에 보면 위쪽에 포탈이 하나 있다네 그 곳으로 들어가면 바로 유적 발굴지로 연결이 된다네."},
	["no"] = {["1"] = "내가 무리한 부탁을 한 건 아닌지 모르겠네만… 하루빨리 몬스터를 퇴치해야 할 텐데…"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4000196# 5개와 #t4000197# 5개를 가져왔는가?"},
	["yes"] = {["1"] = "수고했네. 내가 이 #t4000196#과 #t4000197#을 분석할 동안 잠시만 기다리고 있게나. "},
	["stop"] = {
		["item"] = {["1"] = "#t4000196# 5개와 #t4000197# 5개를 가져오게나."},
	},
}
return nTable
end