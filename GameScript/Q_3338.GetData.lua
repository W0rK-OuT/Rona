return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111008,
	["lvmin"] = 24,
}
nTable["check1"] = {
	["npc"] = 2111008,
	["mob"] = {
		[1] = {["id"] = 2110300, ["count"] = 150}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 6000,
}
nTable["info"] = {
	["name"] = "생명연금의 문제점",
	["0"] = "#b#m261000000##k의 연금술사 #p2111008#. 제뉴미스트 소속의 그는 알카드노의 연구가 잘못되었다고 주장하고 있다. #b#p2111008##k을 찾아가 보자.",
	["1"] = "#p2111008#은 #m261000000# 마을 밖에 #o2110300#들이 늘었다고 화를 내며 #r#o2110300# 150마리#k를 처치해 달라고 말했다. \n\n#o2110300# #r#a33381#",
	["2"] = "#p2111008#은 알카드노의 잘못을 속속들이 지적하며, 알카드노의 연구를 당장 막아야 한다고 했다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "#b#m261000000##k 밖에 있는 #o2110300#들을 본 적 있어? 그 녀석들, 예전에는 별로 없었는데 시간이 흐를수록 점점 숫자도 늘어나고 성격도 흉폭해지고 있어. #o2110300#뿐이 아니야. #o3110301#도, #o2110301#도 그렇지. 예전에는 저렇게 많지 않았어.", ["2"] = "알카드노의 연구가 활성화 되면서 녀석들의 숫자도 많아지고 있어. 정확히 어떤 이유에서인지는 모르지만... 알카드노의 연구가 #m261000000# 주변의 생태계에 영향을 미치고 있다는 것만은 확실해. 그 가장 큰 기폭제는 알카드노의 연금술사가 벌인 그 사건이고. ", ["3"] = "알카드노의 연구는 자연의 법칙에 위배되고 있어. 그들이 만든 로이드를 본 적 있어? 생명은 그 자체로 귀한 것. 기계로 만드는 것들은 모두 가짜야. 그런데 알카드노는 점점 더 생명의 본질을 흐려가고 있어. 더 이상 알카드노의 연구를 두고 봐서는 안 돼!", ["4"] = "아아! 무엇보다 당장 급한 건 #r#o2110300##k 처치야! #o2110300#들이 계속 반쯤 만들어 놓은 비행선의 바닥을 갉아 뚫어 놓는다고! 이러다가는 며칠을 해도 비행선을 완성할 수 없겠어! 네가 가서 #o2110300#들을 좀 처치해줘. "},
	["yes"] = {["1"] = "정말 해주겠다는 거야? 고마워. #r#o2110300##k들은 #m261000000# 마을 밖에 잔뜩 있으니 #r150마리#k만 없애주면 돼! 그럼 부탁할게!"},
	["no"] = {["1"] = "싫다면 어쩔 수 없지만... 혹시 너도 알카드노쪽이냐? 알카드노는 정말 싫어! 저리 가라고!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o2110300#를 모두 퇴치했군. 다른 녀석들보다 #o2110300#들이 특히 더 소란을 피우는 건 모두 알카드노가 #o2110300#를 가지고 실험을 해서일 거야. 생명의 연금? 말은 좋지.", ["2"] = "하지만, 그건 인간의 손으로 조종할 수 있는 부분이 아니야. 해서는 안 되는 일이지. 특히 생명과 기계의 결합은 더욱 그래. 기계와 같은 차가운 금속이 인간의 몸과 어울린다는 건, 인간성의 파괴를 의미해! 그런데 알카드노 녀석들은 항상 그걸 모르지.", ["3"] = "어쨌건 덕분에 #o2110300#들은 한 동안 조용할 것 같아. 정말 고마워. "},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o2110300##k를 전부 퇴치하지 못한 건가? #r150마리#k만 퇴치하면 한 동안 조용해질 테니, 좀 더 열심히 해 달라고!"},
	},
}
return nTable
end