return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1201001,
	["startscript"] = "q21101s",
	["lvmin"] = 10,
	["quest"] = {{["id"] = 21100, ["state"] = 2}},
	["job"] = {2000},
}
nTable["check1"] = {
	["npc"] = 1201001,
	["endscript"] = "q21101e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "폴암을 사용하던 영웅",
	["area"] = 6,
	["0"] = "영웅의 무기는 주인을 알아본다고 한다. 내가 만약 폴암을 사용하던 영웅이라면 폴암을 만지는 순간 뭔가 반응이 올 거라는데... 마을에 있는 #b#p1201001##k을 클릭 해보자.",
	["1"] = "#p1201001#을 만지자 뭔가 아련한 기억이 떠오르는 것 같긴 한데, 착각인지 아닌지 확실하지 않다. 폴암을 사용하던 영웅이었음을 확신하면 다시 한 번 #p1201001#을 만져 보자.",
	["2"] = "과거의 기억이 약간 떠올랐다. 양 손에 들고 있던 폴암... 폴암을 들고 검은 마법사의 앞에 서 있던 기억... 나는 확실히 폴암을 사용하던 전사, 아란이었다... ",
	["type"] = "[전직]",
}
nTable["say0"] = {
	["base"] = {["1"] = "#b(#p1201001#을 만져 보았다. 차가워야 할 폴암이 이상하게 따뜻하게 느껴진다. 어쩐지 예전 기억이 떠오르는 것 같다.)#k", ["2"] = "#b(...폴암을 사용하던 영웅은 강인한 힘과 체력을 바탕으로 다양한기술을 자유자재로 사용하는 근접전에 능한 전사였다...)#k", ["3"] = "#b(...높은 STR을 갖고 있었지만, 약간의 DEX 역시 갖고 있어 힘에 휘둘리지 않는 기량을 선보였다...)#k", ["4"] = "#b(이건 내 기억일까, 아니면 동료였던 영웅에 대한 기억일까... 확실히 하기 위해서는 #p1201001#을 한 번 더 만져봐야 할 것 같다.)#k"},
	["yes"] = {["1"] = "#b(나는 스스로를 폴암을 사용하던 영웅이라고 확신하고 있는가? 신중하게 생각한 후 확신한다면 다시 #p1201001#을 만져 보자.)#k"},
	["no"] = {["1"] = "#b(좀 더 신중하게 생각해 보자.)#k"},
}
nTable["say1"] = {
}
return nTable
end