return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101008,
	["lvmin"] = 28,
	["quest"] = {{["id"] = 3906, ["state"] = 2}, {["id"] = 3900, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101001,
	["item"] = {{["id"] = 4031589, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031589, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 450,
	["item"] = {
		{["id"] = 4031589, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "누나의 편지",
	["parent"] = "지유르의 누나",
	["order"] = 2,
	["1"] = "#p2101001#의 누나 #p2101008#. 그녀는 #p2101001#가 누나를 걱정하는 것처럼, 마을에 남겨둔 어린 동생을 무척 걱정하고 있었다. 그녀가 쓴 편지를 #b#p2101001##k에게 전해주자.  ",
	["2"] = "#p2101001#는 #p2101008#의 편지를 받고 무척 기뻐했다. 포악한 왕비가 누나를 괴롭히지 않을까 걱정한 모양이다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요, 모험가님... 이 #p2101008#에게 어떤 이야기를 원하시나요? \r\n#L0# #b #p2101001#의 이야기", ["2"] = "#p2101001#!? 모험가님! #p2101001#를 알고 계신가요?! 그 애, 지금 잘 지내고 있나요?! 밥은 잘 먹고 있을지... 아... #p2101001#의 부탁을 받고 여기까지 오신 거군요... 정말 감사합니다. 이 안에서는 도무지 #p2101001# 소식을 알 길이 없어서 정말 걱정했어요.  \r\n#L0# #b #p2101001#가 당신을 많이 걱정하고 있었습니다.", ["3"] = "그렇군요. 하나뿐인 누나가 연락이 되질 않으니 그럴만도 하죠... 모험가님. 괜찮으시다면 누나는 잘 있다고 #p2101001#에게 전해 주시면 안 될까요? "},
	["yes"] = {["1"] = "정말 감사합니다. 여기 편지를 드릴 테니, #b#p2101001##k에게 전해 주세요. 얼굴은 보지 못하지만 편지로 마음을 전하고 싶어요. 그럼 부탁드리겠습니다... "},
	["no"] = {["1"] = "바쁜 일이 있으신 모양이네요... 그렇다면 어쩔 수 없겠죠... #p2101001#의 소식을 알게 되었으니 그걸로 만족하는 수밖에..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "모험가님? 누나는 만나 보셨나요? 앗... 이건 누나의 편지?! 다행히도 누나는 무사한 모양이군요! 왕비가 무서운 사람이라고 해서 무척 걱정했어요! 정말 다행이다...!"},
	["yes"] = {["1"] = "누나의 편지를 읽을 동안, 잠시만 기다려 주시겠어요? "},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p2101001##k에게는 가지 않으신 모양이네요. 그 아이는 #b#m260000200##k 쪽에 있을 거랍니다..."},
		["item"] = {["1"] = "아직 누나는 만나지 못하신 건가요? 누나는 궁전 안에 있을 거예요. "},
	},
	["ask"] = {"아... 이런. 편지를 잃어버리셨다구요? 편지를 다시 쓰는 건 어려운 일이 아니죠. 자, 다시 편지를 드릴 테니 제발 #b#p2101001##k에게 전해 주세요."},
}
return nTable
end