return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002104,
	["lvmin"] = 28,
	["quest"] = {{["id"] = 21724, ["state"] = 2}},
	["job"] = {2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1061019,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 500,
}
nTable["info"] = {
	["name"] = "네 번째 정보수집",
	["area"] = 6,
	["0"] = "레벨 28이 되었다. 이제 #p1002104#가 네 번째 정보수집에 대해 알려줄 것이다. #b#m104000000##k로 가서 #b#p1002104##k를 만나자.",
	["1"] = "#m105040300#에서 #o2230101#이 우울해지는 문제가 발생하고 있다고 한다. 역시나 인형사와 관련된 일이 틀림없다. #b#m105040300##k로 가서 이 일의 발견자인 #b#p1061019##k라는 소년을 만나 보자.",
	["2"] = "#m105040300#에서 #p1061019#를 만났다.",
	["type"] = "[필수]",
}
nTable["say0"] = {
	["base"] = {["1"] = "그간 경험은 많이 쌓은 모양이군, 영웅님. 새로운 정보가 들어왔어. #m105040300#의 #b#o2230101#들이 우울증에 걸리는 이상한 사건이 벌어지고 있다는군. 아무래도 인형사와 관련이 있는 일 같지?"},
	["yes"] = {["1"] = "이번 일의 최초 발견자는 #b#p1061019##k라는 소년이야. #b#m105040300##k에 가서 그에게 #o2230101#에 관한 이야기를 듣고 조사해줘. 조사하다가 혹시 인형사와 관련된 단서를 발견하게 되면, 무턱대고 공격하지 말고  와서 일단 말해줘. "},
	["no"] = {["1"] = "흠... 그래? 영웅님의 감이 아니라고 말하면 아닐려나...? 좀 더 생각해 보고 말을 걸어줘."},
}
nTable["say1"] = {
	["base"] = {["1"] = "아, 안녕하세요! 당신이 #p1002104#씨가 말한 아란인가요? 반갑습니다! 제 이름은 #p1061019#. 강해지기 위해 빅토리아 아일랜드를 떠돌며 수련 중이에요."},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#m105040300##k로는 안 가신 건가, 영웅님? 가는 법을 모르는 건 아니지? #m105040300#는 빅토리아 아일랜드 중앙에 있는 던전. 어느 마을에서도 #m105040300#로 가는 길은 있다고. 정 가는 길을 못 찾겠으면 #b모범택시#k를 타도 돼."},
	},
}
return nTable
end