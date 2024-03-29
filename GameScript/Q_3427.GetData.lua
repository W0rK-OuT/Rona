return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2050013,
	["lvmin"] = 50,
	["quest"] = {{["id"] = 3072}, {["id"] = 3426, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2051001,
	["item"] = {{["id"] = 4031126, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031126, ["count"] = 1, ["period"] = 1440}
	},
}
nTable["act1"] = {
	["exp"] = 2500,
	["nextQuest"] = 3428,
	["item"] = {
		{["id"] = 4031126, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "포터의 은밀한 편지",
	["parent"] = "행방불명된 수송선",
	["order"] = 1,
	["0"] = "지구방위본부의 포터박사를 찾아가보자.",
	["1"] = "지구방위본부 사령실에 있는 #b포터#k 박사로부터 격납고의 엔지니어 #b케이#k에게 편지 한 통을 전해줄 것을 부탁받았다. 시간내에 전해주지 않으면 안되니 서둘러야겠다. 그런데 과연 어떤 내용이 적혀 있을지 기대되는걸… 혹시 연애편지는 아닐까?",
	["2"] = "격납고의 엔지니어 케이에게 포터의 편지를 전해주었다. 아쉽게도 연애편지는 아닌 것 같다. 사라진 수송선에 대한 편지였다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "(훌쩍~) 어라... 혹시 당신 #p2051001#씨의 조수 아니신가요? 맞지요? 흐음~ 이 지구방위본부에서는 요즘 신형 로봇의 개발이 한창이라 일손이 많이 부족한 상황이죠. 게다가 외계인들의 위협도 날이 갈수록 거세지고 있고... (훌쩍~) 외계인들은 똑똑하고 약삭바른 녀석들이니 당신도 조심하시는 것이 좋을 거에요.", ["2"] = "그런데 어떤가요? #p2051001#씨의 조수로서의 생활은? #p2051001#씨는 잘해 주던가요? (훌쩍~) 아니 뭐... 별다른 건 아니구요... 그... 그렇지...! 이 편지를 #p2051001#씨에게 제 대신 전해주지 않으시겠어요? (훌쩍~) 제가 직접 만나서 전해주고는 싶지만... 지금은 그럴 형편이 안되서 말이죠..."},
	["yes"] = {["1"] = "방금 제가 드린 편지를 격납고에 있는 #b#p2051001##k씨에게 전해주세요. (훌쩍~) 아참! 그 편지는 받은지 하루 내에 전해주지 않으면 자동 소멸되게 특수 장치가 되어 있어요. 다른 사람의 손에 들어가면 곤란하거든요... (훌쩍~) 그리고 절대 안에 내용을 보셔도 안되니까 조심해 주세요. 그럼 부탁드립니다~"},
	["no"] = {["1"] = "흐음... 지금은 많이 바쁘신 모양이죠? (훌쩍~) 뭐... 어쩔수 없죠. 하지만 나중에라도 시간이 나신다면 꼭 다시 저를 찾아주세요. #p2051001#씨에게 반드시 전해주고 싶은 편지가 있거든요..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "안녕하세요~ 오늘도 새로운 기계 개발로 눈코 뜰 새 없이 바쁘답니다. 그런데... #b#p2050013##k 박사가 저에게 이 편지를 전해주라고 부탁했다는 말씀이세요? 정성스럽게 포장된 편지로군요...! 어떤 내용이 들어 있을지 정말 궁금한걸요...? 어디보자... 흠..."},
	["stop"] = {
		["npc"] = {["1"] = "제가 드린 편지를 격납고에 있는 #b#p2051001##k씨에게 전해주세요. (훌쩍~) 아참! 그 편지는 받은지 하루 내에 전해주지 않으면 자동 소멸되게 특수 장치가 되어 있어요. 다른 사람의 손에 들어가면 곤란하거든요... (훌쩍~) 그리고 절대 안에 내용을 보셔도 안되니까 조심해 주세요. 그럼 부탁드립니다~"},
		["item"] = {["1"] = "안녕하세요~ 오늘도 새로운 기계 개발로 눈코 뜰 새 없이 바쁘답니다. 그런데... #b#p2050013##k 박사가 저에게 어떤 물건을 전해주라고 부탁했다고요? 하지만 도중에 그 물건을 잃어버리신 모양이군요. 박사가 보낸 물건이라면 중요한 것이 틀림없는데... 다시 돌아가 보는건 어떤가요?"},
	},
	["ask"] = {"흐음... 제가 드린 편지를 잃어버리신 건가요? 아니면 전달해야 할 날짜를 지나쳐 버리신 걸지도...? (훌쩍~) 조심하셨어야죠... 다시 편지를 드릴테니 이번에는 시간내에 #b#p2051001##k씨에게 꼭 전해 주셔야 해요. (훌쩍~) 시간내에 전달하지 않으면 자동 소멸되니까 조심하세요. 그럼 여기 편지를 받아주세요."},
}
return nTable
end