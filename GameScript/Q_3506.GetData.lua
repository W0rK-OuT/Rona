return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2140000,
	["lvmin"] = 103,
	["quest"] = {{["id"] = 3505, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2140001,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "잃어버린 추억",
	["parent"] = "추억의 길",
	["order"] = 1,
	["0"] = "#p2140000#의 말대로 #o8220004#를 쓰러뜨렸지만, 이상하게도 #m270010500# 너머도 이동할 수 없다. 뭔가 잘못된 것 같은데... #b#p2140000##k에게 물어보자.",
	["1"] = "시간의 고래 #o8220004#는 추억을 주식으로 삼는다. #p2140000#은 #o8220004#와 싸우면서 당신의 추억이 먹혀 버려 추억의 길을 통과할 수 없게 되었다며, 추억을 관조하는 자, #b#p2140001##k에게 가면 잃어버린 추억을 되찾을 수 있을지도 모른다고 했다.",
	["2"] = "추억을 관조하는 자, #p2140001#를 만났다.",
	["area"] = 46,
}
nTable["say0"] = {
	["base"] = {["1"] = "무슨 일이십니까? 네? #m270010500# 이상 지나갈 수 없다고요?그럴리가... 허가가 잘못되었을 리는 없는데요. 흐음... 그렇다면... 문제는 당신께 있는 것 같군요. 무슨 문제냐고요?"},
	["yes"] = {["1"] = "시간의 고래 #o8220004#는 추억의 길에 살며 추억을 주식으로 삼습니다. #o8220004#와 싸우면서 당신의 추억 중 일부가 #o8220004#에게 먹혀 버린 것 같군요. 사라진 추억 때문에 추억의 길을 통과할 수 없게 된 겁니다.", ["2"] = "잃어버린 추억을 되찾기 전까지, 추억의 길을 통과할 수 없을 겁니다. 하지만 추억을 먹은 #o8220004#는 이미 없애 버렸고... 하는 수 없군요. #p2140001#에게 도움을 청하는 수밖에. 가려진 눈으로 오직 추억만을 바라보는 자, #b#p2140001##k라면 당신의 잃어버린 추억도 알고 있을 겁니다."},
	["no"] = {["1"] = "별다른 문제가 없다 생각하면, 그뿐이지요. 더 이상 이동할 수 없을 뿐. 그걸로 만족하십니까?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "...그대는... 비어 있군. 마음 한 곳을 차지하고 있던 추억을 잃어버려, 텅 비어버렸어. "},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p2140001##k를 찾지 못하신 모양이군요. 그는 추억의 길 어딘가에 있는 #b#m270010111##k에 있습니다."},
	},
}
return nTable
end