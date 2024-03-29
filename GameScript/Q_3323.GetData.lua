return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111004,
	["lvmin"] = 45,
}
nTable["check1"] = {
	["npc"] = 2012018,
	["item"] = {{["id"] = 4031706, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031706, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 500,
	["item"] = {
		{["id"] = 4031706, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "필리아의 걱정",
	["parent"] = "슬픔에 잠긴 요정1",
	["order"] = 1,
	["0"] = "#b#m261000000##k에는 항상 슬픔에 잠긴 듯한 요정, #b#p2111004##k가 있다. 그녀가 걱정하는 것이 무엇인지 알아보자.",
	["1"] = "#p2111004#는 그녀의 딸 #p2111005#가 활발해 보이지만 사실 매우 몸이 안 좋아서 걱정이라며, #p2111005#를 위해 #b#m200000000##k의 #b#p2012018##k에게 약을 받아와 달라고 말했다.",
	["2"] = "#p2012018#은 #p2111004#에 대해 알고 있는 듯하다. 그럼 #p2111004#의 부탁 또한 들어주지 않을까?",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "아아... 어떻게 해야 할지... 이럴 때 그가 있다면 도움이 되어 주었을 텐데... 어떻게 하면 좋을까...", ["2"] = "아... 여행자 분이신가요? 마가티아에 여행오는 분은 드문데... 반가워요. 저 옆에 있는 저 아이가 바로 딸 #p2111005#랍니다. 항상 생글생글 웃고 있지만, 사실 저 아이는 몸이 좋지 않아요... ", ["3"] = "하지만 마법에 일가견이 있는 제뉴미스트의 협회장도 #p2111005#를 도와줄 방법은 없다고 하시더라고요. 알카드노요? ...알카드노 쪽에서는 달가워하지 않고... 어떻게 해야 할지 모르겠어요.", ["4"] = "이럴 때 그 애라면 도움을 줄 수 있을 것 같은데... 연락이 닿질 않아서... 아! 혹시 여행자님은 #b#m200000000##k에 가보셨나요? 그 곳에 가본 적이 있으시다면 한 가지 부탁을 드려도 될까요? "},
	["yes"] = {["1"] = "#m200000000#의 #b#p2012018##k이라는 요정을 아세요? 그는 요정의 약에 일가견이 있으니 그에게 도움을 청하고 싶어요. 그라면 #p2111005#를 도와줄 수 있을 거예요. #p2111004#의 부탁이라면, 그도 틀림없이 힘을 써 줄 테니, 그에게 약을 만들어 달라고 전해 주세요."},
	["no"] = {["1"] = "어려우신 모양이군요... 그렇다면 어쩔 수 없지요. 아아, 어떻게 해야 한담..."},
}
nTable["say1"] = {
	["base"] = {["1"] = " 음...? 무슨 일이지? 네로랑 놀아줘야 해서 바빠. ...뭐? #p2111004#의 부탁으로 왔다고? 너 #p2111004#에 대해 알고 있는 거야?!"},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p2012018##k에게는 가지 않으신 건가요? 그는 #b#m200000000##k에 있답니다...."},
	},
	["ask"] = {"아... 편지를 잃어버리신 모양이군요. 편지라면 얼마든지 다시 써드릴 테니, 제발 #p2012018#에게 전해주세요. "},
}
return nTable
end