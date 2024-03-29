return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111007,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3303, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111001,
	["item"] = {{["id"] = 4031704, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031704, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 3500,
	["item"] = {
		{["id"] = 1102136, ["count"] = 1},
		{["id"] = 4031704, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "알카드노의 망토",
	["parent"] = "알카드노 가입하기",
	["order"] = 2,
	["1"] = "브로커 한에게서 #t4031704#를 받았다. 이걸 #p2111001#에게 가져다 주고, 그가 묻는 말에 대답을 잘 해야만 알카드노의 일원으로 인정받을 수 있다는데... #p2111007#이 준 힌트를 잊지 말고 #p2111001#에게 가자.",
	["2"] = "어려운 질문을 하던 끝에, 결국 #p2111001#에게 알카드노의 일원으로 인정받을 수 있었다. 특유의 기묘한 의안을 번쩍이며 #t1102136#를 주는 협회장은... 무섭게 생긴 얼굴에 비해 의외로 좋은 사람일지도 모른다는 생각이 든다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "후후... 마침 잘 왔군. 전에 말한 대로 아는 연금술사에게 연구 보고서 한 개를 받아다 놨지. 보석과 교환한 보고서니 소중히 다루라고... 뭐, 어차피 알카드노에서는 이것보다 회장과의 면담이 더 중요하겠지만...", ["2"] = "#p2111001#는 보고서보다 인상을 중요하게 여기거든. 그와의 면담에서 잘 대답해야만 알카드노의 일원이 될 수 있다고 하더군. 아, 걱정할 건 없어. 물론 면담에 필요한 대답도 미리 준비해 놓았으니까. 아까 받은 보석 안에는 그 비용도 포함되어 있어.", ["3"] = "어때? 지금 #p2111001#에게 갈 생각이라면 연구 보고서를 주면서 면담에 필요한 정보들도 주지. "},
	["yes"] = {["1"] = "좋아. 그럼 #b리튬, 하인즈, 알케스터#k. 이 세 단어를 기억해. 매드가 하는 질문에 대한 답은 이것들과 관련이 있다고 하니까... 순서대로 잘 기억하는 것도 잊지 마."},
	["no"] = {["1"] = "아직 준비가 부족한 모양이군. 너무 그렇게 떨 것 없어. #p2111001#는 생각 외로 말이 통하는 사람이니까."},
}
nTable["say1"] = {
	["base"] = {["1"] = "알카드노에 가입하고 싶어서 온 사람인가? 알카드노가 어떤 곳인지 알기는 하고 온 건지 모르겠군. 알카드노는 연금술을 연구하는 한 개의 학파이지만... 마법을 통해 새로운 물질을 만드는 것 뿐만이 아니라, 생명과 기계의 융합을 연구하고 있다. 그런데도 알카드노에 가입하고 싶다는 거냐?\r\n#b#L0#알카드노에 가입하고 싶습니다.#l", ["2"] = "흥. 배척받는 연구의 길에 들어서려는 자가, 여기 또 한 명 있군. 하지만 의욕만으로 알카드노에 가입시켜 줄 수는 없지. 보고서만으로는 부족해. 진짜 실력은 문서로만 확인할 수 있는 것이 아니니까... 알카드노가 될 자격이 있는지 시험하는 질문을 몇 가지 할 테니 잘 대답해 보라고.\r\n#b#L0#알겠습니다.#l", ["3"] = "알카드노는 기계를 생명으로 바꾸는 연구를 하고 있지. 그 연구의 일환으로 여러 형태의 기계 인형을 만들었다네. 로이드, 네오 휴로이드와 같은 것들이 그것이지. 자, 그럼 문제... 기계 인형을 움직이는 동력원으로는 어떤 광석을 사용해야 하겠는가?\r\n#L0# #b어둠의 크리스탈\r\n#L1# 은\r\n#L2# 소환의 돌\r\n#L3# 리튬", ["4"] = "리튬을 동력원으로 하는 기계 인형은 마법진으로 제어하지. 기계 인형의 움직임을 제어하는 마법진의 기초가 되는 수식을 만들려면, 어떤 책을 참고하는 것이 좋겠는가? 연금술사로서 공부를 했다면 기본적으로 알고 있겠지?\r\n#L0# #b하인즈의 기초 마나식 정리\r\n#L1# 로베이라의 마법 입문\r\n#L2# 제인의 원숭이도 따라할 수 있는 초보자를 위한 연금술!\r\n#L3# 알케스터의 연금술용 마법식 정리<기초편>", ["5"] = "부유하는 마법석을 최초로 만들었으며 비행선의 기초를 완성했고, 마력이 생명력에 끼치는 영향을 증명한, 위대한 연금술사의 이름을 말해보게. 그는 마가티아 연금술 협회의 3대 협회장이기도 했지...\r\n#L0# #b그리토\r\n#L1# 김박사\r\n#L2# 알케스터\r\n#L3# 베티", ["6"] = "..생각 외로 똑똑한 젊은이로군. 그럼 마지막으로 묻겠네... 제뉴미스트에 비해 알카드노는 아직 활성화되지 않은 음지의 학문을 연구한다네. 그만큼 연구에는 여러 어려움이 많을 것일세. 그럼에도 알카드노로서 자부심을 가지고 연구를 할 수 있겠는가?\r\n#b#L0#물론입니다.#l", ["7"] = "후우... 좋네. 자네는 이제부터 #b알카드노의 연금술사일세#k... 어떤 어려움 속에서도 연구를 위해 최선을 다해주게."},
	["yes"] = {["1"] = "알카드노로서 알카드노에 속한 다른 사람들과 함께 일하고 싶다면, 알카드노의 망토가 꼭 필요하다네. 알카드노의 망토는 알카드노임을 증명하는 가장 훌륭한 도구이지... ", ["2"] = "알카드노임이 부정하고 싶을 때가 온다 하더라도, 망토를 숨기지 말게. 자네가 #b망토를 착용#k해야만 알카드노로서 인정받을 것이라네.", ["3"] = "아직은 별볼일 없는 망토이지만... 그건 아직 자네가 초급 연금술사이기 때문이지. 알카드노를 위해 공적을 세운다면... 자네에게도 그만큼의 보상이 주어질 것일세."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "4", ["1"] = "어둠의 크리스탈은 기계와 상성이 맞지 않아. 인간이 힘이 지속적으로 가해져야만 제어할 수 있는 광석이지. 정답이 아닐세.", ["2"] = "틀렸네. 은은 특정한 마법을 새겨, 마법을 발동하게 할 수 있는 힘을 가진 원석이지. 기계 인형에도 여러모로 쓰이고 있지만, 마법의 제어에 사용되는 것이지 동력으로 사용되는 것은 아닐세. ", ["3"] = "소환의 돌은 정해진 대상을 소환하는데 쓰이는 것. 기계 인형의 동력원으로 사용하지 못하지는 않네만, 그러기에는 안에 담긴 마력이 너무 적어. 정답이 아니군."},
		["3"] = {["answer"] = "1", ["2"] = "로베이라의 책은 좋은 책이지만 너무 어려워서 어지간히 연금술에 매진한 사람도 읽기 어렵지. 정답이 아닐세.", ["3"] = "제인이라는 아가씨의 책은 학문서라기보다는 소설내지는 일기 같더군... 정답이 아니야.", ["4"] = "틀렸네. 알케스터님의 책은 물론 훌륭하지만, 그 분이 이 책을 쓸 당시에는 알카드노식의 기계 연구는 시작되지 않았다네. "},
		["4"] = {["answer"] = "3", ["1"] = "그리토님...에 대해서 알고 있나? 그 정도로 대단한 사람으로는 보이지 않는데... 어쨌든 그 분은 아닐세.", ["2"] = "김박사...? 그게 사람 이름인가? 그것 참 이상한 이름이군. 어쨌든 그 사람도 아닐세.", ["4"] = "베티? 자네 여자친구인가?"},
		["5"] = {["answer"] = "1"},
		["npc"] = {["1"] = "아직 #p2111001#에게는 안 간 건가? 그가 할 질문에 대한 답은 다 기억해 놓은 것 맞지? 그렇다면 주저하지 말고 #b알카드노 협회#k로 가라고. "},
		["item"] = {["1"] = "무슨 볼 일로 여기까지 온 거지? 알카드노가 어떤 연구를 하는 곳인지 알고 이곳을 찾아온 게 맞는가?"},
	},
	["ask"] = {"뭐? #t4031704#를 잃어버렸다고? 이런... 물론 그 보고서야 카피해 둔 게 있긴 하지만... 이봐. 잘 좀 하라고. 겨우 20000메소에 네가 잃어버린 것까지 책임져 줘야 한다면 브로커로써 너무 손해라고. 이번만 줄 테니 절대 잃어버리지 마."},
	["ask"] = 1,
}
return nTable
end