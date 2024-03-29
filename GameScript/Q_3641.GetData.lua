return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2071005,
	["lvmin"] = 70,
}
nTable["check1"] = {
	["npc"] = 2071003,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 700,
}
nTable["info"] = {
	["name"] = "여우에 홀린 총각",
	["parent"] = "전설의 고향",
	["order"] = 1,
	["0"] = "#b아랫마을#k의 칠남이가 이상해졌다고 한다. 덕분에 #b칠성이#k의 걱정이 이만저만이 아니라는데... 무슨 일일까? 칠성이에게 가보자.",
	["1"] = "칠성이는 칠남이가 혼을 빼앗긴 것처럼 멍한 얼굴로 먹지도 자지도 않고 앉아 있기만 한다며 한숨을 푹푹 쉬고 있었다. 도대체 무슨 일이지? #b칠남이#k의 상태를 보자.",
	["2"] = "멍한 얼굴로 입을 벌리고 앉아 있기만 한 칠남이... 그의 입에서 나온 여우가...라는 한마디가 뭔가 단서가 될 듯한데. 칠성이에게 가보자.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "휴우... 이를 어찌한다... 휘유우우... 어떻게 하면 좋을까...  \r\n#L0# #b 무슨 일 있으신가요?", ["2"] = "아이쿠, 깜짝이야! 아, 죄송합니다. 다른 생각을 하다가 그만... 무슨 일이 있냐고요? 그럼, 있고말고요. 글쎄 우리 칠남이가... 휴우... \r\n#L0# #b 왜 그러시는데요?", ["3"] = "...글쎄 칠남이가... 뭐에 홀린 것 같습니다. 완전히 정신이 나가서 먹지도 자지도 않고... 움직이지도 않고... 그냥 머엉하니 하늘만 보고 있습니다.   \r\n#L0# #b 헉... 왜 그러는지 이유는 알 수 없나요?", ["4"] = "의원들은 병이 아니라 혼을 빼앗긴 거라 하는데... 어찌해야 할지 모르겠네요. 하나뿐인 아우가 저 모양인데 어떻게 할 도리가 없으니... 당신은 이 마을 저 마을 많이 다니며 경험을 많이 쌓으신 것 같은데... 한 번 동생을 살펴봐 주시지 않겠습니까?"},
	["yes"] = {["1"] = "#b칠남이#k는 마을 반대편에 살고 있으니 한 번 가서 살펴봐 주십시오..."},
	["no"] = {["1"] = "거절하신다면 어쩔 수 없지요..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "(칠성이와 무척 닮은 청년이 멍한 얼굴로 하늘을 바라보고 있다. 잘 보면 눈동자에 초점이 맞지 않은 데다가 입까지 벌리고 있다.) \r\n#L0# #b 이보세요! 괜찮으세요!", ["2"] = "(꿈쩍도 하지 않는다.) \r\n#L0# #b 이봐요! 정신 좀 차려보세요!", ["3"] = "(흔들어도 소용이 없다.) \r\n#L0# #b 무슨 말이라도 해보세요!", ["4"] = "(칠남이가 입술을 달싹인다.) \r\n#L0# #b ...(뭐라고 하는 거지?)", ["5"] = "여우가..."},
	["yes"] = {["1"] = "(여우가...? 무슨 의미일까? 칠성이에게 가보자.)"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
		["3"] = {["answer"] = "1"},
		["npc"] = {["1"] = "아직 #r칠남이#k에겐 안 가보신 겁니까? 그 애는 마을 반대편에 살고 있답니다. "},
	},
	["ask"] = 1,
}
return nTable
end