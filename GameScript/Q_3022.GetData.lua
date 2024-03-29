return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022000,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3021, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1022000,
	["item"] = {{["id"] = 4005000, ["count"] = 2}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 8320,
	["nextQuest"] = 3023,
	["item"] = {
		{["id"] = 4005000, ["count"] = -2}
	},
}
nTable["info"] = {
	["name"] = "주먹펴고 일어서의 힘 되찾기",
	["parent"] = "고대의 책을 찾아서...",
	["order"] = 19,
	["1"] = "페리온의 현자 #b주먹펴고 일어서#k에게 반지를 보여주자 고대의 책을 찾는데 단서가 될 만한 물건을 가지고는 있다고 말해 주었다. 하지만 그냥은 줄 수 없다고... 힘을 회복할 수 있는 아이템인 #b힘의 크리스탈 2개#k만 준다면 단서를 넘겨주겠다는 약속을 받아냈다.\n\n#i4005000##t4005000#  #b#c4005000#/2#k",
	["2"] = "주먹펴고 일어서에게 힘의 크리스탈을 가져다 주었다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "흐음... 나에게 무슨 볼일인가. 아니! 그건 엘미나님의 #b#t4031053##k가 아닌가...! 이 반지를 자네가 어떻게... 그래? 알케스터의 의뢰로 #t4031056#을 찾고 있단 말이지. #b고대의 책#k이라... 한동안 잊고 살았었군. 미안하지만 나도 그 책이 어디로 사라졌는지 모른다네. 하지만 책을 찾는데 단서가 될 만한 물건을 가지고 있긴 하지.", ["2"] = "물론 그냥은 넘겨줄 수 없다네. 나는 몇 백년 동안 전사가 되기를 원하는 이들에게 나의 힘을 조금씩 나누어 주고 있었다네. 하지만 최근들어 전사가 되기를 원하는 이들이 많아져서 힘을 거의 소진해 버리고 말았지. #b#t4005000# 2개#k만 넘겨준다면 #b고대의 책#k을 찾는데 협력하겠네. 어떤가? 들어주겠나?"},
	["yes"] = {["1"] = "잘 생각했네. #t4005000#이라면 대륙의 몬스터들로부터 간간히 얻을 수 있는 물건을 말하지. 물론 얻기가 쉽지는 않겠지만 그래도 자네라면 꼭 해낼 거라고 믿네. 그럼 자네가 돌아오기를 기다리고 있겠네. 힘내 주게나!"},
	["no"] = {["1"] = "흐음... 하지만 내 도움이 없다면 #b고대의 책#k은 영영 찾을 수 없을텐데 말야... 아무튼 나중에라도 마음이 바뀌게 된다면 언제든지 다시 찾아오길 바라네."},
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4005000# 2개#k를 모으지 못한 모양이로군. 대륙의 몬스터들로부터 간간히 얻을 수 있을걸세. 물론 얻기가 쉽지는 않겠지만 그래도 자네라면 꼭 해낼 거라고 믿네. 그럼 자네가 돌아오기를 기다리고 있겠네. 힘내 주게나!"},
	},
}
return nTable
end