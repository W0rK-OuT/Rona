return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1101000,
	["startscript"] = "q20000s",
	["infoNumber"] = 20022,
	["infoex"] = {"2"},
	["quest"] = {{["id"] = 20010}, {["id"] = 20011}, {["id"] = 20012}, {["id"] = 20013}, {["id"] = 20014}, {["id"] = 20015}, {["id"] = 20016}, {["id"] = 20017}, {["id"] = 20018}, {["id"] = 20019}, {["id"] = 20020}},
	["job"] = {1000},
}
nTable["check1"] = {
	["npc"] = 1101000,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "어린 여제의 인사",
	["0"] = "어린 여제의 기사가 되어 검은 마법사와 싸우기로 결심했다. 먼저 정식으로 어린 여제, #b#p1101000#에게 인사를 해보자.",
	["1"] = "#p1101000#는 기사가 되어줘서 고맙다며 언제까지나 함께 하자고 말했다.",
	["2"] = "검은 마법사를 퇴치하는 것은 어디까지나 당신의 손에 달린 일이라는 #p1101000#. 강해지는 것은 옆에 있는 #p1101000#의 책사, #p1101002#가 도와줄 것이라고 한다.",
	["area"] = 15,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end