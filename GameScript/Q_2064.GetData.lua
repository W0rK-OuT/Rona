return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032105,
	["lvmin"] = 21,
	["quest"] = {{["id"] = 2063, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1032105,
	["item"] = {{["id"] = 4021000, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
	["nextQuest"] = 2076,
	["item"] = {
		{["id"] = 4021000, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "에스텔의 부탁",
	["parent"] = "밍밍부인의 두번째 고민",
	["order"] = 2,
	["1"] = "엘리니아 근처에서 #b에스텔#k을 만났다. 그녀는 어머니 생일 선물로 목걸이를 준비하고 싶다면서 잘 제련된 #b가넷 1개#k만 구해다 준다면 특제소스를 건내줄 수도 있다고 말했다.\n\n#i4021000##t4021000#  #b#c4021000#/1#k",
	["2"] = "엘리니아 근처에서 만난 #b에스텔#k에게 어머니의 생일 선물 준비에 필요한 #b가넷#k을 건내 주고, #b에스텔의 특제소스#k를 받았다. 이제 다른 재료들을 모아서 밍밍부인에게 돌아가 봐야겠다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "여기까지 어쩐 일이세요? 아... 제 특제소스 말씀이세요? 축제 음식을 마련하는데 쓰려고 한다구요? 흐음... 이건 어머니가 알려주신 비법으로 만든 소중한 것이라서 처음보는 분께 함부로 드릴 수가 없는데... 제 부탁 하나 들어주신다면 소스를 나눠드릴게요. 어때요?"},
	["yes"] = {["1"] = "부탁이란 건 간단하답니다. 몇일 뒤가 저희 어머니의 생신이시거든요. 어머니에게 예쁜 #t4021000# 목걸이를 선물해 드리고 싶은데 #t4021000#을 구할 수 없어서 곤란하던 참이에요. 잘 제련된 #b#t4021000# 1개#k만 가져와 주신다면 소스를 나눠드릴게요."},
	["no"] = {["1"] = "들어보지도 않고 거절하실 필요는 없을 텐데... 제 특제소스가 다시 필요해지면 언제든지 다시 찾아와 주세요. 그럼 안녕히 가세요~"},
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "몇일 뒤에 있을 어머니 생신때 #t4021000#으로 만든 예쁜 목걸이를 선물하고 싶어요. #b#t4021000# 1개#k만 가져와 주신다면 제 특제소스를 드릴테니 되도록 빨리 부탁해요."},
	},
}
return nTable
end