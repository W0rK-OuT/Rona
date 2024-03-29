return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041004,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3200, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2041004,
	["mob"] = {
		[1] = {["id"] = 2230103, ["count"] = 40},
		[2] = {["id"] = 3210205, ["count"] = 40}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2500,
	["item"] = {
		{["id"] = 2000009, ["count"] = 50},
		{["id"] = 2000011, ["count"] = 50}
	},
}
nTable["info"] = {
	["name"] = "에오스탑 깊은곳 청소",
	["0"] = "루디브리엄의 마르셀을 찾아가보자.",
	["1"] = "루디브리엄의 마르셀로부터 에오스탑 깊은곳에 살고 있는 거대한 검은 생쥐인 #b블랙 라츠#k 40마리와 거미인 #b트릭스터#k 40마리를 쓰러뜨리고 돌아와 달라는 부탁을 받았다.\n\n#o2230103# #r#a32011##k\n#o3210205# #r#a32012#",
	["2"] = "루디브리엄의 마르셀로부터 부탁받은 #b블랙 라츠#k와 #b트릭스터#k 퇴치를 무사히 완수했다. 하지만 탑 밖에도 뭔가가 있는 것 같은데...",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "어머나! 마침 잘 오셨어요. 실은 또 부탁이 생겼거든요. 얼마 전 부하로부터 에오스탑에 지난번 보다 훨씬 더러운 녀석들이 우글거리고 있다는 보고를 받았답니다. 그래서 대신 퇴치해 주셨으면 하는데 제 부탁을 들어 주시겠어요?"},
	["yes"] = {["1"] = "좋습니다! 부탁드릴 것은 지난번과 비슷해요. 루디브리엄과 지구방위 본부를 이어주는 탑인 에오스탑에 이번에는 더러운 거미와 검은 생쥐들이 늘어나고 있다는 정보입니다. 그래서 다시 한 번 그 탑 안으로 들어가셔서 녀석들의 수를 좀 줄여주셨으면 해요.", ["2"] = "에오스탑에 서식하고 있는 #b#o3210205##k 40 마리와 #b#o2230103##k 40 마리를 쓰러뜨리고 돌아와 주세요. 등에 태엽이 달린 검은 생쥐와 성 벽에 거미줄을 치고 사는 거미 모습의 몬스터랍니다. 그럼 이곳에서 기다리고 있겠습니다~"},
	["no"] = {["1"] = "그런가요... 하지만 별로 어려운 부탁은 아니니 한 번쯤 해 보시는 것도 나쁘지는 않을 텐데요... 나중에라도 시간이 난다면 다시 절 찾아주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이번에도 모두 쓰러뜨리고 오시다니 훌륭하군요! 에오스탑에 꽤 많은 #b#o3210205##k와 #b#o2230103##k가 있었나 보죠? 아무튼 이렇게 제 부탁을 들어주셨으니 보답을 해야겠죠. 사냥에 꼭 필요한 물품을 드릴테니 사양하지 말고 받아 주세요!"},
	["yes"] = {["1"] = "#b#t2000009# 50개와 #t2000011# 50개#k는 잘 받으셨나요? 도와주셔서 고마웠습니다. 하지만 아직도 에오스탑에는 훨씬 더 더러운 녀석들이 많은 모양이더군요. 부탁드릴 것이 잔뜩 있으니 시간이 나신다면 다음번에 또 찾아주세요~!"},
	["stop"] = {
		["mob"] = {["1"] = "아직 제 부탁을 완수하지 못하셨군요. 에오스탑으로 가셔서#b#o3210205##k와 #b#o2230103##k를 각각 40마리 쓰러뜨리고 돌아와 주세요."},
	},
}
return nTable
end