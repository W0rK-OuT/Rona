return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052103,
	["lvmin"] = 15,
	["quest"] = {{["id"] = 2029, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052103,
	["item"] = {{["id"] = 4003000, ["count"] = 5}, {["id"] = 4003001, ["count"] = 5}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 900,
	["item"] = {
		{["id"] = 4003001, ["count"] = -5},
		{["id"] = 4003000, ["count"] = -5},
		{["id"] = 2020002, ["count"] = 100}
	},
}
nTable["info"] = {
	["name"] = "슈미의 의뢰",
	["parent"] = "넬라와 커닝시티 주민들의 의뢰",
	["order"] = 2,
	["1"] = "넬라로부터 두 번째 의뢰를 받았다. 지하철 입구 앞에 앉아있는 슈미가 친구로부터 받은 강아지의 집을 만들고 싶다고 했다고... 집을 짓기 위해서는 #b가공된 나무 5개#k와 #b나사 5개#k가 필요하다니 구하는 대로 넬라에게 가져가야 겠다.\n\n#i4003000# #t4003000# #b#c4003000##k/5\n#i4003001# #t4003001# #b#c4003001##k/5",
	["2"] = "슈미가 부탁한 물건을 모두 모아 넬라에게 가져다주고 답례로 슈미가 손수 만든 케이크를 잔뜩 받았다. 이걸로 슈미의 강아지가 따뜻한 집에서 지낼 수 있겠지? 나중에 또 시간이 난다면 넬라를 찾아가봐야 겠는걸~",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "앗! 마침 잘왔어. 새로운 의뢰가 들어와 있는 참이었거든. 이번에는 지하철 앞에 앉아있는 #b#p1052102##k가 도움을 원하고 있는 모양이야. 며칠 전 친한 친구로부터 작은 강아지를 선물 받았는데 따뜻하고 포근한 집을 지어주고 싶다나 뭐라나~", ["2"] = "#b#t4003001# 5개#k와 #b#t4003000# 5개#k만 있으면 어떻게든 될 것 같아. 강아지가 추위에 떨고 있으니까 되도록 빨리 구해와 줬음 좋겠어. 너라면 그 정도 쯤이야 별것 아니겠지? 그럼 모으는 대로 다시 나에게 돌아와 줘. 기다리고 있을게."},
}
nTable["say1"] = {
	["base"] = {["1"] = "엇... 생각보다 빨리 돌아왔는걸? 지난번에도 일을 잘 해결하더니 정말 믿음직스러워~ 좋아! 이렇게 의뢰를 무사히 해결해 줬으니 사례를 해야겠지. #b#p1052102##k가 여행에 도움이 되라는 뜻에서 집에서 손수 만든 #b#t2020002##k를 잔뜩 보내왔으니 받아~"},
	["yes"] = {["1"] = "그럼 또 뭔가를 의뢰받고 싶어지면 다시 날 찾아와줘. 이 마을에는 도움을 필요로 하는 사람들이 꽤 많거든~"},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#p1052102##k가 부탁한 물건들을 모으지 못한 모양이지? 강아지의 집을 만들어주기 위해서는 #b#t4003001# 5개#k와 #b#t4003000# 5개#k가 필요하다고 하더라고. 모으는대로 나에게 가져오면 되니까 힘내~"},
	},
}
return nTable
end