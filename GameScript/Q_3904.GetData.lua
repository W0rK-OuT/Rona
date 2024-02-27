return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012012,
	["lvmin"] = 23,
	["quest"] = {{["id"] = 3900, ["state"] = 2}, {["id"] = 3903, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2012012,
	["mob"] = {
		[1] = {["id"] = 5200000, ["count"] = 30}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
}
nTable["info"] = {
	["name"] = "왕비의 차2",
	["parent"] = "왕비의 차",
	["order"] = 2,
	["1"] = "#p2012012#는 #p2101007#가 누군지는 모르지만 #t4031577#은 쉽게 내줄 수는 없다며 꼭 #t4031577#이 갖고 싶다면 #r#o5200000# 30마리#k를 퇴치해 달라고 했다. \n\n#o5200000#  #r#a39041#",
	["2"] = "#o5200000# 30마리를 퇴치하고 #p2012012#를 다시 찾아갔다. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "무슨 볼 일이 있으신거죠? 네? #t4031577#을 구하러 오셨다고요? 이런. 그건 인간에게는 판매하지 않는데... #m260000000#의 #p2101007#라는 요정이 주문한 거라고요? #p2101007#...? 글쎄요. 들어본 적이 없는 이름인데... 꼭 찻잎을 구하고 싶은신가요?"},
	["yes"] = {["1"] = "꼭 필요하신 모양이네요. 하지만 요정의 찻잎은 요정들도 구하기 힘든 귀한 차인데... 어떻게 한다? 아! 요정의 찻잎을 드릴 테니, 부탁 한 가지만 들어주시겠어요? #m200000000# 주변에 있는 #r#o5200000##k을 #r30마리#k만 퇴치해 주시기만 하면 되는 일인데... ", ["2"] = "사실 인간에게 요정의 차를 팔지 않는 이유는 요즘 그것을 수확하기가 어려워서예요. 요정의 차는 매우 섬세한 식물이라 조용한 곳에서 곱게 길러야 하는데 #o5200000#들 때문에 그러지 못하고 있거든요. 그러니 당신께서 녀석들을 퇴치해 주세요."},
	["no"] = {["1"] = "꼭 필요하신 게 아니라면 #t4031577#은 절대 드릴 수 없어요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o5200000# 30마리를 퇴치하셨군요! 정말 감사드려요. 그럼 #t4031577#을 가지고 올 테니 잠시만 기다려주시겠어요?"},
	["stop"] = {
		["mob"] = {["1"] = "#r#o5200000##k 퇴치가 쉽지 않으신 모양이네요. 하지만 #r30마리#k를 퇴치해 주시지 않는다면 #t4031577#은 드릴 수 없답니다. "},
	},
}
return nTable
end