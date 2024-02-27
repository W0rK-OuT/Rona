return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9010010,
	["startscript"] = "q10497s",
	["interval"] = 0,
	["quest"] = {{["id"] = 10490, ["state"] = 1}},
	["item"] = {{["id"] = 3994184}, {["id"] = 3994185}},
}
nTable["check1"] = {
	["npc"] = 9010010,
	["infoNumber"] = 10497,
	["infoex"] = {"99999"},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "이상한 물약을 다시 만들어 주세요.",
	["area"] = 50,
	["0"] = "카산드라가 골탕을 먹일때 필요하다고 만들어준 #b#t3994184##k를 잃어버렸다면, 카산드라에게 다시 부탁하자.",
	["1"] = "카산드라가 골탕을 먹일때 필요하다고 만들어준 #b#t3994184##k는 잃어버리지 말자.",
	["2"] = "카산드라가 골탕을 먹일때 필요하다고 만들어준 #b#t3994184##k 잃어버리지 말자.",
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end