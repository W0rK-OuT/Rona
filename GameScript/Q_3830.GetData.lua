return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2090004,
	["lvmin"] = 40,
	["interval"] = 0,
	["item"] = {{["id"] = 4161030}},
}
nTable["check1"] = {
	["npc"] = 2090004,
	["item"] = {{["id"] = 4000298, ["count"] = 25}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4161030, ["count"] = 1},
		{["id"] = 4000298, ["count"] = -25}
	},
}
nTable["info"] = {
	["name"] = "도의진의 약재 조합법 ",
	["0"] = "#b#m250000000##k에는 #b#p2090004##k이라는 수상쩍은 약사가 있다는데... ",
	["1"] = "#p2090004#은 그가 #p2091002#의 수제자이며 실력있는 약사라고 큰소리쳤다. 아무리 봐도 의심스러운데... 그는 #m250000000#에서 구할 수 있는 희귀한 약재의 조합에 관해서 연구하고 있다며 #r#o5120506##k을 잡아 약재 조합에 관한 #b#t4000298##k를 가져다 달라고 했다. \n\n#i4000298# #t4000298#  #b#c4000298##k/25",
	["2"] = "#t4000298#를 모두 건네주자 #p2090004#은 그가 지었다는 #b#t4161030##k를 주며, 이 책을 가져오면 언제든지 약을 만들어 주겠다고 했다. 그리 믿음이 가는 사람은 아니지만 나중에 한번쯤 약을 만들어 보는 것도 좋겠지.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신은 약을 지으러 온 사람이여? 내 약은 아무에게나 지어주지 않으니까 괜히 서 있지 말라고~ 으응? 약을 지으러 온 게 아니라고? 아니면 아니지 왜 그렇게 표정이 떨떠름한 거여? 혹시 내 실력을 의심하는 거여?", ["2"] = "이 몸은 이래뵈도 저 #p2091002#님의 수제자라고~ 오래 전에 #m250000000#을 떠나 밖에서 연구하다 오기는 했지만, 실력은 전혀 녹슬지 않았당께? 당신이 내 부탁 한 가지만 들어주면 당장이라도 약을 만들어 줄 수 있다구~ 어뗘? 부탁을 들어주겠는감?"},
	["yes"] = {["1"] = "내 말을 이렇게 믿어 주다니, 정말이지 보는 눈이 있는 사람이구만! 부탁은 간단혀. #m250000000# 아닌 곳에서 너무 오래 있었더니, #m250000000#에 있는 희귀한 약재 조합법은 다 잊어 버려서 말이여. 약재 조합법이 쓰여 있는 #t4000298#를 가져다 주면 되겠구만~", ["2"] = "으잉? #p2091002#님의 제자라면서 왜 #p2091002#님에게 안 배우냐고? 오래 수업을 안 받았더니 스승님이 화가 나셔서 안 가르쳐 주신다고 하지 뭐여? 하지만 당신이 약재에 대해 쓰여 있는 #b#t4000298# 25장#k만 가져 오면, #p2091002#님의 못지 않은 실력을 갖게 될 테니 걱정 말라고~ "},
	["no"] = {["1"] = "으잉? 내 말을 못 믿는겨? 당장 가서 #p2091002#님에게 물어 보라고~ #p2090004#이란 제자가 있나 없나?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "엥? 누구시더라~ 아, 전에 #t4000298#를 가져다 주겠다고 한 그 사람이로구만? 전부 모았어? 오호~ 25장을 다 가져왔구만! 보기와는 다르게 대단한 사람이었네. 자, 그럼 이걸 받아 보라고. "},
	["yes"] = {["1"] = "내가 직접 지은 #b#t4161030##k여. 거기 쓰여 있는 조합법들은 어디 유출되면 안 되니까, 함부로 사람들에게 보여주지 말더라고. 당신이 그것만 가지고 오면 약은 이 #p2090004#이 얼마든지 만들어 주겠당께~ "},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4000298# 25장#k은 다 모으지 못한 것 같구먼. 하긴~ #m250000000#의 #r#o5120506##k이란 것들은 다들 술법이 대단해서 구하기 쉽지 않지. "},
	},
}
return nTable
end