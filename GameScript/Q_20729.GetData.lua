return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061006,
	["lvmin"] = 28,
	["quest"] = {{["id"] = 20728, ["state"] = 2}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1061006,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
}
nTable["info"] = {
	["name"] = "이상하게 생긴 석상의 정보",
	["0"] = "#p1061000#의 정보에 의하면 #b#p1061006##k에 #o9300285#에 대한 정보가 남아있을 것 같다. #p1061006#에 말을 걸어 보자.",
	["1"] = "뭔가 낙서가 있는 것 같은데 잘 보이지 않는다. #p1061006#의 몸통을 돌려 보자.",
	["2"] = "#p1061006#의 뒤쪽에는 엄청나게 못 쓴 글씨로 이렇게 쓰여 있었다. 암호는 OOOO는 천재 #o9300285#!",
	["area"] = 15,
}
nTable["say0"] = {
	["base"] = {["1"] = "#b(#p1061006#이다. 우스꽝스러운 표정을 하고 있다. 어딘가에 낙서가 있을 텐데...)"},
	["yes"] = {["1"] = "#b(등 쪽에 낙서가 있는 것 같지만 잘 보이지 않는다. 석상의 몸통을 조금 돌려보자.)"},
	["no"] = {["1"] = "#b(힘드니까 좀 있다 하자.)"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#b(석상에 새겨진 글자를 자세히 들여다 보자.)", ["2"] = "#b(암호는 OOOO는 천재 #o9300285#!)"},
	["yes"] = {["1"] = "#b(뭔가 의미가 있는 말 같은데...)"},
}
return nTable
end