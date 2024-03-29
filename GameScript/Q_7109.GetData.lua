return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041021,
	["interval"] = 1440,
	["quest"] = {{["id"] = 7103, ["state"] = 2}},
	["item"] = {{["id"] = 4031179}},
}
nTable["check1"] = {
	["npc"] = 2041023,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4031179, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "파풀라투스의 역습",
	["0"] = "차원의 균열을 막고 #o8500002#를 해치웠으니, 더 이상 시계탑에 문제는 없으리라 생각했는데... 아직도 무언가 일이 남은 것 같다. #b#p2041021##k를 찾아가 보자.",
	["1"] = "#p2041021#는 한 번 금이 갔던 차원의 벽은 이제 힘이 약해져 쉽게 구멍이 뚫리게 되었다고 한다. 약해진 벽을 뚫고 다시 한 번 #o8500002#가 공격해 오는 것이 아닐까 걱정이라는 것이다. #p2041021#는 혹시라도 다시 #o8500002#가 들어온 것은 아닌지 동력실 주위를 감시하고 있는 #b#p2041023##k에게 가서 확인해 달라고 부탁했다.",
	["2"] = "#p2041023#는 #o8500002#가 다시 차원의 벽을 뚫고 시계탑 동력실에 들어온 것 같다며, 그 증거로 차원의 벽에서 떨어져버린 차원의 균열 조각을 보여주었다. 그러면서 그는 예전에 #o8500002#를 처치했던 당신이라면, 다시 한 번 #o8500002#를 없애는 것도 가능할 테니 그 일을 맡아 달라고 하는데...",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요, 강하고 현명하고 용감한 모험가님~! 당신 덕분에 새로운 시간의 구를 만들어 시계탑의 힘을 유지시킬 수 있었습니다! 정말 감사했어요! 그런데... 당신께서 도와주신게 다 소용없게 되어 버리는 것 같아 걱정이네요. 무슨 일이냐고요?", ["2"] = "한 번 구멍이 뚫렸던 차원의 벽은 예전 같은 힘을 잃어버렸답니다. 차원의 균열을 막아 틈을 없앴지만 이젠 약간의 충격에도 금방 구멍이 생기게 되고 말았어요. 그 틈을 타서 다시 한 번 #o8500002#가 공격해 들어오는 것은 아닐지 걱정이네요.", ["3"] = "그래서 말인데... 모험가님께서 #p2041023#에게 가보시지 않겠어요? 차원의 벽에 무슨 일이 생길 때를 대비해서, #p2041023#가 동력실을 감시중이거든요. 모험가님께서 #b#p2041023##k에게 가서, 혹시라도 무슨 일이 생기지는 않았는지 확인해 주세요!"},
	["yes"] = {["1"] = "역시! 정의로운 모험가님이라면 그렇게 대답하실 줄 알았죠! 훗훗! 그렇다면 어서 #p2041023#에게 가주세요! "},
	["no"] = {["1"] = "흐음~ 곤란하신 건가요? 슬프네요. 모험가님이라면 틀림없이 도와주실 거라고 생각했는데... "},
}
nTable["say1"] = {
	["base"] = {["1"] = "어라~ 이게 누구신가요! 당신은 바로 #o8500002#를 처치해 주셨던 그 모험가님! 딱 좋은 타이밍에 여기 와 주셨군요! 마침 당신의 도움이 필요했는데요! 무슨 일이냐고요? 자, 이걸 보세요!  \n\n #i4031179# #t4031179#", ["2"] = "얼마 전 동력실을 순찰하다가 #t4031179#을 발견했답니다. 이게 동력실을 떠돌고 있었던 걸 보면, #o8500002#가 이미 차원의 벽을 뚫고 시계탑에 침입한 모양이에요! ", ["3"] = "한 번 #o8500002#를 없앤 적이 있으신 모험가님이라면 두 번 처치하는 것도 어렵지 않으시겠죠? 자, 당신께 이걸 드릴 테니 다시 한 번 동력실로 가서 #o8500002#를 없애주세요. 부탁 드려요!"},
	["yes"] = {["1"] = "순찰 기록을 살펴 보니, #t4031179#은 거의 하루에 한 번 발견되는 것 같아요. 휴우~ 차원의 벽이 너무 약해졌나봐요. 이런 일이 생기다니... 이번에는 당신께서 도와주실 테니 괜찮지만, 또 나타날 #o8500002#는 어떻게 해야 할까요... 누가 계속 #o8500002# 처치를 도와 주시면 좋을 텐데요..."},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p2041023##k에게는 안 가신 모양이죠? #p2041023#가 동력실의 감시를 맡고 있으니 차원의 벽에 문제가 생겼다면 그가 알고 있을 거예요. "},
	},
}
return nTable
end