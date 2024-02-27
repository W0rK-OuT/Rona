return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2112014,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3365, ["state"] = 1}},
}
nTable["check1"] = {
	["npc"] = 2112014,
	["item"] = {{["id"] = 4031797, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100,
	["pop"] = 1,
	["item"] = {
		{["id"] = 4031797, ["count"] = -20}
	},
}
nTable["info"] = {
	["name"] = "연구문서 정리하기",
	["0"] = "힘들게 연구하는 유레테를 위해, 그의 연구를 돕기로 약속했다. 어떤 일을 도와주면 될까? 유레테를 찾아가 보자. ",
	["1"] = "유레테는 연구문서 정리를 부탁했다. 그의 #b실험실2#k에 그 동안 마구 휘갈겨 써놓기만 하고 정리는 하지 않은 문서들이 잔뜩 있다고 하니, 넓은 서재 여기저기에 흩어진 #b연구문서#k를 모아 보자. \n\n#i4031797##t4031797# #b#c4031797##k/20 ",
	["2"] = "연구문서를 모아 유레테에게 전달했다. 이 많은 문서들을 다시 정리하려면 유레테도 꽤 바빠질 것 같다.",
	["area"] = 47,
	["sortkey"] = "27",
}
nTable["say0"] = {
	["base"] = {["1"] = "자네에게 부탁할 일은 연구문서를 정리하는 일이라네. 그 동안 연구하면서 마구 써 놓기만 한 문서들이 여기저기에 흩어져 있어서, 도무지 정리가 안 되거든. 예전 문서들을 모두 찾아 주기만 하면 된다네. 어때? 할 수 있겠는가?"},
	["yes"] = {["1"] = "왼쪽으로 가면 실험실로 통하는  세 개의 문이 있다네. 그 중, #b가운데#k 있는 문이 실험실2로 통하는 문이라네. 넓은 서재를 뒤져 여기저기 흩어져 있는 문서들을 모두 찾아가지고 와 주게. #b연구문서 20개#k를 찾아다 주면 된다네. 그럼 부탁하네."},
	["no"] = {["1"] = "음... 그리 어려운 일은 아닌데... 너무 걱정하지 말고 해줬으면 좋겠군. 할 생각이 들면 다시 찾아와 주게."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오! 서재에서 연구문서를 모두 찾아 왔구만! 정말 고맙네. 서재 여기저기에 마구 늘어 놓아서 찾기 힘들었을 텐데... 수고했네."},
	["yes"] = {["1"] = "그나저나 이 문서 내용을 언제 다 다시 정리한다? 당장 찾아 놓긴 했지만 본격적인 정리는 다시 해야 할 텐데... 끄응. 이건 누구한테 도와 달라는 말도 못하고. 골치 아프구만."},
	["stop"] = {
		["item"] = {["1"] = "음... 아직 #b연구문서#k를 다 찾아 나오지 못했군. 하긴. #b20개#k를 다 찾는 게 쉽지는 않지... 조금만 더 서둘러 주게."},
	},
}
return nTable
end