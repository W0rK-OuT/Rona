return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061011,
	["lvmin"] = 25,
	["startscript"] = "q2254s",
	["quest"] = {{["id"] = 2251, ["state"] = 2}, {["id"] = 2255}},
}
nTable["check1"] = {
	["npc"] = 2101013,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "사막의 카르카사",
	["area"] = 30,
	["0"] = "연구를 통해 버섯의 성에 관한 정보가 나왔다. 하지만 #b기억하고 있는 자#k도 그곳에 관한 어떤 정보도 모른다고 한다. 자세한 이야기를 들어보자.",
	["1"] = "연구를 통해 버섯의 성에 관한 정보가 나왔다. 하지만 #b기억하고 있는 자#k도 그곳에 관한 어떤 정보도 모른다고 한다. 사막의 #b카르카사#k에게 가면 좋은 정보를 얻을 수 있다고 하는데..",
	["2"] = "#b카르카사#k를 만나 버섯의 성에 대해 물어봤지만 대답을 하지않는다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "좋아. 방법을 찾았어. #b카르카사#k에게 보내주겠네...단지 그 사람은 조금....음...뭐랄까? 상당한 장사꾼의 기질이 있다고 해야하나? 어떤가? 지금 이동하겠나?"},
	["yes"] = {["1"] = "좋아. 그럼 #b카르카사#k에게 가서 버섯의 성에 대해 한번 물어보게. 연구에 도움을 주어서 정말 고맙네!"},
	["no"] = {["1"] = "음..내가 말을 안 한 것 같은데, 당신 레벨에는 사막 쪽이 조금 더 레벨업을 하기 편하네. 선택은 당신의 목이겠지만....."},
}
nTable["say1"] = {
	["base"] = {["1"] = "어라? 누구시죠? 사막에서는 처음 뵙는 분 같은데?"},
	["stop"] = {
		["npc"] = {["1"] = "사막의 #b카르카사#k에게 아직 안 갔나?"},
	},
}
return nTable
end