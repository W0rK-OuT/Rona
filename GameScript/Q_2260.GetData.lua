return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2110005,
	["startscript"] = "q2260s",
	["quest"] = {{["id"] = 2259, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2110005,
	["level"] = 30,
	["endscript"] = "q2260e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "버섯의 성을 향해!",
	["area"] = 44,
	["0"] = "이제 드디어 버섯의 성에 대해 들을 수 있겠다.",
	["1"] = "낙타 택시는 지금 이대로는 위험하다며 레벨 30이 넘어야만 버섯의 성에 대해 알려 준다고 한다.",
	["demandSummary"] = "레벨 30 달성",
	["parent"] = "버섯의 성에 관하여...",
	["order"] = 6,
	["2"] = "이제 드디어 버섯의 성에 대해 들을 수 있겠다. 전직을 하면서 버섯의 성에 관한 이야기를 들어보자.",
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end