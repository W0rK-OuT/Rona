return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041012,
	["lvmin"] = 38,
	["quest"] = {{["id"] = 3416, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2050011,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["nextQuest"] = 3418,
}
nTable["info"] = {
	["name"] = "지독한 늦잠꾸러기",
	["parent"] = "알람시계의 배달",
	["order"] = 1,
	["0"] = "로스웰초원 어딘가에 있는 메소레인저 핑크를 찾아가보자.",
	["1"] = "지구방위본부 근처 필드에서 메소레인저 핑크를 다시 만났다. 지난번에 모아와 준 재료들을 지구방위본부에 있는 #b병사 케빈#k에게 맡겼다면서 그에게서 #b슈퍼 알람 시계#k를 가져와 달라는 부탁을 해왔다. 이 시계만 있다면 이제 아침에 일찍 일어날 수 있는 거겠지?",
	["2"] = "메소레인저 핑크로 부터 알람시계 배달을 부탁받고 병사케빈으로부터 알람시계를 건내받았다. 꽤 정교해보이는 시계다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "아앗! 기다리고 있었는데 때 맞춰 잘 와주셨어요. 지난번에 모아와 주신 재료들로 튼튼하고 강력한 알람시계를 만들기 위해 엄청 애썼답니다. 쉽지만은 않더라구요. 그러던 중 또 부탁드리고 싶은 일이 생겼는데... 마지막으로 한 번만 더 저를 도와주실 수는 없을까요?"},
	["yes"] = {["1"] = "여러 가지 일로 바쁘실텐데 이렇게 또 도와주신다니 정말 고맙습니다. 그 부품들로 시계를 만들 수 있는 방법을 적어서 지구방위본부에 있는 #b#p2050011##k에게 맡긴지 일주일이 지났답니다. 녀석은 손재주가 아주 좋아서 뭔가를 만드는 일에 천재적인 재능을 가지고 있거든요.", ["2"] = "일주일 후에 시계를 찾으러 오라고 했지만 이곳에서의 임무가 끝나지 않아서 아직 찾지 못하고 있었어요. 덕분에 요즘도 계속 지각하고 있지요... 아무튼 저 대신 지구방위본부로 가셔서 #b#p2050011##k으로부터 제가 맡긴 시계를 찾아서 저에게 가져다 주세요. 부탁드려요!"},
	["no"] = {["1"] = "흐음... 여러 가지 일로 많이 바쁘신 모양이에요. 하지만 나중에라도 시간이 나신다면 꼭 저를 다시 찾아와 주세요. 당신께 부탁드리고 싶은 아주 중요한 일이 있거든요."},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#t4031108##k를 찾지 못하셨군요. 얼마 전 가져다주신 부품을 지구방위본부에 있는 #b#p2050011##k에게 맡겨 두었답니다. 지금쯤 시계가 모두 완성되어 있을 것 같은데 저는 임무가 남아있어 움직일 수가 없네요. 저 대신 시계를 찾아와 주셨으면 하는데... 서둘러 주세요!"},
	},
}
return nTable
end