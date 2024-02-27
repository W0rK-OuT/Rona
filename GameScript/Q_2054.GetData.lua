return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 20000,
	["lvmin"] = 60,
	["quest"] = {{["id"] = 2053, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 20000,
	["item"] = {{["id"] = 4031028, ["count"] = 30}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 25000,
	["item"] = {
		{["id"] = 4031028},
		{["id"] = 1032014, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "존이 준비한 마지막 선물",
	["0"] = "리스 항구에 있는 존이 마지막으로 부탁할 것이 있다는데...",
	["1"] = "리스 항구에서 존이라는 어부를 또 다시 만났다. 존은 얼마 전 어머니가 노환으로 돌아가셨다면서 어머니 묘소에 놓아드릴 화환을 만드는 것을 도와달라고 말했다. 1000년동안 빛을 내며 지지 않는 #b화이트 비올라30 송이#k를 대신 모아와 달라는 부탁을 받아서 떠맡기는 했는데... 존의 말에 의하면 슬리피우드에 있는 이상한 석상으로 그 꽃이 있는 곳으로 갈 수 있을지도 모른다고 말해 주었다. 그 숲... 이제 그만 들어가면 안될까...\n\n#i4031028##t4031028#  #b#c4031028#/30#k",
	["2"] = "존에게 #b화이트 비올라 30송이#k를 모두 가져다 주었다. 1000년동안 빛을 내는 꽃이라... 왠지 사람들에게 팔면 큰 돈을 벌 수도 있을것 같은데? 하지만 이제 다시는 그 숲으로 들어가고 싶지 않은걸... 아무튼 존은 감사의 표시로 어머니의 유품이라는 꽃 귀걸이를 건네 주었다. 흔히 볼 수 있는 꽃으로 만든 귀걸이 같아 보이는데 어째 뭔가 숨겨져 있는것 같단 말야...",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "오오... 오래 전 내 부탁을 들어줬던 바로 그 사람이로구만. 자네 정말 몰라보게 강해졌는데? 이제는 안 가본 곳이 없겠구만. 마지막으로 자네에게 부탁하고 싶은것이 있다네. 실은 몇 일전 노환으로 어머니께서 돌아가셨다네. 어머니 묘소에 드릴 특별한 꽃이 필요한데... 대신 가져다 주겠나?"},
	["yes"] = {["1"] = "정말 고맙네...! 어머니 묘소에 드리고 싶은 꽃은 #b#t4031028##k라는 희귀한 꽃이야. 깊은 숲속 어딘가에 피어 있다고 듣긴 했는데... 그 꽃이 있는 곳은 아무나 들어갈 수 있는 곳은 아니라고 들었다네. #m105040300#에서 #p1061006#이 어쩌고 저쩌고 했던 말을 들었던 기억은 있는데 말이야...", ["2"] = "#b#t4031028#를 30송이#k 가져다 주게나. 어머니 묘소에 가득 가져다 드리고 싶거든. 그 꽃은 한꺼번에 많이 가져올 수는 없을걸세. 한번에 30 송이를 다 가져오려고 하지 말고 꽃을 얻을 때마다 이곳으로 돌아와 나에게 전해주게나."},
	["no"] = {["1"] = "그렇군... 어머니께서는 살아계셨을 때 항상 그 꽃을 보고 좋아하시곤 했었지... 자네가 꼭 좀 가져다 줬으면 하는데 말야... 아쉽군..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오... 드디어 30송이의 #b#t4031028##k를 모두 가져다 주었구만~! 이거 정말 놀랐는데... 정말 그 깊고 어두운 숲에서 꽃을 따올 줄이야... 이 꽃은 1000년동안 시들지 않고 스스로 빛을 낸다는 전설이 있다네. 이걸로 화환을 만들어 어머니 묘소에 가져가야 겠는걸~", ["2"] = "그렇지...! 이렇게 나를 위해 수고해 주었으니 뭔가 보답을 하지 않을수 없군. 이 귀고리는 어머니의 유품이라네. 젊은 시절부터 계속 간직하고 있던 거라고 들었지. 잘은 모르겠지만 뭔가 특수한 힘이 있는것 같기도 하고... 아무튼 어서 받게나."},
	["yes"] = {["1"] = "혹시 시간이 남는다면 그 숲에 다시 한 번 가보는 건 어떤가? 아마도 꽤 괜찮은 물건을 발견하게 될지도 모른다네. 물론 내가 직접 가본건 아니라서 장담할 수는 없지만 말야... 쓰레기 같은 물건이 나와도 나에게 따지지는 말아주게."},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4031028##k를 구하지 못한 모양이로군. #m105040300#에는 #p1061006#이 있는데 그걸로 #t4031028#가 피어있는 곳으로 갈 수 있다는 소문이 있다네. 숲으로 들어가 #t4031028#를 모아와 주게나. 30 송이는 있어야 화환을 만들수 있을것 같다네."},
	},
}
return nTable
end