return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020006,
	["lvmin"] = 120,
	["startscript"] = "q20401s",
	["quest"] = {{["id"] = 20400, ["state"] = 2}},
	["job"] = {1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 2020006,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "좀비 사냥",
	["0"] = "#b#m211000000##k의 #b#p2020006##k가 #p1103000#에 대해 알고 있는 모양인데...",
	["1"] = "#p2020006#는 #p1103000#가 지금 어디 있는지는 모르지만, 한동안 #m211000000#에 머물렀던 것은 사실이라며, 그는 #r좀비 사냥#k에 한창이었다고 한다. 단순히 사냥하는 게 아니라 뭔가 단서를 찾는 것 같더라는데...",
	["2"] = "#p2020006#의 말에 따르면 #p1103000#는 좀비 사냥에 한창이었다고 한다. 단순히 사냥하는 게 아니라 뭔가 단서를 찾는 것 같더라는데... ",
	["area"] = 15,
	["type"] = "[전직]",
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end