return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061005,
	["lvmin"] = 50,
	["quest"] = {{["id"] = 2050, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1061005,
	["item"] = {{["id"] = 4031032, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 25000,
	["pop"] = 2,
	["item"] = {
		{["id"] = 4021009, ["count"] = 1},
		{["id"] = 4031032, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "사비트라마의 젊어지는 약 만들기",
	["0"] = "슬리피우드의 사비트라마가 새로운 약을 만든다는데...",
	["1"] = "예전에 약초찾기를 도와줬던 #b사비트라마#k를 슬리피우드 호텔 앞에서 다시 만났다. 그는 지금 만들고 있는 새로운 약에 꼭 필요한 약초가 있는 곳을 발견했다면서 대신 그 숲으로 가서 #b두 뿌리 홍삼#k이라는 뿌리를 가져다 달라고 부탁했다. 두 가닥으로 뿌리가 나 있는 붉은빛 삼인데... 잘 기억했다가 똑같은 것을 갖다 줘야 할 것 같다. 약초가 있는 곳은 예전에 갔던 엘리니아의 #b쉐인#k이라는 남자 소유의 숲이다.\n\n#i4031032# #t4031032#  #b#c4031032#/1#k",
	["2"] = "다행히도 인내의 숲에서 사비트라마가 말해 주었던 뿌리를 가져다 주었고 사비트라마는 그 보답으로 신비로운 돌을 건네 주었다. 그리고 그는 지금부터 엘리니아의 쉐인에게 돈을 지불하지 않고도 인내의 숲으로 계속 들어갈 수 있을 거라고도 했다. 얘기를 들어보니 사비트라마가 만들고 있는 젊어지는 약이 쉐인에게 필요한 것 같은데... 시간이 난다면 한번 더 인내의 숲으로 들어가 봐야 겠다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "오오... 일전에 훌륭하게 나를 도와준 여행자로구만! 그때 구해준 약초로 다이어트 약을 만들어서 한 몫 챙겼다네. 그런데 이번에는 좀 더 다른 약을 만들고 싶어져서 말야... 어때? 한 번만 더 나를 도와 주겠나?"},
	["yes"] = {["1"] = "정말 고맙네. 신비의 약초가 있다는 곳은 예전에 갔던 #m101000000#라네. 약초가 있는 곳 앞에서 누군가가 입장료를 받고 있다고 하던데... 그 정도의 메소는 가지고 있겠지? 이번에는 훨씬 더 깊은 곳까지 들어가야 할 테니 준비 단단히 하게나.", ["2"] = "그렇지! 자네가 가져와야 할 약초에 대해 설명해 주겠네. 비슷한 약초들이 많으니까 잘 기억해 두게나. 자네가 가져와야 할 약초는 #b#t4031032##k이라네. #i4031032# 이렇게 생긴 뿌리이지. 잘 보고 가서 똑같은 것을 가져와 주게."},
	["no"] = {["1"] = "그런가... 자네라면 거기쯤은 금방 쉽게 통과할 수 있을것 같아 보이는데 말일세... 나중에 시간이 난다면 다시 나에게 들러주게나. 언제든지 자네를 기다리고 있겠네."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오... 바로 이것일세! 이 #b#t4031032##k만 있으면 오랫동안 연구중이던 젊어지는 약을 만들수 있겠어!!! 하하~ 자네도 혹시 나중에 나이가 들어 몸이 허약해 지거든 나를 찾아와 보게나. 그때 쯤이면 엄청난 약을 만들어 냈을지도 모르니까 말일세~", ["2"] = "아참... 잊을뻔 했군. 이렇게 부탁을 들어줬으니 보답을 해야겠지? 이 #b#t4021009##k은 오래전 여행을 하던 중에 깊은 골짜기 밑에서 찾아낸 물건이라네. 아마도 앞으로 여행하는 데 큰 도움이 될 거야. 또한 자네의 인기도도 올라갔을 것일세. 그럼 잘가게나..."},
	["stop"] = {
		["item"] = {["1"] = "아직 약초를 가져오지 못한 모양이로군. 자네가 가지고 와야 할 약초는 #b#t4031032##k이라네. #i4031032# 이렇게 생긴 뿌리이지. 잘 보고 가서 #m101000000#의 #p1032003#에게 똑같은 것을 가져와 주게."},
	},
}
return nTable
end