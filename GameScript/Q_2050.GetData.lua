return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061005,
	["lvmin"] = 25,
}
nTable["check1"] = {
	["npc"] = 1061005,
	["item"] = {{["id"] = 4031020, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3500,
	["pop"] = 1,
	["item"] = {
		{["id"] = 2040504, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040505, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4031020, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "사비트라마의 살 빼는 약 만들기",
	["0"] = "슬리피우드의 사비트라마를 찾아가보자.",
	["1"] = "슬리피우드의 호텔 앞에서 크리슈라마의 동생으로 보이는 #b사비트라마#k라는 약초 상인을 만났다. 그는 지금 만들고 있는 약에 꼭 필요한 약초가 있는 곳을 발견했다면서 대신 그 숲으로 가서 #b핑크 안시리움#k이라는 약초를 가져다 달라고 부탁했다. 초록색 풀 무더기에 분홍색 작은 꽃이 피어있는 약초인데... 잘 기억했다가 똑같은 것을 갖다 줘야 할 것 같다. 약초가 있는 곳은 엘리니아 근처라는데... 엘리니아로 가서 #b쉐인#k이라는 남자를 만나봐야 할 것 같다.\n\n#i4031020# #t4031020#  #b#c4031020#/1#k",
	["2"] = "다행히도 인내의 숲에서 사비트라마가 말해 주었던 꽃을 가져다 주었고 사비트라마는 그 보답으로 #b전신갑옷 방어력 주문서#k를 건네 주었다. 그리고 그는 지금부터 엘리니아의 쉐인에게 돈을 지불하지 않고도 인내의 숲으로 계속 들어갈 수 있을 거라고도 했다. 얘기를 들어보니 사비트라마가 만들고 있는 살빼는 약이 쉐인의 약혼녀에게 필요한 것 같은데... 시간이 난다면 한번 더 인내의 숲으로 들어가 봐야 겠다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "잠깐... 기다려주게. 나는 전 세계를 돌아다니면서 약초를 수집하고 있는 수집가라네. 이 근방에서 쓸만한 약초를 찾아보고 있었지. 최근에는 약초를 발견하기 힘들어서 큰일이라네. 자네... 혹시 약초들이 많은 곳을 발견하지는 못했는가?", ["2"] = "실은 내가 아주 좋은 약초가 있는 곳을 발견했다네. 여기서 멀지 않은 숲속인데 말이지... 장애물이 꽤 많은 골치아픈 곳이긴 하지만 그 끝에 아주 좋은 약초가 있을것 같은 기분이 든단 말이야... 어떤가? 자네가 내 대신 가주지 않겠나?"},
	["yes"] = {["1"] = "정말 고맙네. 신비의 약초가 있다는 곳은 #m101000000#라네. 약초가 있는 곳 앞에서 누군가가 입장료를 받고 있다고 하던데... 그 정도의 메소는 가지고 있겠지? 실은 여행하느라 돈을 모두 써버려서 자네에게 도움을 주진 못하겠군...", ["2"] = "그렇지! 자네가 가져와야 할 약초에 대해 설명해 주겠네. 비슷한 약초들이 많으니까 잘 기억해 두게나. 자네가 가져와야 할 약초는 #b#t4031020##k이라네. #i4031020# 이렇게 생긴 꽃이지. 잘 보고 가서 똑같은 것을 가져와주게."},
	["no"] = {["1"] = "그런가... 자네라면 거기 쯤은 금방 쉽게 통과할 수 있을것 같아 보이는데 말일세... 나중에 시간이 난다면 다시 나에게 들러주게나. 언제든지 자네를 기다리고 있겠네."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오... 바로 이 것일세! 이 #b#t4031020##k만 있으면 오랫동안 연구중이던 다이어트 약을 만들수 있겠어!!! 하하~ 자네도 혹시 나중에 체중이 늘어나는 것 같다면 나를 찾아와 보게나. 그때 쯤이면 엄청난 약을 만들어 냈을지도 모르니까 말일세~", ["2"] = "아참... 잊을뻔 했군. 이렇게 부탁을 들어줬으니 보답을 해야겠지? 이 주문서를 받게나. 내 형이 오래전에 만들어 준 주문서인데 갑옷의 방어력을 높여주는 효과가 있다네. 부디 유용하게 쓰였으면 좋겠군. 그리고 이후부터는 #p1032003#이 공짜로 안에 들어보내 줄지도 모른다네. 그럼 도와줘서 고마웠네. 잘가게..."},
	["stop"] = {
		["item"] = {["1"] = "아직 약초를 가져오지 못한 모양이로군. 자네가 가지고 와야 할 약초는 #b#t4031020##k이라네. #i4031020# 이렇게 생긴 꽃이지. 잘 보고 #m101000000#의 #p1032003#에게 가서 똑같은 것을 가져와 주게."},
	},
}
return nTable
end