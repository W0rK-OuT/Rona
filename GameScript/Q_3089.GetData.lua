return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2032000,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3088, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2012010,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 500,
}
nTable["info"] = {
	["name"] = "엘마가 빌려 간 분무기1",
	["parent"] = "오르비스의 위기",
	["order"] = 4,
	["1"] = "오르비스의 구름을 보수하기 위해서는 구름 분무기가 꼭 필요하지만, 50년 전에 가정부 엘마가 빌려 간 이후로 돌려받지 못했다고 한다. 빌려간 지 50년이나 지났는데 돌려주지 않다니... #b가정부 엘마#k를 찾아가보자.",
	["2"] = "엘마를 찾아가서 50년 전에 빌려줬던 #t4031308#를 받아왔다. 다시 스피루나의 집으로 가보자.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "한 가지 더 부탁드릴 일이 있는데, 도와 주시겠어요?"},
	["yes"] = {["1"] = "가져다 주신 #t4031309#들을 기존에 있던 구름들과 떨어지지 않게 잘 붙이려면 #t4031308#가 필요해요. 원래는 #p2032001#님이 가지고 계셨는데 50년 전에 #b 가정부 엘마#k라는 분께 빌려드렸다고 해요. 그런데 아직 돌려받지 못했어요. 그 엘마라는 분께 가서 #b#t4031308##k를 받아와 주세요."},
	["no"] = {["1"] = "빌려준 지 50년이나 지났으니 다시 받는건 역시 무리겠죠?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "무슨 일이세요? 전 지금 청소를 해야 하기 때문에 너무 바쁘답니다. 먼지가 많이 나서 계속 그곳에 서 계시다가는 먼지를 뒤집어 쓰게 될거에요.\r\n#L0# #b50년 전에 빌려 가신 #t4031308#를 받으러 왔어요.", ["2"] = "#t4031308#라면 50년 전 #p2032001#가 빌려줬던 그것 말인가요? 제가 아직 돌려주지 않았나 보군요. 잠시만 기다려 보세요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["npc"] = {["1"] = "50년 전 #b#t4031308##k를 빌려갔던 사람은 #b가정부 엘마#k였어요."},
	},
	["ask"] = 1,
}
return nTable
end