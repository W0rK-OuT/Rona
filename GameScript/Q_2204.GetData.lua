return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1092000,
	["lvmin"] = 25,
}
nTable["check1"] = {
	["npc"] = 1092000,
	["item"] = {{["id"] = 4000007, ["count"] = 40}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 8000,
	["item"] = {
		{["id"] = 4000007, ["count"] = -40},
		{["id"] = 2020004, ["count"] = 40}
	},
}
nTable["info"] = {
	["name"] = "이상한 요리1",
	["0"] = "요새 입맛이 없어진 것 같은데… 탕윤에게 가면 혹시 새로운 맛을 찾을 수 있지 않을까? 진정으로 새로운 맛에 도전해보고 싶다면 노틸러스호 식당에 있는 탕윤에게 가보자. 식당은 노틸러스호 상층에 있으니 헤매지 말자고.",
	["1"] = "탕윤은 요새 남들이 시도하지 않은 재료로 요리를 만들고 있다라고 한다. 최근 도전한 재료는 이블아이의 꼬리! #b이블아이의 꼬리 40개#k를 구해오면 새로운 것을 만들어보겠다고 하는데… 이블아이라… 먹을 수 있는 것 맞아?\n\n#i 4000007##t 4000007#  #b#c 4000007#/40#k",
	["2"] = "이블아이의 꼬리는 생긴대로 맛이 떨어지는군. 그래도 햄버거로 만드니까 꽤 먹을만 한걸?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "호오~ 새로운 음식을 찾아헤매고 있는 맛의 청년이군. 그렇다면 날 도와주게. 나도 요새 새로운 맛을 연구하는 중이니…"},
	["yes"] = {["1"] = "좋아. 난 남들이 먹지 않는 재료로 요리를 시도해보고 있지. 언제나 성공하는 것은 아니지만 대부분 성공이야. 빅토리아 아일랜드로 왔으니 이곳의 특이한 재료로 음식을 만들어보려고 해. 그 재료는 바로 이블아이의 꼬리지. #b이블아이의 꼬리 40개#k만 구해다주게. 새로운 맛을 찾아 줄 테니!"},
	["no"] = {["1"] = "나의 요리 실력을 믿지 못하는건가? 실망이군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "자아~ 요리를 해볼까?\n(지글지글~ 스윽스윽~ 활활~)", ["2"] = "앗! 이블아이의 꼬리의 오동통한 살로 햄버거를 만들어보았네. 직접 고기를 숯불에 구워서 햄버거의 향이 아주 일품이지. 흐음~ 그래도 말이야, 다음부터는 그냥 고기로 햄버거를 만드는게 좋겠군."},
	["yes"] = {["1"] = "하하하~ 자, 이 햄버거를 자네에게도 나눠주겠네. 요리 재료를 구해다준 보답이지. 한번 먹어보게. 하하~ 그럼 다른 요리도 한번 시도해볼까? 하지만 이블아이의 꼬리로는 다시 시도하지 않을거네.", ["2"] = "(냠냠… 이상하다. 햄버거에서 소고기 맛이 나는데?)"},
	["stop"] = {
		["item"] = {["1"] = "이블아이의 꼬리 40개만 구해다 주게."},
	},
}
return nTable
end