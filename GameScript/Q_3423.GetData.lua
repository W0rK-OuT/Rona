return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2051001,
	["lvmin"] = 50,
	["quest"] = {{["id"] = 3422, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2050013,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["nextQuest"] = 3424,
}
nTable["info"] = {
	["name"] = "새로운 조종 프로그램",
	["parent"] = "롬바드의 조종 프로그램",
	["order"] = 1,
	["0"] = "지구방위본부의 엔지니어 케이를 찾아가보자.",
	["1"] = "지구방위본부 격납고에 있는 케이를 다시 만났다. 일전에 조수로 일해주기로 약속한 걸 잊진 않았겠지? 그녀는 롬바드 조종 프로그램이 담긴 메모리카드가 여러 개 필요하다며 에오스탑 어딘가에 있는 롬바드라는 몬스터를 찾아 #b메모리카드#k를 3개 정도 넉넉히 모은 후 사령실에 있는 #b포터#k 박사에게 해독을 의뢰하여 #b해독된 메모리카드 3개#k를 가져와 달라고 말했다.",
	["2"] = "에오스탑에 숨어있는 롬바드를 잡고 #b메모리카드#k를 입수했다. 지구방위본부의 포터박사에게 해독을 의뢰했다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "다시 찾아와 주셨군요. 지난번에 구해와 주신 MT-09의 연료를 이용해서 신개념의 무인 이동장치를 개발해 냈답니다. 아직 실험 단계를 거치고 있긴 하지만 실험이 끝나면 이 지구방위본부를 보다 신속하고 편하게 이동할 수 있겠죠. 그나저나 마침 또 다시 조수의 도움이 필요하던 참이었는데 잘 오셨어요.", ["2"] = "이번에는 신형 로봇의 프로그램 개발 연구에 특별한 물건이 필요해 졌답니다. 바로 #b#t4000124##k라는 물건이에요. 에오스탑 어딘가에서 가끔 목격되는 #b#o4130103##k라는 몬스터가 준다는데 여간해서는 얻기가 힘들더군요. 우선 #b#t4000124#를 3개#k 이상 넉넉히 모아주세요.", ["3"] = "그 후 모은 #b#t4000124##k를 지구방위본부 사령실에 있는 #b#p2050013##k 박사에게 해독해 달라고 부탁해 주세요. 믿음직스런 사람이 아니라 잘 해낼지는 의문이지만... 아무튼 #p2050013# 박사로부터 #b#t4031118# 3개#k를 받아 저에게 가져와 주시면 됩니다. 그럼 부탁해요!"},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#t4031118##k를 얻지 못하신 것 같군요. 에오스탑 어딘가에서 나타나는 #b#o4130103##k를 쓰러뜨리고 #b#t4000124#를 3개#k이상 모은 후 지구방위본부 사령실의 #b#p2050013##k 박사에게 해독을 의뢰해서 #b#t4031118# 3개#k를 저에게 가져와 주세요."},
	},
}
return nTable
end