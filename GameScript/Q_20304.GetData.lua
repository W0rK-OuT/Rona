return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1101006,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 20300, ["state"] = 2}},
	["job"] = {1410},
}
nTable["check1"] = {
	["npc"] = 1101006,
	["item"] = {{["id"] = 4032104, ["count"] = 1}},
	["mob"] = {
		[1] = {["id"] = 9001009, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4032104, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "변신술사   ",
	["0"] = "도둑 수색에 대한 자세한 지시사항은 어둠의 기사단장 #b#p1101006##k에게서 받을 수 있다고 한다. #p1101006#에게 말을 걸어 보자.",
	["1"] = "블랙윙은 아직 에레브를 빠져 나가지 못했다고 한다. 그러니 곳곳을 수색하다 보면 찾을 수 있을 것이라는데... #b#p1101002##k에게 #b수색증#k을 발급받은 후, 에레브를 수색하여 #r#o9001009##k를 찾아 퇴치하고 #b#t4032101##k을 되찾아 오자. 단, 적은 #o9001009#답게 다른 사람의 모습으로 변신하고 있을 테니 잘 대화하여 진짜인지 아닌지 구분하자. \n\n#o9001009##r #a203041##k\n#i4032104# #t4032104# #b#c4032104# / 1#k",
	["2"] = "블랙윙의 멤버인 #o9001009# #p1104001#를 퇴치하고 #t4032104#을 되찾아 왔다.",
	["area"] = 15,
	["type"] = "[전직]",
}
nTable["say0"] = {
	["base"] = {["1"] = "...왔나? #p1101002#에게 설명은 들었을 테니, 자세한 설명은 생략... 해도 되지 않을 표정이군. 너도 알다시피 에레브는 신수의 보호를 받는 곳이지. 사악한 것은 들어오지 못하고 들어온다 하더라도 금방 알아채고 퇴치해 버려. ", ["2"] = "그런데 이번에는 그러지 못했지. 이유는 간단해. 보물을 훔쳐간 자는 #o9001009#였거든. #r블랙윙의 멤버 중 하나인 #o9001009# #p1104001##k... 침입한 걸 알아도 변신을 하고 있으니 잡을 수가 없었지. 귀찮은 능력이야...", ["3"] = "보물은 검은 마법사의 손에 넘어가서는 절대 안 될 중요한 물건. #o9001009#는 아직 에레브를 빠져 나가지 못했으니 너도 수색에 참가해. 수색에 필요한 #b#t4032179##k은 #p1101002#에게 받을 수 있을 거야.", ["4"] = "자, 그럼 #r#o9001009##k를 퇴치하고 #b보물#k을 되찾아 오도록... 나와 다른 단원들도 수색할 거야."},
	["yes"] = {["1"] = "#o9001009#라면 또다시 변신할 테니 찾기 어렵겠지. 하지만 겉모습을 바꿔도 진실은 바뀌지 않아. #r다른 단원을 만나거든 말을 걸어봐. 헛소리를 하는 녀석이 있다면 그게 바로 #o9001009#겠지#k. 의혹이 있으면 바로 공격해도 좋아."},
	["no"] = {["1"] = "뭐야, 겁 먹은 건가? 그렇게 계속 어정쩡하게 굴라고. 절대 그 이상의 단계로 올라갈 수 없을 테니."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o9001009# #p1104001#를 퇴치한 건가? 흐응, 제법인걸? 썩 훌륭하다고 할 수 있겠어."},
	["yes"] = {["1"] = "여제께서도 널 지켜보고 계시더군... 기대해도 좋겠는걸?"},
	["stop"] = {
		["item"] = {["1"] = "아직 #o9001009#는 찾지 못한 건가? 아직도 에레브를 빠져 나가지 못했다고 하니, 계속 수색하다 보면 찾을 수 있을 거야. #b#p1101002##k에게 #b수색증#k을 발급받아서 에레브를 수색하다가 #r#o9001009##k를 발견하면 퇴치해 버리고 #b#t4032104##k을 찾아오도록 해."},
		["mob"] = {["1"] = "아직 #o9001009#는 찾지 못한 건가? 아직도 에레브를 빠져 나가지 못했다고 하니, 계속 수색하다 보면 찾을 수 있을 거야. #b#p1101002##k에게 #b수색증#k을 발급받아서 에레브를 수색하다가 #r#o9001009##k를 발견하면 퇴치해 버리고 #b#t4032104##k을 찾아오도록 해."},
	},
}
return nTable
end