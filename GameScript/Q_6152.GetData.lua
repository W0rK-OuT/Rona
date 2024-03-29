return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081000,
	["quest"] = {{["id"] = 6151, ["state"] = 2}},
	["job"] = {112, 122, 132},
}
nTable["check1"] = {
	["npc"] = 1061012,
	["item"] = {{["id"] = 4031467, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031467, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 100000,
	["item"] = {
		{["id"] = 4031467, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "노래하는 방패",
	["parent"] = "잊혀진 전사의 노래",
	["order"] = 3,
	["1"] = "리프레의 촌장 타타모는 #o8180001#의 목걸이에 그려져 있는 그림을 보다가, #b#p1061012##k라면 세이람에 대해 알고 있으니 그에게 목걸이를 보여 주라고 말했다.\n\n#i4031467##t4031467# #b#c4031467#/1",
	["2"] = "#p1061012#는 목걸이에 대해 알고 있었다. ",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네가 전에 보여 줬던 목걸이에 대해 기억이 났다네. 그것은 세이람을 따르던 #o8180001#가 세이람에게 받은 목걸이가 확실해. 그 목걸이가 아직도 #o8180001#들 사이에 있었다니 신기하구만… 허허. 이제 리프레에서 볼 일은 다 본 거겠지?", ["2"] = "으응? 아직도 물어볼 것이 남았나?"},
	["yes"] = {["1"] = "아. 그러고보니 노래하는 방패인가에 대해 물었지. 하지만 이 목걸이를 아무리 봐도 나로서는 더 이상 모르겠구만. 나보다는 세이람에 대해 더 잘 알고 있는 자가 있으니, 그에게 가서 목걸이를 보여주게. 누구냐면… 그 녀석 이름이 뭐더라…? 잘은 모르지만, 요새는 #b의미가 없어진 녀석#k이지."},
	["no"] = {["1"] = "응? 이제 물어볼 것이 없나? 그럼 리프레에서 잘 놀다 가게~"},
}
nTable["say1"] = {
	["base"] = {["1"] = "후… 이제는 예전에 몸이 있었는지조차 희미해져 버렸으니 무슨 의미가 있겠어… 응? 당신은 누군가? 이 #p1061012#에게 무슨 볼 일이라도 있는가? "},
	["yes"] = {["1"] = "음. 이 목걸이에 대해 물으러 온 것이로군. 확실히 인간이 사용하는 물건은 아닌 것 같은데 그렇다면 뭐가 이런 걸 하고 다니지? 어디서 본 것도 같은데..."},
	["stop"] = {
		["npc"] = {["1"] = "안 간 건가? 그 녀석 이름을 도무지 모르겠구만. 어쨌든 별로 #b의미가 없는 녀석#k이야!"},
		["item"] = {["1"] = "이 의미 없는 자에게 무슨 볼 일이라도 있는가..."},
	},
	["ask"] = {"목걸이를 잃어버리면 어떻게 하는가. 그리프들한테 뒹굴던 거긴 해도 좋은 목걸이인데~ 마음 착한 여행자가 찾아다 주었지 뭔가."},
}
return nTable
end