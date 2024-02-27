return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081000,
	["lvmin"] = 80,
}
nTable["check1"] = {
	["npc"] = 2081006,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 50000,
}
nTable["info"] = {
	["name"] = "모이라의 행방",
	["parent"] = "용들의 전쟁",
	["order"] = 1,
	["0"] = "최근 #m240000000#의 #p2081000#가 누군가를 기다리며, 하늘을 쳐다보는 일이 자주 있다고 한다. 누구를 기다리는 걸까? #p2081000#를 찾아가보자.",
	["1"] = "#m240000000#의 #p2081000#는 친분이 있던 마법사 #b#p2081006##k로부터 연락이 끊겼다면서 걱정을 하고 있었다. #p2081006#는 미나르숲의 용들과 친하게 지내던 마법사로 얼마 전, 미나르숲의 용들에게 위험이 닥쳤다면서 그들을 도와주러 갔는데 그 이후로 연락이 끊겼다고 한다. 평화로워 보이는 미나르숲 용들에게 닥친 위험이란 무엇이고 #p2081006#는 어디로 사라진 걸까? #b용의 숲 너머#k 어딘가에서 그녀를 찾을 수 있지 않을까? ",
	["2"] = "#p2081000#의 부탁으로 마법사 #p2081006#를 찾아나섰다. 한참을 헤멘 끝에 용의 둥지에 있는 생명의 동굴 입구 위쪽에서 #p2081006#를 만날 수 있었다.",
	["area"] = 41,
}
nTable["say0"] = {
	["base"] = {["1"] = "도대체 어떻게 된 것인지... 통 연락이 닿지 않으니...그녀는 어디로 사라져 버린 것인지 모르겠군... 답답하군. 답답해! \r\n#L0# #b누군가를 기다리고 계시나요?#k", ["2"] = "아주 오래 전에 우리 마을을 찾아왔던 마법사가 있었다네. 그녀는 스스로를 위한 수련을 한다고 했었지. 쾌활하고 밝은 성격으로 마을 사람들도 모두 그녀를 좋아했었지… 그녀는 미나르숲의 용들과도 사이가 좋았다네. \r\n#L0# #b용들과 사이가 좋았다니 굉장하네요.#k", ["3"] = "맞아. 용들이란 원래 인간을 믿지않지만, 그런 그들도 그녀만은 신뢰했었지. 어느 날, 그녀가 다급한 얼굴로 돌아오더니 용들에게 위기가 닥쳤다면서 그들을 도와주러 가겠다는 말만 남기고 떠나버렸네. 그 후로 다시는 그녀를 볼 수 없었지. \r\n#L0# #b그런데 왜 그녀를 기다리시죠? 특별한 이유라도 있나요?#k", ["4"] = "최근들어 숲으로 들어갔다가 돌아오지 않는 하프링들도 점점 늘어나고 있다네. 이럴 때 그녀가 우리 곁에 있어준다면 큰 도움이 될텐데 말이야. 자네가 그녀의 행방을 알아봐 주지 않겠나?"},
	["yes"] = {["1"] = "고맙네. 마지막으로 그녀를 봤던 곳이 용의 숲 입구였다네. 아마도 그녀는 용의 숲으로 들어간 것 같아. 용의 숲 건너에는 용들이 사는 땅이 있는데 아마도 그곳으로 간 것이 아닌가 싶네."},
	["no"] = {["1"] = "그녀라면 사라진 하프링들을 찾을 수 있을텐데..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "당신은 누구죠? 어떻게 이 곳까지!? \r\n#L0# #b당신이 모이라인가요? 촌장님의 부탁으로 당신을 찾으러 왔어요.#k", ["2"] = "쉿! 목소리를 낮추세요. 절 찾으러 오셨다니 감사합니다. 하지만 당신 혼자 힘으로는 절 구할 수 없어요.\r\n#L0# #b당신은 왜 갇혀있는거죠?#k", ["3"] = "...이 곳까지 온 당신이라면 충분한 자격이 있는거겠죠?...지금부터 제가 하는 이야기를 잘 들으세요."},
	["yes"] = {["1"] = "이 곳은 원래 미나르숲의 용들만이 살던 신성한 지역이랍니다. 이 숲의 용들은 하프링들과 우호적인 관계를 유지하면서 그들을 통해 알을 부화시키고 대신 하프링들을 보호해주면서 살고 있었지요. 나인스피릿은 이 숲에 살고 있는 용들의 수장으로 저와도 각별한 친분을 가지고 있었답니다. ", ["2"] = "그런데 얼마 전, 사악한 용 혼테일이 자신의 수하들을 이끌고 나타나 이 숲에 살고 있던 용들을 공격하기 시작했습니다. 저는 비록 용은 아니지만, 이 숲을 지키기 위해 결사대를 조직해서 혼테일과 싸웠습니다. 용들의 수장인 나인스피릿도 이 숲을 지키기 위해 열심히 싸웠지만 결국 혼테일의 사악한 힘 앞에 쓰러지고 말았답니다. 그리고 저는 혼테일에게 사로잡혀 이렇게 갇히게 되었죠. "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["npc"] = {["1"] = "모이라를 마지막으로 본 것은 용의 숲으로 들어가는 그녀의 뒷모습이었다네..."},
	},
	["ask"] = 1,
}
return nTable
end