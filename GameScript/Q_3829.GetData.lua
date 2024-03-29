return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2092001,
	["lvmin"] = 55,
	["lvmax"] = 100,
	["item"] = {{["id"] = 4031438, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 2092001,
	["item"] = {{["id"] = 4031551, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031438, ["count"] = -1}
	},
}
nTable["act1"] = {
	["exp"] = 60000,
	["item"] = {
		{["id"] = 4031551, ["count"] = -1},
		{["id"] = 2040804, ["count"] = 1, ["prop"] = 7},
		{["id"] = 2040805, ["count"] = 1, ["prop"] = 3}
	},
}
nTable["info"] = {
	["name"] = "해적선장 데비존",
	["0"] = "#b#m251000000##k의 화물책임자 #b#p2092001##k이 #b#t4031438##k에 대해 알고 있다는데…",
	["1"] = "#p2092001#은 여기에 #t4031551#이 있는 위치가 적혀 있다며, #t4031551#을 찾으라고 한다. #t4031551#상자는 데비존의 배 안에서도 잘 알려지지 않은 #b도라지들이 지키고 있는 갑판#k에 있으며, 그것을 열려면 #t4031437#가 필요하다는데… 일단 #b#t4031437##k부터 구해볼까? #t4031437#를 구하려면 데비존의 소굴로 들어가야 할 것 같다.\n\n#i4031551##t4031551#  #b#c4031551##k/1",
	["2"] = "#t4031551#상자를 열고 보물을 구해 #p2092001#에게 가져다 주었다. ",
	["area"] = 47,
	["sortkey"] = "17",
}
nTable["say0"] = {
	["base"] = {["1"] = "데비존 때문에 입은 피해가 이만저만이 아니군... 이를 어떻게 해야 한다... 이럴 때 #b#t4031551##k이라도 구할 수 있으면 좋으련만... 음? #t4031551#이 뭐냐고? 그것에는 왜 관심을 가지시오? 어차피 그게 숨겨져 있는 곳은 아무도 모르는데... 뭐? 당신이 #b#t4031438##k를 가지고 있다고?", ["2"] = "그러고 보니 당신이 데비존의 소굴에 들어갔다는 모험가인 모양이로군. 그렇다면 말해주지. 데비존이 오시리아를 떠돌며 약탈을 할 때 모은 어마어마한 보물들. 그는 그 보물을 해적선안의 어떤 장소에 숨겨 놓았는데, 그게 바로 #b#t4031551##k이지. ", ["3"] = "데비존을 해치운 것만도 굉장한 일이지만, 그의 항해일지만으로는 보물에 관해 아무것도 알 수 없지. 그의 항해일지는 암호로 쓰여 있어서 보통은 읽을 수 없으니 말이오. 하지만, 당신이 한 가지만 약속해 준다면 그 암호를 해독해 드리겠소. 어떻소? 그럴 수 있겠소? "},
	["yes"] = {["1"] = "역시 당신도 #t4031551#이 궁금한 모양이군. 그렇다면 항해일지를 줘 보시오. #m251000000#에 정착하기 전까지 바다에서 모험을 즐겼던지라 이런 암호 해독은 간단하다오. #t4031551#은... 바로 배 안에서도 #b도라지들이 지키고 있는 알려지지 않은 갑판#k에 있다는군.", ["2"] = "하지만 데비존도 역시 만만한 자는 아니군. 이 항해일지를 자세히 보니 데비존이 가지고 있는 열쇠가 없다면 그 상자는 절대 열 수 없는 모양이오. 그러니 데비존에게서 #b#t4031437##k를 구한 다음 #b데비존의 소굴#k을 뒤져야 할 것 같군. 이 정도로 정보를 얻었으니 #t4031551#을 찾을 수 있겠지. ", ["3"] = "그럼 한 가지만 부탁하겠소. 당신이 혹시 #t4031551#을 찾게 된다면, 그 보물로 이 #m251000000#을 도와주시오. 마을 옆에 자리잡은 데비존 때문에, 주민들의 피해가 이만저만이 아니라오. 그것을 해결하는데 도움을 줬으면 좋겠소. 그럼 약속한 거요."},
	["no"] = {["1"] = "흠. #t4031551#에 관심이 없다는 말이오? 아니면 어떤 부탁도 들어주기 싫다는 말? 어느 쪽이건, 어리석은 선택이군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4031551#을 찾았구려! 여기에 왔다는 건 #m251000000#을 도울 생각이 있다는 뜻이겠지? 젊은 모험가가 보물에 마음을 빼앗기지 않고 이렇게 다른 사람에게 베풀 생각을 하다니... 정말 대단하군. "},
	["yes"] = {["1"] = "데비존의 공격을 때문에 빼앗긴 약초가 한 둘이 아니라오. 이 보물 정도면 그 피해를 해결할 수 있겠군. #m251000000#에 도움이 되어서 정말 다행이오."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4031551##k이 있는 곳은 #b도라지들이 지키고 있는 갑판#k이오. 보물상자를 열, #b#t4031437##k를 가지고 가야만 상자를 열 수 있다오. "},
	},
}
return nTable
end