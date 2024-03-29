return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2091003,
	["lvmin"] = 71,
}
nTable["check1"] = {
	["npc"] = 2091000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 700,
}
nTable["info"] = {
	["name"] = "한태수의 목격담",
	["parent"] = "잊혀진 선인",
	["order"] = 1,
	["0"] = "무릉의 천도 과수원을 지키는 소년 #b한태수#k가 얼마 전 마을에서 과수원으로 오면서 이상한 일을 겪었다고 하는데...",
	["1"] = "하늘 숲을 걷던 한태수는 무시무시한 야생곰에게 공격당했다. 하마터면 다칠 뻔 했지만 놀라 움직이지도 못하고 있던 한태수를 도운 누군가가 있었으니... 그건 처음 보는 곰이었다고 한다. 한태수는 곰의 정체가 궁금하다며 그에 대해 #b노공#k에게 물어봐 달라고 말했다. ",
	["2"] = "곰에 대한 이야기를 들은 노공은 침중한 표정을 지었다...",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "무릉 주위에 사는 동물들은 다른 곳의 동물들과는 다르답니다. 동물들 중 상당수는 지성을 가지고 선인이 되기 위해 수련하는 자들이지요. 물론 가끔은 본능만으로 사람을 공격하는 동물들도 있지만요. 얼마 전에도 하늘 숲에서 그런 곰과 마주쳤거든요.", ["2"] = "평화로운 하늘 숲에서 느닷없이 공격을 받으니, 놀라서 움직일 수조차 없었어요. 야생곰의 발톱이 바로 눈 앞까지 다가왔답니다. 그런데 그 때, 굉장한 일이 벌어졌습니다. 누군가가 쏘아보낸 힘이 야생곰을 물리치고 저를 구해준 것이지요. 그런데...", ["3"] = "저를 도와준 그 역시 인간이 아니었습니다. 오히려 야생곰보다 흉흉한 분위기를 한... #b눈가에 상처가 있는 덩치가 큰 곰#k이었지요. 저는 또다시 겁에 질렸습니다. 마치 저를 잡아 먹을 것 같아 보였거든요 ... 하지만 그는 아무 말 없이 몸을 돌려 사라져 버렸답니다.  고맙다는 인사조차 받지 않은 채로... ", ["4"] = "도와주셨는데 감사 인사는 커녕 불쾌하게 만들어 버린 것 같아 그 분께 너무 죄송하답니다. 옷을 보니 아마도 하늘 숲에서 선인이 되기 위한 수련을 하고 있는 곰들 중에 한 명인 것 같은데... 도대체 누구일까요? 괜찮으시다면 당신께서 그의 정체를 찾는 것을 도와주시겠어요?"},
	["yes"] = {["1"] = "아... 감사합니다. 도복을 입은 것을 보면 아마도 그 분은 #b노공#k님의 제자일 것 같아요. 무릉 주변의 수련자들 중에 체력 단련을 하는 자들은 모두 노공님의 제자이니... 아마도 그렇지 않을까요? 한 번 노공님께 가서 여쭤봐 주세요. "},
	["no"] = {["1"] = "음... 바쁘신 모양이군요. 그렇다면 하는 수 없지요. 천도 과수원 주변에는 못된 원공들이 많으니 조심해서 다니세요. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "으응? 무슨 일이야? 체력 단련을 받고 싶은 건가? 으으응? 마을 밖에서 본 곰이 뭐가 어쨌다고? 곰이라면 한 두마리가 아니라서 잘 몰라. 다 이 노공의 제자이긴 한데... 그 녀석이 그 녀석 같이 생겨먹었잖아. 특이하게 생긴 곰이라고?"},
	["yes"] = {["1"] = "눈가에 상처가 있는 덩치 큰 곰... 이라고? 그 녀석이 한태수를 도와주었다니... 설마 #r태륜#k...이...? "},
	["stop"] = {
		["npc"] = {["1"] = "아직#b 노공#k님께는 안 가신 모양이군요. 그 분은 무릉 마을 안, #b무릉 사원#k에 계신답니다."},
	},
}
return nTable
end