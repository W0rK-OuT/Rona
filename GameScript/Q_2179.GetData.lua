return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1092000,
	["lvmin"] = 15,
}
nTable["check1"] = {
	["npc"] = 1092000,
	["mob"] = {
		[1] = {["id"] = 1210100, ["count"] = 30},
		[2] = {["id"] = 1210101, ["count"] = 30}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1300,
}
nTable["info"] = {
	["name"] = "비상식량 지키기",
	["parent"] = "노틸러스호의 특선 요리",
	["order"] = 1,
	["0"] = "노틸러스호의 비상식량을 밤마다 돼지와 리본 돼지들이 와서 모두 먹어치워버린다고 한다. 이대로 가다간 노틸러스호 사람들이 굶어야 할지도 모른다고! 노틸러스호의 요리와 식량을 담당하고 있는 탕윤에게 가보자.",
	["1"] = "노틸러스호의 비상식량을 밤마다 돼지와 리본돼지들이 와서 먹어치워버려서 창고에 이제 식량이 얼마 남지 않았다고 한다. 탕윤의 부탁대로 #r돼지#k와 #r리본 돼지#k를 혼내주자. \n\n#o1210100# #r#a21791##k \n#o1210101# #r#a21792##k",
	["2"] = "돼지와 리본 돼지들을 혼내주었다. 이제 노틸러스호의 식량은 넘보지 않겠지?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "우리의 식량이!!! 나쁜 돼지들. 새벽에 또 와서 몰래 먹어치웠군. 거기 자네. 날 좀 도와주게나. 딱히 지나가는 사람이 없으니 자네한테라도 부탁하는걸세."},
	["yes"] = {["1"] = "흐흐흐. 보기보다 착한 사람이로군. 내가 부탁하는 것은 이 근처에 사는 #r돼지#k와 #r리본 돼지#k들을 처치해주는거네. 이 먹성 좋은 놈들이 새벽마다 식량창고를 뒤집어놓고 가니 우리가 다 굶어죽게 생겼어. 그러니까 이 근처에서 볼 수 있는 돼지와 리본 돼지들을 혼내주게. 딱 #b30마리#k씩만 말이야. 하하핫."},
	["no"] = {["1"] = "허어~ 요새 젊은이들은 말이지….쯔쯧…"},
}
nTable["say1"] = {
	["base"] = {["1"] = "아… 오늘 저녁은 어떤걸 만들지… 엇! 자네 왔는가? "},
	["yes"] = {["1"] = "벌써 퇴치하였군. 대단하네! 역시 젊음이 좋은거지? 자네가 돼지와 리본 돼지를 혼내주어 이제 당분간 식량창고 근처에도 못올 것 같네. 한시름 놓겠군."},
	["stop"] = {
		["mob"] = {["1"] = "돼지 30마리와 리본 돼지 30마리만 혼내주게. 다시는 식량창고 근처에도 얼씬 못하게 말이야."},
	},
}
return nTable
end