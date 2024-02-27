return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1101003,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 20300, ["state"] = 2}},
	["job"] = {1110},
}
nTable["check1"] = {
	["npc"] = 1101003,
	["item"] = {{["id"] = 4032101, ["count"] = 1}},
	["mob"] = {
		[1] = {["id"] = 9001009, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4032101, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "변신술사",
	["0"] = "도둑 수색에 대한 자세한 지시사항은 빛의 기사단장 #b#p1101003##k에게서 받을 수 있다고 한다. #p1101003#에게 말을 걸어 보자.",
	["1"] = "블랙윙은 아직 에레브를 빠져 나가지 못했다고 한다. 그러니 곳곳을 수색하다 보면 찾을 수 있을 것이라는데... #b#p1101002##k에게 #b수색증#k을 발급받은 후, 에레브를 수색하여 #r#o9001009##k를 찾아 퇴치하고 #b#t4032101##k을 되찾아 오자. 단, 적은 #o9001009#답게 다른 사람의 모습으로 변신하고 있을 테니 잘 대화하여 진짜인지 아닌지 구분하자. \n\n#o9001009##r #a203011##k \n#i4032101# #t4032101# #b#c4032101# / 1#k",
	["2"] = "블랙윙의 멤버인 #o9001009# #p1104001#를 물리치고 #t4032101#을 되찾아 왔다. ",
	["area"] = 15,
	["type"] = "[전직]",
}
nTable["say0"] = {
	["base"] = {["1"] = "신수에 의해 보호받는 에레브는 사악한 자가 침입하면 곧바로 이변이 생겼음을 알 수 있다. 하지만 이번에는 그렇지 못했다. 범인이 기사단원의 모습으로 변신했기 때문이다. #r블랙윙의 멤버인 #o9001009# 바로크#k. 그가 보물을 훔쳐간 범인이다.", ["2"] = "보물은 절대로 검은 마법사에게 넘어가서는 안 될 중요한 물건이다. 아직 #o9001009#는 에레브를 빠져 나가지 못했으니 그대도 수색에 참가하도록. 단 수색을 하려면 먼저 #b#t4032179##k이 있어야 하니 #p1101002#에게 가서 수색증을 발급받도록. ", ["3"] = "반드시 #r#o9001009##k를 찾아 퇴치하고 #b보물#k을 되찾아 와라. 나와 다른 단원들도 함께 할 것이다."},
	["yes"] = {["1"] = "주의해라. #o9001009#라면 또다시 다른 사람의 모습으로 변신해 그대를 현혹할 것이다. 하지만 겉모습을 바꿔도 진실은 감출 수 없는 법. #r대화를 시도하여 조금이라도 기사단답지 않은 말을 하거든 #o9001009##k로 판단하고 바로 공격해도 좋다."},
	["no"] = {["1"] = "두렵다면 도망쳐도 좋다. 하지만 언제까지 도망만 친다면, 그 이상의 발전은 없을 것이다. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o9001009# #p1104001#를 퇴치하고 돌아왔군. 훌륭하다."},
	["yes"] = {["1"] = "여제께서 그대의 충성에 기뻐하셨다."},
	["stop"] = {
		["item"] = {["1"] = "아직 #o9001009#를 찾지 못한 건가? #o9001009#는 아직 에레브를 빠져나가지 못했다. #b#p1101002##k에게 #b수색증#k을 발급받은 후, 수색을 하도록. 반드시 #r#o9001009##k를 퇴치하고 #b#t4032101##k을 되찾아야 한다."},
		["mob"] = {["1"] = "아직 #o9001009#를 찾지 못한 건가? #o9001009#는 아직 에레브를 빠져나가지 못했다. #b#p1101002##k에게 #b수색증#k을 발급받은 후, 수색을 하도록. 반드시 #r#o9001009##k를 퇴치하고 #b#t4032101##k을 되찾아야 한다."},
	},
}
return nTable
end