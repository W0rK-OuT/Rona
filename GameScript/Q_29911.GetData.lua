return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000066,
	["normalAutoStart"] = 1,
	["lvmin"] = 180,
	["startscript"] = "q29911s",
	["item"] = {{["id"] = 1142010, ["count"] = 1}},
	["job"] = {200, 210, 220, 230, 211, 221, 231, 212, 222, 232},
}
nTable["check1"] = {
	["npc"] = 9000066,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "현자",
	["area"] = 51,
	["viewMedalItem"] = 1142010,
	["0"] = "#b#e칭호 - 현자#n#\r\n#k최강의 200 레벨 마법사에게 주어지는 #b<현자>#k칭호에 도전하라.\r\n●획득조건 : #b<#y29301#>#k 완료",
	["1"] = "..",
	["2"] = "대망의 200 레벨 달성! #b<현자>#k의 칭호를 얻었다.",
	["autoStart"] = 1,
	["autoAccept"] = 1,
	["autoComplete"] = 1,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end