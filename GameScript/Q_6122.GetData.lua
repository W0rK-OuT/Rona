return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081007,
	["quest"] = {{["id"] = 6121, ["state"] = 2}},
	["job"] = {232},
}
nTable["check1"] = {
	["npc"] = 2081007,
	["item"] = {{["id"] = 4031483, ["count"] = 30}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 150000,
	["item"] = {
		{["id"] = 4031483, ["count"] = -30}
	},
	["skill"] = {
		{["id"] = 2321003, ["masterLevel"] = 20, ["onlyMasterLevel"] = 1, ["job"] = {232}}
	},
}
nTable["info"] = {
	["name"] = "바하뮤트의 힘2",
	["parent"] = "드래곤 하트",
	["order"] = 3,
	["0"] = "아직 용의 힘은 완성되지 않았다는 #b#p2081007##k.",
	["1"] = "라울은 #q2321003#의 힘을 크게 만들고 싶다면 #b#t04031483# 30개#k를 모아오라고 말했다. \n\n#i4031483##t4031483# #b#c4031483#/30#k",
	["2"] = "라울에게 #t4031483#를 건네주자, 그는 #q2321003#의 힘을 더 크게 만들어 주었다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신은 #q2321003#의 힘을 소유한 자로군. 당신의 용이 가진 힘은 아직 완성되지 않은 것. 이곳까지 찾아온 것은 더 큰 힘을 원한다는 의미이겠지. ", ["2"] = "용의 힘을 깨우길 원하시오?"},
	["yes"] = {["1"] = "당신의 용에게 더 큰 힘을 부여하고 싶다면 더 많은 #t04031483#를 구해오시오. 현재 당신의 용이 가진 힘을 보아… #b30개의 #t04031483##k로 힘을 깨울 수 있겠군. 용의 힘이 커진 만큼 더 많은 #t04031483#를 필요로 하오."},
	["no"] = {["1"] = "더 이상의 힘이 필요하지는 않은 모양이군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t04031483# 30개를 모두 모아왔군. #K"},
	["yes"] = {["1"] = "좋소. 이걸로 당신의 용은 더 큰 힘을 가지게 되었소.#b아직도 용의 힘은 완성되지 않았소.#k"},
	["stop"] = {
		["item"] = {["1"] = "#b#t04031483# 30개#k를 모두 모으지 못했군. 30개 이상이 아니면 용의 힘을 깨우는 것은 불가능하오. 용의 힘이 커질수록, 더 많은 드래곤 하트를 필요로 하니까."},
	},
}
return nTable
end