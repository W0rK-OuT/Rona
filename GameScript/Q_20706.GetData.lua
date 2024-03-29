return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1103001,
	["lvmin"] = 14,
	["quest"] = {{["id"] = 20705, ["state"] = 2}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1103001,
	["infoNumber"] = 20731,
	["infoex"] = {"1"},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
}
nTable["info"] = {
	["name"] = "돼지농장의 검은 그림자",
	["0"] = "#m100000000# 지역 정보원 #b#p1103001##k에게 새로운 정보가 들어온 것 같은데...",
	["1"] = "#p1103001#의 정보에 의하면 #b#m100020000##k 주변에 이상한 검은 그림자가 자주 보인다고 한다. 그러니 동쪽풀숲으로 가서 풀숲 주변을 뒤져봐 달라는데... #b마우스로 클릭 가능한 지역을 찾아 클릭해 보면 된다#k고 한다.",
	["2"] = "동쪽풀숲을 뒤지다가 발견한 이상한 그림자에 대해 #p1103001#에게 보고했다.",
	["area"] = 15,
}
nTable["say0"] = {
	["base"] = {["1"] = "새로운 정보가 들어왔어요! 이름을 밝힐 수는 없지만, #m100010000#에 있던 어떤 소녀가 알려준 정보에 의하면 #b#m100020000##k에 이상한 그림자들이 자주 오가고 있대요. 뭔가 굉장히 수상하지 않나요? 조사해볼 가치가 있어요!"},
	["yes"] = {["1"] = "#m100020000#으로 가서 풀숲 주변을 자세히 뒤져봐 주세요. 잡초와 덤불 사이까지 세세하게요. 뭐든 좋으니 이상이 발견되면 바로 와서 알려주세요!", ["2"] = "아, 어떻게 찾는지 모르실까봐 말씀 드리는데... #b마우스로 화면 여기저기를 뒤져서 클릭 가능한 곳이 나오면 잽싸게 클릭해 보면 된답니다#k."},
	["no"] = {["1"] = "엥? 안 수상한 가요? 그거 외에 딱히 검은 마법사에 대한 정보는 들어온 게 없는데..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "풀숲 사이에서 검은 그림자를 발견하셨다고요? 아앗, 잡았으면 좋았을 텐데... 하지만 그게 진짜 검은 마법사의 수하라면 그렇게 쉽게 잡힐 리가 없겠죠..."},
	["yes"] = {["1"] = "넵, 감사합니다! 그럼 다른 정보는 없는지 계속 알아볼게요! 당신께선 그때까지 수련에 힘써 주세요! 언제 위험한 임무가 올지 모르잖아요? "},
}
return nTable
end