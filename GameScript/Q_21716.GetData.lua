return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032101,
	["lvmin"] = 18,
	["startscript"] = "q21716s",
	["quest"] = {{["id"] = 21715, ["state"] = 2}},
	["job"] = {2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1002104,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 400,
}
nTable["info"] = {
	["name"] = "두 번째 정보수집 완료",
	["area"] = 6,
	["0"] = "두 번째 정보수집 활동이다. #b#m101000000##k의 #b#p1032101##k에게 #p1032112#의 증언을 전해 주자 ",
	["1"] = "#p1032101#은 #o1110100#들이 포악해지는 원인은 인형을 든 꼬마가 분명하다며, 남쪽 숲 관리에 더 힘을 써야겠다고 말했다. 두 번째 정보는 대충 수집했다. #b#p1002104##k에게 수집한 정보를 전하자.",
	["2"] = "#p1002104#에게 #o1110100#이 포악해진 원인을 전했다. 이로써 두 번째 정보수집은 완료되었다. 그나저나 요정들끼리 남쪽 숲 관리하는 게 쉽지 않을 텐데 괜찮을까?",
	["type"] = "[필수]",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "오, 이번에는 좀 빠르군... 전보다는 조사가 쉬웠던 모양이지? 그래, #m101000000#의 초록버섯이 포악해진 원인은 알았어?\n#b#L0#(#m101000000#에서 겪은 일과, 초록버섯이 포악해진 원인에 인형을 든 꼬마가 있음을 말해주었다.)#l\n#k", ["2"] = "흠... 인형을 든 꼬마라... 심상치 않은 이야기군. #r누군가가 고의로 몬스터를 흉폭하게 만든다는 게 증명된 거#k잖아..."},
	["yes"] = {["1"] = "좋아, 덕분에 좋은 정보를 얻었어. 이런 정보야말로 알짜 정보지.", ["2"] = "그럼 다음 정보 수집 일이 있을 때까지는 쉬도록 해. 영웅님답게 수련하면서 경험을 쌓는 게 좋겠지. 한 레벨 23쯤 되면 다시 부를게. 그 동안 인형을 든 꼬마에 관한 정보가 있다면 무조건 알려줘.", ["3"] = "그나저나 요정들끼리 #o1110100# 관리를 잘 할 수 있으려나. 꽤나 힘들 텐데... 도움이 필요하지 않은지 한 번 더 엘리니아를 찾아가서 확인해 보는 게 좋지 않을까... "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["npc"] = {["1"] = "그런데 당신은 왜 #o1110100#에 관해 궁금해 하셨던 건가요? 별로 #o1110100#에 대해 호기심을 가지신 것 같지는 않은데... #b누가#k 부탁이라도 하던가요?"},
	},
	["ask"] = 1,
}
return nTable
end