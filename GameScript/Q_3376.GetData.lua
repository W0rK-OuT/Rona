return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2112003,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3375, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2112003,
	["item"] = {{["id"] = 4031785, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100,
	["item"] = {
		{["id"] = 4031785, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "줄리엣의 감동",
	["parent"] = "줄리엣의 도시락",
	["order"] = 1,
	["0"] = "로미오의 편지를 받은 줄리엣은 무척 감동한 듯하다. 그래서 줄리엣이 또 다시 로미오를 위해 무언가 만들려고 하는 것 같은데... #b줄리엣#k에게 가보자.",
	["1"] = "줄리엣은 로미오를 위해 직접 요리를 해주고 싶다며, 도시락을 만들어 주겠다고 한다. ...알카드노 연금술사가 만든 도시락이라... 줄리엣이 로미오를 독살하기 전에 도시락 만들기를 도와주도록 하자. #b브로커 한#k에게서 #b도시락 레시피#k를 사다 주면 될 것 같다. \n\n#i4031785##t4031785# #b#c4031785##k/1 ",
	["2"] = "줄리엣에게 브로커 한의 도시락 레시피를 건네 주었다.",
	["area"] = 47,
	["sortkey"] = "36",
}
nTable["say0"] = {
	["base"] = {["1"] = "모험가님. 로미오는 #r전갈꼬리볶음#k하고 #r벨라모아양념구이#k 중에 어떤 걸 더 좋아할까요? 아아, 좀 멀리서 구해야 하지만 포이즌푸퍼찜 같은 걸 만드는 게 더 좋을까나~? 어떻게 생각하세요? \r\n#b#L0# 무, 무슨 말씀을 하시는 거죠?#l", ["2"] = "로미오에게 그런 편지까지 받았는데, 가만히 있을 수는 없잖아요. 그래서 답례로, 로미오에게 조금 특별한 요리를 해줄까 해서요. 맛있는 도시락을 만들어서 전해 주면, 로미오도 기뻐하겠죠? \r\n#b#L0#...(살아있으면 다행이겠다!)#l", ["3"] = "요리는 한 번도 해본 적 없지만, 옷의 전례도 있고 해서 너무 걱정하지 말고 열심히 만들어 보려고요. 하지만 어떤 요리를 하면 좋을지 몰라서... 모험가님께서는 어떻게 생각하세요? \r\n#b#L0# 그냥 평범한 요리가 좋지 않을까요?#l", ["4"] = "평범한 요리요? 하긴... 평범한 게 가장 특별한 게 될 수도 있을 테니 그것도 나쁘지 않겠네요. 음... 괜찮으시면 모험가님께서 맛있는 요리 레시피를 구해다 주시지 않겠어요?"},
	["yes"] = {["1"] = "마가티아 안에서 맛있는 요리의 레시피를 구할 수 있을만한 곳은 딱 한 군데에요. #b브로커 한#k. 그라면 연금술과 전혀 관계 없는 물건도 취급할 테니, 그에게 #b도시락 레시피#k를 구해다 주시면 돼요."},
	["no"] = {["1"] = "음... 모험가님께서는 바쁘신 모양이네요. 그럼 역시 #r다크 와이번의 날개찜#k 같은 걸로 해볼까나."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "아, 브로커 한에게서 레시피를 구해 오셨군요. 정말 감사해요! 그럼 어서 이걸로 요리를 만들어 봐야겠어요. 로미오에 대한 마음을 담뿍 담아서~"},
	["stop"] = {
		["item"] = {["1"] = "아직 #b도시락 레시피#k는 구하지 못하신 모양이네요. 마가티아에서 레시피를 팔 만한 사람은 #b브로커 한#k 뿐이니, 그에게 물어봐 주세요."},
	},
}
return nTable
end