return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081200,
	["lvmin"] = 120,
	["quest"] = {{["id"] = 6913, ["state"] = 2}},
	["job"] = {211, 221, 231},
}
nTable["check1"] = {
	["npc"] = 2081200,
	["item"] = {{["id"] = 4031512, ["count"] = 1}, {["id"] = 4031511, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 50000,
	["item"] = {
		{["id"] = 4031512, ["count"] = -1},
		{["id"] = 4031511, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "영웅의 자질 ",
	["parent"] = "마법사 궁극의 길",
	["order"] = 5,
	["1"] = "#b#p2081200##k는 4차 전직을 하고 싶다면 영웅으로서의 자격을 증명하라고 했다. 자격을 증명하기 위해서는 #b#t4031512##k과 #b#t4031511##k이 필요하다고 한다.\r\n#i4031512##t4031512# #b#c4031512#/1#k\n#i4031511##t4031511# #b#c4031511#/1",
	["2"] = "#b#t4031512##k과 #b#t4031511##k을 구해가니 영웅의 자질이 증명되었다면서 4차 전직을 할 준비가 되면 다시 말을 걸어달라고 했다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = " 그럼 이제 그대에게 4차 전직을 할 수 있는 마지막 과제를 드리겠습니다."},
	["yes"] = {["1"] = "그대의 능력으로 제가 원하는 물건 2개를 찾아오시면 됩니다. 제가 원하는 것은 #b#t4031511##k과 #b#t4031512##k...", ["2"] = "이 물건들을 어떻게 구해오는지는 그대의 능력에 맡기겠습니다. 자신의 힘과 용기로 얻고 싶다면 #b마뇽과 그리프#k를 잡아서 얻을 수 있을 것입니다. 만약 지혜와 따뜻한 마음으로 얻고 싶다면 리프레의 #b#p2081000##k를 찾아가 보세요."},
	["no"] = {["1"] = "마법사 궁극의 길을 가려는 자가 무엇을 겁내나요? 아니면 시련을 겪을 준비가 되지 않은 것인가요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "그대는 그대의 영웅으로서의 자질을 증명했습니다."},
	["yes"] = {["1"] = "이제 남은 것은 마법사 궁극의 길로 향하는 것 뿐. 전직을 할 준비가 되면 다시 말을 걸어 주세요."},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4031511##k과 #b#t4031512##k를 구하지 못했나 보군."},
	},
}
return nTable
end