return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2140000,
	["lvmin"] = 120,
	["quest"] = {{["id"] = 3534, ["state"] = 2}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 2140003,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "여신의 축복",
	["parent"] = "망각의 길 ",
	["order"] = 1,
	["0"] = "#p2140000#의 허가를 받았지만 신전 깊은 곳에 들어갔더니, 무언가가 막고 있어 이동하는 것은 불가능했다. 이번에도 뭔가를 잃어버린 걸까? #b#p2140000##k을 만나보자.",
	["1"] = "#p2140000#은 고개를 갸우뚱하며, 이번에는 어째서 이런 현상이 발생하는지 모르겠다고 말했다. 망각을 잃어버린 게 아닌 이상 망각의 길을 통과하지 못할 이유는 없는데, 망각을 잃어버릴 리는 없다는 것이다. \n\n혹시 #b여신의 약속#k이 깨어진 것은 아닐지 모르겠다며, #p2140000#은 #b#p2140003##k를 만나 약속의 기록을 확인해보라고 말했다. ",
	["2"] = "#p2140003#를 만났다. 기다리고 있었다 말하며 그는, 이미 모든 것을 알고 있다는 것처럼 설명해 주었다. 시간의 여신이 인간에게 내린 축복, 망각은 절대 사라지지도 빼앗기지도 않는다는 약속에 대해... 그 약속은 여전히 유효하다며 #p2140003#는, 신전 깊은 곳으로 갈 수 없는 이유는 다른 곳에 있다고 말했다.",
	["area"] = 46,
}
nTable["say0"] = {
	["base"] = {["1"] = "무슨 일이십니까? 설마 이번에도 망각의 길 너머 신전 깊은 곳으로 갈 수 없다는 건 아니겠지요? 더 이상은 문제가 생길 리 없을 텐데요? \r\n#L0# #b이번에도 같은 문제인데요? 가지긴 하는데, 막혀 있어요. 설마 #o8220006#의 불길에 망각이 타버린 것은 아니겠죠?", ["2"] = "망각이 양피지 종이도 아니고 탈 리가 없지 않습니까? 이상한 일이군요. 시험에도 통과했고 허가도 받았으니, 당신을 막을 건 없는데요... 도대체 어떻게 해야 할지...\r\n#L0# #b해결 방법은 없나요?", ["3"] = "앞의 문제들은 예상 했던 것들입니다. 하지만 이번에는 아닙니다. 망각은 절대 사라지지 않습니다. 사라진다면 그건 오직 #b여신이 약속#k이 깨어졌을 때 뿐인데... 설마...\r\n#L0# #b(여신의 약속?)", ["4"] = "그럴리는 없다고 믿지만, 혹시 모르는 일이니 확인을 해봐야겠군요. #b#p2140003##k를 찾아가 여신의 약속은 어떻게 되었는지 물어봐 주십시오. 영원을 기록하는 그만이 이 일을 확인해줄 테니..."},
	["yes"] = {["1"] = "혹시 약속이 깨어진 것이라면, 여신을 깨워야 할지도 모르겠습니다."},
	["no"] = {["1"] = "이건 단순히 시간의 신전에만 국한된 이야기가 아닙니다. 전 메이플 월드의 모든 사람이 관련될 수도 있는 것입니다. 그렇게 쉽게 거절하지 마십시오."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "기다리고 있었다오. 젊은 모험가여. \r\n#L0# #b궁금한 게 있어서 왔습니다.", ["2"] = "오래 전, 시간의 여신은 망각이라는 축복을 인간에게 내리며 약속했다오. 이 축복은 절대로 사라지지도 빼앗기지도 않고 영원히 인간의 것으로 남을 것이라고.\r\n#L0# #b그, 그럼 약속은...", ["3"] = "여신의 약속은 깨어지지 않았소. 아직 유효하지. 당신에게 망각이 있는 것이 증거요. 그대가 신전 깊은 곳이 막힌 이유는 다른 곳에 있소. \r\n#L0# #b그 이유는... ", ["4"] = "정확한 이유는 말해줄 수 없소. 어째서인지는 #p2140000#이 잘 알고 있을 것이오. 그렇게만 전해주면 된다오. 그럼, 이만."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
		["npc"] = {["1"] = "아직 #b#p2140003##k에게는 가지 않으신 겁니까? #p2140003#는 망각의 길 어딘가에 있는 #b#m270030411##k에 있습니다."},
	},
	["ask"] = 1,
}
return nTable
end