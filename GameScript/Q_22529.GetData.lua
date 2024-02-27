return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022106,
	["lvmin"] = 22,
	["quest"] = {{["id"] = 22528, ["state"] = 1}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1022106,
	["item"] = {{["id"] = 4032460, ["count"] = 3}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3100,
	["item"] = {
		{["id"] = 4032460, ["count"] = -3}
	},
}
nTable["info"] = {
	["name"] = "초보 모험가 지미 돕기",
	["area"] = 7,
	["0"] = "#m102000000# 워닝스트리트 #b#m106000000#, 2, 3을 순찰#k하고 #b도움이 필요한 듯한 사람#k을 발견하면 말을 걸어보자.",
	["1"] = "초보 모험가 #p1022106#는 길은 찾아갈 수 있는데 목이 너무 말라 움직일 수 없다며 #o0130100#의 #t4032460#을 구해 달라고 말했다. #r스텀프들#k을 잡아 #b#t4032460##k을 구해주자.\r\n\r\n#i4032460# #t4032460# #b#c4032460# / 3#k",
	["2"] = "갈증이 해결된 #p1022106#는 고맙다며 이제부터 직접 길을 찾아가겠다고 한다. ",
}
nTable["say0"] = {
	["base"] = {["1"] = "헉헉... 목말라... 나는 여기서 이대로 주저앉고 마는 것인가... 내 꿈, 모든 유적을 정복하겠다는 그 꿈은 허무하게 사라지고... 응? 내가 환상을 보는 건가? 왠 사람이 여기...\r\n#b#L0#저기, 괜찮으세요?(머리를 다친 사람인가?)#l\n#k", ["2"] = "으악! 진짜 사람이잖아! 올레~ 나는 살았어! 음하하, 그렇지! 하늘이 나와 같은 천재를 버릴 리가 없지! 당신은 저를 찾으러 슈앵 선배가 보내신 분인가요? 역시 그렇겠죠?\r\n#L0##b아니 #m102000000# 경비대 경비병인데요... 뭐 도와드릴 거 있나요?#l\n#k", ["3"] = "앗, 그러시군요! 저는 유적 발굴단의 단원인 #p1022106#라고 합니다. 참고로 길을 잃었는데 물통을 떨어뜨려 물을 쏟아버리는 바람에 목이 말라 움직이지도 못하고 있던 거 절대 아닙니다!\r\n#b#L0#네...(길을 잃은 모양이다.)#l\n#k", ["4"] = "절대 길 잃은 거 아닙니다. 길은 알아서 찾아갈 수 있어요! 그, 그저 저에게 목을 축일 수 있는 물... 아니, 그냥 물 말고 #b#t4032460##k만 #b3개#k 구해 주시면 감사 드리겠습니다!"},
	["yes"] = {["1"] = "#t4032460#은 이 주변에 많은 #r아무 스텀프들#k에게서 얻을 수 있답니다. 물론 #o2130100# 같이 위험한 녀석에겐 안 덤비는 게 좋지만요. 아, 제가 #o2130100#를 못 이긴다는 건 아니에요! 지금은 체력이 고갈되어 그럴 수 없는 것 뿐이에요! 정말로요!"},
	["no"] = {["1"] = "헉, 거절이라니! 거절이라니! 어떻게 그러실 수 있지요? 이 황무지에서 태양빛에 말라가는 제가 불쌍하지도 않나요? 이대로 당신이 돌아서신다면 세기의 천재 한 명이 허무하게 사라질 겁니다!"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "이것은 #o0130100#의 수애애애액! 마, 마셔도 됩니까?", ["2"] = "꿀꺽꿀꺽꿀꺽~", ["3"] = "그래, 이 맛이야!"},
	["yes"] = {["1"] = "감사합니다! 이제 힘이 마구 넘쳐납니다! 유적 발굴지까지 얼마든지 찾아갈 수 있어요! 길을 잃은 게 아니니 목만 안 마르면 금방 갑니다! 금방 가고 말고요! ...근데 북쪽이 어느 쪽이죠?"},
	["stop"] = {
		["item"] = {["1"] = "시, #b#t4032460##k은 아직인가요? 으으윽... 목 말라... "},
	},
}
return nTable
end