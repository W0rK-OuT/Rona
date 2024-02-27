return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041021,
	["interval"] = 1440,
	["quest"] = {{["id"] = 7103, ["state"] = 1}},
	["item"] = {{["id"] = 4031179}},
}
nTable["check1"] = {
	["npc"] = 2041023,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4031179, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "잃어버린 균열조각",
	["0"] = "차원 균열조각을 잃어버렸다면 다시 Mr.피에로에게 가보자.",
	["1"] = "#rMr.피에로#k에게 차원 균열조각을 잃어버렸다고 하자, 다시 한번 기회를 주겠다면서 #r플로#k에게 가보라고 했다.",
	["2"] = "잃어버린 차원 균열조각을 플로에게 다시 얻을 수 있었다. 이번에는 반드시 파풀라투스를 처치해야지.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "엇! #t4031179#을 잃어버리신건가요? 그건 정말 귀한 물건인데... 균열조각이 없으면 파풀라투스를 불러낼 수가 없어요. 이를 어쩌나... 당신...정말 진심으로 다시 한번 도전하고 싶은건가요?"},
	["yes"] = {["1"] = "좋아요. 저한테는 능력이 없지만, 뒤틀린 시간의 길로 내려가는 입구에 서있는 #b#p2041023##k에게 가보세요. #p2041023#라면 당신을 도와줄 수 있을지도 몰라요."},
	["no"] = {["1"] = "다시 도전할 생각이 없으시군요. 역시 파풀라투스를 물리친다는건 쉽지 않은 일이니까요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#p2041021#에게 연락받았어요. #t4031179#을 잃어버렸다죠? #t4031179#는 꼭꼭 숨어있는 #o8500002#를 불러낼 수 있는 유일한 물건이죠. 절 다시 찾아 오신걸 보니, 끝까지 #o8500002#와 싸우겠다는 당신의 각오가 느껴지는군요. 특별히 다시 한번 #t4031179#를 드리도록하죠."},
	["yes"] = {["1"] = "어떻게 제가 이 균열조각을 가지고 있는지 궁금하다구요? 후후 그것은 비~밀이에요. 일종의 마술이라고 할 수 있죠. 우리에겐 드러나지 않은 곳에서 도와 주고 있는 많은 사람들이 있거든요. ", ["2"] = "사람들의 마음이 하나로 모이는것 자체가 멋진 마술이라고 할 수 있죠. 후후후... 다른 마술도 보고싶으신가요? 멋진 마술이 더 보고싶으시다면 언제라도 절 찾아오셔도 좋습니다."},
	["stop"] = {
		["npc"] = {["1"] = "#b플로#k는 #b뒤틀린 시간의 길#k로 내려가는 입구에 있어요."},
	},
}
return nTable
end