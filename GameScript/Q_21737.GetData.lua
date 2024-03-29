return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012012,
	["lvmin"] = 45,
	["quest"] = {{["id"] = 21736, ["state"] = 2}},
	["job"] = {2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 2012012,
	["item"] = {{["id"] = 4032324, ["count"] = 5}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 29500,
	["item"] = {
		{["id"] = 4032324, ["count"] = -5}
	},
}
nTable["info"] = {
	["name"] = "거대 네펜데스 등장?",
	["area"] = 6,
	["0"] = "#b#m200000000##k에서 블랙윙과 관련된 사건이 벌어지는 중일지도 모른다. #b#p2012012##k에게 말을 걸어 보자.",
	["1"] = "요정 #p2012012#는 #b#m200060001##k에서 #r#o9300347##k가 자라고 있는 것을 보았다며, #o9300347#에 대해 조사해 달라고 말했다. #b#m200060000##k에서 잘못 길을 들면 #m200060001#로 갈 수 있다고 하니 그곳으로 가서 #o9300347#를 퇴치한 후 나오는 아이템을 가져오면 되는 것 같다.\r\n\r\n#i4032324# #t4032324# #b#c4032324# / 5#k",
	["2"] = "#o9300347#를 퇴치하고 #t4032324#를 가져왔다. #p2012012#는 누가 이런 짓을 했는지 짐작조차 가지 않는다며, 그보다는 네펜데스의 무게 때문에 #m200000000#가 가라앉을까봐 걱정이니 #p2032001#에게 가서 상담해 달라는데...",
	["type"] = "[스킬]",
}
nTable["say0"] = {
	["base"] = {["1"] = "...아... 머리 아파. 수면 부족만큼 요정을 피곤하게 하는 건 없을 거야... 그런데 무슨 일이신가요? 두 번씩이나 말을 거시는 걸 보면 뭔가 중요한 일이신 모양인데...\n#b#L0##m200000000#에서 이상한 일이 벌어지고 있다던데...#l\n#k", ["2"] = "어머, 어떻게 아셨어요? 사실 얼마 전부터 쿵- 쿵- 하는 소음이 #m200000000# 전체를 울리고 있어요. 덕분에 요정들이 잠도 못 자고 있죠. 정말 곤란해요... \n#b#L0#원인은 알 수 없나?#l\n#k", ["3"] = "저도 그게 궁금해서 조사해 봤는데... 도저히 혼자 힘으로는 해결이 안 될 것 같아요. 저기, 괜찮으시면 당신이 이번 일을 도와주시겠어요? 사례는 할게요.\n"},
	["yes"] = {["1"] = "뭐가 이렇게 시끄러운 건지 소음을 따라가 보니, #m200000000#에서도 사람들의 발길이 가장 닿지 않는 #b#m200060001##k에 원인이 있더라고요. #r아주 거대한 네펜데스#k! 일반 네펜데스의 몇 배나 되는 커다란 네펜데스가 소음을 만들어 내고 있었어요.", ["2"] = "어쩌다 그렇게 거대한 네펜데스가 자라난 걸까요? 원인을 모르겠어요. #m200000000#의 네펜데스는 크게 자라는 종류가 아닌데... 일단 그 원인을 알아야 대책을 마련할 수 있을 것 같아요. 그러니 #r#o9300347##k를 퇴치하고 #b원인#k을 찾아 주시겠어요?", ["3"] = "#o9300347#가 자라는 #m200060001#는 #b#m200060000##k에서 갈 수 있어요. 일반 길이 아니라 잘 보이지 않는 길로 갔더니 도착하더라고요. #m200060001#에서 #o9300347#를 퇴치하고, 혹시 원인으로 추측되는 아이템을 발견하면 가져와 주세요. "},
	["no"] = {["1"] = "도와주실 수 없다면 어쩔 수 없죠... 하아, 도대체 어쩌다 그런 거대한 네펜데스가..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "#o9300347#는 퇴치하신 건가요? 혹시 원인으로 발견되는 물건은 없었나요? "},
	["yes"] = {["1"] = "#t4032324#? 누가 이런 걸 네펜데스에게 준 거지? 이런 게 있으니 네펜데스가 크게 자랄 수밖에... 아, 그게 문제가 아니지!", ["2"] = "알고 계세요? #m200000000#는 하늘에 떠 있는 마을이에요. 그런데 그 부력은 해마다 점점 약해지고 있어요. 무게가 무거워지면 #m200000000#는 가라앉아 버릴지도 몰라요.", ["3"] = "수면 부족 문제가 아니에요! 그보다는 #m200000000#가 가라앉지는 않을지 알아봐야겠어요. #b#m200050000##k에 사는 #b#p2032001##k님이라면 아마 해답을 주실 거예요. #p2032001#님에게 가서 상담해 주세요. "},
	["stop"] = {
		["item"] = {["1"] = "아직 #r#o9300347##k는 퇴치하지 못하신 건가요? #b#m200060000##k에서 눈에 띄지 않는 길로 들어가면 #b#m200060001##k에 갈 수 있어요. 그곳에서 #o9300347#를 퇴치한 후 녀석들을 커다랗게 만든 원인을 찾아 가지고 와 주세요."},
		["mob"] = {["1"] = "아직 #r#o9300347##k는 퇴치하지 못하신 건가요? #b#m200060000##k에서 눈에 띄지 않는 길로 들어가면 #b#m200060001##k에 갈 수 있어요. 그곳에서 #o9300347#를 퇴치한 후 녀석들을 커다랗게 만든 원인을 찾아 가지고 와 주세요."},
	},
}
return nTable
end