return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012011,
	["lvmin"] = 30,
}
nTable["check1"] = {
	["npc"] = 2032000,
	["item"] = {{["id"] = 2010000, ["count"] = 20}, {["id"] = 2010002, ["count"] = 20}, {["id"] = 2010003, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 7500,
	["money"] = 4000,
	["pop"] = 1,
	["item"] = {
		{["id"] = 2010002, ["count"] = -20},
		{["id"] = 2010000, ["count"] = -20},
		{["id"] = 2010003, ["count"] = -20}
	},
}
nTable["info"] = {
	["name"] = "스피루나에게 음식 배달하기",
	["0"] = "#b#m200000000##k의 #b#p2012011##k에게 할 일이 생겼다던데...",
	["1"] = "#p2012011#의 말에 따르면 구름공원 어딘가에는 괴팍한 노파 #p2032001#가 그녀의 제자와 함께 살고 있다고 한다. 그들은 가끔 잡화상점에서 식량을 사곤 하는데 이상하게 이번에는 오지 않았다고 한다. 그러니 #b#p2032001#의 제자#k에게 식량을 전달해 달라는데...\n\n#i2010003# #t2010003#  #b#c2010003##k / 20  \n#i2010000# #t2010000#  #b#c2010000##k / 20 \n#i2010002# #t2010002#  #b#c2010002##k / 20",
	["2"] = "#p2032001#의 제자에게 식량을 전달했다. ",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "이상하네. 올 때가 되었는데 도대체 왜 안 오는 거지? 무슨 일이냐고? 인간 따윈 알 필요 없어...라고 말하고 싶지만, 그녀 역시 인간이니 어쩌면 너의 도움이 필요할지도 모르겠군. 그녀가 누구냐고? 흠. 네가 일을 좀 도와준다면 말해주지. "},
	["yes"] = {["1"] = "그녀의 이름은 #p2032001#. 인간이되 인간이 볼 수 있는 것 이상의 것들을 보는 사람이지. 그녀는 바로 이 #m200000000# 아래, 구름공원 어딘가에 제자와 함께 살고 있어. 성격이 괴팍하긴 하지만 인간치곤 드물게 좋은 사람이야.", ["2"] = "그녀는 가끔 제자를 보내 이곳 잡화점에서 식량을 사가곤 해. 구름공원에서야 네펜데스의 열매 같은 거 외에는 먹을 게 없으니까 말이야. 그런데 이상하게 이번에는 안 오고 있네. 지난번에 가져간 식량은 이미 다 먹었을 게 분명한데.", ["3"] = "인간은 관심 없지만 #p2032001#는 손님이기도 하니까, 아무래도 신경이 쓰여. 네가 #b#p2032001#의 제자#k에게 식량을 사다 줘. #b사과#k와 #b달걀#k, #b오렌지#k, #b각각 20개#k씩이야. 대금은 그녀가 줄거야. 넌 인간이니, 인간의 일을 외면하진 않겠지?"},
	["no"] = {["1"] = "흥. 역시 인간은 의리가 없다니까. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "아, 저 죄송하지만 스승님은 모르는 사람과는 잘 대화하지 않으세요. 그러니 용건이 있으시면 말씀해 주세요. ...네? 크리엘씨가 식량을 보냈다고요? 어머...", ["2"] = "그러고보니 벌써 식량을 다 먹어 가고 있었는데, 사러 갈 생각도 하지 않고 있었네요. 정말 고맙습니다. 자, 여기 음식 값이에요. 덕분에 한동안 식량 걱정 안해도 되겠네요."},
	["yes"] = {["1"] = "크리엘씨도 의외로 친절한 구석이 있네요..."},
	["stop"] = {
		["npc"] = {["1"] = "흐음... 아직 #p2032001#에게는 가지 않은 것 같은데. 중간에 식량을 다 먹어버린 건 아니겠지? 그렇다면 네가 네 메소로 식량을 다시 사서 가져다 줘야 해. "},
		["item"] = {["1"] = "스승님은 조용한 것을 좋아하신답니다. 스승님이 화를 내면 무서우니 조심하세요. "},
	},
}
return nTable
end