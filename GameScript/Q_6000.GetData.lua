return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040050,
	["lvmin"] = 13,
}
nTable["check1"] = {
	["npc"] = 2040050,
	["item"] = {{["id"] = 2040600, ["count"] = 1}, {["id"] = 1302013, ["count"] = 1}, {["id"] = 2040000, ["count"] = 1}, {["id"] = 2043000, ["count"] = 1}, {["id"] = 2040400, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -1000000,
	["item"] = {
		{["id"] = 1302013, ["count"] = -1},
		{["id"] = 2043000, ["count"] = -1},
		{["id"] = 2040000, ["count"] = -1},
		{["id"] = 2040400, ["count"] = -1},
		{["id"] = 2040600, ["count"] = -1}
	},
	["skill"] = {
		{["id"] = 1003, ["skillLevel"] = 1, ["masterLevel"] = 1, ["job"] = {0, 100, 110, 111, 112, 120, 121, 122, 130, 131, 132, 200, 210, 211, 212, 220, 221, 222, 230, 231, 232, 300, 310, 311, 312, 320, 321, 322, 400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 500, 510, 511, 512, 520, 521, 522}}, {["id"] = 10001003, ["skillLevel"] = 1, ["masterLevel"] = 1, ["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512}}, {["id"] = 20001003, ["skillLevel"] = 1, ["masterLevel"] = 1, ["job"] = {2000, 2100, 2110, 2111, 2112}}, {["id"] = 20011003, ["skillLevel"] = 1, ["masterLevel"] = 1, ["job"] = {2001, 2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218}}
	},
}
nTable["info"] = {
	["name"] = "떠돌이 연금술사의 새로운 기술",
	["0"] = "#b#p2040050##k가 착용하지 않은 아이템에 주문서를 사용하는 획기적인 방법에 대해 알아냈다고 한다. 떠돌이 연금술사를 찾아가 보자.",
	["1"] = "#b#p2040050##k가 여행에 필요한 것들을 구해다 주자.\n\n#i1302013##t1302013#  #b#c1302013#/1#k\n#i2043000##t2043000#  #b#c2043000#/1#k\n#i2040000##t2040000#  #b#c2040000#/1#k\n#i2040400##t2040400#  #b#c2040400#/1#k\n#i2040600##t2040600#  #b#c2040600#/1#k\n#b100만 메소",
	["2"] = "#b#p2040050##k에게서 착용하지 않은 아이템에 주문서를 사용하는 방법에 대해 배웠다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요? 저는 #b#p2040050##k라고 합니다. 저는 메이플 월드 곳곳을 여행하는 것이 취미이지요. 여기저기 돌아다니다 보니 많은 것들을 보고 배워서 남들이 가지지 못한 기술도 가지고 있지요. ", ["2"] = "예를 들면 착용하지 않은 장비아이템에 주문서를 사용한다든가 하는… 여행자님도 그 기술에 대해 배워 보시겠어요?"},
	["yes"] = {["1"] = "이제까지는 착용한 장비아이템에만 주문서를 사용을 할 수 있어서 많이 불편하셨죠? 제가 새로 알게 된 이 기술을 배우신다면 앞으로는 착용하지 않은 장비아이템에도 주문서를 사용하실 수 있어요. ", ["2"] = "그런데 조만간 전 여행을 떠나야 해서 여행준비를 해야 하는데 시간이 없네요. 저 대신 여행에 필요한 것들을 구해다 주시면 착용하지 않은 장비아이템에도 주문서를 사용할 수 있는 기술을 알려드릴게요. ", ["3"] = "여행에 준비에 필요한 물건들은 #b#t1302013#과 #r100%확률의 #b#t2043000#,#t2040000#,#t2040400#,#t2040600##k와 여비 #b100만 메소#k입니다.. 100%확률의 주문서들은 사냥터에 있는 주문서 상인에게 구할 수 있어요. 그럼 부탁 드려요."},
	["no"] = {["1"] = "제가 알고 있는 기술이 궁금하지 않으신가 보군요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "벌써 제가 부탁한 물건들을 구해 오셨나요? 어서 여행준비를 할 수 있도록 그 물건들을 제게 주세요."},
	["yes"] = {["1"] = "정말 감사합니다. 감사의 뜻으로 여행자님께도 '장인의 혼'의 기술을 알려드렸습니다.", ["2"] = "단축키 K를 눌러 스킬창을 열고 초보자의 기본에 보시면 확인하실 수 있습니다. '장인의 혼'의 아이콘을 더블클릭하시면 장착하지 않은 아이템에도 주문서를 사용할 수 있습니다. 그럼 부디 유용하게 사용하시기 바랍니다. 안녕히 가세요."},
	["stop"] = {
		["item"] = {["1"] = "여행에 준비에 필요한 물건들은 #b#t1302013#과 #r100%확률의 #b#t2043000#,#t2040000#,#t2040400#,#t2040600##k와 여비 #b100만 메소#k입니다.. 100%확률의 주문서들은 사냥터에 있는 주문서 상인에게 구할 수 있어요. 그럼 부탁 드려요."},
	},
}
return nTable
end