return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2030012,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3059, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2012019,
	["item"] = {{["id"] = 4000088, ["count"] = 100}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 6000,
	["item"] = {
		{["id"] = 2020006, ["count"] = 10},
		{["id"] = 2120000, ["count"] = 30},
		{["id"] = 4001019, ["count"] = 4},
		{["id"] = 4000088, ["count"] = -100}
	},
}
nTable["info"] = {
	["name"] = "봉달이를 위한 먹이사냥",
	["0"] = "봉달이가 기다리던 주인인 허클은 봉달이를 까맣게 잊은채 연구만 하고 있었다. 뒤늦게 봉달이의 존재를 기억해내고 먹이라도 챙겨주고 싶다고 하는데…",
	["1"] = "허클의 부탁으로 봉달이가 좋아하던 물고기를 구하러 가는데, 오르비스탑 밑쪽에 주니어페페가 가지고 있는 물고기를 100마리 모아보자. 물고기를 모두 모아서 봉달이에게 가져가자. \n\n#i4000088##t4000088# #b#c4000088#/100#k",
	["2"] = "허클을 대신해 주니어페페의 물고기를 100마리 모아서 봉달이에게 가져다 주었다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "우리 봉달이를 까맣게 잊고 살다니... 이런 주인을 마냥 기다리고 있었다니, 내가 이럴 때가 아니지..", ["2"] = "우리 봉달이가 좋아하던 먹이라도 대신 보내고 싶네만… 보다시피 난 연구 때문에 이곳을 비울 수가 없다네. 날 대신해 먹이를 좀 구해다 주지 않겠나? #b주니어 페페의 물고기 100마리#k정도면 좋겠는데..."},
	["yes"] = {["1"] = "고맙네! 내 나중에 내 연구결과에 당신 이름을 아주 작게 써줄지도 모르겠네. 봉달이는 오르비스탑 아래쪽에 사는 주니어페페가 주는 물고기를 아주 잘 먹었었지. 꼭 그걸로 구해주게! ", ["2"] = "구한 물고기는 바로 봉달이에게 전해주게! 내가 봉달이를 위해 전해주는 것이라고 하면 아주 기뻐할텐데... 다음에 오르비스탑에 오게 되면 또 들려주게나... 기다리고 있겠네. \n\n#i4000088# #t4000088# #b100개#k"},
	["no"] = {["1"] = "현재는 연구말고 다른 것을 할 시간이 없다네.. 봉달이를 위해 도와주지 않겠나?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "우리 주인님이 무사히 있다는 건가? 멍~ 다행이군! "},
	["yes"] = {["1"] = "이건~내가 좋아하던 물고기 아닌가? 멍~ 이걸 우리 주인님이 보내셨다는거지? 멍~ 연구만 하시는분이 날 위해 물고기를 구해주시다니..", ["2"] = "아우~우~우~ 우리 주인님이 날 잊지 않았던거야. 멍~ 좋은 소식과 선물을 가져와줘서 고맙다. 멍~ 당신은 인정이 많은 사람이군."},
	["stop"] = {
		["item"] = {["1"] = "멍멍?"},
	},
}
return nTable
end