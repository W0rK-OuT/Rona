return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040029,
	["lvmin"] = 39,
	["quest"] = {{["id"] = 3234, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2040029,
	["item"] = {{["id"] = 4000111, ["count"] = 200}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 10000,
	["item"] = {
		{["id"] = 4000111, ["count"] = -200},
		{["id"] = 1040014, ["count"] = 1, ["gender"] = 0, ["job"] = 1180673},
		{["id"] = 1041004, ["count"] = 1, ["gender"] = 1, ["job"] = 1180673},
		{["id"] = 1040085, ["count"] = 1, ["gender"] = 0, ["job"] = 2099202},
		{["id"] = 1041085, ["count"] = 1, ["gender"] = 1, ["job"] = 2099202},
		{["id"] = 1050036, ["count"] = 1, ["gender"] = 0, ["job"] = 4198404},
		{["id"] = 1051024, ["count"] = 1, ["gender"] = 1, ["job"] = 4198404},
		{["id"] = 1040079, ["count"] = 1, ["gender"] = 0, ["job"] = 8200},
		{["id"] = 1041081, ["count"] = 1, ["gender"] = 1, ["job"] = 8200},
		{["id"] = 1040083, ["count"] = 1, ["gender"] = 0, ["job"] = 16400},
		{["id"] = 1041074, ["count"] = 1, ["gender"] = 1, ["job"] = 16400},
		{["id"] = 1052113, ["count"] = 1, ["job"] = 32800}
	},
}
nTable["info"] = {
	["name"] = "일꾼 시계들의 건전지",
	["0"] = "잃어버린 시간에 있는 괘종시계를 찾아가보자.",
	["1"] = "루디브리엄 잃어버린 시간 깊은 곳에서 괘종시계를 다시 만났다. 괘종시계는 자신은 오래된 시계라서 태엽으로 움직일 수 있지만 요즘 만들어진 일꾼 시계들은 모두 건전지로 움직인다는데… 건전지를 마련하지 못해 제 기능을 하지 못하는 시계가 많다고 한다. 괘종시계를 위해 #b싸구려 건전지 200개#k를 모아다 주어야 한다.\n\n#i4000111##t4000111# #b#c4000111##k/200",
	["2"] = "루디브리엄 잃어버린 시간 깊은 곳에 있는 괘종시계에게 최신 일꾼 시계들을 움직이는데 필요한 싸구려 건전지를 모아 가져다 주었다. 괘종시계는 그 동안 건전지가 없어서 일꾼들이 제 역할을 하지 못했는데 이제 그런 걱정은 없을것 같다고 기뻐했다. 그나저나 이렇게 깊은 곳에서 무슨 일을 하고 있는 것일까…",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "일전에 성가신 녀석들을 퇴치해주신 분이시군요. 그런데 이 위험한 곳까지 어쩐일이신가요? 저희야 작업을 위해 내려와 있는 거지만 이 층에는 이상한 힘에 오염된 몬스터들이 아주 많아서 섣불리 돌아다니다가는 큰 부상을 입을수도 있으니 조심하시는 게 좋을 거에요.", ["2"] = "흠... 하지만 몬스터가 우글대는 이곳까지 무사히 오셨다는 건 그만큼 강한 분이시라는 거겠죠? 좋아요... 며칠 전부터 우리들을 도와줄 만한 여행자를 찾고 있었는데 마침 잘됐네요. 다른 일들로 많이 바쁘시겠지만 저희들을 위해 잠시만 시간을 내 주시지 않겠어요?"},
	["yes"] = {["1"] = "고마워요! 알고 계시겠지만 이곳은 상층부에 비해 외진 곳임에도 불구하고 특별한 일을 위해 시계 일꾼들이 다수 일하고 있답니다. 저는 예전에 만들어진 괘종시계라 시계태엽으로 움직일 수 있지만 요즘 만들어지고 있는 시계 일꾼들은 건전지로 움직이도록 만들어지고 있지요.", ["2"] = "그런데 이런 시계 일꾼을 움직이는데 필요한 건전지가 넉넉하지 못해 몇몇 일꾼들은 제 기능을 다하지 못하고 있는 실정입니다. 이대로 가다가는 건전지 부족으로 인해 일꾼들이 전부 멈춰버리는 최악의 상황이 발생할지도 모르죠. 그런 일은 상상만 해도 정말 끔찍하군요.", ["3"] = "이곳의 일꾼들이 좀 더 열심히 일할 수 있도록 #b#t4000111# 200개#k만 모아와 주세요. 제가 들은 바로는 루디브리엄 시계탑 내부에 있는 장난감 공장에서 많이 볼 수 있는 로봇 모습의 몬스터가 가지고 있다고 하더군요. 그럼 되도록 빨리 모아서 가져와 주시기 바래요."},
	["no"] = {["1"] = "후우... 당신의 힘이 꼭 필요한 일인데 큰일이네요... 이제 누구한테 부탁을 해야한담... 나중에라도 마음이 바뀌게 된다면 다시 절 찾아주세요. 꼭이에요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "드디어 돌아와 주셨군요! 어디보자... #b#t4000111# 200개#k 틀림 없군요! 휴우... 멈추기 직전인 일꾼들이 많았는데 제 시간에 맞출수 있게 되어 정말 다행입니다. 저희를 도와주셨으니 선물을 드리지 않을 수 없군요. 이건 제 작은 성의이니 부디 받아주세요."},
	["yes"] = {["1"] = "자... 이제 모아오신 건전지들을 멈추기 직전이었던 일꾼 시계들에게 끼워넣어야 겠네요. 서두르지 않으면 큰일이니 저는 이만 가보겠습니다. 바쁘신 와중에 이렇게 저희들을 도와주셔서 정말 감사했어요. 부디 지상까지 무사히 돌아가시길 빌겠어요."},
	["stop"] = {
		["item"] = {["1"] = "이곳의 일꾼들이 모두 멈춰버리기 전에 어서 서둘러 주세요. 루디브리엄 시계탑 내부에 있는 장난감 공장에서 많이 볼 수 있는 로봇 모습의 몬스터가 #b#t4000111##k라는 물건을 가지고 있다고 합니다. 그것을 200개만 모아 가져와 주세요. 부탁드립니다."},
	},
}
return nTable
end