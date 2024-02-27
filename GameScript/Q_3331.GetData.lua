return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111005,
	["lvmin"] = 70,
	["interval"] = 4320,
	["quest"] = {{["id"] = 3330, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111005,
	["item"] = {{["id"] = 4000362, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1082222, ["count"] = 1},
		{["id"] = 4000362, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "키니의 D.로이 연구!!!",
	["0"] = "연금술사 요정 소녀 #b#p2111005##k! 그녀의 연구는 어디까지 계속될까? 그녀의 연구를 도와주자! ",
	["1"] = "#p2111005#는 강력한 #r#o7110300##k를 연구하고 싶다고 한다. 굉장한 열정인걸? 그러자 #p2111005#는 이유가 있으니 당연한 노력이라며, #o7110300#의 #b#t4000362# 1개#k를 가져다 달라고 말했다. \n\n#i4000362##t4000362# #b#c4000362##k/1 ",
	["2"] = "#p2111005#가 이렇게 열심히 기계 인형을 연구하는 것은 그녀의 친구 #p2111003#를 위해서라고 한다. 인간이 되고 싶어하는 그의 소망을 들어주기 위해 열심히 노력중이라는 것이다. 과연 #p2111005#는 #p2111003#를 인간으로 만들어 줄 수 있을까?",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "와앗! 친절한 모험가님이다! 안녕하세요? 모험가님 덕분에 #o5110301#에 대해서도 #o5110302#에 대해서도 완벽하게 연구할 수 있었어요. 정말정말 고맙습니다. 모두 모험가님 덕분이에요! \r\n#b#L0#굉장한 열정인데?#l", ["2"] = "응? 에헤헷. 당연하죠! #p2111005#에게는 연구를 해야할 이유가 있는걸요? 그래서 말인데... 모험가님. 한번만 더 연구를 도와주시면 안 될까요? "},
	["yes"] = {["1"] = "우와아! 정말이죠, 모험가님? 정말 기뻐요! 그럼 #r#o7110300##k가 가지고 있는 #b망가진 기계심장#k을 구해 주세요. 굉장히 강한 녀석이라 어떻게 구해야 할까 걱정했는데, 모험가님같이 강하고 용감한 분이 도와주신다니... 정말 다행이에요!"},
	["no"] = {["1"] = "하긴... 벌써 몇 번이고 모험가님께서 도와 주셨는데... 또 부탁드리면 안 되겠죠? 그럼 이번에는 스스로 구해볼게요. "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "망가진 기계심장은 가지고 오셨어요? 와아... 정말 굉장해요! 벌써 몇 번이고 도와주셨으면서 망가진 기계 심장까지 구해 주시다니... 지금까지 걱정 없이 실험한 건 다 모험가님 덕분이에요! 정말 감사합니다. 연구에 무척 도움이 되었어요. "},
	["yes"] = {["1"] = "기계 인형 연구는 절대 쉽지는 않지만, 모험가님께서 도와주신 은혜를 생각해서라도 절대 포기하지 않고 계속 할게요. 그렇게 하다보면 언젠가 #b#p2111003#의 소망#k도 들어줄 수 있겠죠?", ["2"] = "#p2111003#은 기계 인형이에요. #o5110301#들처럼 아무 생각도 하지 못하는 인형이 아니라, 인간에 가까운 기계 인형... 하지만 그는 인간이 되고 싶대요. ", ["3"] = " #p2111003#는 정말 착하고 상냥한 좋은 사람이에요. 인간은 아니지만, 꼭 인간 같아요. 그러니... #p2111005#는 #p2111003#가 바라는걸 이루어주고 싶어요.", ["4"] = "아, 혹시 #o7110300#에게서 #t4000362#을 더 구할 수 있으시면 더 구해다 주세요. 완전히 분해해서 연구한 후에 다시 연구할 때는 새로운 #t4000362#을 구해야 하거든요. 그러니 #t4000362#이 더 생기시면 3일 후에 가져다 주세요. 한 번 연구하는데 3일은 걸리니, 그 후에요!"},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000362##k은 구하지 못하신 건가요? #r#o7110300##k는 굉장히 강하니까, 조심해서 구하세요. "},
	},
}
return nTable
end