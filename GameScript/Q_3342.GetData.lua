return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040050,
	["lvmin"] = 75,
	["quest"] = {{["id"] = 3341, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2020005,
	["item"] = {{["id"] = 4161032, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4161032, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 100,
	["item"] = {
		{["id"] = 4161032, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "드랭의 진실",
	["parent"] = "드랭의 노트",
	["order"] = 4,
	["1"] = "#t4161031#를 모두 살핀 #p2040050#는 #p2111002#이 바라던 것은 너무도 허무한 것이라며 안타까워했다. 슬픈 눈으로 노트를 살피던 #p2040050#는 깜짝 놀라며 노트의 뒷부분에 숨겨진 내용이 있음을 알려주었다. 그러면서 #b#p2020005##k를 찾아가면 숨겨진 것도 읽을 수 있을 것이라 말해주는데...",
	["2"] = "#m261000000# 연금술 협회의 3대 협회장이었던 위대한 연금술사... 그것이 바로 #p2020005#이다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "#p2111002#이 바란 건... 과연 그것이었군요. 사랑하는 사람이 생겼다며 기뻐하던 그였는데... 그가 이렇게 극단적인 선택을 하다니... #p2111002#이 바라던 것, 결국 이토록 허무한 것이었는데 말이죠. 사랑이 #p2111002#을 궁지로 몰아넣었던 모양입니다... ", ["2"] = "잠시만요. 이 노트, 뒷부분이 너무 많이 남아있는 것 같군요.이상한데요? 이 흔적은 연금술인데... ...죄송하지만 제 능력으로 노트에서 이 이상을 알아내는 건 무리입니다. 다만... 숨겨진 것을 읽을 수 있을 사람이 있으니 소개시켜 드리겠습니다. "},
	["yes"] = {["1"] = "노트의 숨겨진 내용을 읽을 수 있는 사람. 그 분은 바로 #b#p2020005##k님입니다. 연금술 협회의 3대 협회장이셨던 그 분이라면, 아마도 이 책을 읽는 방법도 아실 것 같군요. "},
	["no"] = {["1"] = "싫으시다면 어쩔 수 없지요... "},
}
nTable["say1"] = {
	["base"] = {["1"] = "음? 무슨 일인가? 응? 이 노트의 숨겨진 부분을 읽을 수 있게 해달라고? 무슨 노트인지 한 번 보세나."},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p2020005##k님께는 안 가신 모양이군요. 그 분은 #b#m211000000##k에서 연구 중이시라고 하니, 그 쪽으로 가보시면 될 듯 합니다."},
	},
	["ask"] = {"#t4161031#를 잃어버리셨더군요. 여기저기 떠도는 몸이다 보니 아는 사람이 많아, 어찌어찌 수소문해서 노트를 찾았답니다. 꽤 힘든 일이었으니 앞으로는 잃어버리지 말아주세요."},
}
return nTable
end