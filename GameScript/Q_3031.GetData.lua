return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2030002,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3030, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2030002,
	["item"] = {{["id"] = 4000053, ["count"] = 3}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 6340,
	["nextQuest"] = 3032,
	["item"] = {
		{["id"] = 4000053, ["count"] = -3}
	},
}
nTable["info"] = {
	["name"] = "기억의 가루 얻기",
	["parent"] = "고대의 책을 찾아서...",
	["order"] = 28,
	["1"] = "이지병장으로부터 #b웨어울프의 발톱 3개#k를 갖다 주면 기억의 가루를 넘겨주겠다는 약속을 받아냈다. 웨어울프는 설원 계곡 깊은 곳에서 나온다는데...\n\n#i4000053##t4000053# #b#c4000053##k/3",
	["2"] = "이지병장에게 웨어울프의 발톱을 건네 주었다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "난 지금 비밀 임무를 수행하는 중이니까 말시키지 말라고~ 응? #b#t4031055##k가 필요해서 찾아왔다고? 내가 그걸 발견했다는 건 일급 비밀인데 어떻게 안거지? 흐음... 이건 꽤 중요해 보이는 물건이라 그냥 줄 수는 없어. 하지만 내 부탁 하나만 들어준다면 넘겨줄 수도 있지. 요즘 정말 필요한 물건이 생겼거든."},
	["yes"] = {["1"] = "조금 있으면 동료가 이 곳으로 날 만나러 온다는데 동료에게 자랑할 것이 아무것도 없어서 걱정하던 중이었어. 듣자하니 깊은 계곡에서 가끔 엄청 크고 무시무시한 늑대가 나온다지? 그 웨어울프라나... 그 녀석이 주는 발톱을 3개만 모아와 준다면 줄 수도 있어. 그걸 보면 내 동료도 놀랄테니까 말야. 그럼 힘내 달라고~"},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "이 곳은 묘한 곳인걸? 오래 전에 버려진 듯한 탑이로군... 나는 알파소대의 대원 #b#p2030002##k라고 해. 비행정을 타고 가던중 사고로 이곳에 불시착 했는데 다른 대원들이 보이지 않아서 걱정이야. 하지만 모두 무사할 거라고 믿어. 그럼 난 임무를 수행하러 이만~!"},
		["item"] = {["1"] = "아직 #b#t4000053# 3개#k는 모으지 못한거야? 하긴 그 녀석이 워낙 무섭다고 소문이 났으니 너도 별 수 없겠지. 과연 그 깊은 계곡까지 무사히 들어갈 수 있을지도 미지수고 말야. 아무튼 #b#t4000053# 3개#k만 모아와 준다면 #b#t4031055##k를 넘겨줄 수도 있으니까 힘내라고!"},
	},
}
return nTable
end