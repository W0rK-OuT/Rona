return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081007,
	["quest"] = {{["id"] = 6122, ["state"] = 2}},
	["job"] = {232},
}
nTable["check1"] = {
	["npc"] = 2081007,
	["item"] = {{["id"] = 4031484, ["count"] = 35}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 200000,
	["item"] = {
		{["id"] = 4031484, ["count"] = -35}
	},
	["skill"] = {
		{["id"] = 2321003, ["masterLevel"] = 25, ["onlyMasterLevel"] = 1, ["job"] = {232}}
	},
}
nTable["info"] = {
	["name"] = "바하뮤트의 힘3",
	["parent"] = "드래곤 하트",
	["order"] = 4,
	["0"] = "아직도 용의 힘은 완성되지 않았다는 #b#p2081007##k.",
	["1"] = "라울은 #q2321003#의 힘을 크게 만들고 싶다면 #b#t4031484# 35개#k를 모아오라고 말했다. \n\n#i4031484##t4031484# #b#c4031484#/35#k",
	["2"] = "언제까지 해야만 용의 힘이 완성되는 걸까. 용의 힘은 정말 무한하군. 라울에게 #t04031484#를 건네주자, 그는 #q2321003#의 힘을 전보다 더 크게 만들어 주었다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신은 #q2321003#의 소유자로군. 용이 가진 힘은 무한하여, 그것을 완전히 깨우려면 많은 노력이 필요하지… 당신이 가진 용의 힘은 충분히 강하다고 생각하지만… 어떻소? 용의 힘을 깨우길 원하시오?"},
	["yes"] = {["1"] = "당신의 용에게 더 큰 힘을 부여하고 싶다면 더 많은 #t04031484# 를 구해오시오. 현재 당신의 용이 가진 힘을 보아…#b35개의 #t04031484##k로 힘을 깨울 수 있겠군. ", ["2"] = "단번에 힘을 깨울 수 있다면 좋겠지만, 그것은 가능하지도 않고, 가능하다 하더라도 어린 용에게 너무 부담이 되니 그렇게 해서는 안 되지. 당신 역시 용을 사랑하는 자… 어려운 방법이지만 이해하리라 믿소."},
	["no"] = {["1"] = "이 정도의 힘으로 만족하는 모양이군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t04031484# 35개를 모두 모아왔군. #K"},
	["yes"] = {["1"] = "좋소. 이걸로 당신의 용은 더 큰 힘을 가지게 되었소. 이제 당신의 용도 제법 강해졌군. #b하지만 이것으로도 아직 용의 힘은 완성되지 않았소. #k"},
	["stop"] = {
		["item"] = {["1"] = "#b#t04031484# 35개#k를 모두 모으지 못했군. 용의 힘이 강해진 만큼 더 많은 #t04031484#를 소모할 수밖에 없소. 수고해주시오."},
	},
}
return nTable
end