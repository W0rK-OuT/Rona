return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101000,
	["lvmin"] = 24,
	["quest"] = {{["id"] = 3900, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101000,
	["item"] = {{["id"] = 4000328, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 6000,
	["pop"] = 1,
	["item"] = {
		{["id"] = 4000328, ["count"] = -20}
	},
}
nTable["info"] = {
	["name"] = "무희의 방울소리",
	["0"] = "#b#m260000000##k의 무희 #b#p2101000##k에게는 더 아름다운 춤을 추기 위해 필요한 것이 있다고 하는데...",
	["1"] = "유명한 무희가 되고 싶다는 #p2101000#. 그녀는 옷에 방울을 달아 아름다운 소리를 내면서 춤을 춘다면 누구보다 유명해질 수 있을 것 같다며 #r#o2100105##k에게서 #b#t4000328##k을 구해 달라고 부탁했다. 윽. 아무리 춤이 좋아도 #t4000328#이라니... 어쨌든 구해보자. \n\n#i4000328# #t4000328#  #b#c4000328##k/20 ",
	["2"] = "#p2101000#에게 #t4000328#을 구해 주었다. #t4000328#을 흔들면 #o2100105#가 나타난다는 소문이 있는데 정말 괜찮을까...? 하지만 #p2101000#은 전혀 겁나지 않는 모양이다. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "아아~ 역시 뭔가 부족해. 아무리 동작에 신경을 써도 어딘가 허전하단 말이야... 뭘 더하면 좋을까? 이봐, 너라면 외부인이니 보는 눈이 좀 다르겠지? 이 춤에서 뭐가 허전한 것 같아? 에~ 전혀 모르겠다는 표정이네. 그럼 누구한테 물어보지? \r\n#L0# #b 춤 연습을 하는 걸 보면, 넌 무희인 모양이구나?", ["2"] = "보면 모르니? 이 #p2101000#님은 #m260000000# 최고의 무희야. ...하지만 궁전에 들어가서 춤을 춘 적은 한 번도 없어. 더 특이한 춤이 아니면 왕비는 관심도 안 갖는대. 그래서 요즘 새로 생각하는 춤이 있는데 네가 좀 도와주지 않을래?"},
	["yes"] = {["1"] = "후훗. 역시 이 #p2101000#님의 춤솜씨에 반했구나? 생각해 보니까, 옷에 방울을 달아서 소리를 내면서 춤을 추면 특별하면서도 멋질 것 같아. 네가 #r#o2100105##k에게서 #b#t4000328# 20개#k만 구해다 주면 더 멋진 춤을 보여줄께. 기대해도 좋아.   "},
	["no"] = {["1"] = "칫. 치사하긴. 더 화려하고 멋진 춤을 볼 기회를 이렇게 버려도 되는 거야?"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "어머~ #t4000328#을 모두 구해왔잖아? 멋진걸? 좋아. 이걸 옷에 달고 찰랑거리는 소리를 내면서 춤을 추면 한층 춤이 멋져질 거야. 정말 고마워."},
	["yes"] = {["1"] = "응? 방울을 흔들면 #o2100105#가 나타난다는 소문이 있다고? 에이~ 그런 건 다 거짓말일 거야. 사막에 사는 #o2100105#가 마을 안까지 들어올 리가 없잖아? "},
	["stop"] = {
		["item"] = {["1"] = "흠. 아직 #b#t4000328# 20개#k를 모두 구해오지 못한 것 같은데? #t4000328#은 #r#o2100105##k가 달고 다니니 녀석들을 무찌르고 구하면 돼. "},
	},
}
return nTable
end