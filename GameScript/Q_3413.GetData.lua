return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040018,
	["lvmin"] = 43,
	["quest"] = {{["id"] = 3412, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2040018,
	["item"] = {{["id"] = 4031102, ["count"] = 3}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 15000,
	["money"] = 25000,
	["item"] = {
		{["id"] = 4031102, ["count"] = -3}
	},
}
nTable["info"] = {
	["name"] = "원로 그레이의 퇴치",
	["0"] = "쿨란초원 어딘가에 있는 메소레인저 블랙을 찾아가보자.",
	["1"] = "지구방위본부 주변 필드에서 메소레인저 블랙을 다시 만났다. 그는 그레이 종족 중 높은 계급에 있는 #b원로 그레이#k를 쓰러뜨리고 그들이 지니고 있는 #b노트#k를 3개 모아 가져와 달라는 부탁을 해왔다. 원로 그레이는 모든 그레이 종족 중 극소수여서 찾기 힘들 것 같은걸…\n\n#i4031102##t4031102# #b#c4031102##k/3",
	["2"] = "지구방위본부 주변 필드에 있는 메소레인저 블랙에게 원로 그레이에게서 빼앗은 #b노트#k 3개를 모아 전해 주었다. 이 노트에는 그레이들의 역사가 적혀 있다고 하는데… 빨리 노트에 적힌 내용의 해독이 끝났으면 좋겠는걸~",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "지난번에 저를 도와 이 쿨란 초원의 #b#o4230116##k를 퇴치해 주신 분이시군요. 방금 녀석들을 조종하는 세력에 대한 연구가 끝난 참이었는데 마침 잘 와 주셨어요. 생각보다 시간이 많이 걸렸지 뭐에요. 당신께 한 가지 더 부탁드릴 일이 생겼는데 들어 보시겠어요?"},
	["yes"] = {["1"] = "정말 고맙습니다. 일전에 그레이 종족에도 서열이 있다는 얘기는 드린 적이 있었죠? 녀석들을 이곳에서 관할하는 그레이 종족의 고위 계층을 발견해 냈답니다. 바로 #b#o4240000##k라는 녀석들이죠. 이들은 그레이 종족에서도 그 수가 많지 않아 찾아내느라 꽤나 애를 먹었죠.", ["2"] = "아무튼 #b#o4240000##k라는 녀석들을 찾아내서 쓰러뜨리고 녀석들이 가지고 있는 물건 중 #b#t4031102##k를 3개 모아 가져와 주세요. 아무래도 그 #t4031102#에는 굉장히 중요하고 비밀스러운 정보가 적혀있을 것 같거든요. 그럼 모으시는 대로 다시 저에게 돌아와 주세요!"},
	["no"] = {["1"] = "그런가요... 하긴 이렇게 흉폭한 외계인들과 관련된 일일 것이 뻔한데 망설여지는 것이 당연하겠죠. 하지만 나중에라도 마음이 바뀌게 된다면 꼭 다시 저를 찾아와 주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "호오... #b#t4031102##k 3개를 모두 모아오시다니 정말 대단하시군요. 제가 그들의 존재를 찾는데만도 며칠이 걸렸는데... 이거 좀 더 분발해야겠는걸요? 아무튼 이렇게 제 부탁을 훌륭히 완수해 주셨으니 보답을 해야겠죠. 몇 푼 안되는 돈이지만 받아 주세요!"},
	["yes"] = {["1"] = "정말 수고하셨습니다. 자... 이제 이 노트를 해독해 볼까요? 역시나 외계인들의 언어로 적혀 있어서 무슨 뜻인지 알기가 힘들군요. 하지만 시간만 조금 있으면 충분히 해독할 수 있을거라 봅니다. 그럼 전 이만 해독 업무에 착수해야겠군요. 안녕히 가세요~"},
	["stop"] = {
		["item"] = {["1"] = "아직 제가 말씀드린 #b#t4031102##k 3개를 얻지 못하신 것 같군요. 그레이 종족 중에서도 고위층인 #b#o4240000##k를 찾아내어 쓰러뜨리고 그들의 몸에서 #b#t4031102##k가 발견되는 대로 모아서 저에게 가져와 주세요. #t4031102#에는 아무래도 굉장히 비밀스러운 내용이 담겨 있을 것 같거든요."},
	},
}
return nTable
end