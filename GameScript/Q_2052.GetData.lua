return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 20000,
	["lvmin"] = 15,
}
nTable["check1"] = {
	["npc"] = 20000,
	["item"] = {{["id"] = 4031025, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2000,
	["item"] = {
		{["id"] = 4031025},
		{["id"] = 4003000, ["count"] = 30}
	},
}
nTable["info"] = {
	["name"] = "존의 분홍색 꽃 바구니",
	["0"] = "리스 항구에 있는 존을 찾아가보자.",
	["1"] = "리스 항구에서 존이라는 어부를 만났다. 곧 있을 결혼기념일에 아내에게 멋진 꽃 바구니를 선물하고 싶어했다. 아내가 가장 좋아하는 #b핑크 비올라 10송이#k를 모아와 달라는 부탁을 받아서 떠맡기는 했는데... 존의 말에 의하면 슬리피우드에 있는 이상한 석상으로 그 꽃이 있는 곳으로 갈 수 있을지도 모른다고 말해 주었다. 슬리피우드라... 너무 멀잖아~!?!?\n\n#i4031025##t4031025#  #b#c4031025#/10#k",
	["2"] = "존에게 #b핑크 비올라 10송이#k를 모두 가져다 주었다. 이걸로 존은 꽃 바구니를 만들어서 결혼기념일에 그의 아내에게 선물할 수 있겠지. 존은 감사의 표시로 배 이곳 저곳에서 빠져나온 것으로 보이는 나사를 한 웅큼 건네주었다. 그런데 이렇게 많은 나사가 배에서 빠져나왔다면 그 배는 도대체 어떻게 된 거지? 설마 아직도 물 위를 떠다니며 사람들을 실어 나르고 있는건 아니겠지...",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "이봐...! 잠시만 기다려 줘. 보아하니 꽤 이곳 저곳 돌아다녀 본 듯 한데... 시간이 남는다면 부탁 하나만 들어주지 않겠나? 별로 어려운 일은 아니야. 실은 조금 있으면 아내와의 결혼 기념일인데 아주 특별한 선물을 해주고 싶다네. 특별한 꽃이 필요한데... 대신 가져다 주겠나?"},
	["yes"] = {["1"] = "고맙네! 아내가 좋아하는 꽃은 #b#t4031025##k라는 희귀한 꽃이야. 깊은 숲속 어딘가에 피어 있다고 듣긴 했는데... 그 꽃이 있는 곳은 아무나 들어갈 수 있는 곳은 아니라고 들었다네. #m105040300#에서 #p1061006#이 어쩌고 저쩌고 했던 말을 들었던 기억은 있는데 말이야...", ["2"] = "#b#t4031025#를 10 송이#k 가져다 주게나. 10송이는 있어야 꽃 바구니를 만들 수 있을것 같거든. 한 번 들어가서 조금씩 모은 후 그때 그때 나에게 갖다주면 그걸로 꽃 바구니를 만들수 있겠지. 그럼 꽃을 얻는대로 꼭 이곳으로 돌아와 나에게 전해주게나. "},
	["no"] = {["1"] = "그렇군... 이제 조금만 있으면 결혼 기념일이 되는데 이거 정말 큰일인 걸... 나중에라도 시간이 나게 되면 다시 날 찾아주게나."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오... 드디어 10송이의 #b#t4031025##k를 모두 가져다 주었구만~! 이거 정말 놀랐는데... 정말 그 울창한 숲에서 꽃을 따올 줄이야... 이 꽃은 100년동안 시들지 않는다는 전설이 있다네. 이걸로 꽃 바구니를 만들어서 아내에게 주면 굉장히 좋아하겠군~", ["2"] = "그렇지...! 이렇게 나를 위해 수고해 주었으니 뭔가 보답을 하지 않을수 없군. 이 근처 배의 부품이었던 모양인데... #t4003000#를 꽤 많이 모았거든? 자네에게 필요한 것 같으니 모두 주겠네. 자... 사양하지 말고 어서 받게나."},
	["yes"] = {["1"] = "혹시 시간이 남는다면 그 숲에 다시 한 번 가보는 건 어떤가? 아마도 꽤 괜찮은 물건을 발견하게 될지도 모른다네. 물론 내가 직접 가본건 아니라서 장담할 수는 없지만 말야... 쓰레기 같은 물건이 나와도 나에게 따지지는 말아주게."},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4031025##k를 구하지 못한 모양이로군. #m105040300#에는 #p1061006#이 있는데 그걸로 #t4031025#가 피어있는 곳으로 갈 수 있다는 소문이 있다네. 숲으로 들어가 #t4031025#를 모아와 주게나. 10 송이는 있어야 꽃 바구니를 만들수 있을것 같다네."},
	},
}
return nTable
end