return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2110004,
	["lvmin"] = 50,
	["quest"] = {{["id"] = 6029, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2020002,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2000,
}
nTable["info"] = {
	["name"] = "스탠의 아쉬움",
	["parent"] = "고든의 비법 전수",
	["order"] = 1,
	["0"] = "요즘 스탠의 한숨이 자주 들려 반니와 루이의 걱정도 커져만 간다고 한다. 겉으로는 모른척하지만, 마음이 심란한 이 둘을 위해서라도 내가 스탠에게 무슨 걱정이 있는지 물어봐야겠다.",
	["1"] = "고든의 비법! 생각지도 못했던 놀라운 일이다. 메이커의 창시자로 명성이 높아질대로 높아진 스탠이 얻지 못한 비법이라니... 스탠은 이 비법이 메이커의 발전에 긍정적인 영향을 줄 것이라 기대하고 있었다. 스탠에게는 말하지 않고 엘나스의 신발장인 고든을 찾아가기로 마음먹었다. 혹시 알겠어? 내가 그 비법을 배우게 될지...",
	["2"] = "고든의 질문에 침착하게 대답했더니, 생각보다 훨씬 이야기가 잘 풀렸다. 고든은 처음에는 비법의 존재를 들켜 당황한 듯했지만 결국 상황을 받아들였는데, 내가 어떤 시험을 통과하면 비법을 전수해 주겠다고 한다. 대체 무슨 시험이지? 너무 어렵지 않으면 좋겠는데...",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "휴~... 푸우~... 에휴... \r\n#b#L0#스탠, 무슨 고민 있어요? 왜 한숨을 쉬고 그래요?#l", ["2"] = "응? 내가 한숨을 쉬었나? 자네가 잘못 봤다! 내가 그럴 리가 없지 않은가?!! \r\n#b#L0#분명히 스탠이 한숨을 쉬었어요. 내가 분명히 들었다고요.#l", ["3"] = "휴.... 사실 요즘 마음에 걸리는 일이 있다. 자네 혹시 고든이라고 아는가?\r\n#b#L0#아니요, 모르는데요.\r\n#b#L1#네. 물론 잘 알죠. 엘나스의 신발 장인이시잖아요.#l", ["4"] = "그렇다! 하지만 그는 단순한 신발 제작자가 아니다! 나는 그의 작업을 지켜보면서 메이커에 대한 많은 영감을 얻을 수 있었다! 그는 나의 벗이자 스승인 인물이라고 할 수 있다! \r\n#b#L0#그런데 그가 스탠의 고민과 무슨 상관인 거죠?#l", ["5"] = "그만이 할 수 있는 비법이 있지! 나는 아무리 노력해도 그 비법을 절대 흉내 낼 수가 없었다! 그래서 처음으로 고든에게 가르쳐달라고 편지를 보냈지만... 거절당했다!!! \r\n#b#L0#조금 전에 고든 할아버지와 친하다면서요?#l", ["6"] = "고든은 공과 사가 분명한 사람이지! 친분이 있다고 아무에게나 비법을 가르쳐주지 않는다! 메이커를 발전시킬 방법이 무엇인가 연구하고 있는데 고든의 비법이 자꾸 눈앞에 아른거렸지만... #h0#! 자네가 후에 고든을 만나더라도 내가 한 말은 입 밖에 내지 마라! 그는 내가 그 비법에 대한 미련을 완전히 버린 줄 아니까... 에휴~..."},
	["yes"] = {["1"] = "#b#h0##k 자네도 메이커에 더욱 정진하도록! 메이커를 더욱 완성하려고 노력하다 보면 언젠가 고든의 비법도 밝혀낼 수 있을 것이다! "},
	["no"] = {["1"] = "이런! 믿지 못할 대답이군! 스승을 곤란하게 만들 참인가?"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "2", ["1"] = "고든을 모르는가? 그 최고의 장인을! 자네에게 내가 메이커를 가르쳐주지 말았어야 하는데!! 밤하늘의 달을 보며 반성하고 있게!"},
		["3"] = {["answer"] = "1"},
		["4"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "응? 무슨 볼일이 있으신가? \r\n#b#L0#당신의 비법을 보았습니다. 정말 대단한 기술이더군요.\r\n#b#L1#당신에게 특별한 비법이 있다고 하던데 정말인가요? #l", ["2"] = "... 이틀 전이었나? 유난히 달밤이 밝은 조용한 밤이었는데 눈 밟는 소리가 나서 깜짝 놀랐었지... 그게 자네였을지도 모르겠군. 그래, 자네는 그날 무엇을 보았는가? \r\n#b#L0#음... (자신 없는 목소리로) 인...(형?) 두...(개???)...를 갖고 계셨었...던가... 요...?\r\n#b#L1#음... (자신 있는 목소리로) 인형 같은 걸 갖고 계셨던 거 아닌가요? 두세 개 정도? 피노키오 같이 생긴...?#l", ["3"] = "!!!!! 자네... 진짜로 봤구먼. '그 물건'을...\n휴... 그렇다면 할 수 없네. 내 얘기를 해 주지. 하지만 이 이야기를 들으려면 자네는 내 제자가 되어야 하네. 그럴 각오는 되어 있나? "},
	["yes"] = {["1"] = "자네가 내 제자가 된다면... 허허허, 스탠 군이 아주 노발대발할 텐데 걱정이군. 스탠 군에게서 얼마 전에도 비법을 가르쳐달라고 편지가 왔는데 내가 아무에게도 안 가르쳐주겠다고 했거든. 뭐, 그건 자네가 알아서 좋을 것 없는 일이니 신경 쓰지 말게나. ", ["2"] = "일단, 난 아직 자네를 잘 모르겠네. 내가 가르쳐주는 기술도 비법이라 불리는 만큼 최소한의 자질이 있는지 정도는 확인해 봐야 할 게 아닌가? 내가 '그 물건'을 챙겨 놓을 동안 자네도 준비해 놓게. 내가 내 주는 시험을 통과할 준비 말일세. 준비 끝나면 말하게나."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["2"] = "그럴 리가... 허허, 잘못 알고 온 것이 아닌가? 난 그저 평범한 신발을 만드는 노인일 뿐이라네. "},
		["1"] = {["answer"] = "1", ["2"] = "허허허... 그... 렇지. 피노키오를 만들다가 재료가 없어서 고생했었던 적도 있었다네. 나무 조각술도 내 비법이지. 비법이고말고... 허허허허. 언제 한번 다시 찾아오면 자네에게 나무를 조각하는 법을 알려 주도록 하지."},
		["npc"] = {["1"] = "왜 아직 그러고 서있지? 내 고민이 뭔지 알았으면 해결해주기 위해 노력하는 것이 진정한 제자의 자세가 아닌가! 메이커를 더욱 정진하도록!"},
	},
	["ask"] = 1,
}
return nTable
end