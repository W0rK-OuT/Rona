return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 12100,
	["lvmax"] = 10,
	["quest"] = {{["id"] = 1040, ["state"] = 1}},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 12100,
	["item"] = {{["id"] = 4000003, ["count"] = 3}},
	["mob"] = {
		[1] = {["id"] = 130100, ["count"] = 5}
	},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 1332066, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 150,
	["nextQuest"] = 1042,
	["item"] = {
		{["id"] = 4000003, ["count"] = -3}
	},
}
nTable["info"] = {
	["name"] = "마이의 첫번째 수련",
	["parent"] = "마이의 수련!",
	["order"] = 1,
	["0"] = "루카스에게 수련을 도와줄 사람을 소개 받았다. #b암허스트동쪽필드#k에 #b마이#k라는 사람이 있다고 하니, 동쪽으로 가보자.",
	["1"] = "마이는 쉬운 몬스터부터 천천히 사냥하면서 레벨을 올려 보라며 #r스텀프 5마리#k를 사냥하고 #b나뭇가지 3개#k를 가져오라고 말했다. \n\n스텀프 #r#a10411##k \n#i4000003# #t4000003# #b#c4000003# #k/3",
	["2"] = "스텀프 5마리를 사냥하고 나뭇가지를 구해 마이에게 보고했다.",
	["area"] = 20,
}
nTable["say0"] = {
	["base"] = {["1"] = "어~ 당신이 바로 루카스님이 말한 그 사람인 모양이지? 반가워. 난 마이라고 해. 원래는 빅토리아 아일랜드의 용병이지만 지금은 천천히 쉬면서 실력을 점검하고 있어. 뭐, 그래도 당신을 도와줄 정도는 되니까 걱정하지 마. ", ["2"] = "그럼 수련을 시작해 볼까? 아직 당신은 몬스터라는 것 자체에 익숙하지 않으니까, 쉬운 몬스터부터 천천히 사냥해 보는 게 좋겠어. 자, 각오는 되어 있지?"},
	["yes"] = {["1"] = "방금 네게 준 검은 #b도루코 대거#k라고 해. 아마도 네가 지금 들고 있는 것보다 좀 더 강한 무기일 거야. 사냥을 하려면 좀 더 강한 무기가 필요하잖아? 강한 무기가 너를 더 강하게 할 거라 생각해서 특별히 선물하는 거니, 잘 #b장착#k하도록 해.", ["2"] = "자, 그럼 그만 가서 #r스텀프 5마리#k를 사냥하고 #b나뭇가지 3개#k를 가져와. 스텀프가 뭐냐고? 그건 나무 밑둥처럼 생긴 몬스터인데, 내가 준비한 수련장에 들어가면 볼 수 있을거야. 내가 준비한 수련장으로 들어가려면 바로 옆의 포탈로 들어가기만 하면돼."},
	["no"] = {["1"] = "흠... 각오가 되어 있지 않은 상태로 수련에 임하는 건 위험하지. 마음의 준비를 단단히 하도록 해."},
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "아직 #r스텀프 5마리#k를 퇴치하고 #b나뭇가지 3개#k를 가져오지 못한 것 같은데? 나뭇가지를 떨어뜨리는 녀석도 있고 떨어뜨리지 않는 녀석도 있으니, 인내심을 가지고 사냥해 봐.내 옆의 수련장에는 스텀프가 많이 있을테니 참고하도록."},
		["mob"] = {["1"] = "아직 #r스텀프 5마리#k를 퇴치하고 #b나뭇가지 3개#k를 가져오지 못한 것 같은데? 나뭇가지를 떨어뜨리는 녀석도 있고 떨어뜨리지 않는 녀석도 있으니, 인내심을 가지고 사냥해 봐.내 옆의 수련장에는 스텀프가 많이 있을테니 참고하도록."},
	},
}
return nTable
end