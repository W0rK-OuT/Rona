return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111000,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3310, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111000,
	["infoex"] = {"5"},
}
nTable["act0"] = {
	["info"] = "4",
}
nTable["act1"] = {
	["exp"] = 60000,
}
nTable["info"] = {
	["name"] = "단서",
	["parent"] = "제뉴미스트와 실종된 연금술사",
	["order"] = 2,
	["1"] = "#p2111000#은 드랭의 집을 수색하라며, 혹시 그 안에서 어떤 정보를 발견하게 되었다면 알려 달라고 말했다. 그럼 실종된 연금술사, 드랭의 집으로 가보자.",
	["2"] = "실종된 연금술사의 집에서 찾은 여러 글귀 중에 특별했던 것은 없는 것 같다. 다만 펜던트에 관한 이야기가 여럿 있었는데 ...펜던트? 그의 연구와 펜던트는 무슨 관계가 있는 걸까?",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네가 해줘야 할 일은 실종된 연금술사의 집을 수색하는 일이라네. 사건을 일으킨 연구가 이루어졌던 곳이 바로 그곳이지. 이미 몇 번이고 수색을 했었지만, 아직도 발견되지 못한 것이 많아. 특히 #b드랭의 비밀노트#k는 아직도 발견되지 않았지...", ["2"] = "그러니 자네가 가서 아주 작은 흔적이라도 다시 찾아주게. 비밀 노트를 찾을 수 있으면 좋겠지만, 그렇지 못하다 하더라도 아주 사소한 글귀, 문구라도 좋다네."},
	["yes"] = {["1"] = "실종된 연금술사에 대해서 전혀 모르는 자네라면, 어쩌면 새로운 무언가를 발견할 수 있을지도 모른다는 생각이 드는군... "},
	["no"] = {["1"] = "생각이 없다면 되었네... 대신, 다시는 실종된 연금술사와 그 사건에 대해 관심을 갖지 말게."},
}
nTable["say1"] = {
	["base"] = {["1"] = "어때? 실종된 연금술사의 집에는 가 보았는가? 그 사건에 대해 무슨 단서를 얻은 것은 없는가? \r\n#b#L0#아무것도 찾을 수 없었습니다.#l \n#b#L1#(뭐라고 쓰여 있었더라...)#l \n#b#L2#기계 장갑의 제조공식이 쓰여 있었습니다.#l \n#b#L3#별 건 아니지만... 어떤 펜던트에 관한 이야기가...#l", ["2"] = "...그래? 펜던트... 펜던트란 말이지...  ...어쩌면 바로 그게... \r\n#b#L0#무슨 말씀이신가요? 벽에 쓰여 있던 펜던트라는 단어에 무슨 특별한 의미가 있는 건가요?#l", ["3"] = "아니! 아무것도 아닐세. 실종된 연금술사에 대해서는더 알아보아야겠군. 협조 고마웠네. 그만 가보게. "},
	["stop"] = {
		["0"] = {["answer"] = "4", ["1"] = "흠... 어떤가? 실종된 연금술사에 대해서 전혀 모르는 자네라면 새로운 것을 발견할 수 있을 거라 생각했는데...", ["2"] = "왜 아무 말이 없는 건가? 설마 단서에 대해 잊어버린 건 아니겠지?", ["3"] = "기계장갑의 제조공식? 실종된 연금술사가 알카드노의 사람이었으니 그런 것 정도야 당연히 있겠지."},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
return nTable
end