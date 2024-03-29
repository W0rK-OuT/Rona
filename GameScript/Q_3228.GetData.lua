return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2050012,
	["lvmin"] = 25,
	["quest"] = {{["id"] = 3227, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2041015,
	["item"] = {{["id"] = 4031091, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031091, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 2550,
	["item"] = {
		{["id"] = 4031091, ["count"] = -1},
		{["id"] = 2040001, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "되찾은 기억",
	["parent"] = "코린의 기억",
	["order"] = 3,
	["1"] = "로스월 초원에서 #b마티안#k을 쓰러뜨리고 그들의 소지품을 뒤져 코린의 기억이 담겨있는 #b기억의 조각#k 5개를 모아 요원 M에게 가져다 주었다. 그러자 그는 5개의 조각을 하나로 합쳐 #b코린의 기억#k으로 만들어 주었다. 이제 이걸 코린에게 가져가면 되겠지…",
	["2"] = "지구방위 본부 안전지대에서 검은 옷을 입은 사나이인 #b요원 M#k에게 받은 코린의 기억을 코린에게 가져다 주었다. 기억을 되찾은 그녀는 잠시 혼란스러워 했지만 곧 예전처럼 밝게 살아갈 것을 약속했다. 이제 다시 코린이 납치되는 일은 생기지 말아야 할텐데…",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "됐습니다. 이제 이 기억을 #b#p2041015##k이라는 사람에게 가져가면 아마도 잃어버린 기억을 되찾게 될겁니다. 되찾는 순간은 어느 정도 충격이 있겠지만 피할수 없는 일이겠죠. 그럼 저는 할 일이 많아서 이만..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "어머... 드디어 돌아와 주셨군요. 뭐라고요...? 검은 옷을 입은 남자가 제가 기억하지 못하는 지난 10개월간 외계인에게 납치를 당한 거였다고 말했다는 건가요? 그럴수가... 외계인이라니 그런게 있을리가 없잖아요...? 당신 말을 모두 믿을 순 없어요...", ["2"] = "흠? 그런데 손에 들고 계신 그건 뭐죠? 설마 제가 잃어버렸던 기억...? 기억을 물건처럼 만들었다니 점점 더 믿을수가 없군요. 하지만... 속는셈 치고 그 물건을 한 번 살펴봐야 겠군요. 어쩌면 정말로 제가 잃어버린 기억일지도 모르잖아요? 어디보자..."},
	["yes"] = {["1"] = "으윽... 이... 이건... ... 하아... 이제야 모든 일이 기억이 나는군요. 그래요... 저는 #b메카티안#k이라는 외계인들에게 납치되었어요. 그들은 제가 알고 있는 루디브리엄과 지구방위 본부에 대한 정보를 캐내려고 했죠. 하지만 전 완강히 거부했고...", ["2"] = "수 많은 날들을 그들에게 잡혀 생활하다가 겨우 탈출했어요. 계속된 추적이 있었지만 결국 지구방위 본부까지 도망치는데 성공해서 무사히 집으로 돌아온 거죠. 하아... 제 기억을 찾는데 도움을 주셔서 정말 감사합니다. 아직 석연찮은 부분이 있지만..", ["3"] = "아무튼 당신이 아니었다면 저는 죽을 때까지 그 날들에 대해 의문을 품고 살았을 거에요. 제 작은 보답은 잘 받으셨겠죠? 그 주문서를 지금 쓰고 계신 투구에 사용하면 투구가 한층 강화될 거에요. 그럼 도와주셔서 감사했습니다. 안녕히 가세요..."},
	["stop"] = {
		["npc"] = {["1"] = "제가 드린 #b#t4031091##k을 #b#p2041015##k이라는 사람에게 가져가 기억을 되찾게 도와주십시오. 아마 처음에는 상당한 충격이 있겠지만 점차 예전의 모습을 되찾게 될 겁니다. 그럼 어서 돌아가 보십시오."},
		["item"] = {["1"] = "흐음... 제가 말씀드린 검은 옷을 입은 남자는 만나보신 것 같은데 뭔가 더 알아낸 건 없으신가요? 제 잃어버린 기억은 어떻게 되찾을 수 있다고 하던가요? 부디 다시 그 사람을 찾아가서 좀 더 많은 것을 알아봐 주세요."},
	},
}
return nTable
end