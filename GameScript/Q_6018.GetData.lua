return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2110002,
	["lvmin"] = 60,
	["quest"] = {{["id"] = 6017, ["state"] = 2}},
	["job"] = {100, 110, 111, 112, 120, 121, 122, 130, 131, 132, 200, 210, 211, 212, 220, 221, 222, 230, 231, 232, 300, 310, 311, 312, 320, 321, 322, 400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 500, 510, 511, 512, 520, 521, 522, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512, 2100, 2110, 2111, 2112, 2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 2110002,
	["item"] = {{["id"] = 4001177, ["count"] = 100}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031969, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 57400,
	["item"] = {
		{["id"] = 4001177, ["count"] = -100},
		{["id"] = 4250000, ["count"] = 2, ["prop"] = 1},
		{["id"] = 4250100, ["count"] = 2, ["prop"] = 1},
		{["id"] = 4250200, ["count"] = 2, ["prop"] = 1},
		{["id"] = 4250300, ["count"] = 2, ["prop"] = 1},
		{["id"] = 4250400, ["count"] = 2, ["prop"] = 1},
		{["id"] = 4250500, ["count"] = 2, ["prop"] = 1},
		{["id"] = 4250600, ["count"] = 2, ["prop"] = 1},
		{["id"] = 4250700, ["count"] = 2, ["prop"] = 1},
		{["id"] = 4251300, ["count"] = 2, ["prop"] = 1}
	},
}
nTable["info"] = {
	["name"] = "루이씨의 네 번째 주문",
	["0"] = "스탠의 동료이자 까칠하기로는 마가티아...아니 메이플월드에서 으뜸이라는 루이씨로부터 새로운 일거리가 있다는 연락이 왔다.",
	["1"] = "메이플 운영자로부터 의뢰받은 흰 면티셔츠를 만들어야 한다. 수량은 무려 100장! 너무 많은거 아냐...이걸 언제 다 만들지?\n\n#i4001177# #t4001177# #b#c4001177# / 100",
	["2"] = "스탠씨의 동료 루이씨가 메이플 운영자에게 부탁받은 초보자 지급용 흰 면티를 만들어 보라는 제안을 해왔다. 수량이 너무 많아서 걱정되었지만 메이플 운영자의 의뢰인데 어떻게 거절하겠어! 열심히 만들어서 가져갔지만 루이씨는 여전히 까칠하기만 하다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "이번에는 정말 특별한 주문이야. 그만큼 우리 작업실이 인정받고 있다는 증거지. 이렇게 큰 의뢰를 너한테 맡기다니 스탠은 정말 무슨 생각인지 모르겠어. ", ["2"] = "확실히 말해 두지만 난 너한테 이 일을 맡기는 것을 끝까지 반대했어. 그것만은 알아두라구. 이번 일을 맡을 생각이 있다면 의뢰 내용을 말해주지. 이번 일은 꽤 규모가 크니까 자신없으면 일찌감치 발빼는게 좋을거야."},
	["yes"] = {["1"] = "이건 메이플 운영자에게서 직접 온 발주서야. 초보자에게 지급할 흰 면티셔츠를 만들어 달라는 내용이지. 발주서를 보면 알겠지만 여간한 내용이 아니야. 주문수량은 #b#t4001177# 100장#k이야. 각오는 되어 있겠지 애송이 친구. 제대로 하라고."},
	["no"] = {["1"] = "현명하군. 근성도 배짱도 없어. 뭐랄까...그래도 너라면 무모하게 도전해 볼꺼라고 생각했었는데 결국 그렇군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "그동안 근성이 좀 늘은것 같군. 솔직히 네가 진짜 해내리라고는 생각 못했어. 물량이 워낙 많았어야 말이지. 아이템 제작자로써 1%만큼 인정해 주지."},
	["stop"] = {
		["item"] = {["1"] = "내가 준 발주서는 제대로 읽은건가? 아니면 실력이 없어서 포기하겠다는 말을 하러 온건가? 적어도 망신당하고 싶지는 않은가보군. 그래 나름 현명한 생각일지도 모르지. #b#t4001177##k 하나 제대로 만들지 못하는 아이템제작자라니 생각만해도 끔찍하군."},
	},
	["ask"] = {"정말 어이가 없군. 끔찍해. 발주서 하나 제대로 못 챙기다니. 도대체 스탠은 무슨 생각인지 모르겠군. 정말 모르겠어."},
}
return nTable
end