return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012018,
	["lvmin"] = 20,
}
nTable["check1"] = {
	["npc"] = 2012018,
	["item"] = {{["id"] = 4031191, ["count"] = 1}, {["id"] = 4031192, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 4000,
	["item"] = {
		{["id"] = 4031191, ["count"] = -1},
		{["id"] = 4031192, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "네로의 목걸이",
	["0"] = "오르비스공원에 머리위에 검은고양이를 올려 놓고 다니는 사람이 있다는데...",
	["1"] = "오르비스 공원에서 만난 #p2012018#아저씨는 겉모습은 무섭게 보였지만, 애완고양이를 사랑하는 자상한 면도 가지고 있는 아저씨였다. 그런데 어제 놀러나갔던 네로가 아저씨가 직접 만들어 준 목걸이를 잃어버리고 왔다면서 목걸이를 다시 만들기 위해 가게에 가서 목걸이의 재료를 사다 달라고 하셨다.\n\n#i4031191# #t4031191#  #b#c4031191##k / 1\n#i4031192##t4031192#  #b#c4031192##k / 1",
	["2"] = "오르비스 공원에서 만난 #p2012018#아저씨의 부탁으로 캐시샵에서 네로의 목걸이를 다시 만들 재료를 사다드렸다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "이봐 너. 우리 네로의 목걸이를 보지 못했어? 우리 네로 목에 언제나 걸려있던 작은 방울이 달린 목걸이 말야. 그건 우리 네로의 첫번째 생일날 내가 직접 만들어 줬던 건데 어제 네로가 놀러나갔다가 온 뒤로는 도통 보이지 않아. ", ["2"] = "어디서 잃어버린건지...다시 만들어 주고 싶은데 내가 지금 좀 바빠서 재료를 사러 갈 시간이 없어. 이봐 내 심부름 좀 해주지 않겠어?"},
	["yes"] = {["1"] = "네로의 목걸이 재료는 마을에서 팔지않아. 캐시샵이라는 큰 시장에 가야 살 수 있거든. 어느 가게에서 샀더라... 기억이 잘 나지 않는걸? 아무튼 그 시장에 가서 #b#t4031191# 1개#k랑 #b#t4031192# 1개#k만 사다줘. 그것들만 있으면 우리 사랑스런 네로의 멋진 목줄을 만들 수 있을거야. 가격은 아마 1개에 #r1메소#k정도 했던 것 같아."},
	["no"] = {["1"] = "뭐가 그렇게 바쁜거야? 우리 사랑스런 네로를 봐서라도 좀 들어주면 안되나? 알았다구. 바쁜 것 같으니 잘 가라구."},
}
nTable["say1"] = {
	["base"] = {["1"] = "아 맞아맞아. 바로 이거야. 이거만 있으면 우리 귀엽고 사랑스런 네로의 목걸이를 다시 만들 수 있을거야. 정말 고마워."},
	["stop"] = {
		["item"] = {["1"] = "목걸이를 잃어버려서 그런지 우리 네로가 요즘 많이 우울해 하는 것 같아. 목걸이 재료는 아직 사오지 않은거야? #b#t4031191# 1개#k와 #b#t4031192# 1개#k야. 잊어먹은 건 아니겠지?"},
	},
}
return nTable
end