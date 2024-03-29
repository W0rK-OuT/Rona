return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2091001,
	["lvmin"] = 50,
}
nTable["check1"] = {
	["npc"] = 2071006,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 5000,
}
nTable["info"] = {
	["name"] = "도공의 제비 ",
	["parent"] = "도공의 제비찾기",
	["order"] = 1,
	["0"] = "#b#m250000000##k의 #b#p2091001##k에게 걱정되는 것이 있다고 하는데…",
	["1"] = "#p2091001#은 과거에 그가 기르던 #b#p2071006##k가 전혀 #m250000000#에 나타나질 않고 있다며, 아무리 임무가 바빠도 인사는 꼬박꼬박 오던 #p2071006#에 대해 걱정하고 있었다. #p2071006#라고? 왠지 알 것 같은걸? #p2071006#를 찾아 #p2091001#의 말을 전해주자.",
	["2"] = "#b#p2071006##k는 #p2091001#에 대해 알고 있는 듯하다. 하지만 기억이 확실하지 않은 것 같은데… ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신은 아주 오랫동안 이곳저곳을 여행한 여행자처럼 보이는구려. 그렇다면 이 마을 저 마을에서 많은 사람들을 만나 보았겠지. 당신이 경험 많은 여행자라면 부탁을 하나만 들어주면 안 되겠소? "},
	["yes"] = {["1"] = "혹시 어떤 #b#p2071006##k에 대한 소문을 들은 적이 없소? #p2071006#라고는 해도 말도 할 수 있고, 약간이지만 도술도 부릴 줄 아는 녀석이니 어디선가 소문이 났을 법도 한데… 원래는 평범한 #p2071006#였는데 천도와 #t2022143#을 먹여가며 길렀더니 어느 순간부터 똑똑해졌지.", ["2"] = "#p2071006#는 한낱 어린 새이지만 영리하고 심성도 착하여 큰 임무를 맡아 바쁘게 세상을 날아다니게 되었다오. 바빠도 옛 정을 잊지 않고 자주 #m250000000#에 오곤 했는데 어째서인지 최근엔 연락이 통 안 되고 있소. 혹시라도 당신이 #p2071006#를 보게 된다면 #p2091001#이 보고 싶어한다는 말을 전해 주셨으면 하오."},
	["no"] = {["1"] = "하긴. #m250000000# 구경에도 바쁠 텐데, 괜한 부탁을 했군. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "날개가 잘 낫질 않네. 이래서는 다시 날아다닐 수 있을까? 임무도 있는데… 그런데 임무가 뭐였더라? 응? 안녕하세요? 무슨 볼 일이라도 있으신가요? #p2091001#님이 안부를 전해달라고 하셨다고요? …#p2091001#… 많이 듣던 이름인데…  "},
	["yes"] = {["1"] = "죄송해요. 머리가 아파서 기억을 하지 못하겠어요. 안 그래도 건망증이 심한데 다치는 바람에 기억이 더 희미해졌거든요."},
	["stop"] = {
		["npc"] = {["1"] = "#b#p2071006##k에 대한 소문은 없는 건가… "},
	},
}
return nTable
end