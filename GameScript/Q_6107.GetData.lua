return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061012,
	["quest"] = {{["id"] = 6106, ["state"] = 2}},
	["job"] = {312, 322},
}
nTable["check1"] = {
	["npc"] = 1061012,
	["item"] = {{["id"] = 4031466, ["count"] = 50}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 700000,
	["item"] = {
		{["id"] = 4031466, ["count"] = -50}
	},
}
nTable["info"] = {
	["name"] = "어둠의 영혼석",
	["parent"] = "극단의 시험",
	["order"] = 8,
	["1"] = "#b#p1061012##k는 #m910500000#으로 가는 매개체인 #b#t4031466##k을 #b50개#k 가져 오면 궁수 수련장으로 보내주겠다고 했다. \n\n#i4031466##t4031466#  #b#c4031466# / 50#k",
	["2"] = "#m910500000#으로 들어가기 위해 필요한 #t4031466# 50개를 #p1061012#에게 가져다 주었다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "오래 전 궁수의 길을 걷던 친구가 쓴 책을 이렇게 보게 되다니 기쁘군! 친구는 이 책을 가지고 오는 사람에게 궁수의 궁극 스킬을 전수해 주라고 했지. 자네가 바로 그 친구의 후계가 될 사람이야! 물론 궁수 궁극의 스킬은 익히겠지?"},
	["yes"] = {["1"] = "좋아! 하지만 그 전에 먼저 해야 할 일이 있네. 이 책에 나와 있는 궁수 수련장은 그냥 갈 수 있는 곳이 아니야! 가기 위한 매개체로 #b#t4031466# 50개#k가 필요하다네. ", ["2"] = "자네를 위해 행운을 빌어주겠네. #b#t4031466##k는 #b#o6230100#, #o7130100#, #o7130101#, #o8130100##k이 가지고 있을테니. 힘들겠지만, 노력하길."},
	["no"] = {["1"] = "흥미가 없어진건가?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#b#t4031466# 50개#k를 모두 모아오다니. 이제 이계의 문을 열 수 있겠군. 자네가 수련을 떠날 수 있도록 준비해 두겠네. 준비가 된다면 수련방법에 대해서 알려주도록 하지."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4031466# 50개#k는 아직 모으지 못한건가?"},
	},
}
return nTable
end