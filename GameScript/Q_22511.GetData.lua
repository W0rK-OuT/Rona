return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012003,
	["lvmin"] = 14,
	["quest"] = {{["id"] = 22510, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1012003,
	["item"] = {{["id"] = 4000001, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3560,
	["item"] = {
		{["id"] = 4000001, ["count"] = -20},
		{["id"] = 2000001, ["count"] = 30},
		{["id"] = 2000003, ["count"] = 30},
		{["id"] = 1142152, ["count"] = 1}
	},
	["sp"] = 0,
}
nTable["info"] = {
	["name"] = "고기 대신 버섯!",
	["area"] = 7,
	["0"] = "#b#p1012003##k 아저씨에게 편지를 전해 주었다. 편지에 대한 답을 듣자.",
	["1"] = "스탄 아저씨는 마을에 고기가 꼭 필요한데 곤란하다며, 고기를 대신할 버섯이라도 따다 달라고 말했다. 버섯을 잔뜩 따서 스탄 아저씨에게 전해 주자.\r\n\r\n#i4000001# #t4000001# #b#c4000001# / 20#k",
	["2"] = "버섯을 받은 스탄 아저씨는 고맙다며 뭔가 부탁할 일이 있으면 얼마든지 말하라고 했다. 당장은 부탁할 일이 없으니 나중에 생기면 말해보자.",
}
nTable["say0"] = {
	["base"] = {["1"] = "#t4032453# 납품기한을 늦추겠다고? #m100000000# 마을에는 고기가 꼭 필요한데. 이래서는 곤란해. 하지만 농장에 이상이 생겼다니 독촉을 할 수도 없고... 한동안 버섯으로 버티는 수밖에 없나...\r\n#b#L0#제가 뭐 도와드릴 건 없나요?#l\n#k", ["2"] = "응? 아직 안 간 거냐, 에반? 흠... 그럼 할 수 있으면 혹시  #b#t4000001# 20개#k만 따주겠느냐?"},
	["yes"] = {["1"] = "오오, 할 수 있는 거냐? #r#o1210102##k은 #b#m104040001##k나 #b3#k, 아니면 #b#m100000000# 주변 #m100010100##k에서 자주 발견되니 찾기 어렵지는 않을 거다. 그럼 부탁하마.", ["2"] = "그런데 그 도마뱀은... 아니, 아니다. 요새 애들은 이상한 동물을 많이 기르니까. 괜히 참견했다가 화내기라도 하면 골치 아파."},
	["no"] = {["1"] = "역시 어렵겠지? 그럼 어떻게 한다... 지나가는 모험가에게 부탁해 볼까?"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "오오, #t4000001# 20개를 구해왔군! 제법인걸. #p1013103#가 이런 것도 가르치는 모양이지? 아주 훌륭해. 고맙네."},
	["yes"] = {["1"] = "혹시 뭔가 부탁할 일이 생기거든 얼마든지 말하려무나. 내 #m100000000# 내에서 가능한 일이라면 뭐든 도와주도록 하지."},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4000001# 20개#k는 구하지 못한 거냐? #m100000000# 주변에 #r#o1210102##k들은 넘쳐나는데... 하긴. 그 녀석들도 요샌 좀 이상한 것 같긴 하지만..."},
	},
}
return nTable
end