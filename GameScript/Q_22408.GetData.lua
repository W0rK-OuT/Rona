return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2092001,
	["lvmin"] = 80,
	["quest"] = {{["id"] = 22407, ["state"] = 1}},
	["item"] = {{["id"] = 4032477}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2001},
}
nTable["check1"] = {
	["npc"] = 2092001,
	["item"] = {{["id"] = 4032497, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4032497, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "깨지지 않는 자기 구하기",
	["area"] = 7,
	["0"] = "더 큰 안장을 만들기 위한 재료인 #m251000000# 특산물, #t4032477#를 구해 보자. #b#m251000000##k의 교역을 담당한 #b#p2092001##k에게 문의하면 될 것 같다.",
	["1"] = "#t4032477#를 만드는 도자기 장인, #t4032497#이 빨간코 해적단에 의해 납치된 모양이다. #t4032477#를 만들고 싶다면 #t4032497#을 구해와야만 한다는데... #t4032497#을 구하러 해적단 소굴로 들어가자. #b#m251010403##k에서 들어가면 된다고 한다.\r\n\r\n#i4032497# #t4032497# #b#c4032497# / 1#k",
	["2"] = "#t4032497#을 구해 왔다. 이제 #t4032477#가 필요하면 #t4032497#에게 말하면 될 것 같다.",
	["showLayerTag"] = "22408",
}
nTable["say0"] = {
	["base"] = {["1"] = "무슨 일이시오? 약초 거래를 원하는 거라면 당장은 빨간코 해적단 때문에 불가능한데... 응? #t4032477#를 구한다고? 이런... 안타깝지만 그 물건은 이 마을에 더 이상 없다오. 어째서냐고? 그거야 빨간코 해적단 때문이지.", ["2"] = "#m251000000#에는 #b#t4032497##K이라 불리는 훌륭한 도자기 장인이 한 명 있었소. 그가 만드는 자기는 잘 깨지지 않으면서 담아둔 약초가 쉽게 상하지 않는 신비한 힘을 갖고 있었지. 그 능력이 너무 뛰어나다 보니 그만 빨간코 해적단이 #t4032497#을 납치해 버렸다오.", ["3"] = "그 후 마을에는 금방 약초를 상하게 하는데다 이상한 생물이 자라나는 자기들만 남았다오. #t4032477#는 더 이상 없소. 만약 당신이 그것을 정 구하고 싶거든 빨간코 해적단의 소굴에 들어가 #t4032497#을 구해야만 하는데... 할 수 있겠소?"},
	["yes"] = {["1"] = "이거 굉장한 모험가를 몰라봤군. 그렇다면 한 번 #t4032497#을 구해 오시오. #t4032497#은 빨간코 해적단의 배들 중에서도 그들이 약탈한 보물 및 기타 물건들을 실어 놓는 #b#m251010403#안 창고#k에 있을 거요.", ["2"] = "조심스럽게 들어가 #t4032497#을 데려와 주시오. 그렇게만 해준다면 #m251000000#이 당신께 감사를 표할 거요."},
	["no"] = {["1"] = "역시 무리인가... 어떻게 하면 #t4032497#을 구할 수 있을지..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오, #t4032497#을 구해 오셨구려. 어디, #t4032497#은 무사하오? 한 번 진맥을 해볼 테니 #t4032497#을 이리 주시오."},
	["yes"] = {["1"] = "휴우... 다행히 잠시 정신을 잃은 것 뿐, 몸은 멀쩡한 것 같군. 하긴 빨간코 해적단도 저런 훌륭한 실력을 가진 장인을 데려가 굳이 다치게 하지는 않았을 테니... 이제 #t4032497#이 #t4032477#를 만들어 줄 수 있을 테니, 그에게 자기 만드는 일을 부탁하면 된다오."},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4032497##k은 구하지 못했소? 하긴... 빨간코 해적단이 워낙 집요하니 쉽지 않겠지..."},
	},
}
return nTable
end