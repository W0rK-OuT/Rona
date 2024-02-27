return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060005,
	["lvmin"] = 50,
	["interval"] = 0,
	["quest"] = {{["id"] = 21601, ["state"] = 1}},
	["item"] = {{["id"] = 4032331}},
	["job"] = {2000, 2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 2060005,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -10000000,
	["item"] = {
		{["id"] = 4032331, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "켄타의 아기 늑대용 영양제",
	["area"] = 6,
	["0"] = "#t4032331#를 구입하려면 #b#m230000000# #m230000003##k의 #b#p2060005##k에게 가보자.",
	["1"] = "#t4032331#의 가격은 1000만 메소라고 한다... 아기 늑대를 위해서 눈물을 머금고 지불하자.\r\n\r\n#b10,000,000 메소#k",
	["2"] = "#t4032331#를 구입했다. ",
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요~ #m230000000# #m230000003#에 오신 것을 환영합니다. 동물들이 참 사랑스럽죠? 음... 그런데 여기 있는 동물에는 그리 관심이 없으신 것 같네요. 뭔가 다른 볼 일이라도 있으신가요?\n#b#L0##b(#t4032331#에 대해 말했다.)#k#l\n#k", ["2"] = "아, #t4032331# 말이군요. 그거라면 #o5140000#을 위해 사용했던 게 있긴 한데요. 아실지 모르겠지만, 가격이 그리 만만치 않을 텐데... 그래도 괜찮으시겠어요?"},
	["yes"] = {["1"] = "#t4032331#의 가격은 10000000 메소... 아, 읽기 불편하시겠군요. #b1000만 메소#k랍니다. 좀 비싸죠? #m230000003# 운영만 잘 되면 좀 더 싸게 드릴 수도 있을 텐데... 그럼 메소가 준비되면 바로 말을 걸어 주세요. "},
	["no"] = {["1"] = "역시 가격을 생각하면 부담이 되시는 모양이네요... 혹시 가격만이라도 들어 보고 싶으시면 다시 말을 걸어 주세요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "1000만 메소는 구해 오신 건가요? 우와... 생각보다 훨씬 부자이신 모양이네요. 아, 그럼 #t4032331#를 드릴 게요. "},
	["yes"] = {["1"] = "혹시 더 필요한 게 있으시면 언제든 말씀해 주세요. "},
	["stop"] = {
		["item"] = {["1"] = "...저어, 혹시 메소가 부족하신 게 아닌가요? #b1000만 메소#k가 감당하기 어려우신 건 잘 알겠지만, 메소가 부족하면 물건을 드릴 수 없어요..."},
	},
}
return nTable
end