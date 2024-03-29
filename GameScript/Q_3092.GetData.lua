return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060006,
	["quest"] = {{["id"] = 3091, ["state"] = 1}},
}
nTable["check1"] = {
	["npc"] = 2020005,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2000,
}
nTable["info"] = {
	["name"] = "아쿠아로드 사진첩",
	["parent"] = "바다의 풍경",
	["order"] = 2,
	["0"] = "#t4031310#을 아쿠아리움의 #b#p2060006##k가 팔고 있다고 하던데...",
	["1"] = "#t4031310#을 팔고 있다는 #p2060006#를 찾아갔다. #p2060006#는 사진첩이 모두 매진됐다고 했다. 어떻게 구할 수 없겠냐고 사정을 했더니 자신이 소장하려고 남겨두었던 사진첩을 주겠다고 했다. 대신 한 번도 눈을 보지 못한 자신을 위해 지상에 있다는 #t4031312#를 가져다 달라고 했다. #b#t4031312##k는 엘나스의 #r#p2020005##k가 만들 수 있다고 한다.",
	["2"] = "눈결정의 마법구를 보고싶다는 #p2060006#의 부탁을 받고 엘나스로 #p2020005#를 만나러 갔다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "#t4031310#이요? 네. 제가 팔고 있지만 한정판이라 벌써 매진되버렸어요. \r\n#L0##b정말요? 어떻게 구할 수 있는 방법이 없을까요? 꼭 구해야 하는데…#k", ["2"] = "음... 제가 소장하고 싶어서 남겨 놓은 사진첩이 한 권 있긴한데... 어쩔 수 없죠. 그렇게 필요하시다면 당신께 팔도록 할게요. 대신 제 부탁을 들어주세요."},
	["yes"] = {["1"] = "저는 단 한번도 물 밖으로 나가 본 적이 없어요. 여행자분들께 들었는데 지상에는 눈이라는 것이 하늘에서 내리는데 그 결정이 아름답다고 하더라구요. 저도 그 눈송이를 보고 싶어요. 하지만 바다속에서 눈은 금방 녹아버린답니다.", ["2"] = "바다 속에서도 녹지않게 하려면 엘나스의 대마법사 #r#p2020005##k님의 마법이 필요해요. 그분은 눈송이를 모아서 절대 녹지 않는 눈결정의 마법구를 만들 수 있다는 이야기를 들었어요. 저에게 이렇게 생긴 #b#i4031312# #t4031312##k를 가져다 주세요."},
	["no"] = {["1"] = "제 부탁을 들어주시지 않으면 저도 사진첩을 드릴 수 없어요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "무슨 일이죠? 나를 만나러 온건가요? 잠시만요 지금 하고 있던 일이 있어서 조금 후에 다시 말을 걸어주세요."},
	["stop"] = {
		["npc"] = {["1"] = "#p2020005#님은 만나보셨어요?"},
	},
}
return nTable
end