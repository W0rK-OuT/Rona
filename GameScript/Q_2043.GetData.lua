return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012101,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 2042, ["state"] = 2}},
	["job"] = {300, 310, 320, 311, 321, 312, 322, 1300, 1310, 1311, 1312},
}
nTable["check1"] = {
	["npc"] = 1012101,
	["item"] = {{["id"] = 4021007, ["count"] = 1}, {["id"] = 4000025, ["count"] = 50}, {["id"] = 4000027, ["count"] = 50}, {["id"] = 4000044, ["count"] = 50}, {["id"] = 4000028, ["count"] = 50}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 15000,
	["item"] = {
		{["id"] = 4000044, ["count"] = -50},
		{["id"] = 4000025, ["count"] = -50},
		{["id"] = 4000027, ["count"] = -50},
		{["id"] = 4000028, ["count"] = -50},
		{["id"] = 4021007, ["count"] = -1},
		{["id"] = 1072144, ["count"] = 1, ["prop"] = 1},
		{["id"] = 1072145, ["count"] = 1, ["prop"] = 1},
		{["id"] = 1072146, ["count"] = 1, ["prop"] = 1}
	},
}
nTable["info"] = {
	["name"] = "마야의 마지막 수집품",
	["parent"] = "마야를 위한 수집",
	["order"] = 4,
	["1"] = "마야가 마지막으로 #b클랑의 집게발, 다크 스톤골렘의 돌조각, 와일드카고의 눈동자, 타우로마시스의 뿔 각각 50개와 다이아몬드 1개#k를 모아와 달라는 부탁을 했다. 해변, 깊은 숲, 개미굴 깊은곳에 살고 있는 몬스터들을 쓰러뜨리면 얻을 수 있다는데... 너무 까다롭잖아! 힘들다구~!\n\n#i4021007##t4021007# #b#c4021007##k/1\n#i4000025##t4000025# #b#c4000025##k/50\n#i4000027##t4000027# #b#c4000027##k/50\n#i4000044##t4000044# #b#c4000044##k/50\n#i4000028##t4000028# #b#c4000028##k/50",
	["2"] = "마지막으로 마야가 모아와 달라던 물건을 모두 가져다 주었다. 이걸로 끝인가? 보답으로 예전 마야의 할머니가 이 마을의 원로인 헬레나를 위해 만들었던 신발을 받았다. 그렇게 오래전에 만들었는데 새것처럼 튼튼해 보이는걸~",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "어머... 벌써 준비가 다 되신 모양이죠? 너무 서두르지는 마세요~ 자! 이번이 마지막이라구요~ #b#t4000044#, #t4000025#, #t4000027#, #t4000028# 각각 50개와 #t4021007# 1개#k를 찾아와 주시겠어요?"},
	["yes"] = {["1"] = "너무 감사해요! 이번에는 해변, 깊은 숲, 개미굴 깊은곳 할 것 없이 이곳 저곳 돌아다녀 보셔야 할 것 같은데요? 그럼 전부 모으시는 대로 다시 저에게 찾아와 주세요. 이곳에서 기다리고 있을 테니까요~"},
	["no"] = {["1"] = "여러 가지로 바쁘신 모양이죠? 하지만 나중에 시간이 남으신다면 꼭 다시 들러주세요. 제가 직접 수집하러 다니고는 싶지만 아직 병이 완쾌되질 않아서..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "정말로 모두 구해와 주셨군요! 이번에는 지난번보다는 조금 힘이 들었죠? 하지만 이정도 쯤이야 별거 아니었을 것 같은데... 후후... 아무튼 모아오신 물건은 감사히 잘 쓸게요. 이걸로 왠만한 물건은 전부 모은것 같은걸요~"},
	["yes"] = {["1"] = "모아오신 물건은 잘 받았어요. 지금까지 정말 감사했어요. 귀찮으셨을텐데 불평 한번 말씀하시지도 않고... 보답으로 저희 집 상자 깊숙한 곳에 있던 신발을 하나 드렸어요. 아주 아주 옛날 저희 할머니께서 #p1012100#님을 위해 만들었던 물건인데 건네드리기도 전에 큰 전쟁이 끝나버려서... 하지만 당신을 위해 드릴게요! 소중히 사용해 주세요!"},
	["stop"] = {
		["item"] = {["1"] = "아직 제가 말씀드린 #b#t4000044#, #t4000025#, #t4000027#, #t4000028# 각각 50개와 #t4021007# 1개#k를 전부 모으시지 못한 것 같군요... 하지만 힘내세요! 제 부탁만 몇 번 들어주신다면 좋은 물건을 드릴수도 있으니까 말이에요~"},
	},
}
return nTable
end